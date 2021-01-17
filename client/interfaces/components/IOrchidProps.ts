import IOrchid from "../../../interfaces/IOrchid";
import {NextRouter} from "next/router";
import {SyntheticEvent} from "react";

export interface IOrchidCardProps {
    orchid:IOrchid,
    handleClick:(e:SyntheticEvent<HTMLButtonElement, Event>) => void,
    items:number,
    router:NextRouter
}