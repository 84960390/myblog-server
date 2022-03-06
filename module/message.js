const express=require('express');
const message=express.Router();
const db=require('../sqlConfig')
// 添加信息
message.post('/addMessage',(req,res)=>{
    console.log(req.body)
    let data=req.body;
    try{
        if(!data.context) throw '未输入内容';
        db.query('insert into message set ?',[data],(err,results)=>{
            if(err) return res.status(400).send(err)
            res.send({
                msg:'发布成功'
            })
        })
    }catch(err){
         res.status(400).send(err)
    }
})
// 获取所有信息
message.get('/getAllMessage',(req,res)=>{
        try{
            db.query('select * from message order by create_time desc',(err,results)=>{
                if(results.length==0) return res.status(400).send('暂无数据')
                res.send({
                    data:results,
                })
            })
        }catch(err){
            res.status(400).send('请求错误')
        }
})
module.exports=message;