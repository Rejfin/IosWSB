//
//  ViewController.swift
//  TableViewController
//
//  Created by Student G225 07 on 28/03/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var model = [CellModel]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        populateData()
        tableView.dataSource = self
        tableView.delegate = self
    }

    func populateData() {
    model.append(CellModel(catName: "Mruczek", imageView: UIImageView(image: UIImage(named: "cat1")), catStrength: "5"))
    model.append(CellModel(catName: "Rudy", imageView: UIImageView(image: UIImage(named: "cat2")), catStrength: "6"))
    model.append(CellModel(catName: "Misia", imageView: UIImageView(image: UIImage(named: "cat3")), catStrength: "69"))
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return model.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { return 100.0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
    let cellModel = model[indexPath.row]
    cell.catName.text = cellModel.catName
    cell.imageView1.image = cellModel.catView.image
    cell.catStrength.text = cellModel.catStrength
    
        return cell
    }
}

