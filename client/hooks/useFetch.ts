import { useEffect, useState } from "react";
import {IFetchResult} from "../interfaces/hooks/IUseFetch";

const useFetch = (url:string) => {
  const preFetchResult:IFetchResult= {
    isLoaded: false,
    error: null,
  }
  const [fetchResult, setFetchResult] = useState(preFetchResult);

  useEffect(() => {
    const newFetchResult = fetchResult;
    fetch(url, { credentials: "include" })
      .then((result) => {
        newFetchResult.status = result.status;
        newFetchResult.isLoaded = result.ok;
        return result.json();
      })
      .then((data) => {
        newFetchResult.data = data;
      })
      .catch((error) => {
        newFetchResult.error = error;
      })
      .then(() => {
        setFetchResult(newFetchResult);
      });
  }, []);

  return fetchResult;
};

export default useFetch;
