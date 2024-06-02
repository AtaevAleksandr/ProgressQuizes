import SwiftUI

struct GraphicsView: View {
    @EnvironmentObject var viewModel: LearnViewModel

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Длина стрелок
                let maxArrowLength: CGFloat = min(geometry.size.width, geometry.size.height) / 3 - 30
                let arrowLengthRetail = maxArrowLength * CGFloat(viewModel.completedRetailsLessons + 2) / CGFloat(viewModel.totalRetailsLessons)
                let arrowLengthAnalysis = maxArrowLength * CGFloat(viewModel.completedAnalysisLessons + 2) / CGFloat(viewModel.totalAnalysisLessons)
                let arrowLengthBasics = maxArrowLength * CGFloat(viewModel.completedBasicsLessons + 2) / CGFloat(viewModel.totalBasicsLessons)
                let arrowLengthLines = maxArrowLength * CGFloat(viewModel.completedLinesLessons + 1) / CGFloat(viewModel.totalLinesLessons)

                let midX = geometry.size.width / 2
                let midY = geometry.size.height / 2

                // Рисуем ромб, соединяя концы стрелок
                Path { path in
                    path.move(to: CGPoint(x: midX, y: midY - arrowLengthRetail - 5)) // верхняя точка
                    path.addLine(to: CGPoint(x: midX + arrowLengthLines + 5, y: midY)) // правая точка
                    path.addLine(to: CGPoint(x: midX, y: midY + arrowLengthAnalysis + 5)) // нижняя точка
                    path.addLine(to: CGPoint(x: midX - arrowLengthBasics - 5, y: midY)) // левая точка
                    path.closeSubpath()
                }
                .fill(Color.theme.backgroundGraph)
                .scaleEffect(1.05)

                // Рисуем стрелки
                Arrow(arrowLength: arrowLengthRetail, direction: .up)
                    .stroke(Color.white, lineWidth: 3)
                    .frame(width: geometry.size.width, height: geometry.size.height)

                Arrow(arrowLength: arrowLengthLines, direction: .right)
                    .stroke(Color.white, lineWidth: 3)
                    .frame(width: geometry.size.width, height: geometry.size.height)

                Arrow(arrowLength: arrowLengthAnalysis, direction: .down)
                    .stroke(Color.white, lineWidth: 3)
                    .frame(width: geometry.size.width, height: geometry.size.height)

                Arrow(arrowLength: arrowLengthBasics, direction: .left)
                    .stroke(Color.white, lineWidth: 3)
                    .frame(width: geometry.size.width, height: geometry.size.height)

                // Рисуем центральную точку
                Circle()
                    .fill(Color.theme.customGreen)
                    .frame(width: 30, height: 30)
                    .position(x: midX, y: midY)

                Text("Retail Forex Industry")
                    .foregroundColor(Color.white)
                    .position(x: geometry.size.width / 2, y: (geometry.size.height / 2) - arrowLengthRetail - 20)
                    .offset(x: 0, y: -20)
                    .font(.caption)

                // Chart Basics
                VStack {
                    Text("Chart")
                    Text("Basics")
                }
                .foregroundColor(Color.white)
                .position(x: (geometry.size.width / 2) - arrowLengthBasics - 20, y: geometry.size.height / 2)
                .offset(x: -20, y: 0)
                .font(.caption)

                // Chart Lines
                VStack {
                    Text("Chart")
                    Text("Lines")
                }
                .foregroundColor(Color.white)
                .position(x: (geometry.size.width / 2) + arrowLengthLines + 20, y: geometry.size.height / 2)
                .offset(x: 20, y: 0)
                .font(.caption)

                // Analysis Basics
                Text("Analysis Basics")
                    .foregroundColor(Color.white)
                    .position(x: geometry.size.width / 2, y: (geometry.size.height / 2) + arrowLengthAnalysis + 20)
                    .offset(x: 0, y: 20)
                    .font(.caption)
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

        switch direction {
        case .up:
            path.move(to: CGPoint(x: centerX, y: centerY))
            path.addLine(to: CGPoint(x: centerX, y: centerY - arrowLength))
            path.move(to: CGPoint(x: centerX, y: centerY - arrowLength))
            path.addLine(to: CGPoint(x: centerX - 5, y: centerY - arrowLength + 10))
            path.move(to: CGPoint(x: centerX, y: centerY - arrowLength))
            path.addLine(to: CGPoint(x: centerX + 5, y: centerY - arrowLength + 10))

        case .down:
            path.move(to: CGPoint(x: centerX, y: centerY))
            path.addLine(to: CGPoint(x: centerX, y: centerY + arrowLength))
            path.move(to: CGPoint(x: centerX, y: centerY + arrowLength))
            path.addLine(to: CGPoint(x: centerX - 5, y: centerY + arrowLength - 10))
            path.move(to: CGPoint(x: centerX, y: centerY + arrowLength))
            path.addLine(to: CGPoint(x: centerX + 5, y: centerY + arrowLength - 10))

        case .left:
            path.move(to: CGPoint(x: centerX, y: centerY))
            path.addLine(to: CGPoint(x: centerX - arrowLength, y: centerY))
            path.move(to: CGPoint(x: centerX - arrowLength, y: centerY))
            path.addLine(to: CGPoint(x: centerX - arrowLength + 10, y: centerY - 5))
            path.move(to: CGPoint(x: centerX - arrowLength, y: centerY))
            path.addLine(to: CGPoint(x: centerX - arrowLength + 10, y: centerY + 5))

        case .right:
            path.move(to: CGPoint(x: centerX, y: centerY))
            path.addLine(to: CGPoint(x: centerX + arrowLength, y: centerY))
            path.move(to: CGPoint(x: centerX + arrowLength, y: centerY))
            path.addLine(to: CGPoint(x: centerX + arrowLength - 10, y: centerY - 5))
            path.move(to: CGPoint(x: centerX + arrowLength, y: centerY))
            path.addLine(to: CGPoint(x: centerX + arrowLength - 10, y: centerY + 5))
        }

        return path
    }
}

#Preview {
    ZStack {
        BackgroundView()
        GraphicsView().environmentObject(LearnViewModel())
    }
}
