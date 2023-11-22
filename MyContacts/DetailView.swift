//
//  DetailView.swift
//  MyContacts
//
//  Created by Martina Muzi on 15/11/23.
//

import SwiftUI

struct DetailView: View {
    
    let contact: Contact
    
    var body: some View {
        VStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .shadow(radius: 3)
            Text(contact.name)
                .font(.title)
                .fontWeight(.medium)
            
            Form {
                Section {
                    HStack {
                        Text("Phone")
                        Spacer()
                        Text(contact.phone)
                            .foregroundColor(.gray)
                            .font(.callout)
                        
                    }
                    HStack {
                        Text("Email")
                        Spacer()
                        Text(contact.email)
                            .foregroundColor(.gray)
                            .font(.callout)
                        
                    }
                    HStack {
                        Text("Address")
                        Spacer()
                        Text(contact.address)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(width: 180)
                        
                    }
                }
                Section {
                    Button(action: {
                        print("Send message")
                    }) {
                        Text("Send message")
                    }
                    
                    Button(action: {
                        print("Call")
                    }) {
                        Text("Call")
                    }
                    
                }
                
                
                
            }
        
        }
        
    }
}

#Preview {
    DetailView(contact: Contact(imageName: "andrea", name: "ciao", phone: "prova", email: "prova", address: "prova"))
}
