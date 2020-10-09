//
//  ViewController.swift
//  SuperHeroes
//
//  Created by Grazi Berti on 08/10/20.
//

import UIKit

enum TypeSegmentedControl {
    static let Marvel = 0
    static let DC = 1
}
class ViewController: UIViewController {

    @IBOutlet weak var segmentedControlSuperHeroes: UISegmentedControl!
    
    @IBAction func changedSegmentedControlSuperHeroes(_ sender: Any) {
        tableViewSuperHeroes.reloadData()
    }
    
    @IBOutlet weak var tableViewSuperHeroes: UITableView!
    
    var arrayAvangers = [Avangers] ()
    var arrayJusticeLeague = [JusticeLeague] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSuperHeroes.delegate = self
        tableViewSuperHeroes.dataSource = self
        
        // MARK: Adding Avengers
        arrayAvangers.append(Avangers(name: "Black Widow", profileImage: "blackWidow.png"))
        arrayAvangers.append(Avangers(name: "Black Panther", profileImage: "blackPanther .png"))
        arrayAvangers.append(Avangers(name: "Captain American", profileImage: "captainAmerican"))
        arrayAvangers.append(Avangers(name: "Hawkeye", profileImage: "hawkeye"))
        arrayAvangers.append(Avangers(name: "Hulk", profileImage: "hulk.png"))
        arrayAvangers.append(Avangers(name: "Iron Man", profileImage: "ironMan"))
        arrayAvangers.append(Avangers(name: "Thor", profileImage: "thor"))
        
        // MARK: Adding Justice League
        arrayJusticeLeague.append(JusticeLeague(name: "Wonder Woman", profileImage: "wonderWoman.png"))
        arrayJusticeLeague.append(JusticeLeague(name: "Aquaman", profileImage: "aquaman.png"))
        arrayJusticeLeague.append(JusticeLeague(name: "Batman", profileImage: "batman.png"))
        arrayJusticeLeague.append(JusticeLeague(name: "Super Man", profileImage: "superMan.png"))
        arrayJusticeLeague.append(JusticeLeague(name: "Flash", profileImage: "flash.png"))
    }
}

extension ViewController: UITableViewDelegate {
    
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if segmentedControlSuperHeroes.selectedSegmentIndex == TypeSegmentedControl.Marvel {
            return arrayAvangers.count
        }
        return arrayJusticeLeague.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SuperHeroesDetail", for: indexPath) as? SuperHeroesDetail{
            if segmentedControlSuperHeroes.selectedSegmentIndex == TypeSegmentedControl.Marvel{
                cell.setup(nome: arrayAvangers[indexPath.row].name, image: arrayAvangers[indexPath.row].profileImage)
                return cell
            }
            cell.setup(nome: arrayJusticeLeague[indexPath.row].name, image: arrayJusticeLeague[indexPath.row].profileImage)
            return cell
        }
        return UITableViewCell()
    }
    
}
