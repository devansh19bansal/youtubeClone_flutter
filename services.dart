import 'package:dio/dio.dart';

class Services {
  // String apikey = 'AIzaSyAVZ_dUp2IhB60hAx89bhEcNqkBYrMCJwE';
  // String path =
  //     'https://youtube.googleapis.com/youtube/v3/videos?part=snippet&part=contentDetails&part=statistics&chart=mostPopular&key=';

  String apikey = 'AIzaSyD-JG3qbbe80AeSfP9MVlYQ0iJz3bXdtt8';
  String path =
      'https://youtube.googleapis.com/youtube/v3/videos?part=snippet&part=contentDetails&part=statistics&chart=mostPopular&maxResults=200&regionCode=IN&key=';

  final dio = Dio();
  getHttp() async {
    final response = await dio.get(path + apikey);
    return response.data;
  }
}



// curl \
//   'https://youtube.googleapis.com/youtube/v3/videos?part=snippet&part=contentDetails&part=statistics&chart=mostPopular&key=[YOUR_API_KEY]' \
//   --header 'Authorization: Bearer [YOUR_ACCESS_TOKEN]' \
//   --header 'Accept: application/json' \
//   --compressed


// curl \
//   'https://youtube.googleapis.com/youtube/v3/videos?part=snippet&part=contentDetails&part=statistics&chart=mostPopular&maxResults=200&regionCode=IN&key=[YOUR_API_KEY]' \
//   --header 'Authorization: Bearer [YOUR_ACCESS_TOKEN]' \
//   --header 'Accept: application/json' \
//   --compressed
