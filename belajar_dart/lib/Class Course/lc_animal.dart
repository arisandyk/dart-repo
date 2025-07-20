class Animal {
  String _name = '';
  int _age = 0;
  double _weight = 0;

  Animal(this._name, this._age, this._weight);

  // Named Parameter & Initializer List
  Animal.cat(this._name, this._weight) : _age = 2 {
    print('Seekor kucing baru saja ditambahkan!');
  }

  Animal.rabbit(this._name) : _age = 1, _weight = 0.7 {
    print('Seekor Kelinci baru saja dilahirkan');
  }

  // Gunakan shirtcut Alt + Insert unutk buat Setter & Getter
  // Setter
  set name(String value) {
    _name = value;
  }

  // Getter
  double get weight => _weight;
  int get age => _age;

  // Methods
  void eat() {
    print('$_name is eating.');
    _weight = _weight + 0.2;
  }

  void sleep() {
    print('$_name is sleeping.');
  }

  void poop() {
    print('$_name is pooping.');
    _weight = _weight - 0.1;
  }
}
