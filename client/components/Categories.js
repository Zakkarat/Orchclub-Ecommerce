import React from "react";
import { MDBCol, MDBRow, MDBMask, MDBView, MDBContainer, MDBIcon } from "mdbreact";
import {
    Image,
  CarouselProvider,
  Slider,
  Slide,
  ButtonBack,
  ButtonNext,
} from "pure-react-carousel";
import "pure-react-carousel/dist/react-carousel.es.css";
const categoriesObj = [
  {
    name: "Вандовые",
    image:
      "https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg",
  },
  {
    name: "Дендробиумы",
    image:
      "https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg",
  },
  {
    name: "Фаленопсис",
    image:
      "https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg",
  },
  {
    name: "Вандовые",
    image:
      "https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg",
  },
  {
    name: "Вандовые",
    image:
      "https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg",
  },
];

const Categories = () => {
  return (
    <MDBContainer className="mt-4">
      <MDBRow>
        <CarouselProvider
            className='w-100 d-flex'
          naturalSlideWidth={400}
          naturalSlideHeight={200}
          visibleSlides={3}
          totalSlides={categoriesObj.length}
        >
          <ButtonBack className="slider-button align-self-center"><MDBIcon icon="angle-double-left" /></ButtonBack>
          <Slider className="w-100">
            {categoriesObj.map((category) => (
              <Slide>
                <MDBCol className="w-100 h-100">
                  <MDBView className="w-100 h-100 rounded">
                    <Image
                      src={category.image}
                      className="img-fluid img-category"
                      alt=""
                    />
                    <MDBMask className="flex-center" overlay="teal-light">
                      <p className="white-text">{category.name}</p>
                    </MDBMask>
                  </MDBView>
                  </MDBCol>
              </Slide>
            ))}
          </Slider>
          <ButtonNext className="slider-button align-self-center"><MDBIcon icon="angle-double-right" /></ButtonNext>
        </CarouselProvider>
      </MDBRow>
      </MDBContainer>
  );
};

export default Categories;
