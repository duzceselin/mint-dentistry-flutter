import 'package:flutter/material.dart';

class CompanyPoliciesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CompanyPoliciesScreen();
  }
}

class _CompanyPoliciesScreen extends State<CompanyPoliciesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Company Policies',
          ),
        ),
        body: Text(
          "Welcome!",
        ),
      ),
    );
  }
}
