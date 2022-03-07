const express=require('express');
const article=express.Router();
const db=require('../sqlConfig');
// 根据id获取文章
article.get('/getArticleById',(req,res)=>{
    console.log(req.query)
    try{
        db.query('select * from article where id=?',[req.query.id],(err,results)=>{
            console.log(results)
            if(results.length==0) return res.status(400).send('暂无数据')
            res.send({
                data:results[0],
            })
        })
    }catch(err){
        res.status(400).send('请求错误')
    }
})
// 分页获取文章
article.get('/getArticle',(req,res)=>{
    let page=req.query.page||1;
    let size=req.query.size||10;
    // limit后必须为int
    try{
        db.query('select id,title,type,describes,create_time from article order by create_time desc limit ?, ?;select count(*) as total from article',[(page-1)*size,size*1],(err,results)=>{
            if(results.length==0) return res.status(400).send('暂无数据')
            console.log(results)
            res.send({
                data:results[0],
                total:results[1][0].total
            })
        })
    }catch(err){
        res.status(400).send('请求错误')
    }
})
// 分类获取文章
article.get('/getArticleByType',(req,res)=>{
    let page=req.query.page||1;
    let size=req.query.size||20;
    let type=req.query.type||'javascript';
    console.log(req.query)
    // limit后必须为int
    try{
        db.query('select id,title,type,describes,create_time from article where type=? limit ?, ?',[type,(page-1)*size,size*1],(err,results)=>{
            res.send({
                data:results,
            })
        })
    }catch(err){
        res.status(400).send('请求错误')
    }
})
// 按标题查找文章
article.get('/getArticleByTitle',(req,res)=>{
    let page=req.query.page||1;
    let size=req.query.size||20;
    let title=req.query.title||'';
    title='%'+title+'%';
    // limit后必须为int
    try{
        db.query('select id,title,type,describes,create_time from article where title like ? limit ?, ?',[title,(page-1)*size,size*1],(err,results)=>{
            res.send({
                data:results,
            })
        })
    }catch(err){
        console.log(err)
        res.status(400).send('请求错误')
    }
})
// 按描述查找文章
article.get('/getArticleByDescribe',(req,res)=>{
    let page=req.query.page||1;
    let size=req.query.size||20;
    let describes=req.query.describes||'';
    describes='%'+describes+'%';
    // limit后必须为int
    try{
        db.query('select id,title,type,describes,create_time from article where describes like ? limit ?, ?',[describes,(page-1)*size,size*1],(err,results)=>{
            console.log(err)
            res.send({
                data:results,
            })
        })
    }catch(err){
        console.log(err)
        res.status(400).send('请求错误')
    }
})
// 上传文章
article.post('/addArticle',(req,res)=>{
    console.log(req.body)
    let data=req.body;
    try{
        if(!data.title) throw '未输入标题';
        db.query('insert into article set ?',[data],(err,results)=>{
            console.log(err)
            if(err) return res.status(400).send(err)
            // 数据库总数加一
            db.query(`update sum set ${req.body.type}=${req.body.type}+1`,(err,res)=>{
            })
            res.send({
                msg:'发布成功'
            })
        })
    }catch(err){
         res.status(400).send(err)
    }
})
module.exports=article;