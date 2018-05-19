/*:
 ![Make School Banner](./swift_banner.png)
 # クラスの紹介

 あなたの友達で飼育員のZoeは、あなたが作成したコードを見て、役に立つと思いました。問題2であなたが作成したeat関数はトラを完璧に表現しています。Zoeがトラの食事や睡眠パターンを追跡するのに役立つ小さなプログラムを作成しましょう。今度は`Tiger`クラスを作成します!でも最初にクラスやオブジェクトとは何かについて話しましょう。

 クラスは様々な変数や関数を単一のオブジェクトの一部としてカプセル化 (グループとしてまとめる) 主な方法です。クラスは新しいオブジェクトを出力するための設計図となります (オブジェクトについてはすぐ後で取り上げます)！ クラスは次のように宣言します。

 */
class Example {
    var myVariable: String

    init() {
        self.myVariable = "Make Schoolはオブジェクト指向プログラミングを学習します！"
    }

    func myMethod() {
        print("私は型Exampleのオブジェクトであり、Stringインスタンス変数を含んでいます \(self.myVariable)!")
    }
}
/*:

  - important: キーワード`self`は現在のオブジェクトのスコープを指します。イニシャライザ (およびクラス内に作成する関数) 内で、クラスがスコープの変数は`self.myVariable`構文で参照します。これは、この変数が該当するクラスのインスタンスに固有のものであることを示しています。つまり、クラスをインスタント化(インスタンスを作成) した各インスタンスに`myVariable`が存在するという」意味です。

 # どうしましたか？


 上記のコードは`Example`というクラスを作成します。このクラスの内容は次のとおりです。

 - `myVariable`という名前の単一のインスタンス変数
 - 既定のイニシャライザ -- 関数のように見えるが`func`キーワードがない`init`
 - `myVariable`の値を出力する`myMethod`という関数

 
 - important: クラスに属する関数は一般に「メソッド」と呼ばれます。構文は同じですが、これまでに何度か見た「ドット構文」を使って呼び出します。

 # イニシャライザとクラスから新しいオブジェクトの作成

 `Example`クラスを定義したので、これを使って新しいオブジェクトを作成して変数に保存できます!これらのオブジェクトは新しいカスタムデータ型の`Example`に属しています。オブジェクトは生きているデータを表します。プロパティを変更して、プロパティに対して関数を呼び出すことができます。

 新しいオブジェクトを作成するには、クラス名の後に括弧を書きます。これは既定のイニシャライザ(関数のように見える`init()`ブロック) を呼び出します。イニシャライザはクラスに関連付けられているすべての変数の値を設定するために使用します。上を見ると分かるように、`myVariable`に`"Make Schoolはオブジェクト指向プログラミングを学習します！"`を設定します。
 */
/*:
 - important: イニシャライザはオブジェクトのすべての変数を設定しなければなりません。イニシャライザですべて設定しないとエラーが発生します！

 */
let objectCreatedFromExample = Example()
let anotherExampleObject = Example()
/*:

 # Object properties

 オブジェクトのプロパティ(オブジェクトに属する変数) にはドット構文でアクセスできます。

 - note: クラス内で定義された変数をインスタンス変数と呼びます。クラスの特定のインスタンス(またはオブジェクト)に属しているからです。インスタンスとオブジェクトという単語はどちらも同じ意味です！

 */
objectCreatedFromExample.myVariable
anotherExampleObject.myVariable
/*:

 両方のオブジェクトの`myVariable`プロパティに現在`"Make Schoolはオブジェクト指向プログラミングを学習します！"`が格納されています。この1つを変更したらどうなるでしょうか？ 両方とも変更されるでしょうか？ ドット構文と代入演算子 (`=`) を使って通常の変数のように更新します。
 */
/*:
 - important: 上の例では、`myVariable`が`init()`関数またはイニシャライザ内で`"Make Schoolはオブジェクト指向プログラミングを学習します！"`という値に設定されています。`myVariable`は`var`と宣言されているので、各インスタンスについてその値を更新できます！

 */
