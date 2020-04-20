import React, { useState, useEffect } from "react";
import { useRouter } from 'next/router';
import {
  MDBContainer,
  MDBCol,
  MDBCard,
  MDBCardImage,
  MDBCardBody,
  MDBCardTitle,
} from "mdbreact";
import StackGrid from "react-stack-grid";
import { LazyLoadImage } from "react-lazy-load-image-component";
import { connect } from "react-redux";

const ImageStack = ({ filters }) => {
  const router = useRouter();

  const [imageLimit, setImageLimit] = useState(50);
  const [orchids, setOrchids] = useState([]);

  useEffect(() => {
    const getData = async () => {
      const data = await fetch(
        `http://localhost:9000/orchids?category=${filters.category}`
      ).then(async (data) => await data.json());
      setOrchids(data);
    };
    setImageLimit(25);
    getData();
    console.log(orchids);
  }, [filters]);

  const handleClick = (id) => {
    console.log(id);
    router.push({
      pathname: '/orchid',
      query: { id: id },
    })
  }

  return (
    <>
      <StackGrid
        columnWidth={300}
        gutterWidth={25}
        gutterHeight={25}
        duration={0}
        appearDelay={500}
        className="mt-5"
        monitorImagesLoaded={true}
      >
        {orchids
          ? orchids.sort((a,b) => a.Id - b.Id)
              .filter((elem, i) => elem.Image && i < imageLimit)
              .map((elem, i) => (
                <MDBCard className="orch-card" key={elem.Name} onClick={() => handleClick(elem.Id)}>
                  <LazyLoadImage
                    className="img-fluid rounded w-100 h-responsive"
                    effect="blur"
                    src={elem.Image}
                  />
                  <MDBCardBody>
                    <MDBCardTitle tag="h6" className="text-center">
                      {elem.Name}
                    </MDBCardTitle>
                  </MDBCardBody>
                </MDBCard>
              ))
          : "loading"}
      </StackGrid>
      <button onClick={() => setImageLimit(imageLimit + 25)}></button>
    </>
  );
};

const mapStateToProps = ({ filters }) => ({
  filters,
});

export default connect(mapStateToProps)(ImageStack);
