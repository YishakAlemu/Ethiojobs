import 'package:flutter/material.dart';
import 'home.dart';
import 'job_details.dart';

class NavigatorWidget extends StatelessWidget {
  const NavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Homepage(
      onJobSelected: (String jobTitle) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JobDetailPage(jobTitle: jobTitle),
          ),
        );
      },
    );
  }
}
