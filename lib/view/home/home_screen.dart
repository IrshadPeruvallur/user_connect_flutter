import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_connect/controller/search_controller.dart';
import 'package:user_connect/controller/user_controller.dart';
import 'package:user_connect/view/home/widget/header_container.dart';
import 'package:user_connect/view/home/widget/user_info_card.dart';
import 'package:user_connect/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Provider.of<UserController>(context, listen: false);
    final filterController =
        Provider.of<FilterController>(context, listen: false);
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () => userController.onRefresh(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderContainer(size: size, filterController: filterController),
                Consumer2<FilterController, UserController>(builder:
                    (context, filterController, userController, child) {
                  return FutureBuilder(
                      future: userController.fetchUserData(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                                ConnectionState.waiting ||
                            userController.isLoading) {
                          return const Center(
                              child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return const CustomText(
                              text: 'Error loading users, Refresh agian');
                        } else {
                          return filterController.isSearchValueEmpty
                              ? const Center(
                                  child: CustomText(text: 'No users found'))
                              : ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                    height: 10,
                                  ),
                                  itemCount: filterController
                                          .filteredUsers.isNotEmpty
                                      ? filterController.filteredUsers.length
                                      : snapshot.data?.length ?? 0,
                                  itemBuilder: (context, index) => UserInfoCard(
                                    userModel: filterController
                                            .filteredUsers.isEmpty
                                        ? userController.userList[index]
                                        : filterController.filteredUsers[index],
                                  ),
                                );
                        }
                      });
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
