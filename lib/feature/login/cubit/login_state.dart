abstract class LoginState {}

class OnInitialLoginState extends LoginState {}

class OnStartLoginState extends LoginState {}

class OnLoadedLoginState extends LoginState {
  final String token;

  OnLoadedLoginState(this.token);
}

class OnErrorLoginState extends LoginState {
  final String errorMessage;

  OnErrorLoginState(this.errorMessage);
}
