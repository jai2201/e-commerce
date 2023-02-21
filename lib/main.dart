import 'package:evira/src/routes/route_generator.dart';
import 'package:evira/src/routes/screen_routes.dart';
import 'package:evira/src/models/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:evira/src/views/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: CartModel())],
      child: MaterialApp(
        title: 'Evira',
        home: const SplashScreen(),
        theme: ThemeData(
            textTheme: GoogleFonts.jostTextTheme(Theme.of(context).textTheme)),
        initialRoute: ScreenRoutes.splashScreenRoute,
        onGenerateRoute: RouteGenerator.generateRoutes,
      ),
    );
  }
}
