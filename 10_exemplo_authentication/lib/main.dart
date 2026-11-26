import 'package:material_ui/material_ui.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAT0H7EaoolvWaaKCFDJGiVEfZg6M-MxdE",
      authDomain: "pdm-sup-2026.firebaseapp.com",
      projectId: "pdm-sup-2026",
      storageBucket: "pdm-sup-2026.firebasestorage.app",
      messagingSenderId: "31928338151",
      appId: "1:31928338151:web:a190ec56a3ef24727e0442",
    ),
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo Authentication",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.green),
      home: Login(),
    );
  }
}
