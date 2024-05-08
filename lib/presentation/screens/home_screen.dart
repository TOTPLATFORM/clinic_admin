import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

import '../../core/dependency_injection/di_container.dart';
import '../../core/routes/routes.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/shared_keys.dart';
import '../blocs/category/category_bloc.dart';
import '../blocs/doctor/doctor_bloc.dart';
import '../widgets/doctor_item.dart';
import '../widgets/section_header_widget.dart';
import '../widgets/tot_text_form_filed_search_atom.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController searchController;
  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final String? userName = preferences.getString(SharedKeys.userName);
    return Scaffold(
        body: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.only(top: 50, bottom: 30),
        color: AppColors.grayShade100,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, $userName",
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Doctors",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/images/clinc_logo.png",
                      width: 50,
                      height: 50,
                    )
                  ]),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TotTextFormFiledSearchAtom(
                onTap: () => context.pushNamed(Routes.search),
                focusedBorderColor: AppColors.greenColor,
                controller: searchController,
                radius: 16,
                isPrefix: true,
                borderColor: AppColors.grayShade100,
                onChanged: (p0) {
                  // context.pushNamed(Routes.search);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  return state.maybeMap(orElse: () {
                    return Container();
                  }, loading: (value) {
                    return const CircularProgressIndicator.adaptive();
                  }, success: (value) {
                    return SectionHeaderWidget(
                      subTitlePadding: const EdgeInsets.all(0),
                      titlePadding: const EdgeInsets.symmetric(vertical: 0),
                      size: 16,
                      titleFontWeight: FontWeight.w400,
                      showButton: true,
                      title: 'Categories',
                      subtitle: 'View all',
                      subTitleColor: AppColors.grey,
                      onTap: () {},
                      themeIcon: Icons.keyboard_arrow_right_sharp,
                      iconSize: 30,
                    );
                  });
                },
              ),
            ),
            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () {
                    return Container();
                  },
                  loading: (value) {
                    return const CircularProgressIndicator.adaptive();
                  },
                  success: (value) {
                    return Container(
                      height: 100,
                      margin: const EdgeInsets.only(top: 20.0),
                      alignment: Alignment.topLeft,
                      color: AppColors.addCountColor,
                      child: ListView.builder(
                        itemCount: value.categories?.value?.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    context.pushNamed(Routes.category, extra: {
                                      "categoryId":  value
                                              .categories
                                              ?.value?[index]
                                              .id.toString() ??
                                          "",
                                      "categoryName": value
                                              .categories
                                              ?.value?[index]
                                              .specializationName ??
                                          ""
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                    ),
                                    child: const TOTImageAtom.asset(
                                      "assets/images/clinc_logo.png",
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                TOTTextAtom.titleMedium(
                                  value.categories?.value?[index]
                                          .specializationName ??
                                      "",
                                  color: Colors.black,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SectionHeaderWidget(
                subTitlePadding: const EdgeInsets.all(0),
                titlePadding: const EdgeInsets.symmetric(vertical: 0),
                size: 16,
                titleFontWeight: FontWeight.w400,
                showButton: true,
                title: 'Recommendation',
                subtitle: 'View all',
                subTitleColor: AppColors.grey,
                onTap: () {},
                themeIcon: Icons.keyboard_arrow_right_sharp,
                iconSize: 30,
              ),
            ),
            BlocBuilder<DoctorBloc, DoctorState>(
              builder: (context, state) {
                return state.maybeMap(orElse: () {
                  return Container();
                }, loading: (value) {
                  return const CircularProgressIndicator.adaptive();
                }, success: (value) {
                  return SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.48,
                    child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemCount: value.doctors?.value?.length,
                        itemBuilder: ((context, index) {
                          return DoctorItem(
                            imagePath: "assets/images/app_logo.png",
                            doctorDescription:
                                value.doctors?.value![index].doctorEmail ?? "",
                            doctorName:
                                value.doctors?.value![index].userName ?? "",
                            doctorType: value.doctors?.value![index]
                                    .specialization?.specializationName ??
                                "",
                            onTap: () {
                              if (value.doctors?.value![index].id != null) {
                                context.pushNamed(Routes.doctorDetails,
                                    extra: value.doctors?.value?[index].id);
                              }
                            },
                          );
                        })),
                  );
                });
              },
            )
          ],
        ),
      ),
    ));
  }
}
