//
//  CustomTableViewCell.swift
//  MVVM
//
//  Created by Arthur Ruan on 26/03/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var myLabel: UILabel!
    
    static let cellIdentifier = "CustomTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }
    
    public func configure(with viewModel: CellViewModel) {
        myLabel.text = "\(viewModel.firstName) \(viewModel.lastName)"
    }
    
}
