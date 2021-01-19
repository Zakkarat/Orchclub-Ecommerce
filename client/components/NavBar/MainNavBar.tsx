import React from "react";
import Link from "next/link";
import {
  MDBNavbar,
  MDBNavbarBrand,
  MDBNavbarNav,
  MDBNavItem,
  MDBBtn,
  MDBNavbarToggler,
  MDBCollapse,
  MDBFormInline,
  MDBDropdown,
  MDBDropdownToggle,
  MDBDropdownMenu,
  MDBDropdownItem,
  MDBIcon,
} from "mdbreact";
import { IMainNavBarProps } from "../../interfaces/components/INavBarProps";
import "../../stylesheets/nav.css";

const MainNavbar = ({
  cartNumber,
  isLogged,
  router,
  isOpen,
  setIsOpen,
  search,
  setSearch,
  handleFilterChange,
  secondBar,
  setSecondBar,
}: IMainNavBarProps) => (
  <MDBNavbar
    color="white"
    light
    expand="md"
    className="pt-3 fixed-top pointer"
    style={{ marginBottom: "50px" }}
  >
    <MDBNavbarBrand>
      <Link href="/">
        <img src="orch_logo.png" style={{ width: "200px", height: "50px" }} />
      </Link>
    </MDBNavbarBrand>
    <MDBNavbarToggler onClick={() => setIsOpen(!isOpen)} right />
    <MDBCollapse id="navbarCollapse3" isOpen={isOpen} navbar>
      {!router.pathname.slice(1) && (
        <MDBNavbarNav className="align-items-center">
          <MDBNavItem className="search d-flex" xl="3">
            <MDBFormInline className="search" waves>
              <div className="lg-form my-0 search">
                <input
                  value={search}
                  onChange={({ target }) => setSearch(target.value)}
                  className="form-control mr-lg-2 search text-center"
                  type="text"
                  placeholder="Search"
                  aria-label="Search"
                  style={{ marginBottom: "10px" }}
                />
              </div>
            </MDBFormInline>
            <MDBBtn
              color="dark"
              className="text-white"
              onClick={handleFilterChange}
              style={{ marginBottom: "15px" }}
              aria-label="search"
            >
              <MDBIcon icon="search" />
            </MDBBtn>
          </MDBNavItem>
          <MDBNavItem>
            <MDBBtn
              color="dark"
              onClick={() => setSecondBar(!secondBar)}
              className="btn-nav"
              style={{ marginBottom: "15px" }}
            >
              Фильтр
            </MDBBtn>
          </MDBNavItem>
        </MDBNavbarNav>
      )}

      <MDBNavbarNav right>
        <MDBNavItem className="d-flex align-items-center cart-test">
          <MDBBtn
            outline
            color="light"
            style={{ marginBottom: "15px", padding: "6px 15px 6px 16px" }}
          >
            <Link href={"/payment"}>
              <div className="d-flex">
                <MDBIcon
                  icon="shopping-cart"
                  className="pr-1"
                  style={{ fontSize: "16px", marginTop: "2px" }}
                />{" "}
                {cartNumber > 0 && (
                  <span className="circle-cart" style={{ marginLeft: "10px" }}>
                    {cartNumber}
                  </span>
                )}
              </div>
            </Link>
          </MDBBtn>
        </MDBNavItem>
        <MDBNavItem className="cart-test">
          <MDBDropdown>
            <MDBDropdownToggle
              className="black-dropdown"
              style={{ margin: "6px 0 0 8px" }}
              nav
              caret
            >
              <span className="mr-2">
                <MDBIcon icon="user" />
              </span>
            </MDBDropdownToggle>
            <MDBDropdownMenu className="mr-5">
              {isLogged ? (
                <>
                  <MDBDropdownItem href="/payment" className="flex-nav">
                    {" "}
                    Корзина{" "}
                    <Link href={"/payment"}>
                      <div className="d-flex" style={{ width: "30px" }}>
                        {" "}
                        {cartNumber > 0 && (
                          <span
                            className="circle-cart-two"
                            style={{ marginLeft: "10px" }}
                          >
                            {cartNumber}
                          </span>
                        )}
                      </div>
                    </Link>{" "}
                  </MDBDropdownItem>
                  <MDBDropdownItem href="/orders">Мои заказы</MDBDropdownItem>
                </>
              ) : (
                <>
                  <MDBDropdownItem href="/auth/login">Войти</MDBDropdownItem>
                  <MDBDropdownItem href="/auth/register">
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

export default MainNavbar;
