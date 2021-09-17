import 'package:flutter/material.dart';
import 'package:training_dart/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/deal.png',
                height: 200,
                width: 300,
              ),
              Card(
                color: Colors.white38,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.security)
                          ],
                        ),
                      ),
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        style: ButtonStyle(
                          alignment: Alignment.center,
                        ),
                        onPressed: () => {
                          if (email == '95deal@gmail.com' &&
                              password == '12345')
                            {
                              print('email: $email password: $password'),
                              Navigator.of(context)
                                  .pushReplacementNamed('/home')
                            }
                          else
                            {print("EMAIL OU SENHA INCORRETO.")}
                        },
                        child: Icon(
                          Icons.login,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:
                Image.asset('assets/images/wallpaper.png', fit: BoxFit.cover),
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          _body(),
        ],
      ),
    );
  }
}
