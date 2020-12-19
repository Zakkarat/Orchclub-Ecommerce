import {IFilters} from "../interfaces/components/INavBarProps";

export type categoryChange = (category:string) => ({
    type: string,
    payload: { category:string },
});

export type changePaymentState = (stage:string) => ({
    type: string,
    payload: { stage:string },
});

export type setOverallPrice = (price:number) => ({
    type: string,
    payload: { price:number },
});

export type changeFilters = (filters:IFilters) => ({
    type: string,
    payload: IFilters,
});
