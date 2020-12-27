import {ChangeEvent, SetStateAction, SyntheticEvent} from "react";

export default (e:SyntheticEvent<HTMLInputElement | HTMLSelectElement, Event>
    | ChangeEvent<{ name?:string, value:unknown }>,
                setCallback:React.Dispatch<SetStateAction<string>>) => {
    const target = e.target as HTMLInputElement;
    setCallback(target.value);
};
