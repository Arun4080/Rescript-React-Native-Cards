open ReactNative
open Style

let styles = StyleSheet.create({
  "headingText": textStyle(~fontSize=24., ~fontWeight=#bold, ~paddingHorizontal=10.0->dp, ()),
  "container": viewStyle(~flex=1., ~flexDirection=#row, ~padding=8.->dp, ()),
  "card": viewStyle(
    ~flex=1.,
    ~justifyContent=#center,
    ~alignItems=#center,
    ~height=100.->dp,
    ~borderRadius=4.,
    ~margin=8.->dp,
    (),
  ),
  "redCard": viewStyle(~backgroundColor="red", ()),
  "blueCard": viewStyle(~backgroundColor="blue", ()),
  "greenCard": viewStyle(~backgroundColor="green", ()),
  "orangeCard": viewStyle(~backgroundColor="orange", ()),
  "text": textStyle(~color="white", ()),
})

@react.component
let make = () => {
  <View>
    <Text style={styles["headingText"]}> {"FlatList"->React.string} </Text>
    <View style={styles["container"]}>
      <View style={array([styles["card"], styles["redCard"]])}>
        <Text style={styles["text"]}> {"Red"->React.string} </Text>
      </View>
      <View style={array([styles["card"], styles["blueCard"]])}>
        <Text style={styles["text"]}> {"Blue"->React.string} </Text>
      </View>
      <View style={array([styles["card"], styles["greenCard"]])}>
        <Text style={styles["text"]}> {"Green"->React.string} </Text>
      </View>
      <View style={array([styles["card"], styles["orangeCard"]])}>
        <Text style={styles["text"]}> {"Orange"->React.string} </Text>
      </View>
    </View>
  </View>
}
