import  React, {useEffect, useState}  from 'react';
import {useDispatch, useSelector}from 'react-redux'
import * as actions from '../../store/actions'
import Overview from './../../components/Overview';
import moment from 'moment';
import { Button, UpdatePost } from '../../components';


const ManagePost =() => {
    const dispatch = useDispatch()
    const [isEdit, setIsEdit] = useState(false)
   const { postOfCurrent } = useSelector(state => state.post)
   

    useEffect(() => {
        dispatch(actions.getPostsLimitAdmin())
       
    }, [])
   
    const checkStatus = (dateString)=> moment(dateString, process.env.REACT_APP_FORMAT_DATE).isAfter(new Date().toDateString())
   
  
    return (
        <div className='flex flex-col gap-6 '>
          <div className='py-4 border-b border-gray-200 flex items-center justify-between'> 
          <h1 className='text-3xl font-medium '>Quản lý tin Đăng</h1>
        <select className='outline-none border p-2 border-gray-200 rounded-md'>
            <option value="">
            Lọc theo loại tin
            </option>
         
        </select>
         
           </div>   
            <table className="w-full table-auto">
                <thead>
                    <tr className='bg-gray-50'>
                        <th className=' border p-2 px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider'>
                            Mã Tin
                        </th>
                        <th className='border p-2 px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider'>
                            ảnh đại diện
                        </th>
                        <th className='border p-2 px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider'>
                            Tên tin
                        </th>
                        <th className='border p-2 px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider'>
                          Giá Thuê
                        </th>
                        <th className='border p-2px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider'>
                            Ngày bắt đầu
                        </th>
                        <th className='border p-2 px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider'>
                            Ngày hết hạn
                        </th>
                        <th className='border p-2 px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider'>
                           Trạng thái
                        </th>
                        <th className='border p-2 px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider'>
                           Tùy Chọn
                        </th>
                    </tr>
                </thead>
                <tbody>
                    {!postOfCurrent 
                    ? <tr>
                        <td> Bạn chưa có tin đăng !</td>
                    </tr> : postOfCurrent?.map(item => {
                       return ( 
                       <tr className='h-16' key={item.id}>
                        <td className='border h-full  text-center p-2'>
                            {item?.overviews?.code}
                        </td>
                        <td className='border h-full flex justify-center items-center p-2'>
                            <img src={JSON.parse(item?.images?.image)[0] || ''} alt="avatar-post" className='w-10 h-10 object-cover rounded-md' />
                        </td>
                        <td className='border h-full text-center p-2'>
                            {`${item?.title?.slice(0, 40)}...`}
                        </td>
                        <td className='border h-full text-center p-2'>
                            {item?.attributes?.price}
                        </td>
                        <td className='border h-full text-center p-2'>
                            {item?.overviews?.created}
                        </td>
                        <td className='border h-full text-center p-2'>
                            {item?.overviews?.expired}
                        </td>
                        <td className='border  h-full text-center p-2'>
                            {checkStatus(item?.overviews?.expired?.split(' ')[3])? 'Đang hoạt động': 'đã hết hạn'}
                        </td>
                        <td className='border h-full text-center p-2 flex items-center gap-4'>
                            <Button
                            text='Sửa'
                          bgColor='bg-green-600'
                          textColor='text-white'
                          onClick={()=>{
                            dispatch(actions.editData(item))
                            setIsEdit(true)

                          }}
                            />
                            <Button
                            text='Xóa'
                            bgColor='bg-red-600'
                            textColor='text-white'
                            />
                        </td>
                       </tr>

                       )
                    })}
                </tbody>
            </table>
           {isEdit &&  <UpdatePost setIsEdit={setIsEdit}/>}
        </div>
)
}
 export default ManagePost;