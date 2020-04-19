import withRedux from "next-redux-wrapper";
import { createStore, compose } from "redux";
import { Provider } from "react-redux";
import reducer from "../redux/reducers";
import "bootstrap-css-only/css/bootstrap.min.css";

const devtools =
  process.browser && window.__REDUX_DEVTOOLS_EXTENSION__
    ? window.__REDUX_DEVTOOLS_EXTENSION__()
    : f => f;

const makeStore = (initialState, options) => {
    return createStore(reducer, initialState, compose(devtools));
  };
  
  const MyApp = ({ Component, pageProps, store }) => {
    return (
      <Provider store={store}>
        <Component {...pageProps} />
      </Provider>
    );
  };

export default withRedux(makeStore)(MyApp);
