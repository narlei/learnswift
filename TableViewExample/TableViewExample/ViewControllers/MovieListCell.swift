//
//  MovieListCell.swift
//  TableViewExample
//
//  Created by Narlei A Moreira on 29/12/16.
//  Copyright © 2016 Narlei A Moreira. All rights reserved.
//

import UIKit


// Create a Protocol to Delegate
protocol MovieListCellDelegate {
    // Methods
    func cellMovieListCell(cell:MovieListCell)
}

class MovieListCell: UITableViewCell {
    
    // Delegate property 
    /*
     Here Use "?" for don't need:
     if (self.delegate){
        self.delegate ....
     }
     */
    var delegate:MovieListCellDelegate? = nil
    
    var object:Movie!
    var teste:Any!
    
    func initialize(pObject:Movie) {
        self.object = pObject
        
        // Setup Values in View
        self.textLabel?.text = pObject.name
        
        // Call delegate method
        delegate?.cellMovieListCell(cell: self)
    }
    
    // MARK: Cell Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  

}
