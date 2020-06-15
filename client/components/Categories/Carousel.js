import React from "react";
import { MDBCol, MDBMask, MDBView, MDBIcon } from "mdbreact";
import {
  Image,
  Slider,
  Slide,
  ButtonBack,
  ButtonNext,
} from "pure-react-carousel";

const Carousel = ({ categories, categoryChange }) => (
  <>
    <ButtonBack className="slider-button align-self-center">
      <MDBIcon icon="angle-double-left" />
    </ButtonBack>
    <Slider className="w-100">
      {categories &&
        categories.map((category) => (
          <Slide key={category.Name}>
            <MDBCol className="w-100 h-100">
              <MDBView
                className="w-100 h-100 rounded pointer"
                onClick={() => categoryChange(category.Name)}
              >
                <Image
                  src={category.Image}
                  className="img-fluid img-category"
                  alt=""
                />
                <MDBMask className="flex-center" overlay="teal-light">
                  <p className="white-text">{category.Name}</p>
                </MDBMask>
              </MDBView>
            </MDBCol>
          </Slide>
        ))}
    </Slider>
    <ButtonNext className="slider-button align-self-center">
      <MDBIcon icon="angle-double-right" />
    </ButtonNext>
  </>
);

export default Carousel;
