import '../../core/routes/routes.dart';
import '../blocs/category/category_bloc.dart';
import '../widgets/doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CategoryScreen extends StatefulWidget {
  final String categoryId;
  final String categoryName;
  const CategoryScreen(
      {super.key, required this.categoryId, required this.categoryName});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    context.read<CategoryBloc>().add(CategoryEvent.getDoctorsBySpecialityId(
        specialityId: widget.categoryId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
      ),
      body: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => Container(
                    height: 100,
                    color: Colors.red,
                  ),
              loading: (value) {
                return const Center(child: CircularProgressIndicator());
              },
              success: (value) {
                return SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemCount: value.doctors?.value?.length,
                    itemBuilder: ((context, index) {
                      return DoctorItem(
                        imagePath: "assets/images/app_logo.png",
                        doctorDescription:
                            value.doctors?.value![index].doctorEmail ?? "",
                        doctorName: value.doctors?.value![index].userName ?? "",
                        doctorType: value.doctors?.value![index].specialization
                                ?.specializationName ??
                            "",
                        onTap: () {
                          if (value.doctors?.value![index].id != null) {
                            context.pushNamed(Routes.doctorDetails,
                                extra: value.doctors?.value?[index].id);
                          }
                        },
                      );
                    }),
                  ),
                );
              });
        },
      ),
    );
  }
}
