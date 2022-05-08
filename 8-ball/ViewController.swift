import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var predictionLabel: UILabel!
    @IBOutlet weak var ballImage: UIImageView!
    
    let predictions = ["Да, конечно", "Нет!", "Возможно...", "Попробуй еще", "Лучше завтра", "Кажется, да", "Нельзя", "Сомнительно", "Бесспорно!", "Точно нет", "Ты знаешь ответ", "Подумай еще"]
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        UIView.animate(withDuration: 1, animations: {
            self.predictionLabel.alpha = 0
        })

    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newPrediction()
    }
    
    @IBAction func newPrediction(_ sender: UIButton) {
        newPrediction()
    }
    
    func newPrediction(){
        predictionLabel.alpha = 0
        UIView.animate(withDuration: 3, animations: {
            self.predictionLabel.alpha = 1
        })
        
        predictionLabel.text = predictions[Int.random(in: 0...predictions.count-1)]
    }
}
