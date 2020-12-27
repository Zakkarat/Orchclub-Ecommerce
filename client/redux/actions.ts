import {IFilters} from "../interfaces/components/INavBarProps";

export const CATEGORY_CHANGE = "CATEGORY_CHANGE";
export const CHANGE_PAYMENT_STATE = "CHANGE_PAYMENT_STATE";
export const SET_OVERALL_PRICE = "SET_OVERALL_PRICE";
export const CHANGE_FILTERS = "CHANGE_FILTERS";

export const categoryChange = (category:string) => ({
  type: CATEGORY_CHANGE,
  payload: { category },
});

export const changePaymentState = (stage:string) => ({
  type: CHANGE_PAYMENT_STATE,
  payload: { stage },
});

export const setOverallPrice = (price:number) => ({
  type: SET_OVERALL_PRICE,
  payload: { price },
});

export const changeFilters = (filters:IFilters) => ({
  type: CHANGE_FILTERS,
  payload: filters,
});
