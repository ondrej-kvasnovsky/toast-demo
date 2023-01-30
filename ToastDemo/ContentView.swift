//
//  ContentView.swift
//  ToastDemo
//
//  Created by Ondrej Kvasnovsky on 1/30/23.
//

import SwiftUI

struct ContentView: View {
  
  @State private var toast: Toast? = nil
  
  var body: some View {
    VStack {
      Button {
        toast = Toast(type: .info, title: "Toast info", message: "Toast message")
      } label: {
        Text("Run")
      }
    }
    .toastView(toast: $toast)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
