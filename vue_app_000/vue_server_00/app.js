//vue_server_00/app.js node程序
//1:加载第三方模块
//web服务器
const express = require("express");
//mysql驱动
const mysql = require("mysql");
//跨域
const cors = require("cors");
//session
const session = require("express-session");

//2:配置数据库连接池:提高数据效率
var pool = mysql.createPool({
   host:"127.0.0.1",  //数据库地址
   user:"root",       //数据库用户名
   password:"",       //数据库密码
   port:3306,         //数据库端口
   database:"shopping",     //数据库名称
   connectionLimit:15 //连接数量
});

var server = express();
//3:配置跨域模块 50
server.use(cors({
//   //允许跨域访问程序地址列表
   origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
   credentials:true //请求验证
}))
//4:配置session模块
server.use(session({
    secret:"128位字符串",  //安全字符串
    resave:true,          //请求时更新数据
    saveUninitialized:true//保存初始数据
}));
//4.1:配置项目静态目录
server.use(express.static("public"));
//http://127.0.0.1:3000/01.jpg
//5:启动监听3000
server.listen(3000);




//功能一:完成用户登录操作
server.get("/login",(req,res)=>{
  //1:参数:获取网页传递两个数据 uname upwd
  //参数方式一:?uname=tom&upwd=123 查询字符串
  //参数方式二:/tom/123            参数
  var uname = req.query.uname;
  var upwd = req.query.upwd;
  //2:sql:查询sql语句
  //数据库 库名 表名 列名 小写字母
  var sql = "SELECT id FROM xz_login";
  sql+=" WHERE uname = ? AND upwd=md5(?)";
  //3:json:{code:1,msg:"登录成功"}
  pool.query(sql,[uname,upwd],(err,result)=>{
   //执行sql语句回调函数
   if(err)throw err;
   if(result.length==0){
   res.send({code:-1,msg:"用户名或密码有误"});
   }else{
   //1:将登录成功凭据保存session 10:55
   //result=[{id:1}]
   req.session.uid = result[0].id;
   console.log(req.session);
   //2:将成功消息发送脚手架  
   res.send({code:1,msg:"登录成功"})  
   }
  })
});
//测试:15:30
//(1)启动node app.js
//(2)
//http://127.0.0.1:3000/login?uname=tom&upwd=123
//http://127.0.0.1:3000/login?uname=tom&upwd=121

//功能二:分页查询商品列表80-105
//1:接收请求方式 GET 请求地址 /product
server.get("/product",(req,res)=>{
//2:接收客户端二个参数
//  pno 页码  pageSize 页大小
 var p = req.query.pno;
 var ps = req.query.pageSize;
//3:设置参数默认值 pno:1 pageSize:4
 if(!p){p=1}
 if(!ps){ps=4}
//4:创建变量 offset 计算数据库偏移量
 var offset = (p-1)*ps;
//5:对pageSize转换整型? nodejs 报错
 ps = parseInt(ps);
//6:创建sql语句
 var sql = "SELECT lid,price,lname";
 sql +=" ,img_url FROM xz_laptop";
 sql +=" LIMIT ?,?";
//7:通过连接池发送sql语句
 pool.query(sql,[offset,ps],(err,result)=>{
  if(err)throw err;
  //8:获取数据库返回的查询结果
  //9:将查询结果发送客户端
  res.send({code:1,msg:"查询成功",data:result});
 });
})

server.get("/moe",(req,res)=>{
  console.log(req.query.id)
  var sql = "select * from moe";
  pool.query(sql,(err,result)=>{
    
    if (err) throw err;
    if(result.length>0){
      res.send({code:1,msg:"发送成功",result})
      return;
    }
    res.send({code:-1,msg:"发送失败"})
    
  })
})
// 列表页每行的查询
server.get("/Tree",(req,res)=>{
  var n=Number(req.query.id);
  var m=Number( req.query.ids);
  // select * from list Limit 0,10;
  var sql = "select * from list LIMIT ?,?";
  pool.query(sql,[n,m],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:"发送成功",result})
      return;
    }
    res.send({code:-1,msg:"发送失败"})
  })
})


