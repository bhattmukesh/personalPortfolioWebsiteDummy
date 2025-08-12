import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Portfolio',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.normal),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgroundImage/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 40),
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/v2/D4D03AQGQIIUCry8s5Q/profile-displayphoto-crop_800_800/B4DZfbAw3WGkAI-/0/1751726100524?e=1758153600&v=beta&t=aARbgcAUxR2crWV286Si0X0D8lmPbi1HrwpBOZ47yG0',
                ), // Replace with your photo URL or asset
              ),
              SizedBox(height: 20),
              Text(
                'Mukesh Bhatt',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '🚀 Mobile App Developer | Android (6+ Years) | Flutter (3+ Years) | Cross-Platform Expert',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 40),
              Text(
                'About Me',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Experienced Mobile App Developer with over 7 years of expertise in designing and developing high-quality applications for Android, iOS, Flutter, and Titanium Appcelerator. Proven track record in leading development teams and delivering user-centric, scalable mobile solutions. Skilled in driving full project lifecycles from concept to deployment, with a strong focus on performance, usability, and agile best practices.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(height: 40),
              ProjectsSection(),
              SizedBox(height: 40),
              ContactSection(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Projects',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ProjectCard(
          title: '5paisa: Share Market Trading',
          description:
              '5paisa is a leading discount broking platform in India, offering affordable trading in stocks, mutual funds, and more. Its tech-driven solutions, including robo-advisory and real-time analytics, serve over 4.7 million users through mobile and web platforms.',
          url:
              'https://play.google.com/store/search?q=5%20paisa&c=apps&hl=en_IN',
        ),
        ProjectCard(
          title: 'Mastani',
          description:
              'Mastani is a streaming service that allows our members to watch a wide variety of, TV shows, movies, songs,short films , web series and more.',
          url:
              'https://play.google.com/store/apps/details?id=com.hymedigitalllp.mastani&hl=en_IN',
        ),
        ProjectCard(
          title: 'One Marico World',
          description:
              'Marico is a leading Indian consumer goods company headquartered in Mumbai,operating across beauty, wellness, edible oils, haircare, and skincare. Present in over 25 countries across Asia and Africa, it serves one-third of India’s population through brands like Parachute and Saffola.',
          url:
              'https://play.google.com/store/apps/details?id=com.marico_app.one_world&hl=en_IN',
        ),
        ProjectCard(
          title: 'Claim Automation',
          description:
              'Marico is a leading Indian consumer goods company headquartered in Mumbai,operating across beauty, wellness, edible oils, haircare, and skincare. Present in over 25 countries across Asia and Africa, it serves one-third of India’s population through brands like Parachute and Saffola.',
          url:
              'https://play.google.com/store/apps/details?id=com.marico.gulf&hl=en_IN',
        ),
        ProjectCard(
          title: 'Marico Field Force Assessment',
          description:
              'Marico is a leading Indian consumer goods company headquartered in Mumbai,operating across beauty, wellness, edible oils, haircare, and skincare. Present in over 25 countries across Asia and Africa, it serves one-third of India’s population through brands like Parachute and Saffola.',
          url:
              'https://play.google.com/store/apps/details?id=com.marico.pda.fieldforecassessment&hl=en_IN',
        ),
        ProjectCard(
          title: 'Absolute Store',
          description:
              'Absolute Store is a multifunctional platform offering advanced features in security, news, entertainment, health, and education. From anti-theft protection to fitness, learning tools, and YouTube access, it caters to diverse user needs while promoting safety and well- being for all generations.',
          url:
              'https://play.google.com/store/apps/details?id=com.store.absolutestore&hl=en_IN',
        ),
        ProjectCard(
          title: 'Memory Game By Bob The Train',
          description:
              'USP Digital is a top global kids’ video content producer, with 30,000+ videos and 100+ billion views. Featuring 50+ animated characters in 32+ languages, it combines education and entertainment, and is a preferred content partner for Google.',
          url:
              'https://apps.apple.com/jp/app/memory-game-by-bob-the-train/id1446565487?l=en-US',
        ),
        ProjectCard(
          title: 'Farmees Puzzles',
          description:
              'USP Digital is a top global kids’ video content producer, with 30,000+ videos and 100+ billion views. Featuring 50+ animated characters in 32+ languages, it combines education and entertainment, and is a preferred content partner for Google.',
          url:
              'https://apps.apple.com/jp/app/farmees-puzzles/id1444835064?l=en-US',
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String url;

  const ProjectCard({
    Key? key,
    required this.title,
    required this.description,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: IconButton(
          icon: const Icon(Icons.launch),
          onPressed: () {
            _launchURL(url);
          },
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }
}

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Contact Me',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Text(
          'Email: mukesh.bhatt073@gmail.com',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 10),
        Text('Phone: +91 999-999-9999', style: TextStyle(fontSize: 18)),
      ],
    );
  }
}
