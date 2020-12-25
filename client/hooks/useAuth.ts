import { useEffect } from "react";
import {NextRouter} from "next/router";

const useAuth = (router:NextRouter) => {
  useEffect(() => {
    const getAuth = async () => {
      await fetch(`http://localhost:9000/auth/verify`, {
        credentials: "include",
      }).then((data) => {
        if (data.status !== 200) {
          router.replace("/auth/login");
        }
      });
    };
    getAuth();
  }, []);
};

export default useAuth;
