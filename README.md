# MATLAB-face-recognition

## A MATLAB project to recognise faces in an image

This is a project made using MATLAB which can successfully detect faces from static images. It is broken down into two segments:
- [Face Detection](https://github.com/Gupta-Shashwat/MATLAB-face-recognition/tree/main/Face_Detection) - this includes the file for detection of faces from an image
- [Face Recognition](https://github.com/Gupta-Shashwat/MATLAB-face-recognition/tree/main/Face_Recognition) - this includes the files for face detection as well as recognition

## Run Locally

To run this project locally, you need to have MATLAB installed on your system. Once you have installed MATLAB, follow these steps:

1. Clone the repository to your local machine:

   ```
   git clone https://github.com/Gupta-Shashwat/MATLAB-face-recognition.git
   ```

2. Open the project directory in MATLAB.

3. [Create Database](##Database-Creation)
4. Run the `training.m` script inside the `Face_Recognition` folder.
5. Use the `testing.m` function to test the already trained model by passing `net` as an argument inside the testing function.

## Database Creation

The project uses a database of images to train the face recognition model. The database is not included in the repository, so you need to create your own database to train the model. To create a database:

1. Create a directory named `Training_Dataset` in the root directory of the project.

2. Add subdirectories to the database directory, with each subdirectory named after the person whose images will be stored in it.

3. Add images of each person to their respective subdirectories.

4. Your database is ready. Make sure you created the `Training_Dataset` folder inside the `Face_Recognition` folder. You can now train your database by running the `training.m` file inside the `Face_Recognition` folder.

## Features

The project has the following features:

1. Face detection using the Viola-Jones algorithm.
2. Face recognition using the Eigenfaces algorithm.
3. Option to choose the number of eigenfaces used to recognize faces.

## Contributing

Contributions to the project are welcome. If you find a bug or have a suggestion for a new feature, please create an issue on GitHub. If you would like to contribute code, please create a pull request with your changes.
## Future Scope

The project has the following areas for future improvement:

- Use a more advanced face recognition algorithm, such as Fisherfaces or Local Binary Patterns (LBP).
- Improve the user interface to make the project more user-friendly.
- Add the ability to recognize faces in real-time using a camera.
