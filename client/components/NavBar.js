import React from 'react';
import {
    MDBNavbar, MDBNavbarBrand, MDBNavbarNav, MDBNavItem, MDBNavLink, MDBNavbarToggler, MDBCollapse, MDBFormInline,
    MDBDropdown, MDBDropdownToggle, MDBDropdownMenu, MDBDropdownItem
    } from "mdbreact";

const NavBar = () => {
    return (
<MDBNavbar color="white" expand="md" className="pt-3" fixed>
        <MDBNavbarBrand>
          <strong>OrchClub</strong>
        </MDBNavbarBrand>
        <MDBNavbarToggler/>
        <MDBCollapse id="navbarCollapse3" navbar>
          <MDBNavbarNav className="search">
            <MDBNavItem className="search">
            <MDBFormInline className="search" waves>
                <div className="lg-form my-0 search">
                  <input className="form-control mr-lg-2 search" type="text" placeholder="Search" aria-label="Search" />
                </div>
              </MDBFormInline>
            </MDBNavItem>
          </MDBNavbarNav>
        </MDBCollapse>
      </MDBNavbar>
    )
}


export default NavBar;