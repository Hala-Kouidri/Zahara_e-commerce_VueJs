module.exports = (connex, Sequelize) => {
  const Product = connex.define("product", {
    name: {
      type: Sequelize.STRING,
    },
    description: {
      type: Sequelize.TEXT,
    },
    categorie: {
      type: Sequelize.STRING,
    },
    price: {
      type: Sequelize.REAL,
    },
    photo: {
      type: Sequelize.STRING,
    },
    
  });
  return Product;
};
