import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';

class GlobalMethods {
  static navigateTo({required BuildContext ctx, required String routeName}) {
    Navigator.pushNamed(ctx, routeName);
  }

  static Future<void> warningDialog({
    required String title,
    required String subtitle,
    required Function onTap,
    required BuildContext context,
  }) async {
    final localContext = context;
    await showDialog(
      context: localContext,
      builder: (context) {
        return AlertDialog(
          title: Row(children: [
            Image.asset(
              'assets/images/warning-sign.png',
              height: 20,
              width: 20,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(title),
          ]),
          content: Text(subtitle),
          actions: [
            TextButton(
              onPressed: () {
                if (Navigator.canPop(localContext)) {
                  Navigator.pop(localContext);
                }
              },
              child: TextWidget(
                color: Colors.cyan,
                text: 'Cancel',
                textSize: 18,
              ),
            ),
            TextButton(
              onPressed: () {
                onTap();
              },
              child: TextWidget(
                color: Colors.red,
                text: 'OK',
                textSize: 18,
              ),
            ),
          ],
        );
      },
    );
  }

  static Future<void> errorDialog({
    required String subtitle,
    required BuildContext context,
  }) async {
    final localContext = context;
    await showDialog(
      context: localContext,
      builder: (context) {
        return AlertDialog(
          title: Row(children: [
            Image.asset(
              'assets/images/warning-sign.png',
              height: 20,
              width: 20,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text('An Error occurred'),
          ]),
          content: Text(subtitle),
          actions: [
            TextButton(
              onPressed: () {
                if (Navigator.canPop(localContext)) {
                  Navigator.pop(localContext);
                }
              },
              child: TextWidget(
                color: Colors.cyan,
                text: 'Ok',
                textSize: 18,
              ),
            ),
          ],
        );
      },
    );
  }
}
