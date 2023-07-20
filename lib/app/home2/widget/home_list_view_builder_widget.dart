import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:searching_datas/app/home2/widget/home_empty_widget.dart';
import 'package:searching_datas/constants/app_texts.dart';
import 'package:searching_datas/cubit/users_cubit.dart';
import 'package:searching_datas/cubit/users_state.dart';
import '../../../data/model/users_api_model.dart';
import '../../home/widgets/static_home_list_tile_widget.dart';

class HomeListViewBuilderWidget extends StatelessWidget {
  const HomeListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 168,
      child: BlocBuilder<UsersCubit, UsersCubitState>(
        builder: (context, state) {
          if (state is UsersLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is UsersSuccess) {
            List<UsersApiModel> usersModel = state.usersModel;
            return usersModel.isEmpty? const HomeEmptyWidget() :ListView.builder(
              itemCount: usersModel.length,
              itemBuilder: (context, index) {
                final users = usersModel[index];
                return StaticHomeListTileWidget(
                  id: "${users.id}",
                  mail: users.email!,
                  name: users.name!,
                );
              },
            );
          } else if (state is UsersError) {
            return Center(
              child: Text(AppTexts.error),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}