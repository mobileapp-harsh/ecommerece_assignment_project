
// Create Exception  Class
class CustomHttpExeption {
 final String? exceptionMsg;

  CustomHttpExeption({
    required this.exceptionMsg,
  });

  @override
  String toString() {
    return exceptionMsg!;
  }
}