server.get("/list",(req,res)=>{
  var sql = "select * from list Limit 0,4";
  pool.query(sql,(err,result)=>{
    
    if (err) throw err;
    if(result.length>0){
      res.send({code:1,msg:"发送成功",result})
      return;
    }
    res.send({code:-1,msg:"发送失败"})
    
  })
})
// server.get("/lists",(req,res)=>{
//   var count =Number( req.query.count);
//   console.log(count)
//   var sql = "select * from list Limit 0,";
//   pool.query(sql,count,(err,result)=>{
    
//     if (err) throw err;
//     if(result.length>0){
//       res.send({code:1,msg:"发送成功",result})
//       return;
//     }
//     res.send({code:-1,msg:"发送失败"})
    
//   })
// })

//接受详情页参数
server.get("/details",(req,res)=>{
  var lid=req.query.id;
  // console.log(lid)
  var sql="select * from list where id=?";
  // select * from clothing where id=1;
  pool.query(sql,lid,(err,result)=>{
    
    if (err) throw err;
    if(result.length>0){
      res.send({code:1,msg:"发送成功",result})
      return;
    }
    res.send({code:-1,msg:"发送失败"})
    
  })
})

// 接受详情页的参数并且接受查询数据库并插入到shoppingCar购物车中
  server.get("/car",(req,res)=>{
    var id=req.query.id;
    var count=req.query.count;
    var sql="select * from list where id=?";
    pool.query(sql,id,(err,result)=>{    
      if (err) throw err;
      if(result.length>0){
        // var sqls="INSERT INTO xz_login VALUES(null,'tom',md5('123'));"
        for(var i=0;i<result.length;i++){
          // console.log(result[i].title)
          var title=result[i].title;
          var discount=result[i].discount;
          var imgurl=result[i].img1;
        }
        var sqls="INSERT INTO shoppingCar VALUES(null,?,?,?,?)";
        pool.query(sqls,[count,title,discount,imgurl],(err,result)=>{
    
          if (err) throw err;
          if(result.length>0){
            res.send({code:1,msg:"发送成功",result})
            return;
          }
          res.send({code:-1,msg:"发送失败"})
          
        })
      }           
    })
  })

  // 查询shoppingCar表的数据并显示到页面
  server.get("/bag",(req,res)=>{
    var sql="select * from shoppingcar";
    pool.query(sql,(err,result)=>{
      if(err) throw err;
      if(result.length>0){
        res.send({code:1,msg:"发送成功",result})
        return;
      }
      res.send({code:-1,msg:"发送失败"})
    })
  })

  // 获取id完成加减
  server.get("/jia",(req,res)=>{
    var count=req.query.count
    var id=req.query.id;
    console.log(count)
    var sqls="UPDATE shoppingCar SET count=? where id=?"
        pool.query(sqls,[count,id],(err,result)=>{
            if(err) throw err;
            if(result.length>0){
              res.send({code:1,msg:"发送成功",result})
              return;
            }
          })
      })



   server.get("/del",(req,res)=>{
     var id=req.query.id;
     var sql="Delete from shoppingCar where id=?"
     pool.query(sql,id,(err,result)=>{
      if(err) throw err;
      if(result.affectedRows==1){
        res.send({code:1,msg:"发送成功",result})
        return;
      }
      console.log(result)
     })
   })

   server.get("/req",(req,res)=>{
      var uname=req.query.uname;
      var upwd=req.query.password;
      var age=req.query.age;
      var sex=req.query.sex;
      var sql="INSERT INTO req VALUES(null,?,?,?,?)";
      pool.query(sql,[uname,upwd,age,sex],(err,result)=>{
    
        if (err) throw err;
        if(result.length>0){
          res.send({code:1,msg:"发送成功",result})
          return;
        }
        res.send({code:-1,msg:"发送失败"})
        
      })
   })


   server.get("/loginShopping",(req,res)=>{
    var uname=req.query.uname;
    var upwd=req.query.password;
    console.log(uname)
    var sql="select * from req where uname= ? and upwd= ? ";
    pool.query(sql,[uname,upwd],(err,result)=>{
      if (err) throw err;
      if(result.length>0){
        res.send({code:1,msg:"发送成功",result})
        console.log(result)
        return;
      }
      res.send({code:-1,msg:"发送失败"})
      
    })
 })