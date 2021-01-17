import React, {SetStateAction, SyntheticEvent} from "react";

export interface ILoginFormProps {
    username:string,
    password:string,
    setUsername:React.Dispatch<SetStateAction<string>>,
    setPassword:React.Dispatch<SetStateAction<string>>,
    error:boolean,
    makeLogin:(e:SyntheticEvent<HTMLButtonElement, Event>) => void,
}