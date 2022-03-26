import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 20);

  final _name = 'ARSHAD K P';
  final _phone = '945622511';
  final _email = 'harshadkp360@gmail.com';
  final _imageUrl =
      'https://media-exp1.licdn.com/dms/image/C5603AQFI21EnURJVqg/profile-displayphoto-shrink_400_400/0/1615713940270?e=1645056000&v=beta&t=0InZ3TA17yCOWLtCTSxIRcPEwGXd5mpIaujpGqL20ic';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blueAccent,
        child: ListView(
          padding: padding,
          children: <Widget>[
            buildHeader(name: _name, phone: _phone, email: _email),
            const SizedBox(
              height: 18,
            ),
            buildMenuItem(
              text: 'Projects',
              icon: Icons.lightbulb_outline,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Educations',
              icon: Icons.book_outlined,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Skills',
              icon: Icons.construction_outlined,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Languages',
              icon: Icons.translate_outlined,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Interests',
              icon: Icons.favorite_border_outlined,
              onClicked: () => selectedItem(context, 4),
            )
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(
      {required String text, required IconData icon, VoidCallback? onClicked}) {
    final _Color = Colors.white;
    final _hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(
        icon,
        color: _Color,
      ),
      title: Text(
        text,
        style: TextStyle(color: _Color),
      ),
      hoverColor: _hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/projects_screen');

        break;
      case 1:
        Navigator.pushNamed(context, '/education_screen');

        break;
      case 2:
        Navigator.pushNamed(context, '/skills_screen');

        break;
      case 3:
        Navigator.pushNamed(context, '/languages_screen');

        break;
      case 4:
        Navigator.pushNamed(context, '/interests_screen');

        break;
      default:
    }
  }

  Widget buildHeader({
    required String name,
    required String phone,
    required String email,
    VoidCallback? onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(_imageUrl),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _name,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    _phone,
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    _email,
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
              Spacer()
            ],
          ),
        ),
      );
}
