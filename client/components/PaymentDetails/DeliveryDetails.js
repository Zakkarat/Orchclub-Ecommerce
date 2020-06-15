import React from "react";
import { MDBRow, MDBCol } from "mdbreact";
import setValue from "../../helpers/setValue";

const DeliveryDetails = ({
  deliveryType,
  NPdepartment,
  setNPDepartment,
  takeAway,
  setTakeAway,
}) => {
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
  return <></>;
};

export default DeliveryDetails;
