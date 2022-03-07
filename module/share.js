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
// 分页获取说说
share.get('/getAllShare',(req,res)=>{
    let page=req.query.page||1;
    let size=req.query.size||10;
        try{
            db.query('select * from share order by create_time desc limit ?, ?;select count(*) as total from share',[(page-1)*size,size*1],(err,results)=>{
                if(results.length==0) return res.status(400).send('暂无数据')
                res.send({
                    data:results[0],
                    total:results[1][0].total
                })
            })
        }catch(err){
            res.status(400).send('请求错误')
        }
})
module.exports=share;