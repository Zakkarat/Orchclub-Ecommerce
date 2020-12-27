import {changePaymentState, setOverallPrice} from "../../types/actions";
import IOrchid from "../IOrchid";

export interface ICartProps {
    changePaymentState:changePaymentState,
    setOverallPrice:setOverallPrice
}

export interface ICartOverallProps {
    cart:IOrchid[],
    initStateChange:()=>void;
}

export interface ICartListProps {
    cart:IOrchid[],
    handleClick: (i:number, sign:string) => void;
}