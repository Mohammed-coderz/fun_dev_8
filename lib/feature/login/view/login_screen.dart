// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:fun_dev_8/screen/home_screen.dart';
// import 'package:fun_dev_8/feature/signup/view/signup.dart';
// import 'package:provider/provider.dart';
//
// import '../provider/login_provider.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   bool isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     final provider = context.watch<LoginProvider>();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("LoginScreen".tr()),
//         centerTitle: true,
//         backgroundColor: Colors.green,
//         actions: [
//           IconButton(
//             onPressed: () {
//               var lang = context.locale.languageCode;
//               if (lang == "en") {
//                 context.setLocale(Locale("ar"));
//               } else {
//                 context.setLocale(Locale("en"));
//               }
//             },
//             icon: Icon(Icons.language),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Card(
//           color: Colors.white,
//           child: SizedBox(
//             width: width * 0.9,
//             height: height * 0.5,
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: width * 0.03,
//                 vertical: height * 0.02,
//               ),
//               child: Column(
//                 children: [
//                   Text(
//                     "welcome".tr(),
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                   SizedBox(height: height * 0.01),
//                   TextField(
//                     controller: emailController,
//                     decoration: InputDecoration(
//                       labelText: "Email".tr(),
//                       hintText: "EnterEِmail".tr(),
//                       prefix: Icon(Icons.email),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: height * 0.01),
//                   TextField(
//                     controller: passwordController,
//                     decoration: InputDecoration(
//                       labelText: "Password",
//                       hintText: "enter your password",
//                       prefix: Icon(Icons.password),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: height * 0.01),
//                   Row(
//                     children: [
//                       Checkbox(
//                         checkColor: Colors.white,
//                         value: isChecked,
//                         onChanged: (bool? value) {
//                           setState(() {
//                             isChecked = value!;
//                           });
//                         },
//                       ),
//                       SizedBox(width: width * 0.01),
//                       Text("remember me"),
//                     ],
//                   ),
//                   SizedBox(height: height * 0.01),
//
//                   /// todo login provider
//                   provider.isLoading
//                       ? CircularProgressIndicator()
//                       : ElevatedButton(
//                           onPressed: () async {
//                             await provider.loginMethod(
//                               email: emailController.text,
//                               password: passwordController.text,
//                             );
//                             if (provider.login!.result == true) {
//                               Navigator.pushReplacement(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => HomeScreen(),
//                                 ),
//                               );
//                             }
//                           },
//                           child: Text("Login"),
//                         ),
//
//                   ///
//                   SizedBox(height: height * 0.01),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Text("don't have account ?"),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => SignupScreen(),
//                             ),
//                           );
//                           print("sign up pressed");
//                         },
//                         child: Text("signup"),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
