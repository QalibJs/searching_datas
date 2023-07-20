import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:searching_datas/cubit/users_cubit.dart';
import 'package:searching_datas/data/model/users_api_model.dart';

class UsersService {
  static final Dio _dio = Dio();

  static Future getUsersService() async {
    Response response =
        await _dio.get("https://jsonplaceholder.typicode.com/users");

    if (response.statusCode == 200) {
      final List usersModel = response.data;
      final List<UsersApiModel> users =
          usersModel.map((e) => UsersApiModel.fromJson(e)).toList();
      return users;
    } else {
      return;
    }
  }
}
// ${usersCubit.apiController.text}