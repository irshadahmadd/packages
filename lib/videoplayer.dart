import 'package:flutter/material.dart';
class vdlist extends StatelessWidget {
  const vdlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: const Icon(Icons.arrow_back_ios),
        title: Container(
          margin: const EdgeInsets.fromLTRB(70, 0, 70, 0),
          child: const Text('Video List'),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 30,),
          ListTile(
            // leading: IconButton(onPressed: ()
            // {
            //   Navigator.push(context,
            //       MaterialPageRoute(
            //           builder: (context)=>VideoPlayerScreen()
            //       )
            //   );
            // },
            //     icon: Icon(Icons.video_collection)),
            title: const Text('Bike Race', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2022"),
            trailing: const Icon(Icons.video_collection_rounded),

          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('Pakistan', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 1991"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('India', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("28 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('Japani Peoples Living Stile', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('Chinese Restorent', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("1 August 2022"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('China C Pack Rode', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('Austrlia', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("10 june 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('Multan', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('US', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('Dubai', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('karachi', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('London', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('News Update', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('South Africa', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('Rendom', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('WWE', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('WWE', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('Iran', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),
          ListTile(
            leading: Icon(Icons.video_collection_rounded,
              color: Colors.deepPurple, size: 40,),
            title: const Text('Sindh', style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16),),
            subtitle: const Text("18 August 2020"),
            trailing: const Icon(Icons.video_collection_rounded),
          ),




        ],
      ),
    );
  }
}