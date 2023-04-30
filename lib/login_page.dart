import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:solar/page/home_page.dart';
import 'package:solar/widget/app_util.dart';
import 'package:solar/widget/secondary_button.dart';

import 'constants.dart';
import 'widget/app_layout.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage> {
  String? pinCode;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pinCodeController = OtpFieldController();

    return AppLayout("Login page",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OTPTextField(
              obscureText: true,
              controller: pinCodeController,
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 50,
              style: const TextStyle(fontSize: FONT_MD),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onChanged: (pin) {
                setState(() {
                  pinCode = pin;
                });
              },
            ),
            const SizedBox(height: SPACE_LG),
            SecondaryButton(
                text: "Нэвтрэх",
                onPressed: () {
                  if (masterPinCode == pinCode) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  } else {
                    showSnackbar(context, "Пин код буруу байна");
                  }
                }),
          ],
        ));
  }
}
