import 'package:dicoding_login/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicoding',
      theme: ThemeData(
        fontFamily: 'Quicksand',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.grey),
        elevation: 3,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.asset('images/logo_dicoding.png'),
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: const Icon(Icons.menu),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            children: const [
              MenuTile(title: 'Academy'),
              MenuTile(title: 'Challenge'),
              MenuTile(title: 'Event'),
              MenuTile(title: 'Job'),
              MenuTile(title: 'Developer'),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/dicoding_full.png',
                width: 250,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Masuk',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Center(
                child: Image.asset('images/illustration.png'),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Email',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Alamat Email',
                  focusedBorder: OutlineInputBorder(),
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.amber),
                child: TextField(
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    hintText: 'Masukkan password',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
                    isDense: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Lupa password ?',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Atau masuk dengan',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Image.network(
                      'https://pngimg.com/uploads/google/google_PNG19644.png',
                      width: 50,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Image.network(
                      'https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19749.png',
                      width: 50,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              RichText(
                text: TextSpan(
                  text: 'Belum punya akun ? Ayo ',
                  style: Theme.of(context).textTheme.bodyText1,
                  children: const [
                    TextSpan(
                      text: 'Daftar',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
              ),
              RichText(
                text: TextSpan(
                  text: 'Dengan melakukan login, anda setuju dengan ',
                  style: Theme.of(context).textTheme.bodyText1,
                  children: const [
                    TextSpan(
                      text: 'syarat & ketentuan Dicoding',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
