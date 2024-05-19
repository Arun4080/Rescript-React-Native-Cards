open ReactNative
open Style

let styles = StyleSheet.create({
  "headingText": textStyle(~fontSize=24., ~fontWeight=#bold, ~paddingHorizontal=10.0->dp, ()),
  "card": viewStyle(~margin=10.->dp, ~borderRadius=6.0, ()),
  "cardElevation": viewStyle(~backgroundColor="lightgray", ~elevation=3.0, ()),
  "cardImage": viewStyle(
    ~height=220.->dp,
    ~marginBottom=8.->dp,
    ~borderTopLeftRadius=6.,
    ~borderTopRightRadius=6.,
    (),
  ),
  "cardBody": viewStyle(~flex=1., ~flexGrow=1., ~paddingHorizontal=12.->dp, ()),
  "cardTitle": textStyle(
    ~color="black",
    ~fontSize=22.,
    ~fontWeight=#bold,
    ~marginBottom=4.->dp,
    (),
  ),
  "cardLabal": textStyle(~color="black", ~fontSize=14., ~marginBottom=6.->dp, ()),
  "cardDescription": textStyle(
    ~fontSize=12.,
    ~marginBottom=12.->dp,
    ~marginTop=6.->dp,
    ~flexShrink=1.,
    (),
  ),
  "cardFooter": textStyle(~color="black", ~fontSize=14., ~marginBottom=12.->dp, ()),
})

@react.component
let make = () => {
  <View>
    <Text style={styles["headingText"]}> {"Trending Places"->React.string} </Text>
    <View style={array([styles["card"], styles["cardElevation"]])}>
      <Image
        source={Image.Source.fromUriSource({
          uri: "https://upload.wikimedia.org/wikipedia/commons/d/da/Taj-Mahal.jpg",
        })}
        style={styles["cardImage"]}
      />
      <View style={styles["cardBody"]}>
        <Text style={styles["cardTitle"]}> {"Taj Mahal"->React.string} </Text>
        <Text style={styles["cardLabal"]}> {"Agra"->React.string} </Text>
        <Text style={styles["cardDescription"]}>
          {"The Taj Mahal is an ivory-white marble mausoleum on the right bank of the river Yamuna in Agra, Uttar Pradesh, India. It was commissioned in 1631 by the fifth Mughal emperor, Shah Jahan to house the tomb of his beloved wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself."->React.string}
        </Text>
        <Text style={styles["cardFooter"]}> {"1 hour away"->React.string} </Text>
      </View>
    </View>
  </View>
}
