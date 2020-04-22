import React from "react";
import Link from 'next/link'
import {
  MDBNavbar,
  MDBNavbarBrand,
  MDBNavbarNav,
  MDBNavItem,
  MDBNavLink,
  MDBNavbarToggler,
  MDBCollapse,
  MDBFormInline,
  MDBDropdown,
  MDBDropdownToggle,
  MDBDropdownMenu,
  MDBDropdownItem,
  MDBIcon,
} from "mdbreact";
import useFetch from '../hooks/useFetch'

const NavBar = () => {
  const isLogged = useFetch('http://localhost:9000/auth/verify');
  return (
    <MDBNavbar color="white" expand="md" className="pt-3">
      <MDBNavbarBrand>
        <Link href="/"><strong>OrchClub</strong></Link>
      </MDBNavbarBrand>
      <MDBNavbarToggler />
      <MDBCollapse id="navbarCollapse3" navbar>
        <MDBNavbarNav className="search">
          <MDBNavItem className="search">
            <MDBFormInline className="search" waves>
              <div className="lg-form my-0 search">
                <input
                  className="form-control mr-lg-2 search"
                  type="text"
                  placeholder="Search"
                  aria-label="Search"
                />
              </div>
            </MDBFormInline>
          </MDBNavItem>
        </MDBNavbarNav>
        <MDBNavbarNav right>
          <MDBNavItem className="mr-5">
            <MDBDropdown>
              <MDBDropdownToggle className="black-dropdown" nav caret>
                <span className="mr-2">
                  <MDBIcon icon="user"></MDBIcon>
                </span>
              </MDBDropdownToggle>
              <MDBDropdownMenu className="mr-5">
                {isLogged.status === 200 ? (
                  <>
                    <MDBDropdownItem href="#!">Мои данные</MDBDropdownItem>
                    <MDBDropdownItem href="/payment">Корзина</MDBDropdownItem>
                    <MDBDropdownItem href="/orders">Мои заказы</MDBDropdownItem>
                  </>
                ) : (
                  <>
                    <MDBDropdownItem href="/auth">Войти</MDBDropdownItem>
                    <MDBDropdownItem href="payment">
                      Зарегистрироваться
                    </MDBDropdownItem>
                  </>
                )}
              </MDBDropdownMenu>
            </MDBDropdown>
          </MDBNavItem>
        </MDBNavbarNav>
      </MDBCollapse>
    </MDBNavbar>
  );
};

export default NavBar;
