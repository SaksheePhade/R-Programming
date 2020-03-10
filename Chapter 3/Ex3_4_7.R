# Page no 74

girls <- 60
boys <- 40
girls.eyeglasses <- 24
boys.eyeglasses <- 16
class <- girls + boys
P.eyeglasses <- (girls.eyeglasses + boys.eyeglasses)/(girls + boys)
P.eyeglasses

P.girls <- girls/class
P.eyeglasses_intersection_girls <- girls.eyeglasses/class
P.eyeglasses_intersection_boys <- boys.eyeglasses/class
P.boys <- boys/class
P.eyeglasses_given_boys <- P.eyeglasses_intersection_boys/P.boys
P.eyeglasses_given_boys

P.eyeglasses_given_notboys <- P.eyeglasses_intersection_girls/P.girls
P.eyeglasses_given_notboys

P.eyeglasses_intersection_boys <- P.boys * P.eyeglasses
P.eyeglasses_intersection_boys