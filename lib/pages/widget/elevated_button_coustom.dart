import 'package:flutter/material.dart';

class ElevatedButtonCoustom extends StatelessWidget {
  ElevatedButtonCoustom({
    required this.image,
    super.key,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ElevatedButton(
          onPressed: () {},
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image),
                SizedBox(
                  width: 10,
                ),
                Text('Continue with Google')
              ],
            ),
          )),
    );
  }
}
