import {categoryChange} from "../../types/actions";
import {ICategory} from "../ICategory";

export interface ICategoriesProps {
    categoryChange: categoryChange
}

export interface ICarouselProps extends ICategoriesProps{
    categories:ICategory[],
}