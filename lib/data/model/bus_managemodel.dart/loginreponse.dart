class LoginResponse {
  final String apiKey;
  final String accessToken;

  LoginResponse({required this.apiKey, required this.accessToken});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      apiKey: json['refresh'],
      accessToken: json['access'],
    );
  }
}
