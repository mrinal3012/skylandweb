class HeaderModel{
String ?title;
int ? id;
HeaderModel({this.title,this.id});
}
List<HeaderModel> headerModelList=[
  HeaderModel(title: "Home",id: 1),
  HeaderModel(title: "About",id: 2),
  HeaderModel(title: "Services",id: 3),
  HeaderModel(title: "Projects",id: 4),
  HeaderModel(title: "Our BLog",id: 5),
  HeaderModel(title: "Our Team",id: 6),
  HeaderModel(title: "Testimonial",id: 7),
  HeaderModel(title: "Contact",id: 8)
];

class OurServices{
  String ? name;
  String ? details;
  String ? image;
  OurServices({this.name, this.details , this.image});

}
List<OurServices> ourServicesList=[
  OurServices(name: "Web Design",details: "Get ready to stand out from the crowd with our exceptional web design solutions tailored to meet your specific needs.",image: "images/designe.png"),
  OurServices(name: "Web Development",details: "Get ready to elevate your online presence with our top-notch web development solutions. Let's turn your vision into reality!",image: "images/web.png"),
  OurServices(name: "UI/UX Design",details: "Our talented team of designers specializes in creating captivating and intuitive user experiences that leave a lasting impression.",image: "images/uiux.png"),
  OurServices(name: "Web Security",details: "Our dedicated team of security experts is here to safeguard your digital assets from potential threats and vulnerabilities.",image: "images/security.png"),
  OurServices(name: "Digital Marketing",details: "Our expert team of marketers is here to help you reach your target audience, boost your online visibility, and drive measurable results.",image: "images/digital.png"),
  OurServices(name: "Mobile Application",details: "Whether you need an iOS, Android, or cross-platform app, we have the expertise to create engaging and feature-rich mobile applications.",image: "images/mobileic.png")
];

class Project{
  String ? name;
  String ? work;
  String ? image;
  Project({this.name,this.work,this.image});
}
List<Project> projectList=[
  Project(name: "Web Design",work: "Web Analysis",image: "images/webside.jpg"),
  Project(name: "Cyber Security",work: "Cyber Security",image: "images/cyber.jpg"),
  Project(name: "Mobile Info",work: "Upcomming Application",image: "images/mobile.png"),
  Project(name: "Web Development",work: "Web Analysis",image: "images/development.jpg"),
  Project(name: "Digital Marketing",work: "Marketing Analysis",image: "images/digital.jpg"),
  Project(name: "Keyword Research",work: "Keyword Analysis",image: "images/keyword.jpg"),
];
class About{
  String ? name;
  String ? details;
  String ? image;
  About({this.name,this.details,this.image});
}
List<About> aboutList=[
  About(name: "About Skylandweb Agency And It's Innovative IT Solutions",details: '''Welcome to Skylandweb.com, a cutting-edge IT and software firm that specializes in providing innovative solutions for the digital era. We are a HighTech agency dedicated to delivering top-notch technological services to help businesses thrive in the ever-evolving digital landscape.

At Skylandweb.com, we understand the critical role that technology plays in transforming businesses and empowering them to achieve their goals. With a passionate team of experienced IT professionals, we strive to be at the forefront of the industry, offering comprehensive solutions that cater to the unique needs of each client.''',image: "images/about.png")
];

class Home{
  String ? name;
  String ? details;
  String ? totaldetails;
  String ? image;
  Home({this.name,this.details,this.totaldetails,this.image});
}
List<Home> homeList=[
  Home(name: "Best IT Solutions",details: "Quality Digital Services You Really Need!",totaldetails: "Discover a range of high-quality digital services tailored to meet your needs. Choose us for the digital solutions you truly need to succeed!",image: "images/team8.jpg"),
  Home(name: "Best IT Solutions",details: "An Innovative IT Solutions Agency",totaldetails: "Welcome to Skylandweb.com - Your destination for quality digital services that cater to your every need. Experience the difference of our exceptional digital services and unlock the full potential of your business today!",image: "images/team4.jpg")
];

class Team{
  String ? image;
  Team({this.image});
}
List<Team> teamList=[
  Team(image: "images/tanver.png"),
  Team(image: "images/eliel.png"),
  Team(image: "images/islam.png"),
  Team(image: "images/evelyen.png")
];

class Testimonial{
  String ? name;
  String ? title;
  String ? details;
  Testimonial({this.name,this.title,this.details});
}
List<Testimonial> testimonialList=[
  Testimonial(name: "Austin",title: "Managing Director Premier Consultant",details: '''ccess external websites or write content on specific websites like "skylandweb.com." However, I can provide you with information, answer questions, or help you draft text that you can then use on a website. How can I assist you further?'''),
  Testimonial(name: "OLiver Noah",title: "Managing Director , Noah Fashion",details: ''' but I cannot directly access external websites or write content on specific websites like "skylandweb.com." However, I can provide you with information, answer questions, or help you draft text that you can then use on a website. How can I assist you further?'''),
  Testimonial(name: "Alonzo",title: "Chief Executive officer Span Fabrics",details: '''Iwebsites or write content on specific websites like "skylandweb.com." However, I can provide you with information, answer questions, or help you draft text that you can then use on a website. How can I assist you further?'''),
  Testimonial(name: "Arizona",title: "Chief Executive Director Span Fabrics",details: '''"skylandweb.com access external websites or I'm sorry, but I cannot directly access external websites or write content on specific websites like "skylandweb.com." However, I can provide you with information, answer questions, or help you draft text that you can then use on a website. How can I assist you further?'''),
];