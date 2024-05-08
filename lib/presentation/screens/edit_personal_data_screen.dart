import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/dependency_injection/di_container.dart';
import '../../core/utils/shared_keys.dart';
import '../../core/utils/show_snack_bar.dart';
import '../blocs/update_personal_data/update_personal_data_bloc.dart';
import '../widgets/custom/custom_text_form.dart';

class EditProfileScreenBody extends StatefulWidget {
  const EditProfileScreenBody({super.key});

  @override
  State<EditProfileScreenBody> createState() => _EditProfileScreenBodyState();
}

class _EditProfileScreenBodyState extends State<EditProfileScreenBody> {
  late TextEditingController userNameController;
  late TextEditingController passController;
  late TextEditingController lastNameController;
  late TextEditingController firstNameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  @override
  void initState() {
    super.initState();

    userNameController = TextEditingController();
    passController = TextEditingController();
    lastNameController = TextEditingController();
    firstNameController = TextEditingController();
    emailController = TextEditingController();
    passController = TextEditingController();
    phoneController = TextEditingController();
  }

  @override
  void dispose() {
    userNameController.dispose();
    passController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: BlocConsumer<UpdatePersonalDataBloc, UpdatePersonalDataState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              success: (value) {
                ShowSnackbar.showCheckTopSnackBar(context,
                    text: "edite done", type: SnackBarType.success);
                context.pop();
              });
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFieldWithLabel(
                    hintText: "enter user name",
                    title: 'Enter Your User Name',
                    controller: userNameController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFieldWithLabel(
                      hintText: "enter email",
                      title: 'Enter Your Email',
                      controller: emailController),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFieldWithLabel(
                      hintText: "enter first name",
                      title: 'Enter Your First Name',
                      controller: firstNameController),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFieldWithLabel(
                      hintText: "enter last name",
                      title: 'Enter Your Last Name',
                      controller: lastNameController),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFieldWithLabel(
                    hintText: "enter phone",
                    title: 'Enter Your Phone Number',
                    controller: phoneController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFieldWithLabel(
                      hintText: "enter password",
                      title: 'Enter Your Password',
                      controller: passController),
                  const SizedBox(height: 10),
                  DataSaveButton(
                    onPressed: () {
                      context
                          .read<UpdatePersonalDataBloc>()
                          .add(UpdatePersonalDataEvent.updatePersonalData(
                            username: userNameController.text,
                            password: passController.text,
                            firstName: firstNameController.text,
                            lastName: lastNameController.text,
                            email: emailController.text,
                            phone: phoneController.text,
                            patientId:
                                preferences.getString(SharedKeys.id) ?? "",
                          ));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DataSaveButton extends StatelessWidget {
  const DataSaveButton({
    super.key,
    this.text,
    this.onPressed,
  });
  final String? text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: double.infinity,
        height: 50,
        onPressed: onPressed,
        color: const Color(0xFFBCCBF9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text ?? 'Save',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ));
  }
}
