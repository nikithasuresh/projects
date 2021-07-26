import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/screens/welcome_screen.dart';
import 'package:chatapp/screens/login_screen.dart';
import 'package:chatapp/screens/registration_screen.dart';
import 'package:chatapp/screens/chat_screen.dart';
String initialRoute=WelcomeScreen.id;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
  User u=firebase_auth.currentUser;
  if(u!=null){
    initialRoute=ChatScreen.id;
  }
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: initialRoute,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
