class HttpException implements Exception
{
  final String message;

  HttpException(String message) : message = message;

  @override
  String toString() => message;
}


