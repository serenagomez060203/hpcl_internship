import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HPCL',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            textStyle: const TextStyle(fontSize: 18),
          ),
        ),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/ic_launcher.jpg', // Updated image path
                height: 100,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegistrationPage()),
                  );
                },
                child: const Text('Signup'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CandidateInfoPage()),
                  );
                },
                child: const Text('Candidate Info'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _parentsNameController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nationalityController = TextEditingController();
  final TextEditingController _workExperienceController = TextEditingController();
  final TextEditingController _educationController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/ic_launcher.jpg', // Updated image path
                  height: 100,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _parentsNameController,
                  decoration: const InputDecoration(labelText: 'Parents Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your parents name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _cityController,
                  decoration: const InputDecoration(labelText: 'City'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your city';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _stateController,
                  decoration: const InputDecoration(labelText: 'State'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your state';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _phoneController,
                  decoration: const InputDecoration(labelText: 'Phone Number'),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _pincodeController,
                  decoration: const InputDecoration(labelText: 'Pincode'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your pincode';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _nationalityController,
                  decoration: const InputDecoration(labelText: 'Nationality'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your nationality';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _workExperienceController,
                  decoration: const InputDecoration(labelText: 'Work Experience'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your work experience';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _educationController,
                  decoration: const InputDecoration(labelText: 'Education'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your education';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _ageController,
                  decoration: const InputDecoration(labelText: 'Age'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your age';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await DatabaseHelper.instance.insertRegistration({
                        'name': _nameController.text,
                        'parentsName': _parentsNameController.text,
                        'city': _cityController.text,
                        'state': _stateController.text,
                        'phone': _phoneController.text,
                        'email': _emailController.text,
                        'pincode': _pincodeController.text,
                        'password': _passwordController.text,
                        'nationality': _nationalityController.text,
                        'workExperience': _workExperienceController.text,
                        'education': _educationController.text,
                        'age': _ageController.text,
                      });
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: const Text("Data entered successfully!"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(builder: (context) => const WelcomePage()),
                                    (Route<dynamic> route) => false,
                                  );
                                },
                                child: const Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/ic_launcher.jpg', // Updated image path
                  height: 100,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      bool isAuthenticated = await DatabaseHelper.instance.authenticateUser(
                        _emailController.text,
                        _passwordController.text,
                      );
                      if (isAuthenticated) {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => const WelcomePage()),
                          (Route<dynamic> route) => false,
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: const Text("Invalid email or password"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    }
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CandidateInfoPage extends StatelessWidget {
  const CandidateInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Class10InfoPage()),
              );
            },
            child: const Text('Enter Candidate Info'),
          ),
        ),
      ),
    );
  }
}

class Class10InfoPage extends StatefulWidget {
  const Class10InfoPage({super.key});

  @override
  _Class10InfoPageState createState() => _Class10InfoPageState();
}

class _Class10InfoPageState extends State<Class10InfoPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _marksController = TextEditingController();
  final TextEditingController _boardController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/ic_launcher.jpg', // Updated image path
                  height: 100,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _marksController,
                  decoration: const InputDecoration(labelText: 'Class 10th Marks'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your class 10th marks';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _boardController,
                  decoration: const InputDecoration(labelText: 'Board of Education'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your board of education';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _yearController,
                  decoration: const InputDecoration(
                    labelText: 'Year of Passing',
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                  onTap: () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        _yearController.text = "${pickedDate.year}";
                      });
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your year of passing';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Class12InfoPage()),
                      );
                    }
                  },
                  child: const Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Class12InfoPage extends StatefulWidget {
  const Class12InfoPage({super.key});

  @override
  _Class12InfoPageState createState() => _Class12InfoPageState();
}

class _Class12InfoPageState extends State<Class12InfoPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _marksController = TextEditingController();
  final TextEditingController _boardController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/ic_launcher.jpg', // Updated image path
                  height: 100,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _marksController,
                  decoration: const InputDecoration(labelText: 'Class 12th Marks'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your class 12th marks';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _boardController,
                  decoration: const InputDecoration(labelText: 'Board of Education'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your board of education';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _yearController,
                  decoration: const InputDecoration(
                    labelText: 'Year of Passing',
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                  onTap: () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        _yearController.text = "${pickedDate.year}";
                      });
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your year of passing';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HigherEducationInfoPage()),
                      );
                    }
                  },
                  child: const Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HigherEducationInfoPage extends StatefulWidget {
  const HigherEducationInfoPage({super.key});

  @override
  _HigherEducationInfoPageState createState() => _HigherEducationInfoPageState();
}

class _HigherEducationInfoPageState extends State<HigherEducationInfoPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _universityController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();
  final TextEditingController _majorsController = TextEditingController();
  String? _selectedCourse;

  final List<String> _courses = ['Bachelors', 'Masters'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/ic_launcher.jpg', // Updated image path
                  height: 100,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _universityController,
                  decoration: const InputDecoration(labelText: 'University/College Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your university/college name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _yearController,
                  decoration: const InputDecoration(
                    labelText: 'Year of Graduation',
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                  onTap: () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        _yearController.text = "${pickedDate.year}";
                      });
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your year of graduation';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: _selectedCourse,
                  items: _courses.map((String course) {
                    return DropdownMenuItem<String>(
                      value: course,
                      child: Text(course),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedCourse = newValue;
                    });
                  },
                  decoration: const InputDecoration(labelText: 'Course'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select your course';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _majorsController,
                  decoration: const InputDecoration(labelText: 'Majors in'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your majors';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: const Text("Submitted!"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(builder: (context) => const HomePage()),
                                    (Route<dynamic> route) => false,
                                  );
                                },
                                child: const Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/ic_launcher.jpg', // Updated image path
                height: 100,
              ),
              const SizedBox(height: 40),
              const Text(
                'Welcome to the app!',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('my_database.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE registrations (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        parentsName TEXT,
        city TEXT,
        state TEXT,
        phone TEXT,
        email TEXT,
        pincode TEXT,
        password TEXT,
        nationality TEXT,
        workExperience TEXT,
        education TEXT,
        age TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        email TEXT,
        password TEXT
      )
    ''');
  }

  Future<void> insertRegistration(Map<String, dynamic> row) async {
    final db = await instance.database;
    await db.insert('registrations', row);
  }

  Future<bool> authenticateUser(String email, String password) async {
    final db = await instance.database;
    final result = await db.query(
      'users',
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );

    return result.isNotEmpty;
  }
}
