import 'package:flutter/material.dart';
import 'company_registration.dart'; // Import the company registration file
import 'influencer_registration.dart'; // Import the influencer registration file
import 'company_home_page.dart'; // Import the CompanyHomePage
import 'login.dart'; // Import the LoginScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrendMaster',
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Background Image
          Image.asset(
            'assets/images/log5.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Circular container for the logo with a white background
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.purple,
                      width: 5.0,
                    ),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Container(
                      width: 180,
                      height: 180,
                      child: Image.asset('assets/images/trendmaster.png'),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegistrationOptionsScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Already have an account? Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RegistrationOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Options'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Choose Your Account Type',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InfluencerRegistrationScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(
                  color: Colors.purple,
                  width: 3.0,
                ),
                padding: EdgeInsets.all(10),
              ),
              child: Container(
                width: 60,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/influencer_logo.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Influencer',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CompanyRegistrationScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(
                  color: Colors.purple,
                  width: 3.0,
                ),
                padding: EdgeInsets.all(10),
              ),
              child: Container(
                width: 60,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/company_logo.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Company',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Create TextEditingController for email and password fields
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Create a variable to store the selected role (company or influencer)
  String? selectedRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
        backgroundColor: Color(0xFF7C8FDB), // Make the AppBar red
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Email Input Field
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            // Password Input Field
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: passwordController,
                obscureText: true, // Hide the password input
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            // "Login as" Text with Padding
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Login as',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Radio Buttons for Role Selection
            Column(
              children: <Widget>[
                RadioListTile(
                  title: Text('Company'),
                  value: 'Company',
                  groupValue: selectedRole,
                  onChanged: (value) {
                    setState(() {
                      selectedRole = value;
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Influencer'),
                  value: 'Influencer',
                  groupValue: selectedRole,
                  onChanged: (value) {
                    setState(() {
                      selectedRole = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement login logic here
                final email = emailController.text;
                final password = passwordController.text;
                // Check if selectedRole is not null
                if (selectedRole != null) {
                  // Check the selected role and perform corresponding actions

                  // Navigate to the appropriate screen based on the role
                  if (selectedRole == 'Company') {
                    // Navigate to Company HomePage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CompanyHomePage(),
                      ),
                    );
                  } else if (selectedRole == 'Influencer') {
                    // Navigate to Influencer Dashboard
                    // You can replace this with the actual screen you want to navigate to
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => InfluencerDashboard(),
                    //   ),
                    // );
                  }
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF7C8FDB), // Change the button color to red
              ),
              child: Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
