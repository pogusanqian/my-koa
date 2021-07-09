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
    year: {
      type: DataTypes.DATE,
      allowNull: true,
      defaultValue: null,
      primaryKey: false,
      autoIncrement: false,
      comment: null,
      field: "f_year"
    }
  };
  const options = {
    tableName: "t_year",
    comment: "",
    indexes: []
  };
  const YearModel = sequelize.define("yearModel", attributes, options);
  return YearModel;
};