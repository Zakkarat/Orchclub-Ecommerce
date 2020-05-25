import React, { useState } from "react";
import Link from "next/link";
import {useRouter} from "next/router";
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
import useFetch from "../hooks/useFetch";
import {changeFilters} from  "../redux/actions";
import {connect} from "react-redux";

const NavBar = (props) => {
  const router = useRouter();
  const isLogged = useFetch("http://localhost:9000/auth/verify");
  const [size, setSize] = useState(props.filters.size ? props.filters.size : "");
  const [sort, setSort] = useState(props.filters.sort ? props.filters.sort : "");
  const [search, setSearch] = useState(props.filters.search ? props.filters.search : "")
  const [priceRange, setPriceRange] = useState(props.filters.priceRange ? props.filters.priceRange : {min: 0, max: 5000})
  const [secondBar, setSecondBar] = useState(false); 
  const handleFilterChange = () => {
    props.changeFilters({size, sort, priceRange, search})
  }

  return (
    <>
      <MDBNavbar color="white" expand="md" className="pt-3 fixed-top">
        <MDBNavbarBrand>
          <Link href="/">
            <strong>OrchClub</strong>
          </Link>
        </MDBNavbarBrand>
        <MDBNavbarToggler />
        <MDBCollapse id="navbarCollapse3" navbar>
          {!router.pathname.slice(1) ? <MDBNavbarNav className="align-items-center ml-5 pl-5">
            <MDBNavItem className="search" xl="3">
              <MDBFormInline className="search" waves>
                <div className="lg-form my-0 search">
                  <input
                    value={search}
                    onChange={({target}) => setSearch(target.value)}
                    className="form-control mr-lg-2 search text-center"
                    type="text"
                    placeholder="Search"
                    aria-label="Search"
                  />
                </div>
              </MDBFormInline>
            </MDBNavItem>
            <MDBNavItem>
              <MDBBtn color="black" className="text-white" onClick={handleFilterChange}><MDBIcon icon="search"></MDBIcon></MDBBtn>
            </MDBNavItem>
            <MDBNavItem>
              <MDBBtn color="white" onClick={() => setSecondBar(!secondBar)} className="btn-nav">Фильтр</MDBBtn>
            </MDBNavItem>
          </MDBNavbarNav> : ''}
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
                      <MDBDropdownItem href="/orders">
                        Мои заказы
                      </MDBDropdownItem>
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
{secondBar && <MDBNavbar color="white" className="pt-3 fixed-top filters ">
        <MDBNavbarNav className="flex-row justify-content-center search">
          <MDBNavItem className="d-flex align-items-center">
            Цена от &nbsp;
            <input
              className="form-control search text-center price-block p-0"
              type="number"
              value={priceRange.min}
              onChange={({target}) => setPriceRange(Object.assign({}, priceRange, {min: parseInt(target.value)}))}
            ></input>{" "}
            &nbsp; до &nbsp;
            <input
              className="form-control search text-center price-block p-0"
              type="number"
              value={priceRange.max}
              onChange={({target}) => setPriceRange(Object.assign({}, priceRange, {max: parseInt(target.value)}))}
            ></input>
            &nbsp; грн.
          </MDBNavItem>
          <MDBNavItem className="d-flex align-items-center">
            Размер:&nbsp;
            <select
              value={size}
              onChange={({target}) => setSize(target.value)}
              className="browser-default custom-select"
            >
              <option value="">Не выбрано</option>
              <option value="F/S">F/S</option>
              <option value="B/S">B/S</option>
              <option value="NB/S">NB/S</option>
              <option value="S/S">S/S</option>
            </select>
          </MDBNavItem>
          <MDBNavItem className="d-flex align-items-center">
            Сортировать:&nbsp;
            <select
              value={sort}
              onChange={({target}) => setSort(target.value)}
              className="browser-default custom-select"
            >
              <option value="">Не выбрано</option>
              <option value="Алфавит ↑">Алфавит ↑</option>
              <option value="Алфавит ↓">Алфавит ↓</option>
              <option value="Цена ↑">Цена ↑</option>
              <option value="Цена ↓">Цена ↓</option>
            </select>
          </MDBNavItem>
          <MDBNavItem>
              <MDBBtn color="black" className="text-white" onClick={handleFilterChange}>Подтвердить</MDBBtn>
            </MDBNavItem>
        </MDBNavbarNav>
      </MDBNavbar>}
    </>
  );
};

const mapDispatchToProps = {
  changeFilters
}

const mapStateToProps = ({filters}) => ({
  filters
})
 
export default connect(mapStateToProps,mapDispatchToProps)(NavBar);
