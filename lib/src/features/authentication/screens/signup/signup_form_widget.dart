import 'package:flutter/material.dart';

import '../../../../constants/string_manager.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
              decoration: const InputDecoration(
            label: Text("Full Name"),
            prefixIcon: Icon(Icons.person_rounded),
          )),
           const SizedBox(height: 10,),
          TextFormField(
              decoration: const InputDecoration(
            label: Text("Email"),
            prefixIcon: Icon(Icons.email_outlined),
          )),
           const SizedBox(height: 10,),
          TextFormField(
              decoration: const InputDecoration(
            label: Text("Phone"),
            prefixIcon: Icon(Icons.phone_android_outlined),
          )),
          const SizedBox(height: 10,),
          TextFormField(
              decoration: const InputDecoration(
            label: Text("Password"),
            prefixIcon: Icon(Icons.fingerprint_outlined),
          )),
           const SizedBox(height: 20,),
           SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: (){}, child: const Text(pSingup)))
        ],
      )),
    );
  }
}
