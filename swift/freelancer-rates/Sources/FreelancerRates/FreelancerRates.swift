import Foundation;

func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate * 8);
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let originalPrice = Double(hourlyRate * 8 * 22)
  let discountPrice = originalPrice * discount / 100
  let finalPrice = originalPrice - discountPrice
  return round(finalPrice)
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let monthlyRate = monthlyRateFrom(hourlyRate: hourlyRate, withDiscount: discount);
  let months = budget / monthlyRate;
  let days = months * 22;
  return Double(Int(days));
}
