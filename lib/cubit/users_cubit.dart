
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:searching_datas/cubit/users_state.dart';
import 'package:searching_datas/data/service/users_service.dart';

import '../data/model/users_api_model.dart';

class UsersCubit extends Cubit<UsersCubitState> {
  UsersCubit() : super(UsersLoading());
  TextEditingController apiController = TextEditingController();

  void getUsers( ) async {
    emit(UsersLoading());
    final usersModel = await UsersService.getUsersService();
    if (usersModel is List<UsersApiModel>) {
      emit(UsersSuccess(usersModel: usersModel));
    } else {
      emit(UsersError());
    }
  }

  @override
  Future<void> close() {
    apiController.dispose();
    return super.close();
  }
}
