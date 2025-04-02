import 'package:flutter/material.dart';
import 'home.dart';
import 'job_details.dart';

class NavigatorWidget extends StatelessWidget {
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