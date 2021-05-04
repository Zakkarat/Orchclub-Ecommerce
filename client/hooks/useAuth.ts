import { useEffect } from "react";
import {NextRouter} from "next/router";
import {HOSTNAME} from "../constants/Constants";

const useAuth = (router:NextRouter) => {
  useEffect(() => {
    const getAuth = async () => {
      await fetch(`http://${HOSTNAME(document)}/auth/verify`, {
        credentials: "include",
      }).then((data) => {
        if (data.status !== 200) {
          router.replace("/login");
        }
      });
    };
    getAuth();
  }, []);
};

export default useAuth;
