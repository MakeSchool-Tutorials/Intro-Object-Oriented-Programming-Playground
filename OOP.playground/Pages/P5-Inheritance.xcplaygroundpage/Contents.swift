/*:
 ![Make School Banner](./swift_banner.png)
 # 継承

 Zoeが再び昇進しました！ 明日から、さらに3つの動物が割り当てられるということが分かりました。キリンとミツバチと... ユニコーンです！ なんという動物園なんでしょうか？！

 Zoeが明日新しいクラスを3つ要求してくる前に、コードを書き直して時間を節約しましょう。`Animal`というクラスを作成します。これはスーパークラス(すぐに説明します) となります。`Animal`は両方のインスタンス変数 (`name`と`favoriteFood`ですね) を含んでいる必要があります。イニシャライザ メソッドは2つの引数を取り、`name`と`favoriteFood`の両方の値を設定します。`eat`メソッドと`sleep`メソッドは、問題3で作成した`Tiger`クラスとまったく同じになるはずです。

 */
class Animal {
    // ここにインスタンス変数を入力します。

    init(name: String, favoriteFood: String) {
        // ここにイニシャライザコンテンツを入力します。

    }

    func sleep() {
        // ここにsleep関数を完成させます。グローバルからインスタンス変数に変わることに注意してください。

    }

    func eat(food: String) {
        // ここにeat関数を完成させます。

    }
}
/*:

 この`Animal`クラスがどう時間の節約になるのかと思っているのではないですか？ 結局、キリン、ミツバチ、ユニコーン用に3つのクラスを作らなければならないということですよね？

 その通りではありますが、クラスを作成した動物すべてに、いくつか共通の点があるのにお気づきかもしれません。例えば、どの動物にも`name`があり、`favoriteFood`があります。また、関数の具体的な動作は違うかもしれませんが、それぞれに`eat`関数と`sleep`関数が用意されているようです。すべての動物の似ている部分をすべて1つのスーパークラスにまとめて、各動物に特有の部分をその動物のサブクラスに作成したらどうでしょうか？

 これはSwiftのクラスの継承で解決できます。実のところ、クラスは別のクラスから継承(または動作を借用) できます。

 */
class ExampleSuperclass {
    var message: String

    init(message: String) {
        self.message = message
    }

    func doStuff() {
        print("私のメッセージは '\(self.message)'.")
    }

    func sayGoodbye() {
        print("さようなら!")
    }
}

class ExampleSubclass: ExampleSuperclass {
    var mySecretMessage: String

    override init(message: String) {
        self.mySecretMessage = "こんにちは！私はExampleSuperclassのサブクラスです！:D"
        super.init(message: message)
    }

    override func doStuff() {
        super.doStuff()
        print("私の秘密のメッセージは '\(self.mySecretMessage)'!")
    }
}
/*:

 ここでは様々な事がいくつか起きています。最初はサブクラスの定義です。`class ExampleSubclass: ExampleSuperclass`で継承を行います。`ExampleSubclass`は、`ExampleSuperclass`のすべてのインスタンス変数とメソッドを継承してアクセスできるようになります。この例では、`ExampleSubclass`はインスタンス変数`secretMessage`だけでなく、スーパークラスの`message`にもアクセスできます。

 */
