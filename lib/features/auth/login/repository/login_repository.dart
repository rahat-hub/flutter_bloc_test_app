
class LoginRepository {
  // LoginRepository._();
  Future<bool> login({required String username, required String password}) async {
    await Future.delayed(const Duration(seconds: 2));
    return username == "admin" && password == "12345";
  }
}