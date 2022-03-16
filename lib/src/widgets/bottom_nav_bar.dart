import 'package:flutter/material.dart';
import 'package:new_project/src/screens/favorites.dart';
import 'package:new_project/src/screens/hadith_books_screen.dart';
import 'package:new_project/src/screens/search_screen.dart';

class BottomNav extends StatelessWidget {
  final bool home;
  final bool search;
  final bool favorite;

  BottomNav({
    this.home = false,
    this.search = false,
    this.favorite = false,
  });
  @override
  Widget build(BuildContext context) {
    return _getNavBar(context);
  }

  _getNavBar(context) {
    return Container(
      height: 120,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: ClipPath(
              clipper: NavBarClipper(),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.teal, Colors.teal.shade900],
                )),
              ),
            ),
          ),
          Positioned(
            bottom: 45,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(HadithBook.routeName);
                  },
                  child: _buildNavItem(Icons.home, home),
                ),
                SizedBox(
                  width: 2,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Search.routeName);
                  },
                  child: _buildNavItem(Icons.search, search),
                ),
                SizedBox(
                  width: 1,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(FavoriteTab.routeName);
                  },
                  child: _buildNavItem(Icons.favorite, favorite),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 1,
                ),
                Text(
                  'Search',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 1,
                ),
                Text(
                  'Favorite',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

_buildNavItem(IconData icon, bool active) {
  return CircleAvatar(
    radius: 30,
    backgroundColor: Colors.teal.shade900,
    child: CircleAvatar(
      backgroundColor:
          active ? Colors.white.withOpacity(0.9) : Colors.transparent,
      radius: 25,
      child: Icon(
        icon,
        color: active ? Colors.black : Colors.white,
      ),
    ),
  );
}

class NavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;

    path.cubicTo(sw / 12, 0, sw / 12, 2 * sh / 5, 2 * sw / 12, 2 * sh / 5);
    path.cubicTo(3 * sw / 12, 2 * sh / 5, 3 * sw / 12, 0, 4 * sw / 12, 0);
    path.cubicTo(
        5 * sw / 12, 0, 5 * sw / 12, 2 * sh / 5, 6 * sw / 12, 2 * sh / 5);
    path.cubicTo(7 * sw / 12, 2 * sh / 5, 7 * sw / 12, 0, 8 * sw / 12, 0);
    path.cubicTo(
        9 * sw / 12, 0, 9 * sw / 12, 2 * sh / 5, 10 * sw / 12, 2 * sh / 5);
    path.cubicTo(11 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, sw, 0);
    path.lineTo(sw, sh);
    path.lineTo(0, sh);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
