import 'package:flutter/material.dart';

import 'colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  // TODO: Add text editing controllers (101)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
           Column(
            children: <Widget>[
            Image.asset('assets/diamond.png'),
            const SizedBox(height: 16.0),
          Text(
            'SHRINE',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
         ],
        ),
            const SizedBox(height: 120.0),
            // Remove filled: true values (103)
TextField(
  controller: _usernameController,
  decoration: const InputDecoration(
    // Removed filled: true
    labelText: 'Username',
  ),
),
const SizedBox(height: 12.0),
TextField(
  controller: _passwordController,
  decoration: const InputDecoration(
    // Removed filled: true
    labelText: 'Password',
  ),
  obscureText: true,
),
            // TODO: Add TextField widgets (101)
            // [Name]
            TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              filled: true,
              labelText: 'Username',
              ),
            ),
            // spacer
            const SizedBox(height: 120.0),
            // [Password]
            // Remove filled: true values (103)
TextField(
  controller: _usernameController,
  decoration: const InputDecoration(
    // Removed filled: true
    labelText: 'Username',
  ),
),
const SizedBox(height: 12.0),
TextField(
  controller: _passwordController,
  decoration: const InputDecoration(
    // Removed filled: true
    labelText: 'Password',
  ),
  obscureText: true,
),
            // TODO: Add button bar (101)
            OverflowBar(
            alignment: MainAxisAlignment.end,
            // TODO: Add a beveled rectangular border to CANCEL (103)
            children: <Widget>[
              // TODO: Add buttons (101)
              TextButton(
  child: const Text('CANCEL'),
  onPressed: () {
    _usernameController.clear();
    _passwordController.clear();
  },
  style: TextButton.styleFrom(
    foregroundColor: kShrineBrown900,
    shape: const BeveledRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(7.0)),
    ),
  ),
),
            // TODO: Add an elevation to NEXT (103)
            ElevatedButton(
  child: const Text('NEXT'),
  onPressed: () {
    Navigator.pop(context);
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: kShrineBrown900,
    backgroundColor: kShrinePink100,
    elevation: 8.0,
    shape: const BeveledRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(7.0)),
    ),
  ),
),
            ],
            ),
          ],
        ),
      ),
    );
  }
}