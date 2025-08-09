import 'package:flutter/material.dart';
import 'data/dog_data.dart';
import 'data/event_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog Adoption',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DogListScreen(),
    );
  }
}

class AdoptionEventScreen extends StatelessWidget {
  const AdoptionEventScreen({super.key});
  
  List<Event> get adoptionEvents => events;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Adoption Event')),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final events = adoptionEvents[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(events.eventName),
              subtitle: Text('${events.eventDate} at ${events.eventLocation}')            ),
          );
        },
      ),
    );
  }
}

class DogListScreen extends StatefulWidget {
  const DogListScreen({super.key});

  @override
  State<DogListScreen> createState() => _DogListScreenState();
}

class _DogListScreenState extends State<DogListScreen> {
  List<Dog> get filteredDogs {
    return dogs.where((dog) {
      if (selectedName != null && dog.name != selectedName) return false;
      if (selectedBreed != null && dog.breed != selectedBreed) return false;
      if (selectedGender != null && dog.gender != selectedGender) return false;
      return true;
    }).toList();
  }
  String? selectedName;
  String? selectedBreed;
  String? selectedGender;

  List<String> get uniqueNames =>
    dogs.map((dog) => dog.name).toSet().toList()..sort();
  List<String> get uniqueBreeds =>
    dogs.map((dog) => dog.breed).toSet().toList()..sort();
  List<String> get uniqueGenders =>
    dogs.map((dog) => dog.gender).toSet().toList()..sort();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class of 2025: Bring a Friend Home'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.event),
                  label: const Text('Adoption Event'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFD1C4E9), // light purple
                    foregroundColor: Colors.deepPurple,
                    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    elevation: 4,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdoptionEventScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(width: 16),
                ElevatedButton.icon(
                  icon: const Icon(Icons.local_hospital),
                  label: const Text('Veterinary Clinic Information'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFD1C4E9), // light purple
                    foregroundColor: Colors.deepPurple,
                    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    elevation: 4,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Veterinary Clinic Information'),
                        content: const Text('Contact your local veterinary clinic for checkups, vaccinations, and more.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Close'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                    ),
                    value: selectedName,
                    items: [
                      const DropdownMenuItem<String>(
                        value: null,
                        child: Text('All Names'),
                      ),
                      ...uniqueNames.map(
                        (name) => DropdownMenuItem<String>(
                          value: name,
                          child: Text(name),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedName = value;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: 'Breed',
                      border: OutlineInputBorder(),
                    ),
                    value: selectedBreed,
                    items: [
                      const DropdownMenuItem<String>(
                        value: null,
                        child: Text('All Breeds'),
                      ),
                      ...uniqueBreeds.map(
                        (breed) => DropdownMenuItem<String>(
                          value: breed,
                          child: Text(breed),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedBreed = value;
                          Padding(
                            padding: const EdgeInsets.only(top: 28.0, bottom: 4.0),
                  );
                      }
                );
                    }
                  )
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: 'Gender',
                      border: OutlineInputBorder(),
                    ),
                    value: selectedGender,
                    items: [
                      const DropdownMenuItem<String>(
                        value: null,
                        child: Text('All Genders'),
                      ),
                      ...uniqueGenders.map(
                        (gender) => DropdownMenuItem<String>(
                          value: gender,
                          child: Text(gender),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedName = null;
                      selectedBreed = null;
                      selectedGender = null;
                    });
                  },
                  child: const Text('Clear Filters'),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: filteredDogs.length,
              itemBuilder: (context, index) {
                final dog = filteredDogs[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[50],
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.blueGrey.shade200, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey,
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 18),
                      Flexible(
                        flex: 2,
                        child: AspectRatio(
                          aspectRatio: 3 / 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24), // More rounded corners
                            child: (dog.name == "Hunter")
                                ? Image.asset(
                                    "assets/Hunter_main.jpeg",
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: Colors.grey[300],
                                        child: const Icon(
                                          Icons.pets,
                                          size: 50,
                                          color: Colors.grey,
                                        ),
                                      );
                                    },
                                  )
                                : (dog.imageUrl.startsWith('http')
                                    ? Image.network(
                                        dog.imageUrl,
                                        fit: BoxFit.cover,
                                        errorBuilder: (context, error, stackTrace) {
                                          return Container(
                                            color: Colors.grey[300],
                                            child: const Icon(
                                              Icons.pets,
                                              size: 50,
                                              color: Colors.grey,
                                            ),
                                          );
                                        },
                                      )
                                    : Image.asset(
                                        dog.imageUrl,
                                        fit: BoxFit.cover,
                                        errorBuilder: (context, error, stackTrace) {
                                          return Container(
                                            color: Colors.grey[300],
                                            child: const Icon(
                                              Icons.pets,
                                              size: 50,
                                              color: Colors.grey,
                                            ),
                                          );
                                        },
                                      )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        dog.name,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Comic Sans MS',
                                          color: Colors.indigo,
                                          letterSpacing: 1.2,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(width: 6),
                                      Tooltip(
                                        message: 'Check out my photos',
                                        child: GestureDetector(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                title: const Text("This is me in every day life!"),
                                                content: dog.name == "Hunter" && dog.otherPhotos != null && dog.otherPhotos!.isNotEmpty
                          ? SizedBox(
                            width: 500,
                            height: 300,
                                                        child: ListView(
                                                          scrollDirection: Axis.horizontal,
                                                          children: [
                                                            if (dog.otherPhotos!.contains("assets/Hunter_2.jpg"))
                                                              Padding(
                                                                padding: const EdgeInsets.all(8.0),
                                                                child: Image.asset("assets/Hunter_2.jpg", fit: BoxFit.contain, width: 250, height: 250),
                                                              ),
                                                            if (dog.otherPhotos!.contains("assets/Hunter_3.jpg"))
                                                              Padding(
                                                                padding: const EdgeInsets.all(8.0),
                                                                child: Image.asset("assets/Hunter_3.jpg", fit: BoxFit.contain, width: 250, height: 250),
                                                              ),
                                                          ],
                                                        ),
                                                      )
                                                    : (dog.otherPhotos != null && dog.otherPhotos!.isNotEmpty
                                                        ? SizedBox(
                                                            width: 300,
                                                            height: 300,
                                                            child: ListView(
                                                              scrollDirection: Axis.horizontal,
                                                              children: [
                                                                ...dog.otherPhotos!.map((photo) =>
                                                                  photo.startsWith('http')
                                                                    ? Padding(
                                                                        padding: const EdgeInsets.all(8.0),
                                                                        child: Image.network(photo, fit: BoxFit.contain, width: 250, height: 250),
                                                                      )
                                                                    : Padding(
                                                                        padding: const EdgeInsets.all(8.0),
                                                                        child: Image.asset(photo, fit: BoxFit.contain, width: 250, height: 250),
                                                                      )
                                                                ),
                                                              ],
                                                            ),
                                                          )  
                                                        : (dog.imageUrl.startsWith('http')
                                                            ? Image.network(dog.imageUrl, fit: BoxFit.contain)
                                                            : Image.asset(dog.imageUrl, fit: BoxFit.contain))),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () => Navigator.of(context).pop(),
                                                    child: const Text('Close'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                          child: const Icon(Icons.photo_library, color: Colors.deepPurple, size: 20),
                                        ),
                                      ),
                                    ],
                                  ),
                            const SizedBox(height: 4),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 4),
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple.withAlpha((0.07 * 255).toInt()),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.deepPurple.withAlpha((0.2 * 255).toInt())),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    '“',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      dog.quote,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Colors.deepPurple,
                                        fontStyle: FontStyle.italic,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const Text(
                                    '”',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              '${dog.gender} | ${dog.breed}',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Age: ${dog.age}',
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.blueGrey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Centre: ${dog.centre}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}