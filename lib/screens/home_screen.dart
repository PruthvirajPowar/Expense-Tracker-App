import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/widgets/add_transaction_form.dart';
import 'package:flutter_application_1/widgets/hero_card.dart';
import 'package:flutter_application_1/widgets/transaction_card.dart';
//ignore_for_file: prefer_const_constructors
//ignore_for_file:prefer_const_literals_to_create_immutables

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var isLogOutLoading = false;
  logOut() async {
    setState(() {
      isLogOutLoading = true;
    });

    await FirebaseAuth.instance.signOut();

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => LoginView()),
    );

    setState(() {
      isLogOutLoading = false;
    });
  }

  final userId = FirebaseAuth.instance.currentUser!.uid;

  _dialoBuilder(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: AddTransactionForm(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: (() => {
              _dialoBuilder(context),
            }),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        title: Text(
          "Hello,",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                logOut();
              },
              icon: isLogOutLoading
                  ? CircularProgressIndicator()
                  : Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                    ))
        ],
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroCard(
              userId: userId,
            ),
            TransactionCard()
          ],
        ),
      ),
    );
  }
}
































    // return SafeArea(
      // child: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
      //   child: Column(
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Row(
      //             children: [
      //               Stack(
      //                 alignment: Alignment.center,
      //                 children: [
      //                   Container(
      //                     width: 50,
      //                     height: 50,
      //                     decoration: BoxDecoration(
      //                         shape: BoxShape.circle,
      //                         color: Colors.yellow[700]),
      //                   ),
      //                   Icon(
      //                     CupertinoIcons.person_fill,
      //                     color: Colors.yellow[800],
      //                   )
      //                 ],
      //               ),
      //               const SizedBox(
      //                 width: 8,
      //               ),
      //               Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Text(
      //                     "Welcome!",
      //                     style: TextStyle(
      //                         fontSize: 12,
      //                         fontWeight: FontWeight.w600,
      //                         color: Theme.of(context).colorScheme.outline),
      //                   ),
      //                   Text(
      //                     "John Doe",
      //                     style: TextStyle(
      //                         fontSize: 18,
      //                         fontWeight: FontWeight.bold,
      //                         color:
      //                             Theme.of(context).colorScheme.onBackground),
      //                   )
      //                 ],
      //               ),
      //             ],
      //           ),
      //           IconButton(
      //               onPressed: () {
      //                 logOut();
      //               },
      //               icon: const Icon(Icons.logout))
      //         ],
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       Container(
      //         width: MediaQuery.of(context).size.width,
      //         height: MediaQuery.of(context).size.width / 2,
      //         decoration: BoxDecoration(
      //             gradient: LinearGradient(
      //               colors: [
      //                 Theme.of(context).colorScheme.primary,
      //                 Theme.of(context).colorScheme.secondary,
      //                 Theme.of(context).colorScheme.tertiary,
      //               ],
      //               transform: const GradientRotation(pi / 4),
      //             ),
      //             borderRadius: BorderRadius.circular(25),
      //             boxShadow: [
      //               BoxShadow(
      //                   blurRadius: 4,
      //                   color: Colors.grey.shade300,
      //                   offset: const Offset(5, 5))
      //             ]),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             const Text(
      //               'Total Balance',
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   color: Colors.white,
      //                   fontWeight: FontWeight.w600),
      //             ),
      //             const SizedBox(height: 2),
      //             const Text(
      //               '\₹ 4800.00',
      //               style: TextStyle(
      //                   fontSize: 40,
      //                   color: Colors.white,
      //                   fontWeight: FontWeight.bold),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.symmetric(
      //                   vertical: 12, horizontal: 20),
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Row(
      //                     children: [
      //                       Container(
      //                         width: 25,
      //                         height: 25,
      //                         decoration: const BoxDecoration(
      //                             color: Colors.white30,
      //                             shape: BoxShape.circle),
      //                         child: const Center(
      //                             child: Icon(
      //                           CupertinoIcons.arrow_up,
      //                           size: 18,
      //                           color: Colors.greenAccent,
      //                         )),
      //                       ),
      //                       const SizedBox(width: 8),
      //                       const Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Text(
      //                             'Income',
      //                             style: TextStyle(
      //                                 fontSize: 18,
      //                                 color: Colors.white,
      //                                 fontWeight: FontWeight.w400),
      //                           ),
      //                           Text(
      //                             '₹ 2500.00',
      //                             style: TextStyle(
      //                                 fontSize: 18,
      //                                 color: Colors.white,
      //                                 fontWeight: FontWeight.w600),
      //                           ),
      //                         ],
      //                       )
      //                     ],
      //                   ),
      //                   Row(
      //                     children: [
      //                       Container(
      //                         width: 25,
      //                         height: 25,
      //                         decoration: const BoxDecoration(
      //                             color: Colors.white30,
      //                             shape: BoxShape.circle),
      //                         child: const Center(
      //                             child: Icon(
      //                           CupertinoIcons.arrow_down,
      //                           size: 18,
      //                           color: Colors.red,
      //                         )),
      //                       ),
      //                       const SizedBox(width: 8),
      //                       const Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Text(
      //                             'Expenses',
      //                             style: TextStyle(
      //                                 fontSize: 18,
      //                                 color: Colors.white,
      //                                 fontWeight: FontWeight.w400),
      //                           ),
      //                           Text(
      //                             '₹ 800.00',
      //                             style: TextStyle(
      //                                 fontSize: 18,
      //                                 color: Colors.white,
      //                                 fontWeight: FontWeight.w600),
      //                           ),
      //                         ],
      //                       )
      //                     ],
      //                   )
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //       const SizedBox(height: 40),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       'Transactions',
            //       style: TextStyle(
            //           fontSize: 16,
            //           color: Theme.of(context).colorScheme.onBackground,
            //           fontWeight: FontWeight.bold),
            //     ),
            //     GestureDetector(
            //       onTap: () {},
            //       child: Text(
            //         'View All',
            //         style: TextStyle(
            //             fontSize: 14,
            //             color: Theme.of(context).colorScheme.outline,
            //             fontWeight: FontWeight.w400),
            //       ),
            //     )
            //   ],
            // ),
//             TransactionCard(),
//           ],
//         ),
//       ),
//     );
//   }
// }
