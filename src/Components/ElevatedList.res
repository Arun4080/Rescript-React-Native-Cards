open ReactNative
open Style

let styles = StyleSheet.create({
  "headingText": textStyle(~fontSize=24., ~fontWeight=#bold, ~paddingHorizontal=10.0->dp, ()),
  "container": viewStyle(~padding=8.->dp, ()),
  "card": viewStyle(
    ~flex=1.0,
    ~justifyContent=#center,
    ~alignItems=#center,
    ~height=100.->dp,
    ~width=100.->dp,
    ~borderRadius=4.0,
    ~margin=8.->dp,
    ~backgroundColor="lightgray",
    ~elevation=4.0,
    (),
  ),
  "text": textStyle(~color="black", ()),
})

@react.component
let make = () => {
  <View>
    <Text style={styles["headingText"]}> {"Elevated List"->React.string} </Text>
    <ScrollView horizontal={true} style={styles["container"]}>
      <View style={styles["card"]}>
        <Text style={styles["text"]}> {"Tap"->React.string} </Text>
      </View>
      <View style={styles["card"]}>
        <Text style={styles["text"]}> {"me"->React.string} </Text>
      </View>
      <View style={styles["card"]}>
        <Text style={styles["text"]}> {"to"->React.string} </Text>
      </View>
      <View style={styles["card"]}>
        <Text style={styles["text"]}> {"Scroll"->React.string} </Text>
      </View>
      <View style={styles["card"]}>
        <Text> {"😀"->React.string} </Text>
      </View>
    </ScrollView>
  </View>
}
