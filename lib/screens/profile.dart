import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/restaurant_logo.jpg'), // Placeholder image, replace with restaurant's logo
            ),
            SizedBox(height: 20),
            Text(
              'Delicious Eatery', // Restaurant name
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'contact@deliciouseatery.com', // Restaurant email
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(
              'Restaurant Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Location'),
              subtitle: Text('123 Main Street, City'), // Restaurant location
              trailing: Icon(Icons.edit), // Edit icon
              onTap: () {
                // Navigate to edit location page
                // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => EditLocationPage()));
              },
            ),
            ListTile(
              title: Text('Phone Number'),
              subtitle: Text('(123) 456-7890'), // Restaurant phone number
              trailing: Icon(Icons.edit), // Edit icon
              onTap: () {
                // Navigate to edit phone number page
                // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => EditPhoneNumberPage()));
              },
            ),
            // Add more ListTile widgets for editing other restaurant details (e.g., opening hours, cuisine type, etc.)
          ],
        ),
      ),
    );
  }
}

// Example usage:
// In your main.dart or any other appropriate location where you want to show the profile page:
// Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(key: Key('profile'))));
