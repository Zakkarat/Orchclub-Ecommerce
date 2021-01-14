import {IFilters} from "./INavBarProps";
import IOrchid from "../../../interfaces/IOrchid";

export interface IImageStackProps {
    filters:IFilters
}

export interface IImageListProps {
    orchids:IOrchid[]
    filters:IFilters
    loading:boolean
}
