/// GPT images 2.5 SDK for Dart & Flutter
/// Official Website: https://images25.art
library gpt_images_25;

const String officialUrl = 'https://images25.art';
const String serviceName = 'GPT images 2.5';
const String version = '0.1.0';

class Client {
  final String? apiKey;
  final String baseUrl;

  Client({this.apiKey, this.baseUrl = officialUrl});
}
