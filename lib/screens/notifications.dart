import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        children: [
          _buildNotificationTile(
            context,
            Icons.notifications,
            'New Order',
            'You have received a new order.',
                () {
              // Handle notification tap
              // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetailsPage(orderId: orderId)));
            },
          ),
          _buildNotificationTile(
            context,
            Icons.notifications,
            'New Review',
            'A customer left a review for your restaurant.',
                () {
              // Handle notification tap
              // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewDetailsPage(reviewId: reviewId)));
            },
          ),
          // Add more ListTiles for different types of notifications
        ],
      ),
    );
  }

  Widget _buildNotificationTile(BuildContext context, IconData icon, String title, String subtitle, VoidCallback onTap) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).primaryColor, // Use primary color for the icon
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      subtitle: Text(subtitle),
      onTap: onTap,
    );
  }
}

// Example usage:
// In your main.dart or any other appropriate location where you want to show the notifications page:
// Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications(key: Key('notifications'))));
