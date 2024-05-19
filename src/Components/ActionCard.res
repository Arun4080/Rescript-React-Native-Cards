open ReactNative
open Style

let styles = StyleSheet.create({
  "headingText": textStyle(~fontSize=24., ~fontWeight=#bold, ~paddingHorizontal=10.0->dp, ()),
  "card": viewStyle(~borderRadius=6., ~margin=12.0->dp, ()),
  "elevatedCard": viewStyle(
    ~backgroundColor="orange",
    ~elevation=4.,
    ~shadowOffset=offset(~width=1., ~height=1.),
    ~shadowColor="black",
    ~shadowOpacity=0.4,
    (),
  ),
  "headingContainer": viewStyle(
    ~height=80.->dp,
    ~flexDirection=#row,
    ~justifyContent=#center,
    ~alignItems=#center,
    (),
  ),
  "headerText": textStyle(~color="black", ~fontSize=16., ~fontWeight=#bold, ()),
  "cardImage": viewStyle(~height=180.->dp, ()),
  "bodyContainer": viewStyle(~padding=10.->dp, ()),
  "footerContainer": viewStyle(
    ~padding=8.->dp,
    ~flexDirection=#row,
    ~alignItems=#center,
    ~justifyContent=#"space-evenly",
    (),
  ),
  "socialLinks": textStyle(
    ~fontSize=16.,
    ~color="black",
    ~backgroundColor="white",
    ~paddingHorizontal=20.->dp,
    ~borderRadius=5.,
    ~marginBottom=10.->dp,
    (),
  ),
})

@react.component
let make = () => {
  let openWebsite = (~websiteLink: string) => {
    ignore(
      Js.Promise.catch(
        _ => {
          Js.Promise.resolve()
        },
        Js.Promise.then_(_ => {
          Js.Promise.resolve()
        }, Linking.openURL(websiteLink)),
      ),
    )
  }
  <View>
    <Text style={styles["headingText"]}> {"Blog Card"->React.string} </Text>
    <View style={array([styles["card"], styles["elevatedCard"]])}>
      <View style={styles["headingContainer"]}>
        <Text style={styles["headerText"]}> {"Way to Nature"->React.string} </Text>
      </View>
      <Image
        source={Image.Source.fromUriSource({
          uri: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
        })}
        style={styles["cardImage"]}
      />
      <View style={styles["bodyContainer"]}>
        <Text numberOfLines={3}>
          {"In this general sense nature refers to the laws, elements and phenomena of the physical world, including life. Although humans are part of nature, human "->React.string}
        </Text>
      </View>
      <View style={styles["footerContainer"]}>
        <TouchableOpacity
          onPress={_ => openWebsite(~websiteLink="https://en.wikipedia.org/wiki/Nature")}>
          <Text style={styles["socialLinks"]}> {"Read More"->React.string} </Text>
        </TouchableOpacity>
        <TouchableOpacity
          onPress={_ => openWebsite(~websiteLink="https://www.instagram.com/arun.verma_/?hl=en")}>
          <Text style={styles["socialLinks"]}> {"Follow Me"->React.string} </Text>
        </TouchableOpacity>
      </View>
    </View>
  </View>
}
