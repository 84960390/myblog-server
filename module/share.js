const express=require('express');
const share=express.Router();
const db=require('../sqlConfig');
// 发布说说
share.post('/addShare',(req,res)=>{
    console.log(req.body)
    try{
        if(!req.body.context) throw '未输入内容';
        db.query('insert into share set ?',[{context:req.body.context}],(err,results)=>{
            console.log(err)
            console.log(results)
            if(err) return res.status(400).send(err)
            res.send({
                msg:'发布成功'
            })
        })
    }catch(err){
        console.log(err)
         res.status(400).send(err)
    }
})
share.get('/getAllShare',(req,res)=>{
        try{
            db.query('select * from share order by create_time desc',(err,results)=>{
                // console.log(results)
                if(results.length==0) return res.status(400).send('暂无数据')
                res.send({
                    data:results,
                })
            })
        }catch(err){
            res.status(400).send('请求错误')
        }
})
module.exports=share;