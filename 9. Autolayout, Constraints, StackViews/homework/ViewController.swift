/*
 Для всех задач создайте один Xcode проект и реализуйте их на отдельных экранах.
 1. Создайте три кнопки (зеленую, синюю, желтую):
 1) Которые находятся на одной горизонтали, имеют одинаковую ширину, отступ от краев экрана 8pt и между кнопками — 4pt (без stackviews).
 2) Которые находятся на одной горизонтали, имеют одинаковую ширину, отступ слева и справа от экрана 8pt и между кнопками – 4pt (с использованием stackviews).
 3) Которые находятся на одной вертикали, занимают 50% высоты экрана, отцентрованы по вертикали, имеют отступ слева и справа от экрана 8pt и между кнопками – 4 pt (без stackviews)
 4)  Которые находятся на одной вертикали, занимают 50% высоты экрана, отцентрованы по вертикали, имеют отступ слева и справа от экрана 8pt и между кнопками – 4 pt (с использованием stackviews).

 2. Поставьте в одну линию два лейбла: левый лейбл имеет отступ от левого края 8 pt, правый лейбл – 8 pt от правого. Между ними отступ тоже 8 pt. Сделайте так, чтобы в случае, если у обоих лейблов очень длинный текст, правый лейбл имел ширину 40 pt, а левый – все остальное пространство, при этом если в левом лейбле мало текста, то правый лейбл занимал всё доступное свободное пространство (при этом левый лейбл должен помещаться полностью).

 3.  Сделайте сворачивающийся/разворачивающийся текст по нажатию кнопки: у лейбла стоит ограничение в 0 строк и констрейнта по высоте. По нажатию на кнопку эта констрейнта последовательно меняется на высоту одной строки лейбла и на высоту 5 строк.
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Left: UILabel!
    @IBOutlet weak var Right: UILabel!
    
    @IBAction func Pomenyat(_ sender: Any) {
        if Right.text == "лейбл" {
            Left.text = "лейбл"
            Right.text = "лейбл лейбл лейбл лейбл лейбл"
        } else {
            Left.text = "лейбл лейбл лейбл лейбл лейбл"
            Right.text = "лейбл"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        Left.text = "лейбл лейбл лейбл лейбл лейбл"
        Right.text = "лейбл"
    }
}