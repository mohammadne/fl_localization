import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fl_audio/fl_audio.dart';
import 'package:meta/meta.dart';

part 'api_event.dart';
part 'api_state.dart';

class ApiBloc extends Bloc<ApiEvent, ApiState> {
  @override
  ApiState get initialState => ApiInitial();

  @override
  Stream<ApiState> mapEventToState(ApiEvent event) async* {
    yield ApiLoading();
    await Future.delayed(Duration(seconds: 2));
    if (event is ApiPlayPlayList1) {
      yield ApiLoaded(list1);
    } else if (event is ApiPlayPlayList1) {
      yield ApiLoaded(list2);
    }
  }
}

List<FlAudioItem> list1 = <FlAudioItem>[
  FlAudioItem(
    id: "https://dl.songsara.net/RaMt!N/99/4-Tir/Wars%20of%20Faith%20%28Playlist%20By%20SONGSARA.NET%29%20128K/01%20Wars%20of%20Faith%20%28Audiomachine%29.mp3",
    album: "Wars of Faith",
    title: "(Audiomachine)",
    artist: "Various Artists",
    duration: Duration(milliseconds: 235000),
    artUri: "https://songsara.net/wp-content/uploads/SSI17/Focus-&-Study-2.jpg",
  ),
  FlAudioItem(
    id: "https://dl.songsara.net/RaMt!N/99/4-Tir/Wars%20of%20Faith%20%28Playlist%20By%20SONGSARA.NET%29%20128K/02%20Freedom%20Fighters%20%28Thomas%20Bergersen%2C%20Two%20Steps%20From%20Hell%29.mp3",
    album: "Wars of Faith",
    title: "(Thomas Bergersen, Two Steps From Hell)",
    artist: "Various Artists",
    duration: Duration(milliseconds: 153000),
    artUri:
        "https://songsara.net/wp-content/uploads/2020/07/Wars-of-Faith-Playlist-By-SONGSARA.NET_-285x285.jpg",
  ),
  FlAudioItem(
    id: "https://dl.songsara.net/RaMt!N/99/4-Tir/Wars%20of%20Faith%20%28Playlist%20By%20SONGSARA.NET%29%20128K/03%20Existence%20%28feat.%20Juliet%20Lyons%29%20%28Nick%20Murray%29.mp3",
    album: "Wars of Faith",
    title: "(feat. Juliet Lyons) ",
    artist: "Various Artists",
    duration: Duration(milliseconds: 149000),
    artUri:
        "https://songsara.net/wp-content/uploads/SSI17/Caressing%20The%20Moments.jpg",
  ),
  FlAudioItem(
    id: "https://dl.songsara.net/RaMt!N/99/4-Tir/Wars%20of%20Faith%20%28Playlist%20By%20SONGSARA.NET%29%20128K/04%20The%20Glorious%20Ones%20%28Epic%20Soul%20Factory%2C%20Cesc%20Vil%C3%A0%20%26%20Fran%20Soto%29.mp3",
    album: "Wars of Faith",
    title: "(Epic Soul Factory, Cesc Vilà & Fran Soto)",
    artist: "Various Artists",
    duration: Duration(milliseconds: 195000),
    artUri:
        "https://songsara.net/wp-content/uploads/2020/06/Jim-Brickman-Bossa-190x190.jpg",
  ),
];

List<FlAudioItem> list2 = <FlAudioItem>[
  FlAudioItem(
    id: "https://dl.songsara.net/RaMt!N/99/4-Tir/Kaveh%20Karandish%20-%20Spirit%20of%20Hope%20%282020%29%20SONGSARA.NET/01%20Spirit%20of%20Hope.mp3",
    album: "Spirit of Hope",
    title: "Spirit of Hope",
    artist: "Kaveh Karandish",
    duration: Duration(milliseconds: 275000),
    artUri:
        "https://songsara.net/wp-content/uploads/2020/07/Kaveh-Karandish-Spirit-of-Hope-285x285.jpg",
  ),
  FlAudioItem(
    id: "https://dl.songsara.net/RaMt!N/99/4-Tir/Kaveh%20Karandish%20-%20Spirit%20of%20Hope%20%282020%29%20SONGSARA.NET/02%20Shades%20of%20Light.mp3",
    album: "Spirit of Hope",
    title: "Shades of Light",
    artist: "Kaveh Karandish",
    duration: Duration(milliseconds: 260000),
    artUri:
        "https://songsara.net/wp-content/uploads/2020/07/Martin-Czerny-Unloved-190x190.jpg",
  ),
];