let superclassInstance = ExampleSuperclass(message: "やあ、Make Schoolの受講生さん。")
let subclassInstance = ExampleSubclass(message: "やあ、Make School受講生さん。秘密を聞きたいかい？")
/*:

 次は`ExampleSubclass`のイニシャライザの`super.init()`の呼び出しです！ `super`キーワードは継承ツリーを1つ上り、`ExampleSubclass`が`ExampleSuperclass`用に作成されたメソッドにアクセスできるようにしています。ここでスーパークラス イニシャライザを呼び出して、`message`に`"やあ、Make School受講生さん。秘密を聞きたいかい？"」と設定します。

 最後に`override`キーワードです。名前が示す通り、これは同名のスーパークラスのメソッドをオーバーライド(再定義) できます。この場合、`ExampleSuperclass`の`doStuff()`メソッドは`message`の値を出力します。`ExampleSubclass`は`mySecretMessage`の値を出力し、また`super.doStuff()`を呼び出して、`ExampleSuperclass`の既定の動作を実行し、この動作を強化します。イニシャライザをオーバーライドすると、スーパークラスのイニシャライザを同様に継承しますが、この場合はinit関数のどこかで`super.init()`を呼び出す必要があります。

 - callout(試してみましょう！): `doStuff`関数の呼び出しを、下の欄にある`superclassInstance`と`subclassInstance`の両方に追加しましょう。何が出力されると思いますか？

 */




/*:

 素晴らしいですね。他の事も試してみましょう。

 - callout(試してみましょう！): `sayGoodbye`関数の呼び出しを`superclassInstance`に追加しましょう。`subclassInstance`でも`sayGoodbye`を呼び出せると思いますか?出力は同じになるでしょうか？ 下で試してみましょう？

 */




/*:

 - important:`subclassInstance`は`sayGoodbye`を使用できます。`ExampleSubclass`は`ExampleSuperclass`を継承することで、`ExampleSuperclass`のすべてのメソッドを借用するからです！

 # 動物に戻る

 これらの新しいアイデアを動物に実装してみましょう!`Bear`クラスと`Tiger`クラスを`Animal`のサブクラスとなるように修正しましょう。`Tiger`は`Animal`クラスを完全に継承します。つまり、`Tiger`は自動的に`Animal`で定義されている`eat`メソッドと`sleep`メソッドを含むことになります。`Tiger`クラスを完成させるには、name引数を取り、`Animal`イニシャライザに`favoriteFood`の`"肉"`と一緒に渡すイニシャライザ メソッドを作成するだけです。トラは肉食ですからね。:-)

 - callout(ヒント): ExampleSubclass`のように`super`キーワードを使用するのを忘れずに！

 `Bear`クラスも`Animal`クラスを継承し、`Tiger`クラスと同様のイニシャライザを持つようにします。ただし、クマは魚が好きなので`favoriteFood`の値は「"魚"」を使用します。ただし、クマ独特の睡眠行動を記録するために、`sleep`メソッドをオーバーライドして正しいメッセージを出力する必要があります (`sleep`メソッドの出力内容を確認する必要がある場合は問題4を参照してください)。

 */

// 下にTigerとBearのサブクラスを完成させてください。
class Tiger: Animal {

    init(name: String) {
        // superclassのイニシャライザへの呼び出しの修正を忘れないでください！
        super.init(name: "", favoriteFood: "")
    }

}

class Bear: Animal {
    // ここにBearクラスを完成させてください。例としては完成したTigerクラスを使用します。


    // ここでsleep関数をオーバーライドします。
    override func sleep() {
        // ここにBear-specific sleepコードを追加します。

    }
}

/*:

 - callout(ヒント): `Bear`のイニシャライザの実装を忘れずに！

 この`Tiger`クラスと`Bear`クラスは`Animal`クラスを継承したので、問題4とまったく同じ動作をするはずです。それでもコードは全体的に短くなっているのに気づくと思います。これはオブジェクト指向プログラミングで継承を使う利点の1つです。

 ## テスト

 完了したら、下のコード行のコメントを外してコンパイルすると、以前と同じ内容が出力されるはずです。

     Tiggerは肉を食べます
     うまい！！！ Tiggerはもっと肉を欲しがっています
     Poohは魚を食べます
     うまい！！！ Poohはもっと魚を欲しがっています
     Poohは肉を食べます
     Poohは4カ月冬眠します

 */

//let tigger = Tiger(name: "Tigger")
//tigger.eat(food: "肉")
//let pooh = Bear(name: "Pooh")
//pooh.eat(food: "魚")
//pooh.eat(food: "肉")

//: [前へ](@previous) | [次へ](@next)
