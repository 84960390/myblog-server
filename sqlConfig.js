const mysql=require('mysql');
// const pool=mysql.createPool({
//     host:'127.0.0.1',
//     port:'3306',
//     user:'root',
//     password:'admin',
//     database:'blog'
// })
// function query(sql,callback){
//     pool.getConnection((err,connection)=>{
//         connection.query(sql,(err,rows)=>{
//             callback(err,rows);
//             connection.release();
//         })
//     })
// }
// const connection=mysql.createConnection({
//     host:'127.0.0.1',
//     port:'3306',
//     user:'root',
//     password:'admin',
//     database:'blog'
// })
const config={
    host:'127.0.0.1',
    port:'3306',
    user:'root',
    password:'admin',
    database:'blog',
    multipleStatements:true
}
module.exports={

    query(sql,params,callback){
        // 链接
        let connection=mysql.createConnection(config)
        connection.connect(err=>{
            if(err){
                console.log(err);
                throw err;
            }
        })
        // 查询
        connection.query(sql,params,(err,results,fields)=>{
            callback&&callback(err,results,fields);
            // 关闭连接,避免连续调用时出错
            connection.end(err=>{
                if(err){
                    console.log('关闭连接失败');
                    throw err;
                }
            })
        })
        

    }
}