# CollectionViewTutorial
A practice project for working with swift collection views. UICollectionVew

Original video that helped me make this:
https://www.youtube.com/watch?v=j3lwTzPBoLw
What follows is a transcription of the above video tutorial, that I have adapted to run in Swift 3.



Place a collection view.

//Create the class file
Create new Coco Touch Class file to start working with the CollectionView. 
Make sure it's a subclass of UICollectionViewCell. For this tutorial, the file is called colvwCell.swift

Back in the Storyboard, select the cell again and open the Identities inspector. 
Under class, enter the name of the file you just created above.

Right now, there is nothing in the cell. Let's put a label in there.
Each cell is like a view in and of itself. So, we can put both a label and an image inside the first cell. 

Now open colvwCell.swift in the assistand editor (top right, the two circles). 
Make an outlet in the class for the imageView and the label (the ones within the cell).
(Make sure the object inside the cell is selected, not the cell itself.)

IMPORTANT:
Control+drag from the collectionview to the ViewController (yellow circle with the square inside at the top of the view) 
and select "dataSource" and do it again to select "delegate" to set up the view. 

//Set up UICollectionView
Now switch over to the ViewController file. We're going to set up the UICollectionView.

Next to "UIViewController" write ", UICollectionViewDataSource, UICollectionViewDelegate"

Create two arrays above all the functions. In this example, 
it's the "var tableData: [String] = ["Evo X", "458", "GTR"]" string array, and the 
"var tableImages: [String] = ["evox.jpg", "458.jpg", "gtr.jpg"]" string array.

Right click any file in the same folder on the sidebar as ViewController.swift and click "New Group." 
Name the group "Supporting Files"
Drag the 3 images we are using for this project into the sidebar, into the "Supporting Files" group.
Click finish.
Make sure the filenames match those in the tableImages array.

Add the "func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection...etc." function.
Type "return tableData.count" inside the function.

Add the "func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath...etc." function.
Inside, type the following:

let cell: colvwCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! colvwCell
   //This will define a default cell, as I understand it, of the type "colvwCell" which we defined above in its own Coco Touch File.
   //"This links it up to the custom class we made" the video says.
cell.label.text = tableData[indexPath.row] 
   //Update the text of the  "label" UILabelView (defined in colvwCell.swift)
cell.image.image = UIImage(named: tableImages[indexPath.row]) 
   //Update the text of the "image" UIImageView (defined in colvwCell.swift) 
   //(in hindsight, I should have called it something other than "image" to be less confusing, but it's the middle one.)
return cell
   //Return the cell we created.

Now we create a function that prints some information out to the console when the user presses the cell. 
Type the following into the "func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath...etc." function:
    (Note: don't choose the "didDeselectItemAt indexPath" accedentally.)

print("Cell \(indexPath.row) selected") //Print which cell was selected

Now we should be able to run the program and test it out! Try pressing the different cells, and see what the console says.





