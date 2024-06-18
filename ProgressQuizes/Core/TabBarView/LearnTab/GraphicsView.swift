import SwiftUI

struct GraphicsView: View {

    @EnvironmentObject var learnVM: LearnViewModel

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let arrowLength: CGFloat = min(geometry.size.width, geometry.size.height) / 4
                let pointSize: CGFloat = 15

                let midX = geometry.size.width / 2
                let midY = geometry.size.height / 2

                let backgroundWidth = arrowLength * 2
                let backgroundHeight = arrowLength * 2

                let retailProgress = CGFloat(self.learnVM.completedRetailsLessons) / CGFloat(self.learnVM.totalRetailsLessons)
                let analysisProgress = CGFloat(self.learnVM.completedAnalysisLessons) / CGFloat(self.learnVM.totalAnalysisLessons)
                let basicsProgress = CGFloat(self.learnVM.completedBasicsLessons) / CGFloat(self.learnVM.totalBasicsLessons)
                let linesProgress = CGFloat(self.learnVM.completedLinesLessons) / CGFloat(self.learnVM.totalLinesLessons)

                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color.theme.backgroundGraph) // Цвет заливки ромба
                    .frame(width: backgroundWidth, height: backgroundHeight)
                    .position(x: midX, y: midY)
                    .rotationEffect(Angle(degrees: 45))
                    .scaleEffect(0.85)

                // Draw inner rhombus
                Path { path in
                    path.move(to: CGPoint(x: midX, y: midY - arrowLength * retailProgress))
                    path.addLine(to: CGPoint(x: midX + arrowLength * linesProgress, y: midY))
                    path.addLine(to: CGPoint(x: midX, y: midY + arrowLength * analysisProgress))
                    path.addLine(to: CGPoint(x: midX - arrowLength * basicsProgress, y: midY))
                    path.closeSubpath()
                }
                .fill(Color.cyan.opacity(0.6))
                .scaleEffect(0.9)// Change color as desired

                // Рисуем стрелки с треугольниками на концах
                Arrow(arrowLength: arrowLength, direction: .up)
                    .stroke(Color.white, lineWidth: 3)
                    .background(Triangle().rotation(Angle(degrees: 180)).fill(Color.white).frame(width: 12, height: 12).position(x: midX, y: midY - backgroundHeight / 2))
                Arrow(arrowLength: arrowLength, direction: .right)
                    .stroke(Color.white, lineWidth: 3)
                    .background(Triangle().rotation(Angle(degrees: 270)).fill(Color.white).frame(width: 12, height: 12).position(x: midX + backgroundWidth / 2, y: midY))
                Arrow(arrowLength: arrowLength, direction: .down)
                    .stroke(Color.white, lineWidth: 3)
                    .background(Triangle().fill(Color.white).frame(width: 12, height: 12).position(x: midX, y: midY + backgroundHeight / 2))
                Arrow(arrowLength: arrowLength, direction: .left)
                    .stroke(Color.white, lineWidth: 3)
                    .background(Triangle().rotation(Angle(degrees: 90)).fill(Color.white).frame(width: 12, height: 12).position(x: midX - backgroundWidth / 2, y: midY))

                // Рисуем центральную точку
                Circle()
                    .fill(Color.green)
                    .frame(width: pointSize, height: pointSize)
                    .position(x: midX, y: midY)

                // Retail Forex Industry
                Text("Retail Forex Industry")
                    .foregroundColor(Color.white)
                    .position(x: midX, y: midY - backgroundHeight / 2 - 20)
                    .offset(x: 0, y: -20)
                    .font(.headline)

                // Chart Basics
                VStack {
                    Text("Chart")
                    Text("Basics")
                }
                .foregroundColor(Color.white)
                .position(x: midX - backgroundWidth / 2 - 40, y: midY)
                .offset(x: -20, y: 0)
                .font(.headline)

                // Chart Lines
                VStack {
                    Text("Chart")
                    Text("Lines")
                }
                .foregroundColor(Color.white)
                .position(x: midX + backgroundWidth / 2 + 30, y: midY)
                .offset(x: 20, y: 0)
                .font(.headline)

                // Analysis Basics
                Text("Analysis Basics")
                    .foregroundColor(Color.white)
                    .position(x: midX, y: midY + backgroundHeight / 2 + 20)
                    .offset(x: 0, y: 20)
                    .font(.headline)
            }
        }
    }
}

struct Arrow: Shape {
    enum Direction {
        case up, down, left, right
    }

    var arrowLength: CGFloat
    var direction: Direction

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let centerX = rect.midX
        let centerY = rect.midY

        // Расчет конечных точек для стрелок
        let startPoint: CGPoint
        let endPoint: CGPoint

        switch direction {
        case .up:
            startPoint = CGPoint(x: centerX, y: centerY)
            endPoint = CGPoint(x: centerX, y: centerY - arrowLength)

        case .down:
            startPoint = CGPoint(x: centerX, y: centerY)
            endPoint = CGPoint(x: centerX, y: centerY + arrowLength)

        case .left:
            startPoint = CGPoint(x: centerX, y: centerY)
            endPoint = CGPoint(x: centerX - arrowLength, y: centerY)

        case .right:
            startPoint = CGPoint(x: centerX, y: centerY)
            endPoint = CGPoint(x: centerX + arrowLength, y: centerY)
        }

        // Рисуем линию
        path.move(to: startPoint)
        path.addLine(to: endPoint)

        return path
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))

        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundView()
            GraphicsView()
        }
        .environmentObject(LearnViewModel())
    }
}
