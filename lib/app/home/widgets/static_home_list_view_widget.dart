import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:searching_datas/cubit/users_cubit.dart';
import 'package:searching_datas/provider/home_provider.dart';
import '../../../cubit/users_state.dart';
import '../../home2/widget/home_empty_widget.dart';
import 'static_home_list_tile_widget.dart';

class StaticHomeListViewWidget extends StatelessWidget {
  const StaticHomeListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = context.watch<HomeProvider>();
    return SizedBox(
      height: MediaQuery.of(context).size.height - 214,
      child: BlocBuilder<UsersCubit, UsersCubitState>(
        builder: (context, state) {
          return homeProvider.foundList.isEmpty
              ? const HomeEmptyWidget()
              : ListView.builder(
                  itemCount: homeProvider.foundList.length,
                  itemBuilder: (context, index) {
                    final users = homeProvider.foundList[index];
                    return StaticHomeListTileWidget(
                      id: users.id,
                      name: users.name,
                      mail: users.mail,
                    );
                  },
                );
        },
      ),
    );
  }
}
