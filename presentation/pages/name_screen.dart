import 'package:flutter/material.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  NameScreenState createState() => NameScreenState();
}

class NameScreenState extends State<NameScreen> {

  @override
  void initState() {
    super.initState();

    // context
    //     .read<NameCubit>()
    //     .getName(token: state.user.accessToken,);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
