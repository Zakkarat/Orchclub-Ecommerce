export default (id, items, localStorage) =>
  localStorage.setItem(
    "cart",
    JSON.stringify(
      [
        ...[
          ...(localStorage.getItem("cart")
            ? JSON.parse(localStorage.getItem("cart"))
            : []),
        ].filter((elem) => elem.item !== id),
        { item: id, quantity: items },
      ].filter((elem) => elem.quantity !== 0)
    )
  );
