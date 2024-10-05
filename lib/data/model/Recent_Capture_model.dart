class RecentCaptureModel {
  String? captureName;
  List<String>? keyword;
  String? description;
  List<FastFacts>? fastFacts;
  String? headingImage;
  List<String>? slidingImage;
  String? exportlink;

  RecentCaptureModel(
      {this.captureName,
      this.keyword,
      this.description,
      this.fastFacts,
      this.headingImage,
      this.slidingImage,
      this.exportlink});

  RecentCaptureModel.fromJson(Map<String, dynamic> json) {
    captureName = json['capture_name'];
    keyword = json['keyword'].cast<String>();
    description = json['description'];
    if (json['FastFacts'] != null) {
      fastFacts = <FastFacts>[];
      json['FastFacts'].forEach((v) {
        fastFacts!.add(FastFacts.fromJson(v));
      });
    }
    headingImage = json['headingImage'];
    slidingImage = json['slidingImage'].cast<String>();
    exportlink = json['exportlink'];
  }
}

class FastFacts {
  String? objectName;
  String? description;
  String? rAPosition;
  String? decPosition;
  String? constellation;
  String? distance;
  String? dimensions;

  FastFacts(
      {this.objectName,
      this.description,
      this.rAPosition,
      this.decPosition,
      this.constellation,
      this.distance,
      this.dimensions});

  FastFacts.fromJson(Map<String, dynamic> json) {
    objectName = json['Object Name'];
    description = json['Description'];
    rAPosition = json['R.A. Position'];
    decPosition = json['Dec. Position'];
    constellation = json['Constellation'];
    distance = json['Distance'];
    dimensions = json['Dimensions'];
  }
}

