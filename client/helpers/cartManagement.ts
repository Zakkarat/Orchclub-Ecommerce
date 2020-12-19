import IOrchid from "../interfaces/IOrchid";

export default (id:number, items:IOrchid[], localStorage:Storage) => {
    const item = localStorage.getItem("cart");
    if (item) {
        localStorage.setItem(
            "cart",
            JSON.stringify(
                [
                    ...[
                        ...(localStorage.getItem("cart")
                            ? JSON.parse(item)
                            : []),
                    ].filter((elem) => elem.item !== id),
                    {item: id, quantity: items},
                ].filter((elem) => elem.quantity !== 0)
            )
        );
    }
}