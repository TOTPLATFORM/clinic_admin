import '../../core/routes/routes.dart';
import '../blocs/doctor/doctor_bloc.dart';
import '../widgets/doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
        automaticallyImplyLeading: false,
        title: const Text("Search"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
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
                                  value.doctors?.value![index].doctorEmail ??
                                      "",
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
      ),
    );
  }
}
