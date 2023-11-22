//
//  ContentView.swift
//  MyContacts
//
//  Created by Martina Muzi on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var showDetails = false
    @State private var searchTerm = ""
    
    var contacts: [Contact] {
        let sorted = MOCK_CONTACTS.sorted(by: { $0.name < $1.name })
        
        if (searchTerm == "") {
            return sorted
        }
        
        let filtered = sorted.filter({ $0.name.lowercased().hasPrefix(searchTerm.lowercased())})
        
        return filtered
    }
    
    let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W", "X","Y", "Z"]
    
    var body: some View {
        NavigationStack {
            ScrollViewReader { value in
                ZStack {
                    List(alphabet.filter { letter in
                        !contacts.filter { $0.name.hasPrefix(letter) }.isEmpty
                    }, id: \.self) { letter in
                        Section {
                            ForEach(contacts.filter({ $0.name.hasPrefix(letter) })) { contact in
                                NavigationLink (destination: DetailView(contact:contact)) {
                                    ContactRow(contact: contact)
                                }
                            }
                        } header: {
                            Text(letter)
                        }
                        .id(letter)
                    }
                    
                    HStack{
                        Spacer()
                        
                        VStack {
                            ForEach(0..<alphabet.count, id: \.self) { idx in
                                Button(action: {
                                    withAnimation {
                                        value.scrollTo(alphabet[idx])
                                    }
                                }, label: {
                                    Text(alphabet[idx])
                                })
                            }
                        }
                    }
                    .padding(.trailing, 5)
                }
                .navigationBarTitle("Contacts")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("", systemImage: "plus") {
                            
                        }
                    }
                }
            }
        }
        .searchable(text:$searchTerm, prompt:"Search")
    }
}


#Preview {
    ContentView()
}

struct ContactRow: View {
    
    let contact: Contact
    
    
    var body: some View {
        HStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            
            VStack(alignment: .leading) {
                Text(contact.name)
                    .font(.system(size:21, weight:.medium, design: .default))
                Text(contact.phone)
                
                
            }
        }
    }
}
