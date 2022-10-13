part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {}
class TheRegisterEvent extends RegisterEvent {
  final String name;
  final String email;
  final String phonenumber;
  final String password;

  TheRegisterEvent(
      {required this.name, required this.email,required this.phonenumber ,required this.password});
}
class GobackEvent extends RegisterEvent{
}
class GoogleSignInEvent extends RegisterEvent{
}