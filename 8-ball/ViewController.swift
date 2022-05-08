import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var predictionLabel: UILabel!
    @IBOutlet weak var ballImage: UIImageView!
    
    let predictions = [
        "Да, конечно", "Кажется, да", "Бесспорно!", "Давно пора", // Positive prediction
        "Возможно...", "Сомнительно", "Ты уже знаешь ответ", "Решай сам", // Undefined prediction
        "Нет!", "Думаю, не стоит", "Точно нет", "Лучше не надо", // Negative prediction
        "Не знаю", "Попробуй еще", "Подумай еще", "Лучше завтра" // Try again
    ]
    
    override func viewWillAppear(_ animated: Bool) {
        predictionLabel.alpha = 0
        UIView.animate(withDuration: 5, animations: {
            self.predictionLabel.alpha = 0.7
        })
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        UIView.animate(withDuration: 1, animations: {
            self.predictionLabel.alpha = 0
        })

    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        showNewPrediction()
    }
    
    @IBAction func newPredictionTouch(_ sender: UIButton) {
        showNewPrediction()
    }
    
    func showNewPrediction(){
        predictionLabel.alpha = 0
        UIView.animate(withDuration: 3, animations: {
            self.predictionLabel.alpha = 1
        })
        
        predictionLabel.text = predictions[Int.random(in: 0..<predictions.count)]
    }
}
