import React, { useState } from "react";
import {
  MDBContainer,
  MDBCol,
  MDBCardTitle,
  MDBCard,
  MDBCardBody,
  MDBIcon,
} from "mdbreact";
import Overall from "./Overall";
import PayDetails from "./PayDetails";
import DeliveryDetails from "./DeliveryDetails";
import DeliveryType from "./DeliveryType";
import { IPaymentDetailsProps } from "../../interfaces/components/IPaymentDetailsProps";

const PaymentDetails = ({ price }: IPaymentDetailsProps) => {
  const [deliveryType, setDeliveryType] = useState("0");
  const [NPdepartment, setNPDepartment] = useState("0");
  const [takeAway, setTakeAway] = useState("0");
  const [paymentDetails, setPaymentDetails] = useState("0");

  const handlePayClick = async () => {
    const cart = localStorage.getItem("cart");
    if (cart) {
      await fetch("http://localhost:9000/orders/createOrder", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          cart: JSON.parse(cart),
          deliveryInfo: {
            deliveryType,
            NPdepartment,
            takeAway,
            paymentDetails,
          },
          overall: price,
        }),
        credentials: "include",
      }).then(()  => localStorage.removeItem('cart'));
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
          <MDBCard style={{ marginTop: "3rem" }}>
            <MDBCardTitle className="text-center pt-3">
              Детали заказа
            </MDBCardTitle>
            <hr className="my-0" />
            <MDBCardBody className="pt-0 p-0">
              <MDBCol className="text-center d-flex align-content-center justify-content-center flex-column mt-2 mb-2">
                <DeliveryType
                  deliveryType={deliveryType}
                  setDeliveryType={setDeliveryType}
                />
                <DeliveryDetails
                  deliveryType={deliveryType}
                  NPdepartment={NPdepartment}
                  setNPDepartment={setNPDepartment}
                  takeAway={takeAway}
                  setTakeAway={setTakeAway}
                />
                <PayDetails
                  deliveryType={deliveryType}
                  takeAway={takeAway}
                  NPdepartment={NPdepartment}
                  paymentDetails={paymentDetails}
                  setPaymentDetails={setPaymentDetails}
                  price={price}
                />
              </MDBCol>
            </MDBCardBody>
          </MDBCard>
          <Overall
            paymentDetails={paymentDetails}
            price={price}
            handlePayClick={handlePayClick}
          />
        </MDBCol>
      </MDBContainer>
    </>
  );
};

export default PaymentDetails;
