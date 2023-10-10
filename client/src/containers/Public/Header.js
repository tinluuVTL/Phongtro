import React,{ useCallback, useEffect, useRef, useState } from "react";
import logo from "../../assets/Logo-removebg-preview.png";
import { Button } from "../../components";
import icons from "../../ultils/icons";
import { useNavigate } from "react-router-dom";
import {path} from "../../ultils/constant"


const { AiOutlinePlusCircle } = icons;

const Header = () => {

  const navigate =useNavigate()
  const goLogin = useCallback(() => {
    navigate(path.LOGIN)
  },[])
  return (
    <div className="w-1100 flex items-center justify-between">
      <img src={logo} alt="logo" className="w-[240px] h-[70px] object-cover" />

      <div className="flex items-center gap-1">
        <small>Phongtro.com Xin Chào !</small>
        <Button
          text={"Đăng Nhập"}
          textColor="text-white"
          bgColor="bg-[#3961fb]"
          onClick={goLogin}
        />
        <Button
          text={"Đăng Ký"}
          textColor="text-white"
          bgColor="bg-[#3961fb]"
        />
        <Button
          text={"Đăng tin mới"}
          textColor="text-white"
          bgColor="bg-secondary2"
          IcAfter={AiOutlinePlusCircle}
        />
      </div>
    </div>
  );
};
export default Header;