String recentCaptureJson = """
[
    {
        "capture_name": "Digel Cloud 2s",
        "keyword": [
            "Galaxy",
            "Cluster"
        ],
        "description": "NASA's James Webb Space Telescope's NIRCam (Near-Infrared Camera) image of the galaxy cluster PLCK G165.7+67.0, also known as G165. A foreground cluster, located 3.6 billion light-years away from Earth, is magnifying and bending the light of the distant universe beyond. In this image, astronomers discovered the light of an exploding star — more specifically, a Type Ia supernova — imaged three times. The multiply-imaged supernova offers astronomers a unique way to calculate a new value for the Hubble constant. The field of G165 is known for a high rate of star formation of more than 300 solar masses per year.",
        "FastFacts": [
            {
                "Object Name": "Digital Cloud 2s",
                "Description": "Gravitationally lensed galaxy"
            },
            {
                "R.A. Position": "11:27:15.59"
            },
            {
                "Dec. Position": "+42:28:33.46"
            },
            {
                "Constellation": "Ursa Major"
            },
            {
                "Distance": "3.6 billion light-years"
            },
            {
                "Dimensions": "Image is about 1.5 arcmin across"
            }
        ],
        "headingImage": "digitalcloud2s.png",
        "slidingImage": [
            "1.png",
            "2.png",
            "3.png",
            "4.png"
        ],
        "exportlink": "https://webbtelescope.org/images"
    },
    {
        "capture_name": "Question Mark Galaxy",
        "keyword": [
            "Galaxy",
            "Cluster",
            "Gravitational Lensing"
        ],
        "description": "The Question Mark Galaxy, also known as the galaxy cluster MACS J1149.6+2223, is a remarkable example of gravitational lensing. This effect occurs when the gravity of a massive object bends the light of objects behind it, creating stunning views of distant galaxies.",
        "FastFacts": [
            {
                "Object Name": "Question Mark Galaxy",
                "Description": "Gravitationally lensed galaxy"
            },
            {
                "R.A. Position": "11:49:36.3"
            },
            {
                "Dec. Position": "+22:23:36.0"
            },
            {
                "Constellation": "Leo"
            },
            {
                "Distance": "About 5 billion light-years"
            },
            {
                "Dimensions": "Image is about 2.5 arcmin across"
            }
        ],
        "headingImage": "head.png",
        "slidingImage": [
            "1.png",
            "2.png",
            "3.png"
        ],
        "exportlink": "https://webbtelescope.org/images"
    },
    {
        "capture_name": "MACS J0417.5-1154",
        "keyword": [
            "Galaxy Cluster",
            "Gravitational Lensing"
        ],
        "description": "MACS J0417.5-1154 is a galaxy cluster located approximately 4.3 billion light-years from Earth. This image demonstrates the phenomenon of gravitational lensing, where the mass of the cluster magnifies and distorts the light from more distant galaxies behind it.",
        "FastFacts": [
            {
                "Object Name": "MACS J0417.5-1154",
                "Description": "Galaxy cluster"
            },
            {
                "R.A. Position": "04:17:30.0"
            },
            {
                "Dec. Position": "-11:54:00.0"
            },
            {
                "Constellation": "Pisces"
            },
            {
                "Distance": "Approximately 4.3 billion light-years"
            },
            {
                "Dimensions": "Image dimensions vary"
            }
        ],
        "headingImage": "head.png",
        "slidingImage": [
            "1.png",
            "2.png",
            "3.png"
        ],
        "exportlink": "https://webbtelescope.org/images"
    },
    {
        "capture_name": "ARP 142",
        "keyword": [
            "Galaxy",
            "Interacting Galaxies"
        ],
        "description": "Webb’s mid-infrared view of interacting galaxies Arp 142 showcases colorful celestial structures and highlights the processes of star formation within these galaxies.",
        "FastFacts": [
            {
                "Object Name": "Arp 142, NGC 2396/2397",
                "Description": "Interacting galaxies"
            },
            {
                "R.A. Position": "09:37:43.09"
            },
            {
                "Dec. Position": "+02:45:47.01"
            },
            {
                "Constellation": "Hydra"
            },
            {
                "Distance": "326 million light-years"
            },
            {
                "Dimensions": "Image is about 3.4 arcmin across"
            }
        ],
        "headingImage": "head.png",
        "slidingImage": [
            "1.png",
            "2.png",
            "3.png"
        ],
        "exportlink": "https://webbtelescope.org/images"
    },
    {
        "capture_name": "Sarpens Center Crop",
        "keyword": [
            "Galaxy",
            "Center Crop"
        ],
        "description": "Sarpens Center Crop focuses on the central region of a galaxy, providing insights into the dynamics and structures found at the heart of galactic formations.",
        "FastFacts": [
            {
                "Object Name": "Sarpens Center Crop",
                "Description": "Central region of a galaxy"
            },
            {
                "R.A. Position": "Various"
            },
            {
                "Dec. Position": "Various"
            },
            {
                "Constellation": "Various"
            },
            {
                "Distance": "Various"
            },
            {
                "Dimensions": "Image dimensions vary"
            }
        ],
        "headingImage": "head.png",
        "slidingImage": [
            "1.png",
            "2.png",
            "3.png"
        ],
        "exportlink": "https://webbtelescope.org/images"
    },
    {
        "capture_name": "PhotoPlanetDisk",
        "keyword": [
            "Exoplanet",
            "Artist's Impression"
        ],
        "description": "This artistic representation depicts a photoplanet disk, illustrating the formation of planets around a young star. The image captures the dust and gas swirling in the disk, where new worlds are being born.",
        "FastFacts": [
            {
                "Object Name": "Photoplanet Disk",
                "Description": "Artist's impression of a planetary disk"
            },
            {
                "R.A. Position": "Various"
            },
            {
                "Dec. Position": "Various"
            },
            {
                "Constellation": "Various"
            },
            {
                "Distance": "Various"
            },
            {
                "Dimensions": "Image dimensions vary"
            }
        ],
        "headingImage": "head.png",
        "slidingImage": [
            "1.png",
            "2.png",
            "3.png"
        ],
        "exportlink": "https://webbtelescope.org/images"
    },
    {
        "capture_name": "Exoplanet WASP-107b",
        "keyword": [
            "Exoplanet",
            "WASP-107b"
        ],
        "description": "WASP-107b is a fascinating exoplanet known for its low density and unique atmosphere. Observations of this planet provide valuable insights into the characteristics of gas giants beyond our solar system.",
        "FastFacts": [
            {
                "Object Name": "WASP-107b",
                "Description": "Exoplanet"
            },
            {
                "R.A. Position": "14:50:07.54"
            },
            {
                "Dec. Position": "-04:22:23.37"
            },
            {
                "Constellation": "Virgo"
            },
            {
                "Distance": "Approximately 200 light-years"
            },
            {
                "Dimensions": "Image dimensions vary"
            }
        ],
        "headingImage": "head.png",
        "slidingImage": [
            "1.png",
            "2.png",
            "3.png"
        ],
        "exportlink": "https://webbtelescope.org/images"
    }
]
""";
