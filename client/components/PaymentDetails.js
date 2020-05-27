import React, { useState } from "react";
import {
  MDBContainer,
  MDBRow,
  MDBCol,
  MDBCardTitle,
  MDBCard,
  MDBCardBody,
  MDBBtn,
  MDBIcon,
} from "mdbreact";
import setValue from "../helpers/setValue";

const PaymentDetails = ({ price }) => {
  const [deliveryType, setDeliveryType] = useState("0");
  const [NPdepartment, setNPDepartment] = useState(0);
  const [takeAway, setTakeAway] = useState(0);
  const [paymentDetails, setPaymentDetails] = useState(0);

  const handlePayClick = async (e) => {
    console.log(localStorage.getItem("cart"));
    await fetch("http://localhost:9000/orders/createOrder", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        cart: JSON.parse(localStorage.getItem("cart")),
        deliveryInfo: { deliveryType, NPdepartment, takeAway, paymentDetails },
        overall: price,
      }),
      credentials: "include",
    });
  };

  const deliveryDetails = () => {
    if (deliveryType === "1") {
      return (
        <MDBRow className="mt-3">
          {" "}
          <MDBCol className="pt-1">
            <h4 className="h4-responsive align-self-center">Отделение:</h4>
          </MDBCol>
          <MDBCol>
            <select
              value={NPdepartment}
              onChange={(e) => setValue(e, setNPDepartment)}
              className="browser-default custom-select"
            >
              <option value="0">Не выбрано</option>
              <option value="1">Отделение 1</option>
              <option value="2">Отделение 2</option>
            </select>
          </MDBCol>
        </MDBRow>
      );
    }
    if (deliveryType === "2") {
      return (
        <MDBRow className="mt-3">
          {" "}
          <MDBCol className="pt-1">
            <h4 className="h4-responsive align-self-center">Откуда заберу:</h4>
          </MDBCol>
          <MDBCol>
            <select
              value={takeAway}
              onChange={(e) => setValue(e, setTakeAway)}
              className="browser-default custom-select"
            >
              <option value="0">Не выбрано</option>
              <option value="1">Адрес 1</option>
              <option value="2">Адрес 2</option>
            </select>
          </MDBCol>
        </MDBRow>
      );
    }
  };

  const payDetails = () => {
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
                Данные платежи производятся с комиссией 2.75% от вашего заказа.
                В данном случае стоимость повышена на{" "}
                {Math.ceil((price / 100) * 2.75)} грн.
              </p>
            )}
          </MDBCol>
        </MDBRow>
      );
    }
  };

  const overall = () => {
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
                color="black"
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
  };
  return (
    <>
      <MDBIcon
        style={{ fontSize: "36px" }}
        className="mt-4 ml-5 pointer"
        icon="chevron-circle-left"
      />
      <MDBContainer className="d-flex justify-content-center mt-2">
        <MDBCol xl="7">
          <MDBCard style={{ marginTop: "2rem" }}>
            <MDBCardTitle className="text-center pt-3">
              Детали заказа
            </MDBCardTitle>
            <hr className="my-0"></hr>
            <MDBCardBody className="pt-0 p-0">
              <MDBCol className="text-center d-flex align-content-center justify-content-center flex-column mt-2 mb-2">
                <MDBRow>
                  <MDBCol className="pt-1">
                    <h4 className="h4-responsive align-self-center">
                      {" "}
                      Тип доставки:
                    </h4>{" "}
                  </MDBCol>{" "}
                  <MDBCol>
                    {" "}
                    <select
                      value={deliveryType}
                      onChange={(e) => setValue(e, setDeliveryType)}
                      className="browser-default custom-select"
                    >
                      <option value="0">Не выбрано</option>
                      <option value="1">Новая почта</option>
                      <option value="2">Заберу сам</option>
                    </select>
                  </MDBCol>
                </MDBRow>
                {deliveryDetails()}
                {payDetails()}
              </MDBCol>
            </MDBCardBody>
          </MDBCard>
          {overall()}
        </MDBCol>
      </MDBContainer>
    </>
  );
};

export default PaymentDetails;
