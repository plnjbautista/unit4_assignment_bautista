import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp is used to wrap the entire app and sets the ProfilePage as the home screen.
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides the basic page structure with an AppBar and body.
      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'PAULINE JOY BAUTISTA',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        backgroundColor: const Color(0xFFFFECCDB4),
      ),
      body: Container(
        // Container is used to set a background color for the body and structure the layout.
        color: const Color(0xFFF9FBE7),
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
            child: Column(
              // Column is used to vertically align different sections of the profile page.
              children: [
                Row(
                  // Row is used to align the profile picture and name side by side.
                  children: [
                    Container(
                      // Container is used to wrap the profile picture with circular borders.
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: ClipOval(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/profile.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    // SizedBox is used to provide space between the profile picture and name.
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pauline Joy Bautista',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Bachelor of Science in Computer Science, WVSU',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(), // Spacer is used here to take up any remaining horizontal space, pushing subsequent widgets to the left.
                  ],
                ),
                SizedBox(height: 20),
                // SizedBox is used to add vertical spacing between the profile and other sections.
                Container(
                  // Container is used to style the table with padding, background color, and borders.
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFF0EDD4),
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Table(
                    // Table is used to layout information like birthdate, email, and phone number in a grid format.
                    columnWidths: const {
                      0: FlexColumnWidth(1.2),
                      1: FlexColumnWidth(5),
                    },
                    children: [
                      _buildTableRow(Icons.cake, 'Birthdate', 'May 11, 2003'),
                      _buildTableRow(
                          Icons.home, 'Address', 'Sapian, Capiz, Philippines'),
                      _buildTableRow(Icons.email, 'Email',
                          'paulinejoy.bautista@wvsu.edu.ph'),
                      _buildTableRow(
                          Icons.phone, 'Phone Number', '09562637168'),
                      _buildTableRow(Icons.school, 'Education',
                          'West Visayas State University'),
                      _buildTableRow(Icons.book, 'Course',
                          'Bachelor of Science in Computer Science'),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  // Padding is used to add space around the hobbies section for alignment.
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      // Row is used to align the icon and the 'My Hobbies' label horizontally.
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.black,
                          size: 24,
                        ),
                        SizedBox(width: 8),
                        // SizedBox is used to add horizontal spacing between the icon and the text.
                        Text(
                          'My Hobbies',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                GridView(
                  // GridView is used to display hobbies in a grid layout without specifying the number of columns.
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of columns
                    childAspectRatio: 5.0,
                  ),
                  children: [
                    _buildHobbyBox('Walking'),
                    _buildHobbyBox('Cooking'),
                    _buildHobbyBox('Reading'),
                    _buildHobbyBox('Watching films and series'),
                    _buildHobbyBox('Sleeping'),
                    _buildHobbyBox('Traveling'),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  // Another Container is used to wrap the biography section with padding, color, and border.
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFF0EDD4),
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    // Column is used to vertically stack the biography header and text.
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Biography',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      // SizedBox is used to add vertical space between the biography title and text.
                      Text(
                        'Growing up in the small, close-knit town of Sapian in Capiz, I was surrounded by a community where everyone knew each other, but as an introvert, I often felt a bit out of place.'
                        'Now in my third year at West Visayas State University, I realize that not much has changed; my introverted nature still influences how I connect with others. My journey has been both'
                        'challenging and rewarding, particularly because pursuing this course wasn’t something I originally planned. To cope with stress, I often turn to lighthearted series and films, enjoy'
                        'peaceful walks, and find comfort in cooking. These activities provide me with a much-needed escape and allow me to recharge as I navigate my academic path.',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TableRow _buildTableRow(IconData icon, String label, String value) {
    return TableRow(
      children: [
        Padding(
          // Padding is used for spacing between the icon and the text inside the table rows.
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            // Row is used to align the icon and text horizontally within each table row.
            children: [
              Icon(icon, color: Colors.black, size: 20),
              SizedBox(width: 8),
              // SizedBox adds space between the icon and label text.
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            value,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ],
    );
  }

  Widget _buildHobbyBox(String hobby) {
    return Container(
      // Container is used to create a styled box for each hobby with padding, borders, and background color.
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Color(0xFFECCDB4),
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        // Center is used to align the hobby text in the middle of the box.
        child: Text(
          hobby,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
