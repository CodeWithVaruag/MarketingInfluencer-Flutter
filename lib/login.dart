import 'package:flutter/material.dart';

class CustomLoginScreen extends StatefulWidget {
  @override
  _CustomLoginScreenState createState() => _CustomLoginScreenState();
}

class _CustomLoginScreenState extends State<CustomLoginScreen> {
  String? loginType; // Change the declaration to make it nullable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Login Form Placeholder'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: "Influencer",
                  groupValue: loginType,
                  onChanged: (value) {
                    setState(() {
                      loginType = value;
                    });
                  },
                ),
                Text('Influencer'),
                Radio(
                  value: "Company",
                  groupValue: loginType,
                  onChanged: (value) {
                    setState(() {
                      loginType = value;
                    });
                  },
                ),
                Text('Company'),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Handle login based on the selected loginType (Influencer or Company)
                if (loginType == "Influencer") {
                  // Perform influencer login logic here
                  // For example, you can navigate to a different screen for influencer login.
                } else if (loginType == "Company") {
                  // Perform company login logic here
                  // For example, you can navigate to a different screen for company login.
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
