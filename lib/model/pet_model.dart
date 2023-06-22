import 'package:mypet/model/ower_model.dart';

class Pet {
  final Owner owner;
  final String name;
  final String imageUrl;
  final String description;
  final int age;
  final String sex;
  final String color;
  final int id;

  Pet({
    required this.owner,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.age,
    required this.sex,
    required this.color,
    required this.id,
  });
}

var owner = Owner(
  name: 'Aayush Basnet',
  imageUrl: 'asset/images/profile.jpg',
  bio: 'I love dogs',
);
var pets = [
  Pet(
    owner: owner,
    name: 'Pupper Katherine',
    imageUrl: 'asset/images/pug.jpg',
    description: 'French black puppy',
    age: 2,
    sex: 'Female',
    color: 'Black',
    id: 12345,
  ),
  Pet(
    owner: owner,
    name: 'Little Darlene',
    imageUrl: 'asset/images/lab.png',
    description: 'Labrador retriever puppy',
    age: 1,
    sex: 'Female',
    color: 'White',
    id: 12123,
  ),
  Pet(
    owner: owner,
    name: 'Golden Wush',
    imageUrl: 'asset/images/gold.jpg',
    description: 'Golden Fluppy Happy Dog',
    age: 3,
    sex: 'Male',
    color: 'Golden',
    id: 98765,
  ),
  Pet(
    owner: owner,
    name: 'Lavish Silver',
    imageUrl: 'asset/images/pup.jpg',
    description: 'Japan White puppy',
    age: 1,
    sex: 'Female',
    color: 'White',
    id: 09876,
  ),
];
