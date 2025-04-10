import 'package:flutter/material.dart';



class Onboardingpage extends StatefulWidget {
  const Onboardingpage({super.key});
  

  @override
  _OnboardingpageState createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  int currentStep = 0;

  final List<String> steps = [
    "Complete Profile",
    "Educational Information",
    "Job Preferences",
    "Finish"
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child:Text('Complete Profile', style:TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),),
              SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(steps.length, (index) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: index <= currentStep ? Colors.teal : Colors.grey,
                    ),
                    if (index < steps.length - 1)
                      Container(
                        height: 2,
                        width: 20,
                        color: index < currentStep ? Colors.teal : Colors.grey,
                      ),
                  ],
                );
              }),
            ),
            SizedBox(height: 20),

            // Content based on current step
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(steps[currentStep], style: TextStyle(fontSize: 24)),
                  SizedBox(height: 20),
                  // Example input field
                  TextField(
                    decoration: InputDecoration(labelText: 'Enter your information'),
                  ),
                ],
              ),
            ),

            // Navigation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentStep > 0)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentStep--;
                      });
                    },
                    child: Text('Back'),
                  ),
                ElevatedButton(
                  onPressed: () {
                    if (currentStep < steps.length - 1) {
                      setState(() {
                        currentStep++;
                      });
                    } else {
                      // Finish action
                      print('Onboarding complete!');
                    }
                  },
                  child: Text(currentStep < steps.length - 1 ? 'Next' : 'Finish'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}