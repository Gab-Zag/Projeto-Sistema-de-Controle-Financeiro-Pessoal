class Client{
  final int id;
  final String name;
  final String email;
  final String password;

  Client({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  factory Client.fromJson(Map<String, dynamic> json){
    return Client(
      id: json['id'],
      name: json['name'] ?? "",
      email: json['email'] ?? "",
      password: json['password'] ?? "",
    );
  }

  Map<String, dynamic> toJson(){
    return{
      "name": name,
      "email": email,
      "password": password,
    };
  }
}