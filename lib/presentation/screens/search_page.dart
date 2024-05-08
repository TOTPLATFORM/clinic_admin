import 'package:clinic_admin/core/routes/routes.dart';
import 'package:clinic_admin/core/theme/app_colors.dart';
import 'package:clinic_admin/presentation/blocs/doctor/doctor_bloc.dart';
import 'package:clinic_admin/presentation/blocs/search/search_bloc.dart';
import 'package:clinic_admin/presentation/widgets/doctor_item.dart';
import 'package:clinic_admin/presentation/widgets/tot_text_form_filed_search_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              TotTextFormFiledSearchAtom(
                focusedBorderColor: AppColors.greenColor,
                controller: searchController,
                radius: 16,
                isPrefix: true,
                borderColor: AppColors.grayShade100,
                onChanged: (p0) {
                  context.read<SearchBloc>().add(
                        SearchEvent.searchDoctorByText(
                          text: p0!,
                        ),
                      );
                },
              ),
              const SizedBox(height: 20),
              BlocBuilder<DoctorBloc, DoctorState>(
                builder: (context, doctorState) {
                  return doctorState.maybeMap(
                    orElse: () => const SizedBox(),
                    loading: (state) {
                      return const Center(child: CircularProgressIndicator());
                    },
                    success: (doctorValue) {
                      return BlocBuilder<SearchBloc, SearchState>(
                        builder: (context, state) {
                          return state.maybeMap(
                              orElse: () => const SizedBox(),
                              loading: (state) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                              success: (searchValue) {
                                return SizedBox(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.75,
                                  child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      itemCount: searchValue.doctors?.value?.length,
                                      itemBuilder: ((context, index) {
                                        return DoctorItem(
                                          imagePath:
                                              "assets/images/app_logo.png",
                                          doctorDescription: searchValue.doctors
                                                  ?.value![index].doctorEmail ??
                                              "",
                                          doctorName: searchValue.doctors
                                                  ?.value![index].userName ??
                                              "",
                                          doctorType: searchValue
                                                  .doctors
                                                  ?.value![index]
                                                  .specialization
                                                  ?.specializationName ??
                                              "",
                                          onTap: () {
                                            if (searchValue.doctors?.value![index]
                                                    .id !=
                                                null) {
                                              context.pushNamed(
                                                  Routes.doctorDetails,
                                                  extra: searchValue.doctors
                                                      ?.value?[index].id);
                                            }
                                          },
                                        );
                                      })),
                                );
                              });
                        },
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
