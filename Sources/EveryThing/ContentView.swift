// This is free software: you can redistribute and/or modify it
// under the terms of the GNU Lesser General Public License 3.0
// as published by the Free Software Foundation https://fsf.org

import SwiftUI
import HelloSkip
//import Showcase
//import SkipWeather
//import LottieDemo
//import DataBake

enum EveryThingType: String, CaseIterable, Identifiable {
    case hello
//    case showcase
//    case lottie
//    case databake
//    case weather

    var id: String {
        rawValue
    }

    var title: String {
        switch self {
        case .hello:
            return "Hello Skip"
//        case .showcase:
//            return "SwiftUI Components"
//        case .lottie:
//            return "Lottie Animations"
//        case .databake:
//            return "Database List"
//        case .weather:
//            return "Weather Sample"
        }
    }
}

public struct ContentView: View {
    @State var presentedThing: EveryThingType? = nil
    @State var showThing = false

    public init() {
    }

    public var body: some View {
        VStack(alignment: .center) {
            ForEach(EveryThingType.allCases, id: \.rawValue) { thing in
                Button(thing.title) {
                    self.presentedThing = thing
                    self.showThing = true
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .sheet(isPresented: $showThing) {
            switch presentedThing {
            case nil:
                EmptyView()
            case .hello:
                HelloSkip.ContentView()
//            case .showcase:
//                Showcase.ContentView()
//            case .lottie:
//                LottieDemo.ContentView()
//            case .databake:
//                DataBake.ContentView()
//            case .weather:
//                SkipWeather.ContentView()
            }
        }

        // This API is not yet available in Skip…
        //.sheet(item: $presentedThing) { thing in
        //    switch thing {
        //    case .hello:
        //        HelloSkip.ContentView()
        //    case .showcase:
        //        Showcase.ContentView()
        //    case .lottie:
        //        LottieDemo.ContentView()
        //    case .databake:
        //        DataBake.ContentView()
        //    case .weather:
        //        SkipWeather.ContentView()
        //    }
        //}

        // NavigationStack conflicts with embedded NavigationStack on iOS
        //NavigationStack {
        //    List(EveryThingType.allCases, id: \.rawValue) { thing in
        //        NavigationLink(thing.title, value: thing)
        //    }
        //    .navigationDestination(for: EveryThingType.self) {
        //    }
        //}
    }
}
