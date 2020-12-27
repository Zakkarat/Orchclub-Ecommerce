import React from "react";
import { MDBRow, MDBCol } from "mdbreact";
import setValue from "../../helpers/setValue";
import {IDeliveryTypeProps} from "../../interfaces/components/IPaymentDetailsProps";

const DeliveryType = ({ deliveryType, setDeliveryType }:IDeliveryTypeProps) => {
  return (
    <MDBRow>
      <MDBCol className="pt-1">
        <h4 className="h4-responsive align-self-center"> Тип доставки:</h4>{" "}
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
  );
};

export default DeliveryType;
