abstract class SignupState {}

class OnInitialSignupState extends SignupState {}

class OnStartSignupState extends SignupState {}

class OnLoadedSignupState extends SignupState {}

class OnErrorSignupState extends SignupState {
  final String errorMessage;

  OnErrorSignupState(this.errorMessage);
}
