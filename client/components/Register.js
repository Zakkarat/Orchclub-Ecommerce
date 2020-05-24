import React, {useState} from 'react';
import { MDBBtn, MDBCard, MDBCardBody, MDBInput, MDBCol, MDBIcon, MDBRow } from 'mdbreact';
import MenuItem from '@material-ui/core/MenuItem';
import InputLabel from '@material-ui/core/InputLabel';
import { makeStyles } from '@material-ui/core/styles';
import FormControl from '@material-ui/core/FormControl';
import Select from '@material-ui/core/Select';
import { KeyboardDatePicker } from "@material-ui/pickers";
import 'react-day-picker/lib/style.css';

const useStyles = makeStyles((theme) => ({
  formControl: {
    margin: theme.spacing(1),
    minWidth: 150,
  },
  selectEmpty: {
    marginTop: theme.spacing(2),
  },
}));

const Card = () => {
  const classes = useStyles();
  const [selectedDate, handleDateChange] = useState(new Date());
  const [age, setAge] = React.useState('');
  const [country, setCountry] = React.useState('');
  const [city, setCity] = React.useState('');
  const handleChange = (event) => {
    setAge(event.target.value);
  };
  const handleChangeC = (event) => {
    setCountry(event.target.value);
  };
  const handleChangeCity = (event) => {
    setCity(event.target.value);
  };
  return (
    <MDBCol md="2" xl="3">
      <MDBCard id="classic-card">
        <MDBCardBody className="black-text">
          <h3 className="text-center"> Реєстрація:
          </h3>
          <hr className="hr-light" />
          <MDBInput
            className="black-text"
            iconClass="black-text"
            label="Ваше Ім'я"
            icon="user"
          />
        <MDBCol className="d-flex align-content-center px-0"><MDBIcon far className="pt-4" icon="calendar-alt ic-32" /><KeyboardDatePicker
          disableToolbar
          variant="inline"
          format="MM/dd/yyyy"
          margin="normal"
          id="date-picker-inline"
          label="Дата народження"
          value={selectedDate}
          className="ml-3 w-100"
          onChange={handleDateChange}
          KeyboardButtonProps={{
            'aria-label': 'change date',
          }}
        /></MDBCol>
       <MDBCol className="d-flex align-content-center px-0"><MDBIcon className="pt-3" icon="transgender-alt ic-32" /><FormControl className="ml-3 w-100">
        <InputLabel id="demo-simple-select-label">Стать</InputLabel>
        <Select
          labelId="demo-simple-select-label"
          id="demo-simple-select"
          value={age}
          onChange={handleChangeC}
        >
          <MenuItem value={1}>Чоловік</MenuItem>
          <MenuItem value={2}>Жінка</MenuItem>
          <MenuItem value={3}>Не знаю</MenuItem>
        </Select>
      </FormControl></MDBCol>
      <MDBCol className="d-flex align-content-center px-0 mt-3"><MDBIcon className="pt-3 ic-32" icon="globe-americas " /><FormControl className="ml-3 w-100">
        <InputLabel id="demo-simple-select-label">Країна</InputLabel>
        <Select
          labelId="demo-simple-select-label"
          id="demo-simple-select"
          value={country}
          onChange={handleChange}
        >
          <MenuItem value={1}>Україна</MenuItem>
          <MenuItem value={2}>Албанія</MenuItem>
          <MenuItem value={3}>Гондурас</MenuItem>
        </Select>
      </FormControl></MDBCol>
      <MDBCol className="d-flex align-content-center px-0 mt-3"><MDBIcon className="pt-3 ic-32" icon="city" /><FormControl className="ml-2 w-100">
        <InputLabel id="demo-simple-select-label">Місто</InputLabel>
        <Select
          labelId="demo-simple-select-label"
          id="demo-simple-select"
          value={city}
          onChange={handleChangeCity}
        >
          <MenuItem value={1}>Київ</MenuItem>
          <MenuItem value={2}>Житомир</MenuItem>
          <MenuItem value={3}>Хмельницьк</MenuItem>
        </Select>
      </FormControl></MDBCol>
      <MDBInput
            className="black-text mb-2"
            iconClass="black-text"
            label="Ваш пароль"
            icon="lock"
            type="password"
          />
          <div className="text-center mt-4 white-text">
            <MDBBtn color="black" className="white-text">Зареєструватися</MDBBtn>
          </div>
        </MDBCardBody>
      </MDBCard>
  </MDBCol>
  )
}

export default Card;