  
import {combineReducers} from "redux";
import {CATEGORY_CHANGE} from "./actions";

const filters = (state = {category: "Вандовые"}, action) => {
    switch(action.type) {
        case CATEGORY_CHANGE:
            return {...state, category: action.payload};
        default: 
            return {...state};
    }
}

export default combineReducers({filters});