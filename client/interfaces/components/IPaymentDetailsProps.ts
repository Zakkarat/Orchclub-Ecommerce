import React, {SetStateAction} from "react";

export interface IPaymentDetailsProps {
    price:number
}

export interface IDeliveryDetailsProps {
    deliveryType:string,
    NPdepartment:string,
    setNPDepartment:React.Dispatch<SetStateAction<string>>,
    takeAway:string,
    setTakeAway:React.Dispatch<SetStateAction<string>>,
}

export interface IDeliveryTypeProps {
    deliveryType:string,
    setDeliveryType:React.Dispatch<SetStateAction<string>>
}

export interface IOverallProps {
    paymentDetails:string,
    price:number,
    handlePayClick:() => void
}

export interface IPayDetailsProps {
    deliveryType:string,
    takeAway:string,
    NPdepartment:string,
    paymentDetails:string,
    setPaymentDetails:React.Dispatch<SetStateAction<string>>,
    price:number,
}
