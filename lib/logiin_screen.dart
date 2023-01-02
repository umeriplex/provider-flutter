import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:satate_management_one/providers/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailCon = TextEditingController();
  TextEditingController passCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Consumer<LoginProvider>(
          builder: (context,value,child){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailCon,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: value.visibility == false ? true : false,
                  controller: passCon,
                  decoration:  InputDecoration(
                    suffixIcon: InkWell(
                      child: value.visibility == false ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                      onTap: (){
                        loginProvider.setVisibility(value.visibility == true ? false : true);
                      },
                    ),
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () {
                    loginProvider.login(emailCon.text.toString(), passCon.text.toString());
                  },
                  child: Consumer<LoginProvider>(
                    builder: (context,value,child){
                      return Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: value.loading ? const CircularProgressIndicator() : const Text('LOG IN', style: TextStyle(color: Colors.white),),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
