/*:
 ![Make School Banner](./swift_banner.png)
 # 自動Zookeeper

 Zoeは昼休みにミツバチの所に行きましたが、それ以来誰も彼女の姿を見ていません!動物は餌を与えられず空腹です。飼育員が毎日餌を与える動物を追跡しやすくなるようにプログラムをもっと便利にしましょう。

 最初に前のページのanimalクラスをコピーしましょう。

 */

// ここにAnimalクラスをコピーしてください。
class Animal {

    init(name: String) {

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

// ここにUnicornクラスをコピーしてください。
class Unicorn: Animal {

}

// ここにGiraffeクラスをコピーしてください。
class Giraffe: Animal {

}

// ここにBeeクラスをコピーしてください。
class Bee: Animal {

}

/*:

 # Zookeeper

 素晴らしい！ これで`name`インスタンス変数と、引数を使って`name`を設定するイニシャライザ メソッドを持つ`Zookeeper`クラスを作成する準備ができました。飼育員は毎日たくさんの動物に餌を与えなければなりません。`Animal`の配列`animals`と文字列`food`の2つの引数を取る`feedAnimals`メソッドを追加しましょう。このメソッドは最初に`"<name>は<food>を<animals.count>匹の動物に与えています"」と出力し、動物の配列を繰り返し処理して各動物の`eat`メソッドを呼び出し、`food`の値を引数として渡します。

 最後に、各動物のインスタンスと好物の餌を格納する配列を使ってこの`feedAnimals`メソッドを呼び出します。

 - callout(課題): 下の`Zookeeper`クラスを完成させよう!

 */

// ここにZookeeperクラスを実装してください。
class Zookeeper {
    // ここにインスタンス変数を入力してください。

    init(name: String) {
        // インスタンス変数に名前を保存してください。

    }

    func feed(animals: [Animal], food: String) {
        // ここにfeedAnimals関数を完成させてください。

    }
}

/*:
 ## テスト

 テストコードの出力は次のようになります。

     ZoeBotは肉を5匹の動物に与えています
     Tiggerは肉を食べます
     うまい！！！ Tiggerはもっと肉を欲しがっています
     Poohは肉を食べます
     Poohは4カ月冬眠します
     Rarityは肉を食べます
     Rarityは雲の中で眠ります
     まずい！！！ Gemmaは肉を食べません
     まずい！！！ Stingerは肉を食べません

 - callout(ヒント): `"ZoeBot"`という名前の`Zookeeper`インスタンスを作成してください。前のページのテストコードの動物を格納する`Array`を作成します。配列を`Zookeeper`の`feedAnimals`メソッドに`"肉"`と一緒に渡します。

 */

let animals: [Animal] = [
    Tiger(name: "Tigger"),
    Bear(name: "Pooh"),
    Unicorn(name: "Rarity"),
    Giraffe(name: "Gemma"),
    Bee(name: "Stinger")
]
let zookeeper = Zookeeper(name: "ZoeBot")
zookeeper.feed(animals: animals, food: "肉")

//: [前へ](@previous) | [次へ](@next)
