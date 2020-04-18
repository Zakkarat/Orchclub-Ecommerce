import React from 'react'
import {
    MDBContainer,
    MDBCol,
    MDBCard,
    MDBCardImage,
    MDBCardBody,
    MDBCardTitle,
  } from "mdbreact";
  import StackGrid from "react-stack-grid";
  import orchs from "../orchs.json";

const ImageStack = () => {
    return (
        <StackGrid
        columnWidth={300}
        gutterWidth={25}
        gutterHeight={25}
        duration={2000}
        className="mt-5"
      >
        {orchs["Вандовые"]
          .filter((elem) => elem.image)
          .map((elem, i) => (
            <MDBCol key={i}>
              <MDBCard className="orch-card">
                <MDBCardImage
                  className="img-fluid rounded"
                  src={elem.image}
                />
                <MDBCardBody>
                  <MDBCardTitle tag="h6" className="text-center">
                    {elem.text}
                  </MDBCardTitle>
                </MDBCardBody>
              </MDBCard>
            </MDBCol>
          ))
          .sort(() => Math.random() - 0.5)}
      </StackGrid>
    )
}

export default ImageStack
