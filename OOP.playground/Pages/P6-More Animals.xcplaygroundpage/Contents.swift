/*:
 ![Make School Banner](./swift_banner.png)
 # さらに動物たち！

 今日がその日です！ Zoeはキリン、ミツバチ、ユニコーンを追跡しているので、さらに3つのクラスをプログラムに追加する必要があります。幸運にも準備ができています。一般的な動物の動作を持つ一般的なAnimalクラスがあるからです。

 - note: 前のページの`Animal`クラス、`Tiger`クラス、`Bear`クラスをコピーします。

 */

// ここにAnimalクラスをコピーしてください。
class Animal {

    init(name: String, favoriteFood: String) {
        // ここにイニシャライザコンテンツを入力してください。
    }

    func eat(food: String) {

    }

    func sleep() {

    }
}

// ここにTigerクラスをコピーしてください。
class Tiger: Animal {

}

// ここにBearクラスをコピーしてください。
class Bear: Animal {

}

/*:

 #ユニコーンです

 `Bee`、`Giraffe`、`Unicorn`という、`Animal`に属するサブクラスを3つ作成します。各クラスは`favoriteFood`の独自の値を設定し、`sleep`メソッドや`eat`メソッドを適宜オーバーライドします。

 - callout(課題): `Unicorn`クラスを`Animal`のサブクラスとして実装します。知らない人のために教えると、ユニコーンはマシュマロが好物で、雲の中で眠ります。つまり、`favoriteFood`は`"マシュマロ"`で、`sleep`メソッドを`Unicorn`で呼び出すと、`"<name>は雲の中で眠ります"`が出力されます。下のコードでいくつかヒントを提供しています。
 */

// ここにAnimalのサブクラスとしてUnicornクラスを実装してください。
// ヒント: イニシャライザメソッドを実装し、sleepメソッドをオーバーライドします。
class Unicorn: Animal {

    init(name: String) {
        // superclassのイニシャライザへの呼び出しの修正を忘れないでください！
        super.init(name: "", favoriteFood: "")
    }

    override func sleep() {
        // sleepコードのオーバーライド...

    }
}

/*:

 # Giraffes

 - callout(課題): `Giraffe`クラスを`Animal`のサブクラスとして実装します。キリンは草食なので葉しか食べません。`"葉"`を`Giraffe`に与えると、食べた後に`"おいしい！！！ <name>はもっと葉を欲しがっています"」と言い (`Tiger`の`"肉"`への反応と同じように)、それから`sleep`します。ただし、他の餌を与えると、`"まずい！！！ <name>は<food>を食べません"`と叫んで、それが嫌いなことを知らせます。Giraffe クラスの`eat`メソッドをオーバーライドしてこの動作をモデル化する必要があります。スーパークラスの`eat`メソッドの実装を呼び出して、汎用`Animal`クラスと似ているこの動作の一部のコードを作り直さずに済ませることができる場合もあります。

 */

// ここにAnimalのサブクラスとしてGiraffeクラスを実装してください。
// ヒント: イニシャライザメソッドを実装して、eatメソッドをオーバーライドします。
class Giraffe: Animal {

    init(name: String) {
        // superclassのイニシャライザへの呼び出しの修正を忘れないでください！
        super.init(name: "", favoriteFood: "")
    }

    override func eat(food: String) {
        // 与えた食べ物が好きでない場合はここにチェックしてください...
        // superclassのeat関数への呼び出しを忘れないでください。
    }
}


/*:

 # Bees

 - callout(課題): `Bee`クラスを`Animal`のサブクラスとして実装します。ミツバチは花粉しか食べません。花粉が与えられると"うまい！！！ <name>はもっと花粉を欲しがっています"`と出力され、`sleep`が呼び出されます。他のものが与えられると、ミツバチはキリンと同じように不平を言います。さらに、ミツバチは眠らないので、Beeクラスの`sleep`メソッドを呼び出すと、標準の動作ではなく`"<name>は決して眠りません"`と出力されます。
 */

// ここにAnimalのサブクラスとしてBeeクラスを実装します。
// ヒント: イニシャライザメソッドを実装して、sleepメソッドとeatメソッドをオーバーライドします。
class Bee: Animal {

}


/*:
 ## テスト

 今回は、自分でテストコードを作成してください！ 次のように出力するはずです。

     Tiggerは肉を食べます
     うまい！！！ Tiggerはもっと肉を欲しがっています
     Poohは魚を食べます
     うまい！！！ Poohはもっと魚を欲しがっています
     Poohは肉を食べます
     Poohは4カ月冬眠します
     Rarityはマシュマロを食べます
     うまい！！！ Rarityはもっとマシュマロを欲しがっています
     Rarityは雲の中で眠ります
     まずい！！！ Gemmaは肉を食べません
     Gemmaは葉を食べます
     うまい！！！ Gemmaはもっと葉を欲しがっています
     Gemmaは8時間眠ります
     まずい！！！ Stingerはアイスクリームを食べません
     Stingerは花粉を食べます
     うまい！！！ Stingerはもっと花粉を欲しがっています
     Stingerは決して眠りません

 - callout(ヒント): 動物園には現在各型の動物が1匹ずついます。次のようなものがあります:
    - Tiggerという名前の`Tiger`
    - Poohという名前の`Bear`
    - Rarityという名前の`Unicorn`
    - Gemmaという名前の`Giraffe`
    - Stingerという名前の`Bee`

 */




//: [前へ](@previous) | [次へ](@next)
