import 'package:net_ease_cloud_music_tv/model/playlist/play_detail_model.dart';

import '../model/playlist/play_listen_model.dart';
import '../model/playlist/song_detail_model.dart';
import 'main.dart';

class PlayRequest {
  static getPlayDetail(pid) async {
    final url = "/playlist/detail?id=$pid";
    print("请求歌单详情");
    ResponseData data = await HttpClass.get(url);
    if (!data.error) {
      return PlayDetailModel.fromJson(data.data);
    } else {
      return PlayDetailModel();
    }
  }

  static getSongDetail(ids) async {
    final url = "/song/detail?ids=$ids";
    print("请求歌曲详情");
    ResponseData data = await HttpClass.get(url);
    if (!data.error) {
      return SongDetailModel.fromJson(data.data);
    } else {
      return SongDetailModel();
    }
  }

  static getListenUrl(ids) async {
    final url = "/song/url?br=999000&id=$ids";
    print("请求歌曲播放地址");
    ResponseData data = await HttpClass.get(url);
    if (!data.error) {
      return PlayListenModel.fromJson(data.data);
    } else {
      return PlayListenModel();
    }
  }
}
