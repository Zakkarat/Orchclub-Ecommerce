import {changeFilters} from "../../types/actions";
import React, {SetStateAction} from "react";
import {NextRouter} from "next/router";

export interface INavBarProps {
    filters: IFilters,
    changeFilters: changeFilters
}

export interface IFilterNavBarProps{
    category?: string,
    priceRange: IPriceRange
    size: string,
    sort: string
    secondBar:boolean,
    setSize:React.Dispatch<SetStateAction<string>>,
    setSort:React.Dispatch<SetStateAction<string>>,
    setPriceRange:React.Dispatch<SetStateAction<IPriceRange>>,
    handleFilterChange: () => void,
}

export interface IMainNavBarProps {
    cartNumber:number,
    isLogged:boolean,
    router:NextRouter,
    isOpen:boolean,
    setIsOpen:React.Dispatch<SetStateAction<boolean>>,
    search:string,
    setSearch:React.Dispatch<SetStateAction<string>>,
    handleFilterChange:()=>void,
    secondBar:boolean,
    setSecondBar:React.Dispatch<SetStateAction<boolean>>,
}


export interface IFilters {
    category?: string,
    priceRange: IPriceRange
    search: string,
    size: string,
    sort: string
}

export interface IPriceRange {
    min: number, max:number
}