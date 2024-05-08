import 'package:clinic_admin/core/theme/app_colors.dart';
import 'package:clinic_admin/presentation/blocs/doctor/doctor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

import '../../core/routes/routes.dart';
import '../blocs/category/category_bloc.dart';
import '../widgets/custom/custom_text_form.dart';
import '../widgets/doctor_item.dart';

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
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.greenColor),
        child: const Icon(
          Icons.add,
          color: AppColors.white,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isDismissible: true,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(22))),
              builder: (_) {
                return const _AddDocBtmSheet();
              }).then((value) {});
        },
      ),
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
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: value.doctors?.value?.length,
                  itemBuilder: ((context, index) {
                    //TODO: change to remove doctor
                    return DoctorItem(
                      onDeleteButton: () => context
                          .read<DoctorBloc>()
                          .add(const DoctorEvent.getAllDoctors()),
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
                );
              });
        },
      ),
    );
  }
}

class _AddDocBtmSheet extends StatefulWidget {
  const _AddDocBtmSheet();

  @override
  State<_AddDocBtmSheet> createState() => _AddDocBtmSheetState();
}

class _AddDocBtmSheetState extends State<_AddDocBtmSheet> {
  bool isSecure = false;
  double initialChildSize = 0.60;
  late TextEditingController userNameController;
  late TextEditingController passController;
  late TextEditingController lastNameController;
  late TextEditingController firstNameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController confirmPassController;
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    userNameController = TextEditingController();
    passController = TextEditingController();
    lastNameController = TextEditingController();
    firstNameController = TextEditingController();
    emailController = TextEditingController();
    passController = TextEditingController();
    confirmPassController = TextEditingController();
    phoneController = TextEditingController();
  }

  @override
  void dispose() {
    userNameController.dispose();
    passController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    confirmPassController.dispose();
    phoneController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.9,
      minChildSize: 0.50,
      maxChildSize: 0.90,
      builder: (context, scrollController) {
        return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
                color: const Color(0xFFefefee),
                borderRadius: BorderRadius.circular(20)),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              controller: scrollController,
              child: Form(
                key: formKey,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const Spacer(),
                      const Text(
                        'Add Doctor',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                  CustomTextFieldWithLabel(
                    hintText: "Username",
                    controller: userNameController,
                    title: 'Username',
                    validatee: (v) {
                      if (v!.isEmpty) {
                        return 'Please enter username';
                      }
                      return null;
                    },
                  ),
                  CustomTextFieldWithLabel(
                    hintText: "First name",
                    controller: firstNameController,
                    title: 'First Name',
                    validatee: (v) {
                      if (v!.isEmpty) {
                        return 'Please enter first name';
                      }
                      return null;
                    },
                  ),
                  CustomTextFieldWithLabel(
                    hintText: "Last name",
                    controller: lastNameController,
                    title: 'last Name',
                    validatee: (v) {
                      if (v!.isEmpty) {
                        return 'Please enter first name';
                      }
                      return null;
                    },
                  ),
                  CustomTextFieldWithLabel(
                    hintText: "Email",
                    controller: emailController,
                    title: 'Email',
                    validatee: (v) {
                      if (v!.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                  ),
                  CustomTextFieldWithLabel(
                    hintText: "Phone",
                    controller: phoneController,
                    title: 'Phone',
                    validatee: (v) {
                      if (v!.isEmpty) {
                        return 'Please enter phone';
                      }
                      return null;
                    },
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Password',
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextFormField(
                        controller: passController,
                        validator: (v) {
                          if (v!.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        obscureText: isSecure,
                        cursorColor: AppColors.totColor,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          suffixIcon: TOTIconButtonAtom.displayMedium(
                            codePoint: isSecure ? 0xe6be : 0xe6bd,
                            iconColor: AppColors.blackColor,
                            onPressed: () {
                              setState(
                                () {
                                  isSecure = !isSecure;
                                },
                              );
                            },
                          ),
                          border: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.totColor)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.grey)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Confirm Password',
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextFormField(
                        controller: confirmPassController,
                        validator: (v) {
                          if (v!.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        obscureText: isSecure,
                        cursorColor: AppColors.totColor,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          suffixIcon: TOTIconButtonAtom.displayMedium(
                            codePoint: isSecure ? 0xe6be : 0xe6bd,
                            iconColor: AppColors.blackColor,
                            onPressed: () {
                              setState(
                                () {
                                  isSecure = !isSecure;
                                },
                              );
                            },
                          ),
                          border: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.totColor)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.grey)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.07,
                  ),
                  ElevatedButton(
                      onPressed: _onPressedMethod,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.totColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fixedSize: Size(
                          MediaQuery.sizeOf(context).width * 0.9,
                          50,
                        ),
                      ),
                      child:
                          //TODO: add bloc

                          // state.maybeMap
                          const Text(
                        'Add Doctor',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                        ),

                        // loading: () {
                        //   return const SizedBox(
                        //     height: 20,
                        //     width: 20,
                        //     child: CircularProgressIndicator(
                        //       color: AppColors.white,
                        //       strokeWidth: 3,
                        //     ),
                        //   );
                        // },
                      )),
                ]),
              ),
            )

            // },
            );
      },
    );
  }

  void _onPressedMethod() {
    if (formKey.currentState!.validate()) {
      //TODO: add event of adding doctor
    }
  }
}
