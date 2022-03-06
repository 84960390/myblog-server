const express = require('express');
const album = express.Router();
const multiparty = require('multiparty');
const path = require('path');
const db = require('../sqlConfig');
const baseURL=require('../baseURL')
// 绝对路径拼接
const filePath = path.join(__dirname, '../', '/albumPics')
// 上传图片
album.post('/addAlbum', (req, res) => {
    let form = new multiparty.Form();
    form.uploadDir = filePath;
    form.parse(req, (err, txt, file) => {
        console.log(txt)
        try {
            let data = {
                filename: path.basename(file.file[0].path),
                type: txt.type[0],
                url:baseURL+'/getAlbum/'+path.basename(file.file[0].path)
            }
            db.query('insert into album set ?', [data], (err, results) => {
                console.log(err)
                if (err) return res.status(400).send('上传错误')
                res.send({ msg: '上传成功' })

            })
        } catch {
            return res.status(400).send('上传错误')
        }


    })

})
// 分页获取图片
album.get('/getAlbum',(req,res)=>{
    let type=req.query.type||'scenery';
    let page=req.query.page||1;
    let size=req.query.size||20;
    // limit后必须为int
    db.query('select * from album where type=? limit ?, ?',[type,(page-1)*size,size*1],(err,results)=>{
        try{
            if(err) throw '查询失败';
            if(results) return res.send({data:results});
            throw '查询失败'
        }catch(err){
            res.status(400).send(err)
        }
    })
})
// 删除图片
album.post('/deleteAlbum',(req,res)=>{
        db.query('delete from album where id=?',[req.body.id],(err,results)=>{
            try{
                if(err) throw '删除失败';
                if(results.affectedRows>0) return res.send({msg:'success'});
                throw '删除失败'
            }catch(err){
                res.status(400).send(err)
            }
        })

})
module.exports=
module.exports = album;