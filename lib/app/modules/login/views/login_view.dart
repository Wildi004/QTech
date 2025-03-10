import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazyui/lazyui.dart';

import '../controllers/login_controller.dart';

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
                            onTap: () {
                              Get.snackbar('Maaf', 'Fitur ini belum tersedia');
                            },
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.height * 0.01),
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
                              onTap: () {
                                context.bottomSheet(const LoginFormModal(),
                                    backgroundColor: Colors.transparent);
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
}

class LoginFormModal extends GetView<LoginController> {
  const LoginFormModal({super.key});

  @override
  Widget build(BuildContext context) {
    final forms = controller.forms;
    forms.fill({'email': '', 'password': ''});

    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            width: constraints.maxWidth,
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
                    Text('E-MAIL',
                        style: GoogleFonts.poppins()
                            .copyWith(fontSize: 30, color: Colors.white)),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: LzForm.input(
                          hint: 'Enter your email', model: forms.key('email')),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: LzForm.input(
                          hint: 'Enter your password',
                          model: forms.key('password'),
                          suffix: Obscure()),
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
                        onTap: () {
                          controller.onSubmit();
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
  }
}
