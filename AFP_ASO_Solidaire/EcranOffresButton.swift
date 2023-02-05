import SwiftUI

struct EcranOffresButton: View {
    @State private var selection = "Nos offres"
    let filterOptions = ["Missions Courtes", "Missions Longues"]

    var body: some View {
        VStack {
            Picker(selection: $selection, label: Text("")) {
                ForEach(filterOptions, id: \.self) { option in
                    Text(option)
                        .foregroundColor(.black)
                        .tag(option)
                       
                }
            }
            .background(Color("ColorJaune"))
            .pickerStyle(SegmentedPickerStyle())
            .padding()
        }
    }
}

struct EcranOffresButton_Previews: PreviewProvider {
    static var previews: some View {
        EcranOffresButton()
    }
}
