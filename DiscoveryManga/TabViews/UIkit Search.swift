import SwiftUI

// Notre barre de recherche qui doit obligatoirement se conformer au protocole UIViewRepresentable
// car cette barre de recherche provient de la librairie UIKit
struct SearchBar: UIViewRepresentable {

    // Ce binding est transmis au coordinateur lorsque la fonction makeCoordinator() est appelée
    // le but étant de lier le texte de la barre de recherche à un @State (de la vue principale) qui récupère la saisie de l'utilisateur
    @Binding var text: String

    // Fonction qui crée un coordinateur pour la barre de recherche
    func makeCoordinator() -> Coordinator {
        return Coordinator(searchBarTextBinding: $text)
    }

    // Fonction qui construit la barre de recherche
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar()               // Ici on instancie une barre de recherche
        searchBar.delegate = context.coordinator    // On la lie avec son coordinateur
        searchBar.searchBarStyle = .minimal      // On modife son apparence
        searchBar.searchTextField.backgroundColor = .white
        
        return searchBar                            // On la met à disposition
    }

    // Fonction pas utilisée ici mais doit exister car requis par le protocole UIViewRepresentable
    func updateUIView(_ uiView: UISearchBar, context: Context) {
    }
}



// Coordinateur / Chef d'orchestre
// gère la saisie de l'utilisateur
class Coordinator: NSObject, UISearchBarDelegate {

    // Ce binding provient de la barre de recherche
    // le but étant de lier le texte de la barre de recherche à un @State (de la vue principale) qui récupère la saisie de l'utilisateur
    @Binding var text: String

    // On initialise le binding "text" à la création du coordinateur
    init(searchBarTextBinding: Binding<String>) {
        _text = searchBarTextBinding
    }

    // Fonction qui est appelée à chaque fois que l'utilisateur saisie quelque chose dans la barre de recherche
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // On change la valeur du binding "text" ce qui a pour effet de modifier le @State qui se trouve dans la vue principale
        text = searchText
    }
}
