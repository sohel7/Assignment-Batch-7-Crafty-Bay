import 'package:crufty_bay/ui/widgets/app_logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmailVeryfyScreen extends StatelessWidget {
  const EmailVeryfyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 180,),
               Text('Welcome Back!',style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(
              height: 6,
            ),
                Text('Please Enter Your Email Address',style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(
              height: 8,
            ),
              const AppLogo(height: 80,),
            const SizedBox(height: 24,),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Next', style: TextStyle(color: Colors.white),),

              ),
            )
          ],
        ),
      ),
    );
  }
}
