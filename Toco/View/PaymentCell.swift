//
//  PaymentCell.swift
//  Toco
//
//  Created by Roland Shen on 4/2/19.
//  Copyright © 2019 Toco. All rights reserved.
//

import Foundation
import UIKit

protocol PaymentCellDelegate {
    func showPaymentMethods()
}

class PaymentCell: UITableViewCell {
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var requestButton: UIButton!
    @IBOutlet weak var priceLabel: UILabel!
    
    var delegate: PaymentCellDelegate?
    
    @IBAction func requestPressed(_ sender: Any) {
        delegate?.showPaymentMethods()
    }
}
