import 'package:searching_datas/data/model/users_api_model.dart';

abstract class UsersCubitState {}

class UsersLoading extends UsersCubitState {}

class UsersSuccess extends UsersCubitState {
  final List<UsersApiModel> usersModel;
  UsersSuccess({
    required this.usersModel,
  });
}

class UsersError extends UsersCubitState {}
