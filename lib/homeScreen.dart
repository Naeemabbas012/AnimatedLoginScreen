import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});


  @override
  State<LoginScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Login Screen'),
        centerTitle: true,
        actions: [Icon(Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
        Container(
          height: 350.0,
          alignment: Alignment.center,
          child: Lottie.asset('assets/signin.json'),
        ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined,
                  color: Colors.blue,),
                  enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'Password',
                  prefixIcon: Icon(Icons.password,color: Colors.blue,),
                  suffixIcon: Icon(Icons.visibility,color: Colors.blue,),

                  enabledBorder: OutlineInputBorder(),
                  ),
                ) ,
              ),
              SizedBox(
                height: 10.0,
              ),
             ElevatedButton(onPressed: (){}, child: Text('Login',),

               
             ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Card(child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Forgot Password'),
                ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Dont have an account SignUp'),
                    )),
              )
        
        
            ],),),
      ),
    );
  }
}
