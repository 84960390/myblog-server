const express=require('express');
const statics=express.Router();
const db=require('../sqlConfig');
statics.get('/getStatics',(req,res)=>{
    try{
        db.query('select * from  sum',(err,results)=>{
            if(err) throw '获取失败';
            res.send({
                data:results[0]
            })
            try{
                db.query('update sum set visit=visit+1 ')
            }catch{
                console.log('浏览量添加失败')
            }
        })
    }catch(err){
        res.status(400).send(err)
    }
})
module.exports=statics;