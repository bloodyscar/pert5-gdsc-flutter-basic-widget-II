import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pertemuan_4/dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/dashboard': (context) => const DashboardPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo_twitter.png",
              width: 40,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "See what's\nhappening in the\nworld right now.",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: emailC,
              decoration: InputDecoration(
                hintText: "Username",
                border: OutlineInputBorder(),
                fillColor: Colors.grey.shade200,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            TextField(
              controller: passwordC,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
                fillColor: Colors.grey.shade200,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  var email = emailC.text;
                  var pw = passwordC.text;
                  if (email == "adit" && pw == "123") {
                    Navigator.pushNamedAndRemoveUntil(context, '/dashboard',
                        (r) {
                      return false;
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Email / Password Salah!"),
                        backgroundColor: Colors.red,
                        behavior: SnackBarBehavior.fixed,
                      ),
                    );
                  }
                },
                child: Text(
                  "Login",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _chatBuble(String img, String name, String content, String date) {
    return ListTile(
      leading: Image.asset(
        "assets/$img",
        width: 50,
        height: 50,
      ),
      title: Text("$name"),
      subtitle: Text(
        "$content",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        "$date",
        style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
      ),
    );
  }
}
