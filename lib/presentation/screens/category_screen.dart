import '../../app/core/primitives/inputs/add_doctor.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/show_snack_bar.dart';
import '../blocs/doctor/doctor_bloc.dart';
import '../widgets/validation_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

import '../../core/routes/routes.dart';
import '../blocs/category/category_bloc.dart';
import '../widgets/custom/labled_text_form.dart';
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
                return _AddDocBtmSheet(
                  categoryId: widget.categoryId,
                );
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
              success: (successState) {
                final doctors = successState.doctors?.value ?? [];

                if (successState.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (successState.doctors?.value?.isEmpty ?? true) {
                  return const Center(
                    child: Text(
                      "No Doctors found",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  );
                }
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: doctors.length,
                  itemBuilder: ((context, index) {
                    return DoctorItem(
                      imagePath: "assets/images/app_logo.png",
                      doctorDescription: doctors[index].doctorEmail ?? "",
                      doctorName: doctors[index].userName ?? "",
                      doctorType:
                          doctors[index].specialization?.specializationName ??
                              "",
                      onDeleteButton: () {
                        showValidationDialog(context, itemName: "this doctor",
                            onYesPressed: () {
                          context.read<DoctorBloc>().add(
                              DoctorEvent.deleteDoctor(id: doctors[index].id!));
                        });
                      },
                      onTap: () {
                        if (successState.doctors?.value![index].id != null) {
                          context.pushNamed(Routes.doctorDetails,
                              extra: successState.doctors?.value?[index].id);
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
  final String categoryId;
  const _AddDocBtmSheet({required this.categoryId});

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
    return BlocConsumer<DoctorBloc, DoctorState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            success: (value) {
              if (value.addDoctor) {
                Navigator.pop(context);
                context.read<CategoryBloc>().add(
                    CategoryEvent.getDoctorsBySpecialityId(
                        specialityId: widget.categoryId));
                ShowSnackbar.showCheckTopSnackBar(
                  context,
                  text: "Doctor added successfully",
                  type: SnackBarType.success,
                );
              }
            },
            failure: (value) {
              ShowSnackbar.showCheckTopSnackBar(
                context,
                text: value.message,
                type: SnackBarType.error,
              );
            });
      },
      builder: (context, doctorState) {
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
                      LabledTextField(
                        hintText: 'Enter user name',
                        controller: userNameController,
                        title: 'Username',
                        validatee: (v) {
                          if (v!.isEmpty) {
                            return 'Please enter username';
                          }
                          return null;
                        },
                      ),
                      LabledTextField(
                        hintText: 'Enter first name',
                        controller: firstNameController,
                        title: 'First Name',
                        validatee: (v) {
                          if (v!.isEmpty) {
                            return 'Please enter first name';
                          }
                          return null;
                        },
                      ),
                      LabledTextField(
                        hintText: 'Enter last name',
                        controller: lastNameController,
                        title: 'last Name',
                        validatee: (v) {
                          if (v!.isEmpty) {
                            return 'Please enter first name';
                          }
                          return null;
                        },
                      ),
                      LabledTextField(
                        hintText: 'Enter email',
                        controller: emailController,
                        title: 'Email',
                        validatee: (v) {
                          if (v!.isEmpty) {
                            return 'Please enter email';
                          }
                          return null;
                        },
                      ),
                      LabledTextField(
                        hintText: 'Enter phone',
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
                                  borderSide:
                                      BorderSide(color: AppColors.grey)),
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
                                  borderSide:
                                      BorderSide(color: AppColors.grey)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.07,
                      ),
                      BlocBuilder<DoctorBloc, DoctorState>(
                        builder: (context, state) {
                          return state.maybeMap(
                            orElse: () {
                              return ElevatedButton(
                                  onPressed: _onPressedMethod,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.totColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    fixedSize: Size(
                                      MediaQuery.sizeOf(context).width * 0.9,
                                      50,
                                    ),
                                  ),
                                  child: doctorState.maybeMap(
                                    orElse: () {
                                      return const Text(
                                        'Add Doctor',
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 16,
                                        ),
                                      );
                                    },
                                    loading: (v) {
                                      return const SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: CircularProgressIndicator(
                                          color: AppColors.white,
                                          strokeWidth: 3,
                                        ),
                                      );
                                    },
                                  ));
                            },
                            loading: (value) {
                              return const CircularProgressIndicator();
                            },
                          );
                        },
                      ),
                    ]),
                  ),
                )

                // },
                );
          },
        );
      },
    );
  }

  void _onPressedMethod() {
    if (formKey.currentState!.validate()) {
      context.read<DoctorBloc>().add(DoctorEvent.addDoctor(
              doctorData: AddDoctorInputs(
            password: passController.text,
            specializationId: int.parse(widget.categoryId),
            firstName: firstNameController.text,
            lastName: lastNameController.text,
            username: userNameController.text,
            email: emailController.text,
            phone: phoneController.text,
          )));
      context.pop();
    }
  }
}
