import 'package:flutter/material.dart';
import 'package:mypet/model/pet_model.dart';

class AdoptPetScreen extends StatefulWidget {
  final Pet pet;
  AdoptPetScreen({required this.pet});

  @override
  State<AdoptPetScreen> createState() => _AdoptPetScreenState();
}

class _AdoptPetScreenState extends State<AdoptPetScreen> {
  Widget _buildInfoCard(String label, String info) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 100,
      decoration: BoxDecoration(
        color: Color(0XFFF8F2F7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            height: 6.5,
          ),
          Text(
            info,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: widget.pet.id,
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        image: DecorationImage(
                          image: AssetImage(widget.pet.imageUrl),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    widget.pet.name,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () => print('Favorite ${widget.pet.name}'),
                    icon: Icon(Icons.favorite_border),
                    iconSize: 25,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                widget.pet.description,
                style: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 13, color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(
                    width: 16,
                  ),
                  _buildInfoCard('Age', widget.pet.age.toString()),
                  _buildInfoCard('Sex', widget.pet.sex),
                  _buildInfoCard('Color', widget.pet.color),
                  _buildInfoCard('ID', widget.pet.id.toString()),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 17, top: 20),
              width: double.infinity,
              height: 75,
              decoration: BoxDecoration(
                color: Color(0XFFFFF2D0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                leading: CircleAvatar(
                  child: ClipOval(
                    child: Image(
                      image: AssetImage(owner.imageUrl),
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  owner.name,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                subtitle: Text(
                  'Owner',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                ),
                trailing: Text(
                  '1.68 km',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Text(
                owner.bio,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  height: 1.2,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(45, 0, 35, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: IconButton(
                      onPressed: () => print('Share'),
                      icon: Icon(
                        Icons.share,
                        size: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  MaterialButton(
                    padding: EdgeInsets.all(17),
                    color: Theme.of(context).primaryColor,
                    onPressed: () => print('Adopted'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // child: Icon(Icons.pets,color: Colors.white,),
                    child: Text(
                      'ADOPTION',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        color: Colors.white,
                        // letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
