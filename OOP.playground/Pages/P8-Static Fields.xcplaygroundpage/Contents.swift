/*:
 ![Make School Banner](./swift_banner.png)
 # タイプのプロパティ
 
 動物園の飼育員には、餌を与える動物の頭数や動物園にいる動物の数が分からなくなることがあります。昨日飼育員のZebはZoeBotにこう尋ねました。「3匹のクマと5匹のミツバチに餌を与えるんだっけ？　それとも5匹いるクマの内の3匹だっけ？」 飼育員が思い出せるように手伝ってあげましょう。
 
 これには、`Animal`クラスに`population`カウンターを追加して`Animal`のインスタンスの作成回数をカウントします。ですが、わかっている限りでは、どうも不可能なように見えます。インスタンス変数は該当するクラスのインスタンスに対して一意であり、クラスのインスタンス全体で変数を数えるのは不可能だからです。
 
 型のプロパティを入力しましょう！
 
 */
class AnotherExampleClass {
    static var counter = 8999
    var message: String
    
    init(message: String) {
        self.message = message
    }
    
    func increaseAndCheckTheCounter() {
        AnotherExampleClass.counter += 1
        print("\(self.message) \(AnotherExampleClass.counter)!")
    }
}
/*:
 
  この例では、インスタンス変数`message`と`8999`に初期化された静的プロパティの`counter`があります。`increaseAndCheckTheCounter()`を呼び出すたびに型変数が増え、`message`インスタンス変数と一緒に出力されます。構文の違いにも注意してください。`message`はクラス内から`self.message`とアクセスするのに対して、`counter`は`AnotherExampleClass.counter`とアクセスします。変数`counter`は型`AnotherExampleClass`全体で共有されます。
 
 下のコードは次の結果を出力します。理由を説明できますか？
 
     カウンターはいくつですか？ 9000！
     あり得ない！ カウンターは ... 9001！
 
 */
let instanceOne = AnotherExampleClass(message: "カウンターはいくつですか？")
let instanceTwo = AnotherExampleClass(message: "あり得ない！ カウンターは ...")"
instanceOne.increaseAndCheckTheCounter()
instanceTwo.increaseAndCheckTheCounter()
/*:
 
 # 型メソッド
 
  メソッドも`static`とマークできます。例えば、`AnotherExampleClass`をサブクラス化して`CrushingExampleClass`を作成し、`crushTheCounter`メソッドを`CrushingExampleClass`に追加する場合は`CrushingExampleClass.crushTheCounter()`と呼び出します。しかし、タイプメソッド内からインスタンス変数にアクセスできません。タイプメソッドはクラスのどのインスタンスにも紐づけられていないからです。
 
 - callout（試してみましょう): `instanceThree.increaseAndCheckTheCounter()`と`CrushingExampleClass.crushTheCounter()`の呼び出しを下に追加してどうなるか見てみましょう!

 
 */
class CrushingExampleClass: AnotherExampleClass {
    static func crushTheCounter() {
        CrushingExampleClass.counter = 0
        print("ご心配なく... 今*crush*のカウンターは \(CrushingExampleClass.counter) となっています！")
    }
}
let instanceThree = CrushingExampleClass(message: "何ですって！いえ！今は...")


/*:
 
 - note: タイプメソッドを作成する際、`static`の代わりにキーワード`class`を使用できます。違いはわずかです。`class`が付いているメソッドは、サブクラスのメソッド実装をオーバーライドできますが、`static`が付いているメソッドはできません。
 
 これについては、AppleのSwiftドキュメント [こちら](http://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Methods.html) でもっと読むことができます。
 
 # 動物に戻る
 
 タイププロパティの使い方が分かったので、このプロパティを使って`Animal`の数を数えましょう。
 
 - callout(課題): 新しい機能を下のAnimal スーパークラスに実装します！
    - 作成されたAnimalのインスタンス数を数えるタイププロパティの`population`を`Animal`クラスに追加します。これを追跡するには、新しい`Animal`オブジェクトが初期化されるたびにイニシャライザ メソッドのカウントを増やす必要があります。
    - カウントにアクセスできるようにするには、valueToReturnを返すタイプメソッド`populationCount`を追加します。
    - `feedAnimals`を呼び出すと動物の総数が表示されます。`Zookeeper.feedAnimals`メソッドの冒頭に行を追加して、`"<name>は<food>を<number of animals feeding>匹の動物に与えており、動物の合計は<population>匹です"`と出力します。
 
 */

// ここにAnimalクラスをコピーして、自動的に総数をカウントするように修正してください。
// ヒント: 作成された動物をカウントするためにイニシャライザメソッドを修正してください。
class Animal {
    // ここに新しい型の変数を自分で作ってください！
    
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

// ここにZookeeperクラスをコピーしてください。
class Zookeeper {
    init(name: String) {
        // init関数を完成させてください。
    }
    
    func feed(animals: [Animal], food: String) {
        // ここにfeedAnimals関数を完成させてください。
        
    }
}


/*:
 ## テスト
 
 以下のコードは前回のコードに似ていますが、動物が追加されていて、これらの動物は餌が与えられる動物の配列には入っていません。次のように出力されます。
 
     Zoeは肉を5匹の動物に与えており、動物の合計は10匹です
     Tiggerは肉を食べます
     うまい！！！ Tiggerはもっと肉を欲しがっています
     Poohは肉を食べます
     Poohは4カ月冬眠します
     Rarityは肉を食べます
     Rarityは雲の中で眠ります
     まずい！！！ Gemmaは肉を食べません
     まずい！！！ Stingerは肉を食べません
 
 */

let animals: [Animal] = [
    Tiger(name: "Tigger"),
    Bear(name: "Pooh"),
    Unicorn(name: "Rarity"),
    Giraffe(name: "Gemma"),
    Bee(name: "Stinger")
]
let unfedTiger = Tiger(name: "満腹のTiger")
let unfedBear = Bear(name: "満腹のBear")
let unfedUnicorn = Unicorn(name: "満腹のUnicorn")
let unfedGiraffe = Giraffe(name: "満腹のGiraffe")
let unfedBee = Bee(name: "満腹のbee")

let zookeeper = Zookeeper(name: "Zoe")
zookeeper.feed(animals: animals, food: "肉")

/*:
 ## 結論
 
 おめでとうございます！ このチュートリアルでは、オブジェクト指向プログラミングに関する次の基本原則について学習しました。
 
 - データの整理にクラスの抽象化を活用する方法
 - オーバーラッピングや類似の動作を利用するためにクラス継承を使う方法
 - 型変数とインスタンス変数とメソッドの違い
 
 オブジェクト指向プログラミングは多くの複雑なプログラムの基本です。多くプログラミング プロジェクトに取り組んでいく中で、これらの抽象化を基本原則として使用していきます。
 
 */
//: [前へ](@previous)
