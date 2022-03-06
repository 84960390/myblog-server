const express = require('express');
const adminLogin = express.Router();
const db = require('../sqlConfig');
// 登录
adminLogin.post('/adminLogin', (req, res) => {
    console.log(req.body)
    try {
        db.query('select * from admin where account=?', [req.body.account], (err, results) => {
            try {
                console.log(req.body.password)
                if (err || !results[0]) throw '获取失败';
                if (results[0].password !== req.body.password) throw '密码错误';
                res.send({
                    msg: 'success', 
                    state: 'success'
        
                })
            }catch(err){
                res.status(422).send('密码错误')
            }
        })
    } catch (err) {
        res.status(400).send({ msg: '服务器异常' })
    }

})
module.exports = adminLogin;