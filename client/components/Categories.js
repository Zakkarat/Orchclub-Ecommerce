import React, { useEffect, useState } from "react";
import {
  MDBCol,
  MDBRow,
  MDBMask,
  MDBView,
  MDBContainer,
  MDBIcon,
} from "mdbreact";
import {
  Image,
  CarouselProvider,
  Slider,
  Slide,
  ButtonBack,
  ButtonNext,
} from "pure-react-carousel";
import { connect } from "react-redux";
import "pure-react-carousel/dist/react-carousel.es.css";
import { categoryChange } from "../redux/actions";

const Categories = ({ categoryChange }) => {
  const [categories, setCategories] = useState([]);
  const [windowWidth, setWindowWidth] = useState("");

  useEffect(() => {
    setWindowWidth(window.innerWidth);
    const category = async () => {
      setCategories(
        await fetch("https://orchclub-ecommerce.herokuapp.com/orchids/categories", {
          credentials: "include",
        }).then(async (data) => await data.json())
      );
    };
    category();
  }, []);

  return (
    <MDBContainer style={{ marginTop: "96px" }}>
      <MDBRow>
        <CarouselProvider
          className="w-100 d-flex"
          naturalSlideWidth={400}
          naturalSlideHeight={200}
          visibleSlides={windowWidth < 993 ? (windowWidth < 769 ? 1 : 2) : 3}
          totalSlides={categories.length}
        >
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
        </CarouselProvider>
      </MDBRow>
    </MDBContainer>
  );
};

const mapDispatchToProps = {
  categoryChange,
};

export default connect(null, mapDispatchToProps)(Categories);
