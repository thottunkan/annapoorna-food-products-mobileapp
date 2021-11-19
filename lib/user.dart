class CurUser {
  String? name;
  String? email;
  String? photoURL;
  CurUser(String name, String email, String photoURL) {
    this.name = name;
    this.email = email;
    this.photoURL = photoURL;
  }

  String? getName() {
    return name;
  }

  String? getEmail() {
    return email;
  }

  String? getPhotoURL() {
    return photoURL;
  }
}
