//
//  ContentView.swift
//  AlertAndActionSheetSample
//
//  Created by hb on 29/07/19.
//  Copyright © 2019 hb. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //    let defaultColor: Color = .black
    @State var showActionSheet = false
    @State var showAlert = false
    @State var showCustomAlert = false
    @State var actionSheetButtonColor: Color = .black
    @State var alertButtonColor: Color = .black
    var body: some View {
        VStack {
            VStack {
                Button(action: {
                    self.showActionSheet = true
                }) {
                    Text("Click here to show Actionsheet")
                }
                .foregroundColor(actionSheetButtonColor)
                    .font(.title)
                    .actionSheet(isPresented: $showActionSheet) {
                        var actionbuttons = [ActionSheet.Button]()
                        //adding action button with text "Red Color"
                        let red = Alert.Button.default(Text("Red Color")) {
                            self.actionSheetButtonColor = .red
                        }
                        actionbuttons.append(red)
                        //adding action button with text "Green Color"
                        let green = Alert.Button.default(Text("Green Color")) {
                            self.actionSheetButtonColor = .green
                        }
                        actionbuttons.append(green)
                        //adding action button with text "Blue Color"
                        let blue = Alert.Button.default(Text("Blue Color")) {
                            self.actionSheetButtonColor = .blue
                        }
                        actionbuttons.append(blue)
                        //adding cancel button with out any action
                        let cancel = Alert.Button.cancel()
                        actionbuttons.append(cancel)
                        return ActionSheet(title: Text("Select Color"), buttons: actionbuttons)
                }
            }
            VStack {
                Button(action: {
                    self.showAlert = true
                }) {
                    Text("Click here to show Alert")
                }
                .font(.title)
                    .foregroundColor(alertButtonColor)
                    .alert(isPresented: $showAlert) {
                        return Alert(title: Text("Alert Title"), message: Text("Alert Message"), primaryButton: Alert.Button.default(Text("Change Color"), onTrigger: {
                            self.alertButtonColor = .yellow
                        }), secondaryButton: Alert.Button.cancel())
                }
                        
            }
            
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
