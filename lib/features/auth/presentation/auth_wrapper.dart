import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/login_screen.dart'; 
import 'screens/home_screen.dart'; 

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // Supabase provides a stream that emits events whenever the auth state changes
    // (e.g., signedIn, signedOut, tokenRefreshed)
    return StreamBuilder<AuthState>(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        // Show a loading spinner while waiting for the initial auth connection
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final session = snapshot.data?.session;

        if (session != null) {
          // If there is a session, the user is authenticated
          return const HomeScreen();
        } else {
          // If no session, show the Login/Register screen
          return const LoginScreen();
        }
      },
    );
  }
}