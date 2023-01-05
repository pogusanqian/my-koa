class ArrayUtil {
  /**
   * 将一维数组截取成二维数组, 如将[1,2,3,4,5,6,,7,8]截取成[[1,2,3],[4,5,6],[7,8]]
   * @param arr 源数组
   * @param size 内层数组的长度
   */
   oneToTwoDimen(arr, size) {
    const copyArr = [...arr];
    const twoDimenArr = [];
    while (copyArr.length > size) {
      twoDimenArr.push(copyArr.splice(0, size));
    }
    twoDimenArr.push(copyArr);
    return twoDimenArr;
  }
}

module.exports = new ArrayUtil();
