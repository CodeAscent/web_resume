import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyResume());
}

class MyResume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Harshdeep Singh Saluja Resume',
      theme: ThemeData(
          colorSchemeSeed: Colors.white,
          appBarTheme: AppBarTheme(surfaceTintColor: Colors.white)),
      home: ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harshdeep Singh Saluja Resume'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Introduction(
              fullName: 'Harshdeep Singh Saluja',
              email: 'harshsinghsaluja10@gmail.com',
              phone: '895-975-2763',
              linkedin: 'linkedin.com/in/harshdeep-singh-saluja',
              github: 'github.com/Harshdeepsinghh',
            ),
            Summary(
              summary:
                  'Flutter and Node.js developer seeking full-time opportunities. Proficient in building cross-platform mobile applications using Flutter and developing server-side applications with Node.js. Skilled in API integration, database management, and delivering scalable solutions.',
            ),
            Education(
              university:
                  'Sri Satya Sai University Of Technology And Medical Sciences, Sehore',
              graduation: 'Graduated APR 2022',
              grade: '7.3 CGPA',
              program: 'B.C.A',
            ),
            Skills(
              programmingSkills:
                  'C++, Flutter, Dart, JavaScript, NodeJs, Firebase, SQLite',
              certificationSkills:
                  'Dart and Flutter, C++ Data Structures & Algorithms Udemy',
            ),
            Experience(
              company: 'MAH - IT AND SOFTWARE DEVELOPMENT',
              location: 'Bhopal',
              position: 'Flutter Developer',
              duration: 'OCT 2021 – MAR 2024',
              description:
                  'The Al-Ibtisam Sports Club app boasts an intuitive and user-friendly interface, Organising and participating in events has never been easier. The app\'s event management system enables users to create, join, and manage sports activities seamlessly.\nDeveloped and implemented RESTful APIs, creating a chat app.\nDeveloped the Bhopal Samachaar app and multiple other projects.\nContributed to the development of Flutter applications and crafted sleek UI designs.\nDeveloped API\'s with NodeJs and Worked with third-party libraries and API Implentations.',
            ),
            AcademicProjects(
              projects: [
                Project(
                  title: 'Collab Docs - Collaborative Document Management App',
                  keyHighlight:
                      'A collaborative document management app designed to streamline teamwork and enhance productivity.',
                  playStoreUrl:
                      'https://play.google.com/store/apps/details?id=com.harshdeep.collabDocs&pcampaignid=web_share',
                ),
                Project(
                  title: 'Flappy Owl - Android and iOS game',
                  keyHighlight:
                      'Developed a Flappy Owl game using Flutter framework.',
                  playStoreUrl:
                      'https://play.google.com/store/apps/details?id=com.game.flappymario&pcampaignid=web_share',
                ),
                Project(
                  title: 'ShopSmart Shopping App',
                  keyHighlight:
                      'A shopping app for both suppliers and customers.',
                ),
              ],
            ),
            OtherProjects(
              projects: [
                Project(
                  title: 'Astrology App',
                  description:
                      'Designed and Developed an engaging astrology app.\nLeveraged Flutter framework to provide users with insightful daily horoscopes and astrological insights. Published the app on the Google Play Store, reaching a wide audience of astrology enthusiasts.',
                  keyHighlight: '',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Introduction extends StatelessWidget {
  final String fullName;
  final String email;
  final String phone;
  final String linkedin;
  final String github;

  Introduction({
    required this.fullName,
    required this.email,
    required this.phone,
    required this.linkedin,
    required this.github,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Full Name: $fullName',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('Email: $email'),
        Text('Phone: $phone'),
        InkWell(
          child: Text('LinkedIn: $linkedin'),
          onTap: () => launchUrl(Uri.parse(linkedin)),
        ),
        InkWell(
          child: Text('GitHub: $github'),
          onTap: () => launchUrl(Uri.parse(github)),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class Summary extends StatelessWidget {
  final String summary;

  Summary({required this.summary});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Summary:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(summary),
        SizedBox(height: 20),
      ],
    );
  }
}

class Education extends StatelessWidget {
  final String university;
  final String graduation;
  final String grade;
  final String program;

  Education({
    required this.university,
    required this.graduation,
    required this.grade,
    required this.program,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Education:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('University: $university'),
        Text('Graduation: $graduation'),
        Text('Grade: $grade'),
        Text('Program: $program'),
        SizedBox(height: 20),
      ],
    );
  }
}

class Skills extends StatelessWidget {
  final String programmingSkills;
  final String certificationSkills;

  Skills({
    required this.programmingSkills,
    required this.certificationSkills,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Skills:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('Programming Skills: $programmingSkills'),
        Text('Certification Skills: $certificationSkills'),
        SizedBox(height: 20),
      ],
    );
  }
}

class Experience extends StatelessWidget {
  final String company;
  final String location;
  final String position;
  final String duration;
  final String description;

  Experience({
    required this.company,
    required this.location,
    required this.position,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Experience:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('Company: $company'),
        Text('Location: $location'),
        Text('Position: $position'),
        Text('Duration: $duration'),
        Text('Description: $description'),
        SizedBox(height: 20),
      ],
    );
  }
}

class AcademicProjects extends StatelessWidget {
  final List<Project> projects;

  AcademicProjects({required this.projects});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Academic Projects:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: projects
              .map((project) => Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${project.title}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Key Highlight: ${project.keyHighlight}'),
                        project.playStoreUrl != null
                            ? InkWell(
                                child: Text('Play Store URL'),
                                onTap: () =>
                                    launchUrl(Uri.parse(project.playStoreUrl!)),
                              )
                            : Container(),
                        SizedBox(height: 10),
                      ],
                    ),
                  ))
              .toList(),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class OtherProjects extends StatelessWidget {
  final List<Project> projects;

  OtherProjects({required this.projects});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Other Projects:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: projects
              .map((project) => Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${project.title}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Description: ${project.description}'),
                        SizedBox(height: 10),
                      ],
                    ),
                  ))
              .toList(),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class Project {
  final String title;
  final String keyHighlight;
  final String? playStoreUrl;
  final String? description;

  Project({
    required this.title,
    required this.keyHighlight,
    this.playStoreUrl,
    this.description,
  });
}
