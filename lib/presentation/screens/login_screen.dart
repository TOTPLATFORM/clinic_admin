import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

import '../../core/routes/routes.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/show_snack_bar.dart';
import '../blocs/auth/auth_bloc.dart';
import '../widgets/custom/labled_text_form.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppColors.transparent));

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () {},
              failure: (message) {
                log("Failure $message");
                return ShowSnackbar.showCheckTopSnackBar(
                  context,
                  text: message,
                  type: SnackBarType.error,
                );
              });
        },
        child: Stack(
          children: [
            Image.asset(
              'assets/images/spalsh.png',
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 50,
              left: 30,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    width: 40,
                    height: 40,
                    color: AppColors.white,
                    child: Image.asset(
                      'assets/images/tot_logo.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    '',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.sizeOf(context).width * 0.15,
              left: MediaQuery.sizeOf(context).width * 0.05,
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      isDismissible: true,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(22))),
                      builder: (_) {
                        return const _LogInBtmSheet();
                      });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fixedSize: Size(
                    MediaQuery.sizeOf(context).width * 0.9,
                    50,
                  ),
                  // Set the background color here
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: AppColors.totColor, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LogInBtmSheet extends StatefulWidget {
  const _LogInBtmSheet();

  @override
  State<_LogInBtmSheet> createState() => _LogInBtmSheetState();
}

class _LogInBtmSheetState extends State<_LogInBtmSheet> {
  bool isSecure = false;
  double initialChildSize = 0.60;
  late TextEditingController userNameController;
  late TextEditingController passController;
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    userNameController = TextEditingController();
    passController = TextEditingController();
  }

  @override
  void dispose() {
    userNameController.dispose();
    passController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isKeyboardVisible = MediaQuery.viewInsetsOf(context).bottom > 0;
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: isKeyboardVisible ? 0.80 : 0.60,
      minChildSize: 0.50,
      maxChildSize: 0.90,
      builder: (context, scrollController) {
        return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
                color: const Color(0xFFefefee),
                borderRadius: BorderRadius.circular(20)),
            child:

                // BlocConsumer<AuthBloc, AuthState>(
                // listener: (context, state) {
                //   state.maybeWhen(
                //     loginSuccess: (model) async {
                //       Navigator.pushNamed(context, LayoutScreen.routeName);
                //       ShowSnackbar.showCheckTopSnackBar(
                //         context,
                //         text: 'You are welcome',
                //         type: SnackBarType.success,
                //       );
                //     },
                //     loginError: () async {
                //       ShowSnackbar.showCheckTopSnackBar(context,
                //           text: 'Please, enter valid user data!',
                //           type: SnackBarType.error);
                //     },
                //     orElse: () {},
                //   );
                // },
                // builder: (context, state) {
                // return
                BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeMap(
                  success: (model) async {
                    context.pushNamed(Routes.layout);
                    ShowSnackbar.showCheckTopSnackBar(
                      context,
                      text: 'Welcome, back',
                      type: SnackBarType.success,
                    );
                  },
                  failure: (v) async {
                    ShowSnackbar.showCheckTopSnackBar(
                      context,
                      text: v.message,
                      type: SnackBarType.error,
                    );
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    controller: scrollController,
                    child: Form(
                      key: formKey,
                      child: Column(children: [
                        Row(
                          children: [
                            IconButton(
                                icon: const Icon(Icons.arrow_back),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                            const Spacer(),
                            const Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                          ],
                        ),
                        LabledTextField(
                          hintText: "Username",
                          controller: userNameController,
                          title: 'Username',
                          validatee: (v) {
                            if (v!.isEmpty) {
                              return 'Please enter user name';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
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
                                  return 'Please enter pass';
                                }
                                return null;
                              },
                              obscureText: isSecure,
                              cursorColor: AppColors.totColor,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: "Enter your password",
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.blackColor)),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.blackColor)),
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
                            child: state.maybeWhen(
                              orElse: () {
                                return const Text(
                                  'Login',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 16,
                                  ),
                                );
                              },
                              loading: () {
                                return const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    color: AppColors.white,
                                    strokeWidth: 3,
                                  ),
                                );
                              },
                            )

                            // },
                            // loading: () {
                            //
                            // },
                            // ),
                            ),
                      ]),
                    ));
              },
            )
            // },
            );
      },
    );
  }

  void _onPressedMethod() {
    if (formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
            AuthEvent.login(
              username: userNameController.text,
              password: passController.text,
            ),
          );
    }
  }
}
