class KazeCommon {
  static String durationTransform(int seconds,{int type = 0}) {
    var d = Duration(seconds: seconds);
    List<String> parts = d.toString().split(':');
    String returnData = "";
    if(type == 0){
      try {
        returnData =
        '${parts[0] == "0" ? '' : parts[0] + '小时'}${parts[1]}分${parts[2].split('.')[0]}秒';
      } catch (ex) {
        returnData = "$seconds秒";
      }
    }else{
      try {
        returnData =
        '${parts[0] == "0" ? '' : parts[0] + ':'}${parts[1]}:${parts[2].split('.')[0]}';
      } catch (ex) {
        returnData = "$seconds s";
      }
    }

    return returnData;
  }
}
