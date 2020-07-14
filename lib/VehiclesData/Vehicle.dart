class Vehicle {
  final String id;
  final String name;
  final String location;
  final String distance;
  final String gravity;
  final String description;
  final String image;

  const Vehicle({this.id, this.name, this.location, this.distance, this.gravity,
    this.description, this.image});
}

List<Vehicle> vehicles = [
  const Vehicle(
    id: "1",
    name: "Mars",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "3.711 m/s ",
    description: "Lorem ipsum...",
    image: "assets/img/mars.png",
  ),
  const Vehicle(
    id: "2",
    name: "Neptune",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "3.711 m/s ",
    description: "Lorem ipsum...",
    image: "assets/img/neptune.png",
  ),
  const Vehicle(
    id: "3",
    name: "Moon",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "3.711 m/s ",
    description: "Lorem ipsum...",
    image: "assets/img/moon.png",
  ),
  const Vehicle(
    id: "4",
    name: "Earth",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "3.711 m/s ",
    description: "Lorem ipsum...",
    image: "assets/img/earth.png",
  ),
  const Vehicle(
    id: "5",
    name: "Mercury",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "3.711 m/s ",
    description: "Lorem ipsum...",
    image: "assets/img/mercury.png",
  ),
];