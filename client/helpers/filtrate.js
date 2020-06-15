export default (orchids, filters) => {
  return orchids
    .sort((a, b) => {
      const { sort } = filters;
      if (!sort) {
        return a.Id - b.Id;
      }
      if (sort === "Алфавит ↑") {
        return a.Name < b.Name ? -1 : a.Name > b.Name ? 1 : 0;
      }
      if (sort === "Алфавит ↓") {
        return a.Name < b.Name ? 1 : a.Name > b.Name ? -1 : 0;
      }
      if (sort === "Цена ↑") {
        return b.Price - a.Price;
      }
      if (sort === "Цена ↓") {
        return a.Price - b.Price;
      }
    })
    .filter((elem) => (filters.size ? filters.size === elem.Size : true))
    .filter(
      (elem) =>
        elem.Price > filters.priceRange.min &&
        elem.Price < filters.priceRange.max
    )
    .filter((elem) =>
      filters.search
        ? elem.Name.split(" ").some((word) =>
            word
              .toLowerCase()
              .match(new RegExp(filters.search.toLowerCase()), "ig")
          )
        : true
    )
    .filter((elem) => elem.Image);
};
