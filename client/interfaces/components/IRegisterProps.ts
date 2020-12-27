import React, {FormEvent, SetStateAction, SyntheticEvent} from "react";

export interface IRegisterFormProps {
    name:string,
    setName:React.Dispatch<SetStateAction<string>>,
    password:string,
    setPassword:React.Dispatch<SetStateAction<string>>,
    region:string,
    setRegion:React.Dispatch<SetStateAction<string>>,
    city:string,
    setCity:React.Dispatch<SetStateAction<string>>,
    adress:string,
    setAdress:React.Dispatch<SetStateAction<string>>,
    phone:string,
    handleValidPhone:(e:FormEvent<HTMLInputElement>)=>void,
    handleSubmit:(e:SyntheticEvent<HTMLButtonElement, Event>)=>void,
    error:boolean,
}