import 'package:flutter/material.dart';
import 'package:career_pulse/widgets/internship_card.dart';
import 'package:career_pulse/home/saved_internships_page.dart';
import 'package:career_pulse/widgets/BottomNavigationBar.dart'; // Import the custom bottom navigation bar

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the corresponding page if needed
    switch (index) {
      case 0:
        // Navigate to Home page
        break;
      case 1:
        // Navigate to Internships page
        break;
      case 2:
        // Navigate to Profile page
        break;
      case 3:
        // Navigate to Settings page
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40), // Provide some space from the top
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello",
                      style: TextStyle(fontSize: 22, color: Colors.blue),
                    ),
                    Text(
                      "ABC Perera!",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/user_image.png'), // replace with your user image asset
                  radius: 30,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Analyzing Report",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Material(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.pushNamed(context, '/resumeReport');
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/trophy.png',
                        height: 40,
                        width: 40,
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your Score is 85%.",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          Text(
                            "Very Good!",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        Navigator.pushNamed(context, '/existingSkills');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/chart.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Suggestions",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            const Text(
                              "To improve Your Existing Skills",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        Navigator.pushNamed(context, '/newSkills');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/lightbulb.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Suggestions",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            const Text(
                              "To improve Your New Skills",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Material(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.pushNamed(context, '/resumeSuggestions');
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/thumbs_up.png',
                        height: 40,
                        width: 40,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Suggestions to improve resume",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Recommended Internships",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            InternshipCard(
              title: "Software Engineering",
              company: "BeGOOD Solutions",
              role: "Web Developer",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/internshipDetails',
                  arguments: {
                    'title': "Software Engineering",
                    'company': "BeGOOD Solutions",
                    'role': "Web Developer",
                  },
                );
              },
            ),
            InternshipCard(
              title: "Software Engineering",
              company: "Metana",
              role: "Full Stack",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/internshipDetails',
                  arguments: {
                    'title': "Software Engineering",
                    'company': "Metana",
                    'role': "Full Stack",
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            Material(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SavedInternshipsPage(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: const Center(
                    child: Text(
                      "View Saved Internships",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
