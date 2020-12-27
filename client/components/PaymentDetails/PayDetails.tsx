import React from "react";
import { MDBRow, MDBCol } from "mdbreact";
import setValue from "../../helpers/setValue";
import {IPayDetailsProps} from "../../interfaces/components/IPaymentDetailsProps";

const PayDetails = ({
  deliveryType,
  takeAway,
  NPdepartment,
  paymentDetails,
  setPaymentDetails,
  price,
}:IPayDetailsProps) => {
  if (
    (deliveryType === "1" && NPdepartment) ||
    (deliveryType === "2" && takeAway)
  ) {
    return (
      <MDBRow className="mt-3">
        {" "}
        <MDBCol className="pt-1">
          <h4 className="h4-responsive align-self-center">Способ оплаты:</h4>
        </MDBCol>
        <MDBCol>
          <select
            value={paymentDetails}
            onChange={(e) => setValue(e, setPaymentDetails)}
            className="browser-default custom-select"
          >
            <option value="0">Не выбрано</option>
            <option value="1">Оплата картой</option>
            <option value="2">Оплата за реквизитами</option>
          </select>
          {paymentDetails === "1" && (
            <p className="text-muted text-left font-small">
              Данные платежи производятся с комиссией 2.75% от вашего заказа. В
              данном случае стоимость повышена на{" "}
              {Math.ceil((price / 100) * 2.75)} грн.
            </p>
          )}
        </MDBCol>
      </MDBRow>
    );
  }
  return <></>;
};

export default PayDetails;
