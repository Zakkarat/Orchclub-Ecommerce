export const CATEGORY_CHANGE = 'CATEGORY_CHANGE';
export const CHANGE_PAYMENT_STATE = "CHANGE_PAYMENT_STATE";

export const categoryChange = (category) => ({
    type: CATEGORY_CHANGE,
    payload: category
})

export const changePaymentState = (state) => ({
    type: CHANGE_PAYMENT_STATE,
    payload: {state}
})