objectCreatedFromExample.myVariable = "Make Schoolでオブジェクト指向プログラミングを学習するのは素晴らしい！"
objectCreatedFromExample.myVariable
anotherExampleObject.myVariable
/*:

 `objectCreatedFromExample`の`myVariable`を変更しました！ `objectCreatedFromExample`の`myVariable`と`anotherExampleObject`の`myVariable`はまったく異なる値になっています！

 - important: 各オブジェクトはメモリ内に独立して存在します。2つの`String`を作成すると、カスタムクラスから作成したオブジェクトと同様に、異なる値を格納できます。それぞれ独立していて、異なるデータを格納できます！
 */
/*:
 - callout(課題): 各オブジェクト変数に新しい値を代入して、出力します！

 */





/*:

 # メソッド

 クラス内に作成された関数はメソッドと呼ばれます。インスタンス (オブジェクト) に対して、プロパティと同じドット構文を使用して呼び出されます！

 */
objectCreatedFromExample.myMethod()
anotherExampleObject.myMethod()
/*:

 これらのメソッドを呼び出すと下のコンソールにメッセージが出力されます。メソッドは関数ができることをすべてこなせます。これを呼び出すには、インスタンス (オブジェクト) に対するドット構文を使う必要があるだけです。これらはパラメーターを持ち、値を返すことができ、通常の関数構文で定義されます。

 # Passing data into initializers

 また、関数のパラメーターのように引数を取るイニシャライザを用意できます。

 */
class AnotherExample {
    let myVariable: String

    init(value: String) {
        self.myVariable = value
    }
}
/*:

 クラスを次のように初期化できます。

 */
let AnotherExampleObject = AnotherExample(value: "うわ！OOPはかなり強力だ！")
AnotherExampleObject.myVariable
/*:

 `AnotherExample`のその特定のインスタンスの`myVariable`は`"うわ！OOPはかなり強力だ！"`に設定されます。

 - important: イニシャライザに渡されるパラメーターには、既定のパラメーター ラベルが必要です！ これは最初のパラメーター ラベルをスキップする関数とは異なります！ 上の行を見ると、`value`は唯一のパラメーターですが、呼び出す際にラベルが必要です。
 */
/*:
 - note:`AnotherExample`の`myVariable`は`var`ではなく`let`で宣言されています。`Example`のインスタンスのように`AnotherExample`のインスタンスで更新することはできません！
 */
/*:
 # Back to Tigers!

 - callout(課題): 未完成の`Tiger`クラスを下に用意しました。完成させると、このクラスは2つのインスタンス変数を持ちます。`name`と`favoriteFood`(共に`String`型) です。 このクラスには問題1と問題2で作成した関数`eat`メソッドと`sleep`メソッドも含まれます (前のページからコピーできます) が、若干修正が必要です。

    `"<name>は8時間眠ります"`と出力する際、`sleep`メソッドはトラの`name`を引数として取る代わりに`name`インスタンス変数を使用すべきです。 同様に、`eat`メソッドは`name`インスタンス変数を使用すべきですが、`food引数を取るべきです。トラは動物園の飼育員が餌を与えるまでどんな餌を食べるか知らないからです。

    `Tiger`クラスを完成させるにはもう1つのメソッド、イニシャライザを作成する必要があります。これは`name`引数を取り、トラの`name`インスタンス変数を与えられた値に設定します。また、トラは肉が好きなのでイニシャライザは`favoriteFood`インスタンス変数を「"肉"」に設定します。完了したら、新しい`Tiger`インスタンスを初期化して`eat`メソッドを呼び出します！

 */

class Tiger {
    // ここにインスタンス変数を入力します！


    init(name: String) {
        // ここにイニシャライザコンテンツを入力します

    }

    func sleep() {
        // ここにsleep関数を完成させます。グローバルからインスタンス変数に変わることに注意してください。

    }

    func eat(food: String) {
        // ここにeat関数を完成させます。

    }
}

let tigger = Tiger(name: "Tigger")
tigger.eat(food: "meat")
tigger.eat(food: "kibble")

/*:
 ## テスト

 呼び出したら出力をチェックしましょう。次のように出力されるはずです。

    Tiggerは肉を食べます
    うまい！！！Tiggerはもっと肉を欲しがっています
    Tiggerは餌を食べます
    Tiggerは8時間眠ります

 次のセクションで使用するので`Tiger`クラスをコピーしてください。

 */
//: [前へ](@previous) | [次へ](@next)
