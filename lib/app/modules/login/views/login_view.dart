import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazyui/lazyui.dart';
import 'package:qrm/app/routes/app_pages.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.19,
        ),
        child: Center(
          child: LzListView(
            physics: AlwaysScrollableScrollPhysics(),
            scrollLimit: const [50, 50],
            padding: Ei.sym(h: 50, v: 50),
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: Maa.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "PT. QINAR RAYA MANDIRI",
                          style: TextStyle(fontWeight: Fw.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        LzImage(
                          "QTech.png",
                          size: MediaQuery.of(context).size.width * 0.65,
                        ),
                        Text(
                          'LOGIN',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.08,
                              fontWeight: Fw.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          
                          child: LzButton(
                            icon: Icons.qr_code,
                            style: LzButtonStyle(
                              
                              backgroundColor: '302C7B'.hex,
                            ),
                            onTap: (state) {
                              Get.snackbar('Maaf', 'Fitur ini belum tersedia');
                            },
                          ),
                        ),
                        SizedBox(
                          width:  MediaQuery.of(context).size.height * 0.01
                        ),
                        Container(
                            width: MediaQuery.of(context).size.height * 0.23,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      '302C7B'.hex,
                                      '4A90E2'.hex,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight),
                                borderRadius: BorderRadius.circular(10)),
                            child: LzButton(
                              text: 'PASSWORD',
                              style: LzButtonStyle(
                                textStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    color: Colors.white),
                                backgroundColor: Colors.transparent,
                                textColor: Colors.white,
                              ),
                              onTap: (state) {
                                _showLoginDialog(context);
                              },
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.4,
                      ),
                      child: Text(
                        'Lupa Password',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showLoginDialog(BuildContext context) {
    showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SizedBox(
                width: constraints.maxWidth, // Lebar menyesuaikan layar
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.02,
                      horizontal: MediaQuery.of(context).size.width * 0.001),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: ['4CA1AF'.hex, '585858'.hex],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'E-MAIL',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: MediaQuery.of(context).size.width * 0.09,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          // Input menyesuaikan layar
                          child: LzForm.input(
                            hint: 'Enter your email',
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: LzForm.input(
                            hint: 'Enter your password',
                            obsecureToggle: true,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: ['302C7B'.hex, '4A90E2'.hex],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: LzButton(
                            text: 'SUBMIT',
                            style: LzButtonStyle(
                              backgroundColor: Colors.transparent,
                              textColor: Colors.white,
                            ),
                            onTap: (state) {
                              Get.toNamed(Routes.APP);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
//form ke 2
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'dart:ui';
// import 'package:lazyui/lazyui.dart';

// class LoginView extends StatelessWidget {
//   const LoginView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: LzListView(
//           scrollLimit: const [50, 50],
//           shrinkWrap: true,
//           padding: Ei.sym(h: 45, v: 100),
//           children: [
//             Center(
//               child: Column(
//                 mainAxisAlignment: Maa.center,
//                 spacing: 25,
//                 children: [
//                   Column(
//                     children: [
//                       Text(
//                         "PT. QINARAYA MANDIRI",
//                         style: TextStyle(fontWeight: Fw.bold),
//                       ),
//                       SizedBox(height: 30),
//                       const LzImage("QTech.png", size: 300),
//                       Text('Login',
//                           style: TextStyle(fontWeight: Fw.bold, fontSize: 30)),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       LzButton(
//                         icon: Hi.abacus,
//                         style: LzButtonStyle(backgroundColor: '302C7B'.hex),
//                         onTap: (state) {
//                           Get.snackbar('Maaf', 'Fitur ini belum tersedia');
//                         },
//                       ),
//                       SizedBox(width: 20),
//                       Expanded(
//                         child: LzButton(
//                           text: 'Password',
//                           style: LzButtonStyle(backgroundColor: '302C7B'.hex),
//                           onTap: (state) {
//                             _showLoginDialog(context);
//                           },
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   void _showLoginDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       barrierDismissible: true,
//       builder: (context) {
//         return BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//           child: Dialog(
//             backgroundColor: Colors.transparent,
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text("Login",
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                   LzForm.input(label: 'Email', hint: 'Enter your email', ),
//                   SizedBox(height: 20,),
//                     Column(
//                       children: [
//                         Row(
//                           children: [
//                             Text('Password', style: Gfont.fs14),
//                             // Touch(onTap: () {}, child: Text('Forgot password?', style: Gfont.fs14.fcolor('7367ef'.hex))),
//                           ],
//                         ).between,
//                         LzForm.input(hint: 'Enter your password', obsecureToggle: true,),
//                       ],
//                     ),
//                     SizedBox(height: 20,),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: LzButton(
//                             text: 'Login',
//                             style: LzButtonStyle(backgroundColor: '302C7B'.hex),
//                             onTap: (state) {

//                             }
//                           ),
//                         ),
//                       ],
//                     )
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
}
