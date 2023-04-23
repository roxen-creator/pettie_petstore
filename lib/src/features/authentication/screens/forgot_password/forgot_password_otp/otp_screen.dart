import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pettie_petstore/src/constants/size.dart';
import 'package:pettie_petstore/src/constants/string_manager.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(pDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              otpTitle,
              style: GoogleFonts.montserrat(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              optSubTitle.toUpperCase(),
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 40.0),
            const Text(
              "$otpMessage support@roxen.com",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              // ignore: avoid_print
              onSubmit: (code) {
                // ignore: avoid_print
                print("OTP is => $code");
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
                width: double.infinity,
                child:
                    ElevatedButton(onPressed: () {}, child: const Text("NEXT")))
          ],
        ),
      ),
    );
  }
}
