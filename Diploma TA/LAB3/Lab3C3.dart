// W.A.P. to ƒind friends detail by their name using dictionary. (Create local
// dictionary and search from it using Map & Model Class) (C)


class Friend {
  String name;
  int age;
  String phone;

  Friend(this.name, this.age, this.phone);
}

void main() {
  Map<String, Friend> friends = {
    'Neema': Friend('Neema', 21, '9727532619'),
    'Riya': Friend('Riya', 22, '9876543210'),
    'Jiya': Friend('Jiya', 20, '7894561230'),
  };

  String searchName = 'Neema';

  if (friends.containsKey(searchName)) {
    Friend f = friends[searchName]!;
    print('Name: ${f.name}');
    print('Age: ${f.age}');
    print('Phone: ${f.phone}');
  } else {
    print('Friend not found.');
  }
}
