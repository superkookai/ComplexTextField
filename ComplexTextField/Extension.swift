//
//  Extension.swift
//  ComplexTextField
//
//  Created by Weerawut Chaiyasomboon on 27/2/2567 BE.
//

import Foundation

extension String{
    func isValidEmail() -> Bool{
        let emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: self)
    }
}
