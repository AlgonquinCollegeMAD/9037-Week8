import SwiftUI


enum TrafficLight {
  case red
  case yellow
  case green
  
  func next() -> TrafficLight {
    switch self {
    case .red:
      return .green
    case .yellow:
      return .red
    case .green:
      return .red
    }
  }
}


struct ContentView: View {
  var light: TrafficLight  = .red
  
  var redColor: Color {
    light == .red ? Color.red : Color.red.opacity(0.4)
  }
  
  var yellowColor: Color {
    light == .yellow ? Color.yellow : Color.yellow.opacity(0.4)
  }
  
  var greenColor: Color {
    light == .green ? Color.green : Color.green.opacity(0.4)
  }
  
  var body: some View {
    ZStack() {
      RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
        .frame(width: 200, height: 400)
      VStack() {
        Circle()
          .frame(width: 100)
          .foregroundColor(redColor)
        Circle()
          .frame(width: 100)
          .foregroundColor(yellowColor)
        Circle()
          .frame(width: 100)
          .foregroundColor(greenColor)
      }
    }
  }
}

#Preview {
  ContentView()
}

#Preview {
  ContentView(light: .red)
}

#Preview {
  ContentView(light: .yellow)
}

#Preview {
  ContentView(light: .green)
}
