import moment from 'moment';


const formatDate= (timeObj) => {
    let day = timeObj.getDay() === 0 ? 'Chủ nhật' : `Thứ ${timeObj.getDay() + 1}`
    let date = `${timeObj.getDate()}/${timeObj.getMonth() +1 }/${timeObj.getFullYear()}`
    let time = `${timeObj.getHours()}:${timeObj.getMinutes()}`
    return `${day},${time},${date}`
}

const generateDate =()=>{

    let gapExpire = Math.floor(Math.random() * 29) + 1
    let today = new Date()
    let exprieDay= moment(today).add(gapExpire, 'd').toDate()

    return{
        today: formatDate(today),
        exprieDay: formatDate(exprieDay),
    }
}




export default generateDate