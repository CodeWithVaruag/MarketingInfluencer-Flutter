import 'package:flutter/material.dart';

class CompanyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigate to the page where the company can create a new campaign
                // You can create a new screen for campaign creation.
                // Example:
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => CreateCampaignScreen(),
                //   ),
                // );
              },
              child: Text('Create Campaign'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the page where the company can manage existing campaigns
                // You can create a new screen for managing campaigns.
                // Example:
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ManageCampaignsScreen(),
                //   ),
                // );
              },
              child: Text('Manage Campaigns'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the page where the company can explore influencers
                // You can create a new screen for exploring influencers.
                // Example:
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ExploreInfluencersScreen(),
                //   ),
                // );
              },
              child: Text('Explore Influencers'),
            ),
            // You can add more buttons for other features or sections.
          ],
        ),
      ),
    );
  }
}
