import React from "react";
import { MDBRow, MDBCol, MDBBtn } from "mdbreact";
import {IOverallProps} from "../../interfaces/components/IPaymentDetailsProps";

const Overall = ({ paymentDetails, price, handlePayClick }:IOverallProps) => {
  if (paymentDetails) {
    return (
      <MDBRow style={{ width: "40rem", marginTop: "2rem" }}>
        <MDBCol className="d-flex justify-content-start pr-3">
          <h3 className="pt-2">
            Всего к оплате:{" "}
            {paymentDetails === "1"
              ? Math.ceil(price + (price / 100) * 2.75)
              : price}{" "}
            грн.
          </h3>
        </MDBCol>
        <MDBCol xl="3" className="d-flex justify-content-end">
          <form
            onSubmit={handlePayClick}
            action="https://www.portmone.com.ua/gateway/"
            method="post"
          >
            <input type="hidden" name="payee_id" value="1185" />
            <input
              type="hidden"
              name="shop_order_number"
              value="76575j65465464161hhhh"
            />
            <input type="hidden" name="bill_amount" value={price} />
            <input type="hidden" name="description" value="Опис замовлення" />
            <input
              type="hidden"
              name="success_url"
              value="http://localhost:3000/"
            />
            <input
              type="hidden"
              name="failure_url"
              value="http://localhost:3000/"
            />
            <input type="hidden" name="lang" value="ru" />
            <input type="hidden" name="encoding" value="UTF-8" />
            <input type="hidden" name="exp_time" value="400" />
            <MDBBtn
              color="dark"
              type="submit"
              className="text-white font-input"
            >
              Оплатить
            </MDBBtn>
          </form>
        </MDBCol>
      </MDBRow>
    );
  }
  return <></>;
};

export default Overall;
