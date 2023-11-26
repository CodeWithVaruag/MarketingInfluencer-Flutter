import 'login.dart';
import 'package:flutter/material.dart';
import 'company_registration.dart'; // Import the company registration file
import 'influencer_registration.dart'; // Import the influencer registration file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InfluencerCollab App',
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'InfluencerCollab',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.red, // Change the app bar background color to red
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add the image here
            Image.asset(
              'assets/images/firstpage.png', // Update the path accordingly
              width: 150, // Adjust the image size as needed
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20), // Add padding to the container
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red, // Change the box background color to red
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'Discover the Power of Collaboration',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center, // Align text to center
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Join as an Influencer or Company to Get Started',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[200],
                      ),
                      textAlign: TextAlign.center, // Align text to center
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Navigate to the registration options screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationOptionsScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Change the button color to red
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
                // Navigate to the login screen
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
                  color: Colors.red, // Change text color to red
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
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
        backgroundColor: Colors.red, // Change the app bar background color to red
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
                // Navigate to the influencer registration screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InfluencerRegistrationScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              child: Text(
                'Influencer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to the company registration screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CompanyRegistrationScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              child: Text(
                'Company',
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
        backgroundColor: Colors.red, // Make the AppBar red
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
                    // Navigate to Company Dashboard
                    // Example:
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => CompanyDashboard(),
                    //   ),
                    // );
                  } else if (selectedRole == 'Influencer') {
                    // Navigate to Influencer Dashboard
                    // Example:
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
                primary: Colors.red, // Change the button color to red
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