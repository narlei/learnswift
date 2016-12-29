//
//  MoviesListViewController.swift
//  TableViewExample
//
//  Created by Narlei A Moreira on 29/12/16.
//  Copyright © 2016 Narlei A Moreira. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,MovieListCellDelegate {

    
    // MARK: Outlets
    
    @IBOutlet weak var tableViewMovies: UITableView!
    
    var arrayAllValues:Array<Any> = []
    var arrayValues:Array<Any> = []
    
    // MARK: ViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call LoadData to populate data and refresh tableview
        loadData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Load Data

    
    func loadData() {
        arrayValues = [Movie.createWith(pName: "Movie Z", pId: 0),
        Movie.createWith(pName: "Movie A", pId: 1),
        Movie.createWith(pName: "Movie B", pId: 2),
        Movie.createWith(pName: "Movie C", pId: 3),
        Movie.createWith(pName: "Movie D", pId: 4),
        Movie.createWith(pName: "Movie E", pId: 5)]
        self.tableViewMovies.reloadData()
        
    }
    

    // MARK: TableView Methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let object:Movie = arrayValues[indexPath.row] as! Movie
        
        // Call method with block parameter
        object.findNew { (value) in
            print(value)
        }
        print(object)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayValues.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieListCell
        // Set Delegate
        cell.delegate = self
        cell.initialize(pObject: arrayValues[indexPath.row] as! Movie)
        return cell
    }

    
    // MARK: Cell Delegate
    func cellMovieListCell(cell: MovieListCell) {
        print("Dispatch Delegate Successful!!!")
    }
    
}
