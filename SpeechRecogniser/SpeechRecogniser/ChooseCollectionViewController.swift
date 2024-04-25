//
//  ChooseCollectionViewController.swift
//  SpeechRecogniser
//
//  Created by student on 24/04/24.
//

import UIKit

class ChooseCollectionViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
        // Data
        let classes = ["Class 5", "Class 6", "Class 7", "Class 8", "Class 9", "Class 10","Med","Non Med"]
        let streams = ["Med", "Non Med"]
        
        // Variables to store selected class and stream
        var selectedClass: String?
        var selectedStream: String?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Configure collection view
            collectionView.dataSource = self
            collectionView.delegate = self
            if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
                        layout.minimumInteritemSpacing = 10
                        layout.minimumLineSpacing = 10
                        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
                        let itemWidth = (collectionView.bounds.width - layout.sectionInset.left - layout.sectionInset.right - layout.minimumInteritemSpacing) / 2
                        layout.itemSize = CGSize(width: itemWidth, height: 50) // Adjust height as needed
                    }
        }
        
        // MARK: - UICollectionViewDataSource
        
        func numberOfSections(in collectionView: UICollectionView) -> Int {
//            return 2 // One section for classes and one for streams
            return 1;
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            if section == 0 {
                return classes.count
            } else {
                return streams.count
            }
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ClassCell", for: indexPath) as! ClassCell
            
            if indexPath.section == 0 {
                cell.titleLabel.text = classes[indexPath.item]
            } else {
                cell.titleLabel.text = streams[indexPath.item]
            }
            
            return cell
        }
        
        // MARK: - UICollectionViewDelegate
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            if indexPath.section == 0 {
                selectedClass = classes[indexPath.item]
            } else {
                selectedStream = streams[indexPath.item]
            }
        }
        
        // Action method for continue button
    @IBAction func continueButtonTapped(_ sender: Any) {
        if let selectedClass = selectedClass, let selectedStream = selectedStream {
                    // Navigate to next screen or perform further actions
                    print("Selected Class: \(selectedClass), Stream: \(selectedStream)")
                } else {
                    // Display an alert to prompt the user to select both class and stream
                    let alert = UIAlertController(title: "Selection Required", message: "Please select both class and stream.", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
    }
    
}
