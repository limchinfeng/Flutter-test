import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SupershuaifengCard(),
    ),
  );
}

class SupershuaifengCard extends StatefulWidget {
  const SupershuaifengCard({super.key});

  @override
  State<SupershuaifengCard> createState() => _SupershuaifengCardState();
}

class _SupershuaifengCardState extends State<SupershuaifengCard> {

  int supershuailevel = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          'Supershuaifeng ID Card',
          style: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
        ),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            supershuailevel += 1;
          });
        },
        child: Icon(Icons.add,  color: Colors.white),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpeg'),
                radius: 40,
              ),
            ),

            Divider(
              height: 90,
              color: Colors.grey[800],
            ),

            const Text(
              'NAME', 
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 1),
            Text(
              'Supershuaifeng', 
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),
            
            const Text(
              'CURRENT SUPERSHUAI LEVEL', 
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 1),
            Text(
              '$supershuailevel', 
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10),
                Text(
                  'supershauifeng@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  )
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
