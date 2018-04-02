
import UIKit

class ProfileViewController: UIViewController {
    
    var image: UIImage!
    
    @IBOutlet weak var userPictureImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userPictureImageView.image = image
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didTapDone(_ sender: UITapGestureRecognizer) {
        navigationController?.popViewController(animated: true)
        
        dismiss(animated: true, completion: nil)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

