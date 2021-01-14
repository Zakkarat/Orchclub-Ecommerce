import {categoryChange} from "../../types/actions";
import {ICategory} from "../../../interfaces/IOrchid";

export interface ICategoriesProps {
    categoryChange: categoryChange
}

export interface ICarouselProps extends ICategoriesProps{
    categories:ICategory[],
}