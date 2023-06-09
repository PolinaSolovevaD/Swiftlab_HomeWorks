import Foundation

/*
 Make a Circle structure. It will have 2 properties radius and area. The area should be calculated automatically. When changing the area, the radius must be recalculated.
 Сделать структуру Circle. В ней будет 2 свойства радиус и площадь. Площадь должна рассчитываться автоматически. При изменении площади радиус должен перерассчитываться.
 */

struct Circle {
    var radius = 0.0
    var square: Double {
        get{
            return 3.4 * radius * radius
        }
        set {
            radius = sqrt(newValue / 3.4)
        }
    }
}
