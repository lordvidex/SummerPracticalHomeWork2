//
//  ContactsViewController.swift
//  Assignment2
//
//  Created by Evans Owamoyo on 02.07.2021.
//

import UIKit

class ContactsViewController: UIViewController {
    var contacts = [
        Contact(name: "Violet", surname: "Cosenza", occupation: "Banker", telephone: "+70990824786"),
        Contact(name: "Mara", surname: "Fillbert", occupation: "Driver", telephone: "+76465219227"),
        Contact(name: "Kimmy", surname: "Randene", occupation: "Police", telephone: "+76024700804"),
        Contact(name: "Natka", surname: "Fiann", occupation: "Programmer", telephone: "+79344086167"),
        Contact(name: "Harmonia", surname: "Kalinda", occupation: "Programmer", telephone: "+74888274229"),
        Contact(name: "Aigneis", surname: "Wind", occupation: "Driver", telephone: "+71028287099"),
        Contact(name: "Flory", surname: "Ambrosia", occupation: "Fisherman", telephone: "+77858281680"),
        Contact(name: "Pamella", surname: "Gaulin", occupation: "Programmer", telephone: "+79391981782"),
        Contact(name: "Antonietta", surname: "Mathilde", occupation: "Police", telephone: "+73835682866"),
        Contact(name: "Gaylene", surname: "Adamsen", occupation: "Police", telephone: "+76503045754"),
        Contact(name: "Damaris", surname: "Mallon", occupation: "Fisherman", telephone: "+74747878328"),
        Contact(name: "Gretal", surname: "Sinegold", occupation: "Businessman", telephone: "+78443777276"),
        Contact(name: "Vere", surname: "Bartlett", occupation: "Driver", telephone: "+79669012645"),
        Contact(name: "Keelia", surname: "Bollay", occupation: "Banker", telephone: "+72930572877"),
        Contact(name: "Amii", surname: "Longfellow", occupation: "Police", telephone: "+70124502403"),
        Contact(name: "Cordi", surname: "Ambrosia", occupation: "Driver", telephone: "+79258085334"),
        Contact(name: "Millie", surname: "Haldas", occupation: "Banker", telephone: "+73075690175"),
        Contact(name: "Queenie", surname: "Matthew", occupation: "Police", telephone: "+77921733086"),
        Contact(name: "Aigneis", surname: "Israeli", occupation: "Businessman", telephone: "+70141975950"),
        Contact(name: "Etta", surname: "Toor", occupation: "Fisherman", telephone: "+70108732487"),
        Contact(name: "Jasmina", surname: "Podvin", occupation: "Engineer", telephone: "+78521614148"),
        Contact(name: "Stevana", surname: "Kaete", occupation: "Police", telephone: "+75238632907"),
        Contact(name: "Charissa", surname: "Travax", occupation: "Programmer", telephone: "+78000330852"),
        Contact(name: "Lindie", surname: "Gombach", occupation: "Programmer", telephone: "+79336233076"),
        Contact(name: "Darlleen", surname: "Bohlin", occupation: "Driver", telephone: "+77169586256"),
        Contact(name: "Norine", surname: "Greenwald", occupation: "Engineer", telephone: "+71328771597"),
        Contact(name: "Pollyanna", surname: "Irmine", occupation: "Driver", telephone: "+73486429783"),
        Contact(name: "Tobe", surname: "Karylin", occupation: "Driver", telephone: "+78077000085"),
        Contact(name: "Darlleen", surname: "Joni", occupation: "Fisherman", telephone: "+74186971949"),
        Contact(name: "Moyna", surname: "Stephie", occupation: "Programmer", telephone: "+78286829147"),
        Contact(name: "Consuela", surname: "Loleta", occupation: "Driver", telephone: "+72892928414"),
        Contact(name: "Ursulina", surname: "Schlosser", occupation: "Programmer", telephone: "+79477563658"),
        Contact(name: "Joleen", surname: "Adrienne", occupation: "Banker", telephone: "+77479938393"),
        Contact(name: "Mathilda", surname: "Estella", occupation: "Banker", telephone: "+77722513713"),
        Contact(name: "Emelina", surname: "Riva", occupation: "Banker", telephone: "+79472059816"),
        Contact(name: "Magdalena", surname: "Bates", occupation: "Fisherman", telephone: "+72700358384"),
        Contact(name: "Dorothy", surname: "Urania", occupation: "Businessman", telephone: "+78829920053"),
        Contact(name: "Phylis", surname: "Phaidra", occupation: "Businessman", telephone: "+79536523353"),
        Contact(name: "Nanete", surname: "Bahr", occupation: "Banker", telephone: "+79737001057"),
        Contact(name: "Susette", surname: "Chaing", occupation: "Fisherman", telephone: "+72971812832"),
        Contact(name: "Sheelagh", surname: "Tyson", occupation: "Businessman", telephone: "+71053934410"),
        Contact(name: "Viki", surname: "Seessel", occupation: "Driver", telephone: "+75370588951"),
        Contact(name: "Lynea", surname: "Center", occupation: "Banker", telephone: "+74160538141"),
        Contact(name: "Dyann", surname: "Pascia", occupation: "Police", telephone: "+77937742839"),
        Contact(name: "Carmela", surname: "Elsinore", occupation: "Businessman", telephone: "+79133250503"),
        Contact(name: "Allis", surname: "Susannah", occupation: "Driver", telephone: "+74455120831"),
        Contact(name: "Drucie", surname: "Hoenack", occupation: "Programmer", telephone: "+76177440689"),
        Contact(name: "Mireielle", surname: "Honoria", occupation: "Engineer", telephone: "+71124863121"),
        Contact(name: "Marcy", surname: "Monk", occupation: "Programmer", telephone: "+79297100010"),
        Contact(name: "Teddie", surname: "Alabaster", occupation: "Banker", telephone: "+76897495635"),
        Contact(name: "Tilly", surname: "Sholley", occupation: "Engineer", telephone: "+75971100160"),
        Contact(name: "Delilah", surname: "Maisey", occupation: "Banker", telephone: "+79759531631"),
        Contact(name: "Delilah", surname: "Bergman", occupation: "Engineer", telephone: "+79648881268"),
        Contact(name: "Beatriz", surname: "Shuler", occupation: "Engineer", telephone: "+73001911757"),
        Contact(name: "Mireielle", surname: "Geffner", occupation: "Police", telephone: "+75161742326"),
        Contact(name: "Rori", surname: "Hoban", occupation: "Fisherman", telephone: "+78885822349"),
        Contact(name: "Kayla", surname: "Kress", occupation: "Programmer", telephone: "+79553857027"),
        Contact(name: "Sabina", surname: "Bates", occupation: "Businessman", telephone: "+74100964076"),
        Contact(name: "Florie", surname: "Howlyn", occupation: "Programmer", telephone: "+73472360605"),
        Contact(name: "Raf", surname: "Girardo", occupation: "Programmer", telephone: "+76877786005"),
        Contact(name: "Hollie", surname: "Kylander", occupation: "Police", telephone: "+76711939971"),
        Contact(name: "Christian", surname: "Morehouse", occupation: "Banker", telephone: "+75536026072"),
        Contact(name: "Carmela", surname: "Jotham", occupation: "Fisherman", telephone: "+77594937726"),
        Contact(name: "Ezmeralda", surname: "Arathorn", occupation: "Engineer", telephone: "+77465292451"),
        Contact(name: "Britni", surname: "Danby", occupation: "Programmer", telephone: "+78976332821"),
        Contact(name: "Lindie", surname: "Brunell", occupation: "Programmer", telephone: "+70506245241"),
        Contact(name: "Catharine", surname: "Revkah", occupation: "Engineer", telephone: "+71082872690"),
        Contact(name: "Nollie", surname: "Cassius", occupation: "Fisherman", telephone: "+79033513363"),
        Contact(name: "Jessamyn", surname: "Tannie", occupation: "Banker", telephone: "+72442705709"),
        Contact(name: "Arlena", surname: "Peti", occupation: "Police", telephone: "+73084455891"),
        Contact(name: "Chere", surname: "Caitlin", occupation: "Fisherman", telephone: "+71248226783"),
        Contact(name: "Aurore", surname: "Mike", occupation: "Banker", telephone: "+77693096444"),
        Contact(name: "Ayn", surname: "Garrison", occupation: "Police", telephone: "+73816208726"),
        Contact(name: "Larine", surname: "Kamaria", occupation: "Programmer", telephone: "+75646592519"),
        Contact(name: "Jemie", surname: "Urias", occupation: "Fisherman", telephone: "+74383100581"),
        Contact(name: "Hyacinthe", surname: "Arvo", occupation: "Fisherman", telephone: "+70692102172"),
        Contact(name: "Mignon", surname: "Fulmer", occupation: "Police", telephone: "+72018757604"),
        Contact(name: "Lanae", surname: "Stilwell", occupation: "Driver", telephone: "+73423771764"),
        Contact(name: "Sandie", surname: "Fulmer", occupation: "Programmer", telephone: "+73264491720"),
        Contact(name: "Dolli", surname: "Olin", occupation: "Fisherman", telephone: "+77061262679"),
        Contact(name: "Kalina", surname: "Bonucci", occupation: "Fisherman", telephone: "+72026091061"),
        Contact(name: "Marylou", surname: "Urias", occupation: "Businessman", telephone: "+74841329192"),
        Contact(name: "Allyce", surname: "Howlyn", occupation: "Fisherman", telephone: "+78517882432"),
        Contact(name: "Ronna", surname: "Tjon", occupation: "Police", telephone: "+75169017805"),
        Contact(name: "Netty", surname: "Lesley", occupation: "Fisherman", telephone: "+70670303261"),
        Contact(name: "Kore", surname: "Dichy", occupation: "Banker", telephone: "+74733207882"),
        Contact(name: "Marinna", surname: "Rocray", occupation: "Fisherman", telephone: "+78255328146"),
        Contact(name: "Dari", surname: "Flyn", occupation: "Programmer", telephone: "+74739969617"),
        Contact(name: "Ethel", surname: "McGrody", occupation: "Engineer", telephone: "+72136719589"),
        Contact(name: "Annora", surname: "Alarise", occupation: "Fisherman", telephone: "+77899782446"),
        Contact(name: "Leona", surname: "Tound", occupation: "Banker", telephone: "+76256444115"),
        Contact(name: "Micheline", surname: "Palocz", occupation: "Businessman", telephone: "+79389743546"),
        Contact(name: "Gerrie", surname: "Marlie", occupation: "Driver", telephone: "+72881972796"),
        Contact(name: "Coral", surname: "Pond", occupation: "Police", telephone: "+76859843545"),
        Contact(name: "Patricia", surname: "Lanita", occupation: "Fisherman", telephone: "+72812738180"),
        Contact(name: "Correy", surname: "Wenda", occupation: "Engineer", telephone: "+74037906616"),
        Contact(name: "Dulce", surname: "Tippets", occupation: "Fisherman", telephone: "+77911814152"),
        Contact(name: "Gusty", surname: "Lauraine", occupation: "Fisherman", telephone: "+72844868646"),
        Contact(name: "Dyann", surname: "Holtz", occupation: "Programmer", telephone: "+72724704736")
    ]
    override func viewDidLoad() {
        navigationItem.title = "Contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
        super.viewDidLoad()
    }
}
extension ContactsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailView = storyboard?.instantiateViewController(identifier: "ContactDetailsViewController") as! ContactDetailsViewController
        tableView.deselectRow(at: indexPath, animated: true)
        detailView.contact = contacts[indexPath.row]
        present(detailView, animated: true, completion: nil)
    }
}
extension ContactsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsCellTableView") as! ContactsCellTableViewCell
        cell.setNameAndLabel(with: contacts[indexPath.row])
        return cell
    }
    
}
