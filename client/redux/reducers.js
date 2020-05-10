  
import {combineReducers} from "redux";
import {CATEGORY_CHANGE, CHANGE_PAYMENT_STATE, SET_OVERALL_PRICE, CHANGE_FILTERS} from "./actions";

const filters = (state = {category: "Вандовые", sort: "", priceRange: {min: 0, max: 5000}, size: "", search: ""}, action) => {
    switch(action.type) {
        case CATEGORY_CHANGE:
            return Object.assign({}, state, action.payload);
        case CHANGE_FILTERS:
            return Object.assign({}, state, action.payload);
        default: 
            return {...state};
    }
}

const payment = (state = {stage: 0}, action) => {
    switch(action.type) {
        case CHANGE_PAYMENT_STATE:
            return Object.assign({}, state, action.payload)
        case SET_OVERALL_PRICE:
            return Object.assign({}, state, action.payload)
        default:
            return {...state}
    }
}

export default combineReducers({filters, payment});