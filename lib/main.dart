import 'package:flutter/material.dart';
import 'package:paskalapps/domain/entities/IbadahModel.dart';
import 'package:paskalapps/domain/Provider/dataRepositoryProvider.dart';
import 'package:paskalapps/presentation/pages/ContancInfo.dart';
import 'package:paskalapps/presentation/pages/External/Badminton.dart';
import 'package:paskalapps/presentation/pages/External/Komsel.dart';
import 'package:paskalapps/presentation/pages/Ibadah/TampilahIbadah2.dart';
import 'package:paskalapps/presentation/pages/Ibadah/TampilahIbadahLembang.dart';
import 'package:paskalapps/presentation/pages/Ibadah/TampilahIbadahRemaja.dart';
import 'package:paskalapps/presentation/pages/Menu/MenuIbadah.dart';
import 'package:paskalapps/presentation/pages/Menu/MenuUtama.dart';
import 'package:paskalapps/presentation/pages/Menu/MenuKex.dart';
import 'package:paskalapps/presentation/pages/Sejarah.dart';
import 'package:paskalapps/presentation/pages/Ibadah/TampilahIbadah.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:paskalapps/presentation/pages/External/Basket.dart';
import 'database/firebase/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter router = GoRouter(routes: [
    GoRoute(
        path: '/MainPage',
        name: 'MainPage',
        builder: (context, state) {
          return const MainPage();
        },
        routes: [
          GoRoute(
              path: 'MenuIbadah',
              name: 'MenuIbadah',
              builder: (context, state) {
                return const MenuIbadah();
              },
              routes: [
                GoRoute(
                  path: 'tampilanIbadah',
                  name: 'tampilanIbadah',
                  builder: (context, state) {
                    return ibadah();
                  },
                ),
                GoRoute(
                  path: 'tampilanIbadah2',
                  name: 'tampilanIbadah2',
                  builder: (context, state) {
                    return ibadah2();
                  },
                ),
                GoRoute(
                  path: 'Lembang',
                  name: 'Lembang',
                  builder: (context, state) {
                    return IbadahLembang();
                  },
                ),
                GoRoute(
                  path: 'Remaja',
                  name: 'Remaja',
                  builder: (context, state) {
                    return Remaja();
                  },
                ),
              ]),
          GoRoute(
            path: 'MenuKex',
            name: 'MenuKex',
            builder: (context, state) {
              return const KegiatanEx();
            },
            routes: [
              GoRoute(
                path: 'tampilanKex',
                name: 'tampilanKex',
                builder: (context, state) {
                  return const External();
                },
              ),GoRoute(
                path: 'Badminton',
                name: 'Badminton',
                builder: (context, state) {
                  return const Badminton();
                },
              ),GoRoute(
                path: 'Komsel',
                name: 'Komsel',
                builder: (context, state) {
                  return const Komsel();
                },
              )
            ],
          ),
          GoRoute(
            path: 'Sejarah',
            name: 'Sejarah',
            builder: (context, state) {
              return const Sejarah();
            },
          ),
          GoRoute(
            path: 'Contact',
            name: 'Contact',
            builder: (context, state) {
              return const ContactAndInfo();
            },
          ),
        ])
  ], initialLocation: '/MainPage');
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );
  }
}
