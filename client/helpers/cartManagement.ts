export default (id:number, items:number, localStorage:Storage) => {
    const item = localStorage.getItem("cart") ? localStorage.getItem("cart") : "{}";
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