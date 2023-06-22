import 'package:flutter/material.dart';
import 'package:mypet/Screen/adopt_pet_screen.dart';
import 'package:mypet/model/pet_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildPetCategory(bool isSelected, String category) {
    return GestureDetector(
      onTap: () => print('Selected $category'),
      child: Container(
        margin: EdgeInsets.all(8),
        width: 60,
        decoration: BoxDecoration(
          color:
              isSelected ? Theme.of(context).primaryColor : Color(0XFFF8F2F7),
          borderRadius: BorderRadius.circular(20),
          border: isSelected
              ? Border.all(width: 7, color: Color(0XFFFEFD8D3))
              : null,
        ),
        child: Center(
          child: Text(
            category,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30, top: 35),
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              child: ClipOval(
                child: Image(
                  height: 40,
                  width: 40,
                  image: AssetImage(owner.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              style: TextStyle(
                fontSize: 19,
                fontFamily: 'Montserrat',
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.add_location,
                    color: Colors.redAccent,
                    size: 34,
                  ),
                ),
                labelText: 'Location',
                labelStyle: TextStyle(fontSize: 17, color: Colors.grey),
                contentPadding: EdgeInsets.only(bottom: 20),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Divider(),
          ),
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(
                  width: 36,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 1),
                  child: IconButton(
                    onPressed: () => print('Filter'),
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ),
                ),
                _buildPetCategory(false, 'Cats'),
                _buildPetCategory(true, 'Dogs'),
                _buildPetCategory(false, 'Birds'),
                _buildPetCategory(false, 'Others'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => AdoptPetScreen(pet: pets[0]),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Hero(
                      tag: pets[0].id,
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            image: DecorationImage(
                              image: AssetImage(pets[0].imageUrl),
                              fit: BoxFit.cover,
                            )),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 4, 30, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          pets[0].name,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () => print('Favorite ${pets[0].name}'),
                          icon: Icon(Icons.favorite_border),
                          iconSize: 26,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 30, 10),
                    child: Text(
                      pets[0].description,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => AdoptPetScreen(pet: pets[1]),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Hero(
                      tag: pets[1].id,
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            image: DecorationImage(
                              image: AssetImage(pets[1].imageUrl),
                              fit: BoxFit.cover,
                            )),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 4, 30, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          pets[1].name,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () => print('Favorite ${pets[1].name}'),
                          icon: Icon(Icons.favorite_border),
                          iconSize: 26,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 30, 10),
                    child: Text(
                      pets[1].description,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => AdoptPetScreen(pet: pets[2]),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Hero(
                      tag: pets[2].id,
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            image: DecorationImage(
                              image: AssetImage(pets[2].imageUrl),
                              fit: BoxFit.cover,
                            )),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 4, 30, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          pets[2].name,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () => print('Favorite ${pets[2].name}'),
                          icon: Icon(Icons.favorite_border),
                          iconSize: 26,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 30, 10),
                    child: Text(
                      pets[2].description,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => AdoptPetScreen(pet: pets[3]),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Hero(
                      tag: pets[3].id,
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            image: DecorationImage(
                              image: AssetImage(pets[3].imageUrl),
                              fit: BoxFit.cover,
                            )),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 4, 30, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          pets[3].name,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () => print('Favorite ${pets[3].name}'),
                          icon: Icon(Icons.favorite_border),
                          iconSize: 26,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 30, 10),
                    child: Text(
                      pets[3].description,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
