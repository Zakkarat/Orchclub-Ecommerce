import {SetStateAction, SyntheticEvent} from "react";

export default (e:SyntheticEvent<HTMLInputElement, Event>, setCallback:React.Dispatch<SetStateAction<string>>) => {
  const target = e.target as HTMLInputElement;
  setCallback(target.value);
};
