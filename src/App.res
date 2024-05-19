open ReactNative
open Style

@react.component
let app = () => {
  <SafeAreaView>
    <ScrollView>
      <FlatLists />
      <ElevatedList />
      <FancyCard />
      <ActionCard />
      <ContactList />
    </ScrollView>
  </SafeAreaView>
}
