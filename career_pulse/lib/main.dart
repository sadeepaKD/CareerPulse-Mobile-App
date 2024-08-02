import 'package:career_pulse/pages/interested_area_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:career_pulse/stuffs/colors.dart';
import 'package:career_pulse/pages/login.dart';
import 'package:career_pulse/pages/register.dart';
import 'package:career_pulse/pages/forgot_pw.dart';
import 'package:career_pulse/pages/splash_screen.dart';
import 'package:career_pulse/pages/home.dart';
import 'package:career_pulse/pages/upload_resume.dart'; // Import the UploadResumeScreen
import 'package:career_pulse/pages/almost_done_splash.dart';
import 'package:career_pulse/pages/aboutUs.dart';
import 'package:career_pulse/pages/test_pages.dart';
import 'package:career_pulse/pages/password.dart';
import 'package:career_pulse/pages/PleaseWaitAnalyzing_splash.dart';

// for home --nadun
import 'package:provider/provider.dart';
import 'package:career_pulse/saved_internships_state.dart';
import 'package:career_pulse/home/home_page.dart';
import 'package:career_pulse/home/resume_suggestions_page.dart';
import 'package:career_pulse/home/internship_details_page.dart';
import 'package:career_pulse/home/resume_report.dart';
import 'package:career_pulse/home/existing_skills.dart';
import 'package:career_pulse/home/new_skills.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SavedInternshipsState(),
      child: MaterialApp(
        title: 'Career Pulse App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: AppColors.secondaryColor,
          appBarTheme: const AppBarTheme(
            color: AppColors.primaryColor,
            titleTextStyle: TextStyle(
              color: AppColors.titleColor,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.buttonColor,
            ),
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) =>
              const SplashScreen(), // Home route for the splash screen
          '/login': (context) =>
              const LoginScreen(), // Home route for the Login screen
          '/register': (context) =>
              const RegisterScreen(), // Route for the Register screen
          '/forgotPassword': (context) =>
              const ForgotPasswordScreen(), // Route for the forgot password screen
          '/home': (context) => const HomeScreen(), // Route for the home screen
          '/uploadResume': (context) =>
              const UploadResumeScreen(), // Route for the upload resume screen
          '/almostDone': (context) =>
              const AlmostDoneScreen(), // Route for the almost done screen
          '/aboutUs': (context) =>
              const AboutUsPage(), // Route for the about us screen
          '/interestedArea': (context) =>
              const InterestedAreaScreen(), // Route for the interested area screen
          '/homePage': (context) => const HomePage(),
          '/resumeSuggestions': (context) => const ResumeSuggestionsPage(),
          '/resumeReport': (context) => const ResumeReportPage(),
          '/existingSkills': (context) => const CoursesPage(),
          '/newSkills': (context) => const CoursesPage_1(),
          '/testPages': (context) => const TestPagesScreen(),
          '/password': (context) => const PasswordScreen(),
          '/pleaseWaitAnalyzing': (context) =>
              const PleaseWaitAnalyzingSplash(),
        },
        onGenerateRoute: (settings) {
          if (settings.name == '/internshipDetails') {
            final args = settings.arguments as Map<String, String>;
            return MaterialPageRoute(
              builder: (context) {
                return InternshipDetailsPage(
                  title: args['title']!,
                  company: args['company']!,
                  role: args['role']!,
                );
              },
            );
          }
          return null;
        },
      ),
    );
  }
}
