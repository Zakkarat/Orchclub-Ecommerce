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
import {IMainNavBarProps} from "../../interfaces/components/INavBarProps";

const MainNavbar = ({
  isLogged,
  router,
  isOpen,
  setIsOpen,
  search,
  setSearch,
  handleFilterChange,
  secondBar,
  setSecondBar,
}:IMainNavBarProps) => (
  <MDBNavbar color="white" light expand="md" className="pt-3 fixed-top pointer">
    <MDBNavbarBrand>
      <Link href="/">
        <strong>OrchClub</strong>
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
                />
              </div>
            </MDBFormInline>
            <MDBBtn
              color="dark"
              className="text-white"
              onClick={handleFilterChange}
            >
              <MDBIcon icon="search"/>
            </MDBBtn>
          </MDBNavItem>
          <MDBNavItem>
            <MDBBtn
                color="dark"
                onClick={() => setSecondBar(!secondBar)}
                className="btn-nav"
            >
              Фильтр
            </MDBBtn>
          </MDBNavItem>
        </MDBNavbarNav>
      )}
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
                  <MDBDropdownItem href="/payment">Корзина</MDBDropdownItem>
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
