const {
  DataTypes
} = require('sequelize');

module.exports = sequelize => {
  const attributes = {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      defaultValue: null,
      primaryKey: true,
      autoIncrement: true,
      comment: null,
      field: "f_id"
    },
    dec1: {
      type: DataTypes.DECIMAL,
      allowNull: false,
      defaultValue: null,
      primaryKey: false,
      autoIncrement: false,
      comment: null,
      field: "f_dec1"
    },
    dec2: {
      type: DataTypes.DECIMAL,
      allowNull: false,
      defaultValue: null,
      primaryKey: false,
      autoIncrement: false,
      comment: null,
      field: "f_dec2"
    }
  };
  const options = {
    tableName: "t_decimal",
    comment: "",
    indexes: []
  };
  const DecimalModel = sequelize.define("decimalModel", attributes, options);
  return DecimalModel;
};