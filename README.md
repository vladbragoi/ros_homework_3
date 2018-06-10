# ros_homework_3 #
##### Homework 3 [Laboratorio Ciberfisico] - University of Verona #####

### Descrizione
L'homework 3 è composto da 4 parti:
* Parte 1: installazione di ORB_SLAM2
* Parte 2: esecuzione di ORB_SLAM2 su una rosbag registrata con un drone volante
* Parte 3: creazione di una point-cloud 
* Parte 4: clustering dei punti contenuti nella point-cloud generata al punto 3

### Istruzioni per l'installazione
Le parti 1, 2 e 3 sono tutte inglobate in questo repository. Tuttavia, occorre
aver installato la libreria esterna `Pangolin` (si vedano le [istruzioni di 
ORB_SLAM2](ORB_SLAM2/README.md) per maggiori informazioni).

```sh
$ git clone https://github.com/vladbragoi/ros_homework_3.git
```
Posizionarsi nella directory ros_homework_3 e lanciare lo script "run.sh" con il comando:
```sh
$ ./run.sh
```
il quale provvederà a compilare i pacchetti necessari e lanciare i seguenti script (in ordine):
```sh
$ export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH :PATH/ros_homework3/ORB_SLAM2_mod/Examples/ROS
$ roscore
$ rosrun ORB_SLAM2 Stereo ORB_SLAM2/Vocabulary/ORBvoc.txt ORB_SLAM2/Examples/Stereo/EuRoC.yaml true
$ rosbag play --pause PATH/V1_01_easy.bag /cam0/image_raw:=/camera/left/image_raw /cam1/image_raw:=/camera/right/image_raw
```
#### Nota:
Questi comandi sono già inclusi nello script `run.sh`. Se necessario occorre modificare i path per avviare i vari script.

### Preview

<img src="img/nodes.png" width="800">
<img src="img/orb_slam.png" width="800">
<img src="img/pointcloud_clusterized.png" width="800">


### References ###

* [Course page (prof. Bloisi - Univr)](profs.scienze.univr.it/~bloisi/corsi/ciberfisico.html)

* [Gazebo: building a world](http://gazebosim.org/tutorials?tut=build_world)

* [Gazebo: using roslaunch](http://gazebosim.org/tutorials?tut=ros_roslaunch)

* [Gazebo: import meshes](http://gazebosim.org/tutorials?tut=import_mesh)

* [ROS: create your own world](http://wiki.ros.org/cob_gazebo_worlds/Tutorials/Create%20your%20own%20world)

* [Cyberlab world](https://github.com/dbloisi/cyber_lab_gazebo)

* [Youtube video](media/turtlebot3_preview.png)


### Author ###

* `Vladislav Bragoi`, University of Verona (Italy) [vladislav.bragoi@studenti.univr.it](mailto:vladislav.bragoi@studenti.univr.it)

### License ###

> MIT License
>
> Copyright (c) 2018 Vladislav Bragoi
> 
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the "Software"), to deal
> in the Software without restriction, including without limitation the rights
> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> copies of the Software, and to permit persons to whom the Software is
> furnished to do so, subject to the following conditions:
> 
> The above copyright notice and this permission notice shall be included in all
> copies or substantial portions of the Software.
> 
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
> SOFTWARE.
 