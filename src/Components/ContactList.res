open ReactNative
open Style

let styles = StyleSheet.create({
  "headingText": textStyle(~fontSize=24., ~fontWeight=#bold, ~paddingHorizontal=10.0->dp, ()),
  "container": viewStyle(~paddingHorizontal=16.->dp, ()),
  "userCred": viewStyle(
    ~flex=1.,
    ~flexDirection=#row,
    ~alignItems=#center,
    ~backgroundColor="lightgray",
    ~marginBottom=10.->dp,
    ~borderRadius=8.,
    ~padding=5.->dp,
    (),
  ),
  "userImage": viewStyle(
    ~height=60.->dp,
    ~width=60.->dp,
    ~borderRadius=30.,
    ~marginRight=14.->dp,
    ~marginBottom=3.->dp,
    (),
  ),
  "userName": textStyle(~fontSize=16., ~fontWeight=#bold, ~color="black", ()),
  "userStatus": textStyle(~fontSize=12., ()),
})

type contact = {
  uid: int,
  name: string,
  status: string,
  imageUrl: string,
}

let contactComponent = ({uid, status, name, imageUrl}) => {
  <View key={Js.Int.toString(uid)} style={styles["userCred"]}>
    <Image
      source={Image.Source.fromUriSource({
        uri: imageUrl,
      })}
      style={styles["userImage"]}
    />
    <View>
      <Text style={styles["userName"]}> {name->React.string} </Text>
      <Text style={styles["userStatus"]}> {status->React.string} </Text>
    </View>
  </View>
}

@react.component
let make = () => {
  let contacts = [
    {
      uid: 1,
      name: "arun",
      status: "learning with Love",
      imageUrl: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
    },
    {
      uid: 2,
      name: "Varun",
      status: "learning with Love",
      imageUrl: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
    },
    {
      uid: 3,
      name: "Sarun",
      status: "learning with Love",
      imageUrl: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
    },
    {
      uid: 4,
      name: "karun",
      status: "learning with Love",
      imageUrl: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
    },
    {
      uid: 5,
      name: "darun",
      status: "learning with Love",
      imageUrl: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
    },
  ]
  <View>
    <Text style={styles["headingText"]}> {"ContactList"->React.string} </Text>
    <ScrollView style={styles["container"]} scrollEnabled={false}>
      {React.array(Belt.Array.map(contacts, contact => contactComponent(contact)))}
    </ScrollView>
  </View>
}
