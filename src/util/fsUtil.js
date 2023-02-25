const fs = require('fs');
const path = require('path');

class FSUtil {
  /**
   * 读取指定目录下的所有文件, 包括子文件
   * @param dirLocation
   * @returns {[]}
   */
  getFilePathsAtDir(dirLocation) {
    const fileNameArr = [];
    function readNames(pathLocation) {
      const dirInfo = fs.readdirSync(pathLocation, { withFileTypes: true });
      dirInfo.forEach((item) => {
        const location = path.join(pathLocation, item.name);
        item.isFile() ? fileNameArr.push(location) : readNames(location);
      });
    }
    readNames(dirLocation);
    return fileNameArr;
  }
}

module.exports = new FSUtil();
