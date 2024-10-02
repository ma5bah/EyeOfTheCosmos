class PlanetDetailsModel {
  String? planetName;
  String? positionfromthesun;
  String? radius;
  String? distancefromsun;
  String? numberofmoons;
  String? gravity;
  String? lengthofday;
  String? lengthofyear;
  String? temperature;
  String? headerimage;
  List<dynamic>? detailsimages;
  String? videoUrl;

  PlanetDetailsModel(
      {this.planetName,
      this.positionfromthesun,
      this.radius,
      this.distancefromsun,
      this.numberofmoons,
      this.gravity,
      this.lengthofday,
      this.lengthofyear,
      this.temperature,
      this.headerimage,
      this.detailsimages,
      this.videoUrl});

   PlanetDetailsModel.fromJson(Map<String, dynamic> json) {
    planetName = json['planet_name'];
    positionfromthesun = json['positionfromthesun'];
    radius = json['radius'];
    distancefromsun = json['distancefromsun'];
    numberofmoons = json['numberofmoons'];
    gravity = json['gravity'];
    lengthofday = json['lengthofday'];
    lengthofyear = json['lengthofyear'];
    temperature = json['temperature'];
    headerimage = json['headerimage'];
    detailsimages = json['detailsimages'];
    videoUrl = json['video_url'];
  }
}

String planetDetailsJson = '[    {        "planet_name": "mercury",        "positionfromthesun": "1st planet",        "radius": "2,440 km",        "distancefromsun": "57.9 million km (35.98 million miles)",        "numberofmoons": "0",        "gravity": "3.7 m/s²",        "lengthofday": "58.6 Earth days",        "lengthofyear": "88 Earth days",        "temperature": "Average around 430°C (day), -180°C (night)",        "headerimage": "mercury.png",        "detailsimages": ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png"],        "video_url": "https://youtu.be/0KBjnNuhRHs?si=Zz605H6LLlHIKxee"    },    {        "planet_name": "venus",        "positionfromthesun": "2nd planet",        "radius": "6,052 km",        "distancefromsun": "108.2 million km (67.24 million miles)",        "numberofmoons": "0",        "gravity": "8.87 m/s²",        "lengthofday": "243 Earth days",        "lengthofyear": "225 Earth days",        "temperature": "Average around 462°C",        "headerimage": "venus.png",        "detailsimages": ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png"],        "video_url": "https://youtu.be/BvXa1n9fjow?si=5GZjqobpOqjhdOOy"    },    {        "planet_name": "earth",        "positionfromthesun": "3rd planet",        "radius": "6,371 km",        "distancefromsun": "149.6 million km (93 million miles)",        "numberofmoons": "1",        "gravity": "9.8 m/s²",        "lengthofday": "24 hours",        "lengthofyear": "365.25 days",        "temperature": "Average 15°C",        "headerimage": "earth.png",        "detailsimages": ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png"],        "video_url": "https://youtu.be/HCDVN7DCzYE?si=dCOKUwOgjCDa5cWW"    },    {        "planet_name": "mars",        "positionfromthesun": "4th planet",        "radius": "3,389 km",        "distancefromsun": "227.9 million km (141.6 million miles)",        "numberofmoons": "2",        "gravity": "3.71 m/s²",        "lengthofday": "24.6 hours",        "lengthofyear": "687 Earth days",        "temperature": "Average -60°C",        "headerimage": "mars.png",        "detailsimages": ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png"],        "video_url": "https://youtu.be/E-PuUs25rJA?si=U1n9tNHb8SooAVlp"    },    {        "planet_name": "jupiter",        "positionfromthesun": "5th planet",        "radius": "69,911 km",        "distancefromsun": "778.5 million km (484 million miles)",        "numberofmoons": "79",        "gravity": "24.79 m/s²",        "lengthofday": "9.9 hours",        "lengthofyear": "11.86 Earth years",        "temperature": "Average -145°C",        "headerimage": "jupiter.png",        "detailsimages": ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png"],        "video_url": "https://youtu.be/PtkqwslbLY8?si=qjADGR3n3azmZcBX"    },    {        "planet_name": "saturn",        "positionfromthesun": "6th planet",        "radius": "58,232 km",        "distancefromsun": "1.4 billion km (886 million miles)",        "numberofmoons": "83",        "gravity": "10.44 m/s²",        "lengthofday": "10.7 hours",        "lengthofyear": "29.5 Earth years",        "temperature": "Average -178°C",        "headerimage": "saturn.png",        "detailsimages": ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png"],        "video_url": "https://youtu.be/epZdZaEQhS0?si=HoGvkQAmgJFv5sC6"    },    {        "planet_name": "uranus",        "positionfromthesun": "7th planet",        "radius": "25,362 km",        "distancefromsun": "2.9 billion km (1.8 billion miles)",        "numberofmoons": "27",        "gravity": "8.69 m/s²",        "lengthofday": "17.2 hours",        "lengthofyear": "84 Earth years",        "temperature": "Average -357°F",        "headerimage": "uranus.png",        "detailsimages": ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png"],        "video_url": "https://youtu.be/m4NXbFOiOGk?si=IsIOnpvibYlo0FIS"    },    {        "planet_name": "neptune",        "positionfromthesun": "8th planet",        "radius": "24,622 km",        "distancefromsun": "4.5 billion km (2.8 billion miles)",        "numberofmoons": "14",        "gravity": "11.15 m/s²",        "lengthofday": "16 hours",        "lengthofyear": "165 Earth years",        "temperature": "Average -214°C",        "headerimage": "neptune.png",        "detailsimages": ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png"],        "video_url": "https://youtu.be/NStn7zZKXfE?si=Slv2Nd0x6XrxTH84"    },    {        "planet_name": "pluto",        "positionfromthesun": "Dwarf planet",        "radius": "1,188 km",        "distancefromsun": "5.9 billion km (3.7 billion miles)",        "numberofmoons": "5",        "gravity": "0.62 m/s²",        "lengthofday": "153.3 hours",        "lengthofyear": "248 Earth years",        "temperature": "Average -229°C",        "headerimage": "pluto.png",        "detailsimages": ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png"],        "video_url": "https://youtu.be/-iZio70bd-M?si=bO0PB4gceRZ3NGiS"    }]';
