//
//  Contacts.swift
//  MyContacts
//
//  Created by Martina Muzi on 14/11/23.
//

import Foundation
import SwiftUI

struct Contact: Identifiable, Hashable {
    let id = UUID ()
    let imageName: String
    let name: String
    let phone: String
    let email: String
    let address: String
    
}

var MOCK_CONTACTS  = [
    Contact(imageName: "sara", name: "Sara", phone: "3339054284", email: "sara@gmail.com", address: "Via Rosa 38"),
    Contact(imageName: "alessandro", name: "Alessandro", phone: "3336754289", email: "alessandro@gmail.com", address: "Via Rossi 58"),
    Contact(imageName: "alessia", name: "Alessia", phone: "3338254286", email: "alessia@gmail.com", address: "Via Verdi 34"),
    Contact(imageName: "andrea", name: "Andrea", phone: "3336711283", email: "andrea@gmail.com", address: "Via Bianchi 97"),
    Contact(imageName: "chiara", name: "Chiara", phone: "3312754285", email: "chiara@gmail.com", address: "Via Neri 98"),
    Contact(imageName: "filippo", name: "Filippo", phone: "3336732282", email: "filippo@gmail.com", address: "Via Viola 54"),
    Contact(imageName: "filippo", name: "Vergara", phone: "6642931925", email: "vergara@gmail.com", address: "Corso Nicolangelo Protopisani 70")
]

