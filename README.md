# SwiftUI-ActionSheet-Alert

```
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
                
