class ApiEndPoints {
  static const String postApi = "https://jsonplaceholder.typicode.com/posts";
  static const String postApiHive = "https://jsonplaceholder.typicode.com/posts";

  /// implementation third party API(openWeather)
  static const String baseUrl = "https://api.openweathermap.org/data/2.5/weather";
  static const String apiKey = "6d356ec5b0346733e76666649f344a77";

  static String weatherByCity(String cityName) =>
      "$baseUrl?q=$cityName&appid=$apiKey&units=metric";
}