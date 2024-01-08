import db from '../models'
import bcrypt from 'bcryptjs'
import jwt from 'jsonwebtoken'
import { v4 } from 'uuid'
require('dotenv').config()


// hàm băm password, mã hóa password
const hashPassword = password => bcrypt.hashSync(password, bcrypt.genSaltSync(12))

//hàm kiểm tra đăng ký
export const registerService = ({ phone, password, name }) => new Promise(async (resolve, reject) => {
    try {
        //kiểm tra user đã đăng ký phone đã tồn tại hay chưa
        const response = await db.User.findOrCreate({
            where: { phone },
            // nếu phone chưa có thì sẽ tạo mới
            defaults: {
                phone,
                name,
                password: hashPassword(password),
                id: v4()
            }
        })
        // tạo token mới khi user tạo mới
        const token = response[1] && jwt.sign({ id: response[0].id, phone: response[0].phone }, process.env.SECRET_KEY, { expiresIn: '3d' }) //hạn sử dụng token 3 ngày
        resolve({
            err: token ? 0 : 2, // kiểm tra token tồn tại hay chưa
            msg: token ? 'Đăng Ký Thành Công !' : 'Số điện thoại đã được sử dụng !',
            token: token || null
        })

    } catch (error) {
        reject(error)
    }
})
// hàm kiểm tra đăng nhập
export const loginService = ({ phone, password }) => new Promise(async (resolve, reject) => {
    try {
        const response = await db.User.findOne({
            where: { phone },
            raw: true
        })
        // so sánh password đã mã hóa 
        const isCorrectPassword = response && bcrypt.compareSync(password, response.password) //so sánh password chưa mã hóa và đã mã hóa
      //Tạo token cho phiên đăng nhập thời hạn 3 ngày nếu mật khẩu đúng
        const token = isCorrectPassword && jwt.sign({ id: response.id, phone: response.phone }, process.env.SECRET_KEY, { expiresIn: '3d' })
        resolve({
            err: token ? 0 : 2,
            msg: token ? 'Đăng nhập thành công !' : response ? 'Password không đúng !' : 'Phone number không tìm thấy !',
            token: token || null
        })

    } catch (error) {
        reject(error)
    }
})