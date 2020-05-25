import React, {useState} from 'react';
import { MDBBtn, MDBCard, MDBCardBody, MDBInput, MDBCol, MDBIcon, MDBRow } from 'mdbreact';
import MenuItem from '@material-ui/core/MenuItem';
import InputLabel from '@material-ui/core/InputLabel';
import FormControl from '@material-ui/core/FormControl';
import Select from '@material-ui/core/Select';
import cities from '../libs/ua-cities.json';
import setValue from '../helpers/setValue';
import {useRouter} from 'next/router';

const Card = () => {
  const router = useRouter();
  const [name, setName] = useState('');
  const [password, setPassword] = useState('');
  const [region, setRegion] = useState('');
  const [city, setCity] = useState('');
  const [adress, setAdress] = useState('');
  const [phone, setPhone] = useState('+380');
  const [error, setError] = useState(false);

  const handleValidPhone = (e) => {
    const newPhone = e.target.value;
    if(newPhone.length < 14 && newPhone.length > 3 ) {
      setValue(e, setPhone);
    }
  }

  const handleSubmit = async ({target}) => {
    target.disabled = true;
    await fetch("http://localhost:9000/auth/register", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ name, password, region, city, adress, phone }),
      credentials: 'include'
    }).then(({status}) => {
      if(status === 200) {
        router.replace('/');
      } else {
        setError(true);
        target.disabled = false;
      }
    });
  }

  return (
    <MDBCol lg="6" xl="3">
      <MDBCard id="classic-card">
        <MDBCardBody className="black-text">
          <h3 className="text-center"> Регистрация:
          </h3>
          <hr className="hr-light" />
          <MDBInput
            className="black-text"
            iconClass="black-text"
            label="Ваше имя"
            icon="user"
            value={name}
            onChange={(e) => setValue(e, setName)}
          />
          <MDBInput
            className="black-text"
            iconClass="black-text"
            label="Ваш пароль"
            icon="lock"
            type="password"
            value={password}
            onChange={(e) => setValue(e, setPassword)}
          />
      <MDBCol className="d-flex align-content-center px-0"><MDBIcon className="pt-3 ic-32 font-size-fix" icon="mountain" /><FormControl className="ml-2 w-100">
        <InputLabel id="demo-simple-select-label">Регион</InputLabel>
        <Select
          labelId="demo-simple-select-label"
          id="demo-simple-select"
          value={region}
          onChange={(e) => setValue(e, setRegion)}
        >
          {cities[0].regions.map((region, i) => <MenuItem key={i} value={region.name}>{region.name}</MenuItem>)}
        </Select>
      </FormControl></MDBCol>
      <MDBCol className="d-flex align-content-center px-0 mt-3"><MDBIcon className="pt-3 ic-32 font-size-fix" icon="city" /><FormControl className="ml-2 w-100">
        <InputLabel id="demo-simple-select-label">Город</InputLabel>
        <Select disabled={!region ? true : false}
          labelId="demo-simple-select-label"
          id="demo-simple-select"
          value={city}
          onChange={(e) => setValue(e, setCity)}
        >
          {region && cities[0].regions.filter(elem => elem.name === region)[0].cities.map((city, i) => <MenuItem key={i} value={city.name}>{city.name}</MenuItem>)}
        </Select>
      </FormControl></MDBCol>
      <MDBInput
            className="black-text mb-2"
            iconClass="black-text"
            label="Ваш адресс"
            icon="map-signs"
            type="text"
            value={adress}
            onChange={(e) => setValue(e, setAdress)}
          />
      <MDBInput
            className="black-text mb-2"
            iconClass="black-text"
            label="Ваш телефон"
            icon="phone"
            type="phone"
            value={phone}
            onChange={(e) => handleValidPhone(e)}
          />
          {error && <p className="text-center text-danger">Проверьте правильность введенных данных.</p>}
          <div className="text-center mt-4 white-text">
            <MDBBtn color="black" onClick={handleSubmit} className="white-text">Зареєструватися</MDBBtn>
          </div>
        </MDBCardBody>
      </MDBCard>
  </MDBCol>
  )
}

export default Card;