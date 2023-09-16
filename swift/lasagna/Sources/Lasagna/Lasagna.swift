let expectedMinutesInOven: Int = 40;

func remainingMinutesInOven(elapsedMinutes e: Int) -> Int {
    return expectedMinutesInOven - e;
}

func preparationTimeInMinutes(layers l: Int) -> Int {
    return l * 2;
}

func totalTimeInMinutes(layers l: Int, elapsedMinutes e: Int) -> Int {
    return preparationTimeInMinutes(layers: l) + e;
}
