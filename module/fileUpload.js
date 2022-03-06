const express = require('express');
const fileUpload = express.Router();
const multiparty = require('multiparty');
const path = require('path');
const baseURL=require('../baseURL')
const filePath=path.join(__dirname,'../','/articlePics')
// 上传文章图片
fileUpload.post('/file', (req, res) => {
    let form = new multiparty.Form();
    form.uploadDir = filePath;
    form.parse(req, (err, fileds, files) => {
        try {
            if(err) throw '上传失败'
            let file = Object.values(files)[0][0];
            res.send({
                "errno": 0,
                "data": [
                    {
                        url: baseURL+"/getPic/" + path.basename(file.path),
                        alt: "暂无文字说明",
                    },
                ]
            })

        } catch(err){
            res.status(400).send(err)
        }
    })



})
module.exports = fileUpload;