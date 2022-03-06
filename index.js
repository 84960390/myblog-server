const express=require('express');
// const db= require('./sqlConfig');
const app=express();
const bodyParser=require('body-parser');

app.use(bodyParser.urlencoded({txtended:false}));
app.use(bodyParser.json());
// 解决histroy模式刷新问题
const histroy=require('connect-history-api-fallback');
app.use(histroy());
// 引入路由模块
const fileUpload=require('./module/fileUpload');
const article=require('./module/article');
const message=require('./module/message');
const share=require('./module/share');
const logs=require('./module/logs');
const album=require('./module/album');
const statics=require('./module/statics');
const adminLogin=require('./module/adminLogin')
app.use('/getPic',express.static('articlePics'));
app.use('/getAlbum',express.static('albumPics'));
// 打包前端文件
// app.use(express.static('build'));
app.use('/api',article)
app.use('/api',fileUpload)
app.use('/api',message)
app.use('/api',share)
app.use('/api',logs)
app.use('/api',album)
app.use('/api',statics)
app.use('/admin',adminLogin)
app.listen(8088,()=>{
    console.log(Date.now())
    console.log('success')
})