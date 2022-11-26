class Watch {
  Watch({
    required this.id,
    required this.image,
    required this.name,
    required this.subtitle,
    required this.color,
    required this.brand,
    required this.description,
  });

  String id;
  String image;
  String name;
  String subtitle;
  String color;
  String brand;
  String description;

  factory Watch.fromJson(Map<String, dynamic> json) => Watch(
    id: json["id"],
    image: json["image"],
    name: json["name"],
    subtitle: json['subtitle'],
    color: json["color"],
    brand: json["brand"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "name": name,
    "subtitle": subtitle,
    "color": color,
    "brand": brand,
    "description": description,
  };
}

final dummyFoods = [
  Watch(
    id: '1',
    image: 'images/Gold_1.png',
    name: 'WatchGold',
    subtitle: 'Decker watch',
    color: 'Gold',
    brand: 'Daytona',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '2',
    image: 'images/Gold_2.png',
    name: 'WatchGold',
    subtitle: 'Decker watch',
    color: 'Gold',
    brand: 'Daytona',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '3',
    image: 'images/Gold_3.png',
    name: 'WatchGold',
    subtitle: 'Decker watch',
    color: 'Gold',
    brand: 'Daytona',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '4',
    image: 'images/Gold_4.png',
    name: 'WatchGold',
    subtitle: 'Decker watch',
    color: 'Gold',
    brand: 'Daytona',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  // pinkgold
  Watch(
    id: '1',
    image: 'images/pinkgold_1.png',
    name: 'Watch Pink Gold',
    subtitle: 'Decker watch',
    color: 'Pink Gold',
    brand: 'Daytona',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '2',
    image: 'images/pinkgold_2.png',
    name: 'Watch Pink Gold',
    subtitle: 'Decker watch',
    color: 'Pink Gold',
    brand: 'Daytona',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '3',
    image: 'images/pinkgold_3.png',
    name: 'Watch Pink Gold',
    subtitle: 'Decker watch',
    color: 'Pink Gold',
    brand: 'Daytona',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Watch(
    id: '4',
    image: 'images/pinkgold_4.png',
    name: 'Watch Pink Gold',
    subtitle: 'Decker watch',
    color: 'Pink Gold',
    brand: 'Daytona',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
];