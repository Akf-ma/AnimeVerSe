import 'package:http/http.dart' as http;

class AnimeRepository {
  static String baseUrl = 'https://api.tenrai.org/v1';
  final http.Client _client = http.Client();

  Future<<List<Anime>> getTopAnime({int page = 1}) async
}