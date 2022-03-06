const os = require('os');
const info = os.networkInterfaces();
// 获取本机ipv4，用于拼接图片url
function getIp() {
    let prop = Object.values(info)
    for (let val of prop) {
        if (val instanceof Object) {
            for (let i of val) {
                if (i.family == 'IPv4' && i.address.startsWith('192')) return i.address;
            }
        }
        if (val.family == 'IPv4' && val.address.startsWith('192')) return val.address;
    }
}
const ip=getIp()||'127.0.0.1';
const baseURL=`http://${ip}:8088`;
module.exports=baseURL;
