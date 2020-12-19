import React from "react";
import filtrate from "../../helpers/filtrate";
import CircularProgress from "@material-ui/core/CircularProgress";
import Link from "next/link";
import { MDBCard, MDBCardBody, MDBCardTitle } from "mdbreact";
import {IImageListProps} from "../../interfaces/components/IImageStackProps";

const ImageList = ({ orchids, filters, loading }:IImageListProps) => (
  <>
    {!loading ? (
      orchids &&
      filtrate(orchids, filters).map((elem) => (
        <MDBCard className="orch-card" key={elem.Id}>
          <Link href={`/orchid?id=${elem.Id}`}>
            <a>
              <img
                className="img-fluid rounded w-100 h-responsive"
                src={elem.Image}
                alt={elem.Name}
              />
              <MDBCardBody>
                <MDBCardTitle tag="h6" className="text-center undecorate">
                  {elem.Name}
                </MDBCardTitle>
              </MDBCardBody>
            </a>
          </Link>
        </MDBCard>
      ))
    ) : (
      <div className="position-relative">
        <CircularProgress disableShrink></CircularProgress>
      </div>
    )}
  </>
);

export default ImageList;
