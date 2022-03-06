const express=require('express');
const logs=express.Router();
const db=require('../sqlConfig')
// 获取建站日志
logs.get('/getLogs',(req,res)=>{
    db.query('select * from logs order by create_time asc',(err,results)=>{
        try{
            if(err) throw '获取失败';
            console.log(results);
            res.send({data:results})
        }catch(err){
            res.status(400).send(err)
        }
    })

})
module.exports=logs;