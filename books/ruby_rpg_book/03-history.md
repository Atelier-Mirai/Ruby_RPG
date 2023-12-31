---
title: "第三章 コンピュータの仕組み"
free: true
published: true # falseだと下書き
published_at: 2023-12-07 06:00
---

## 12角形の周りの長さ
レッスン三日目。僕はとってもワクワクしている。だって遙香お姉様に会えるんだもの。

お姉様が姿を現す。「こんにちは。未來くん。元気にしてた？」
「もちろん。そして12角形の周りの長さも計算したよ！」

「わ〜 すごいわね。教えて教えて。」

![](https://storage.googleapis.com/zenn-user-upload/02118e11b441-20231207.png)
*正六角形と正十二角形*

「まず、こんなふうに円に内接する正六角形を書くんだ。そうすると $\triangle OAB$は正三角形になる。そしてこの辺$AB$の中点を$M$として、円の中心から真っ直ぐに線を外側に伸ばして、円周にくっついたところを$C$とするね。で、$A$と$C$を線で結ぶと正十二角形の一辺になるんだ。」

「ええ、そうね。続きを聞かせて。」

「うん。じゃあ、この辺$AC$の長さを求めたいのだけれど、ピタゴラスの定理を使うと、$AM^{2}+CM^{2}=AC^{2}$だよね。$AM$の長さは、円の半径の半分だからすぐに分かる。円の半径を2とすると$AM$の長さは1になる。$AM^{2} + OM^{2} = OA^{2}$だから、$1^{2} + OM^{2} = 2^{2}$ だから、$OM$の長さは $\sqrt{\mathstrut 3}$ だよね。」

「ええ、そうね。ピタゴラスの定理も平方根もばっちり掴んでいるわね。素敵よ。次はいよいよ本題の$AC$の長さね。」

「うん。$AC$の長さは、$AC^{2} = AM^{2}+CM^{2}$ という関係で、$OM$の長さが$\sqrt{\mathstrut 3}$ として求められたので、$CM$の長さは、$1 - \sqrt{\mathstrut 3}$ となる。あとは、計算するだけだ。」

$$
\begin{aligned}
AC^{2} &= AM^{2}+CM^{2}\\
       &= 1^{2}+(2-\sqrt{3})^{2}\\
       &= 1 + 4 - 4\sqrt{3} + 3\\
       &= 8 - 4\sqrt{3}\\
       &= 4(2-\sqrt{3})\\

AC     &= 2\sqrt{2-\sqrt{3}}
\end{aligned}
$$

「ということで、ACの長さの12倍を円の直径4で割ると円周率になる、つまりACの長さの三倍が円周率なんだ。」
「ええ、そうね。幾つになるの？」
「ルートの中にルートが入っているんだけれど、ルートも普通の数まず内側から計算していくね。$2-\sqrt{3}$だけれど、\sqrt{3}は、人並みに奢れやだったから、$2 - 1.7320508 = 0.2689592$」となる。
「ええ、そうね。じゃあ、これのルートは？」
「二回かけると $0.2689592$ になる数だから、$0.5$よりは大きい数。$51 \times 51 = 2601, 52 \times 52 = 2704$ だから、真ん中くらいの数$0.515$だとすると、$AC$は、$1.03$くらいになる。だからこれの三倍で円周率は約$3.09$って、求められたよ。」

「ええ、正解よ。凄い。みっくん素敵。」そう言ってお姉さまは僕のことを褒めてくれた。僕はとっても嬉しくて、とっても幸せ。

## 計算機の歴史

「円周率、求めることができたわね。正12角形の周りの長さから求めたけれど、計算するの、結構大変だったでしょう。24角形、48角形そして96角形とどんどん増やしていって、アルキメデスは円周率を求めたわ。今日のようなコンピュータがない時代、計算することはとても大変で、特殊技能として扱われたりするくらいだったわ。」

「アンティキティラ島の機械って知ってる？ 一説にはアルキメデスが作ったと思う呼ばれているんだけれど、たくさんの歯車を組み合わせて、日食や月食の日が求められるようになっていたそうで、正確な暦作りに大活躍したらしいわ。」

「他にも、土木建築や、税の計算等、社会の中では様々な計算が必要となるわ。そのために計算するための便利な道具もいろいろ発明されていたの。一番有名なところとしては、みっくんも小学校の時に習っていた算盤だね。土の上に置いた石を上下に動かすところから計算ができるようにした道具ね。」

「それから、計算尺って知ってるかしら。目盛りが等間隔ではなく、対数間隔で刻まれていて、組み合わせることで掛け算や割り算など読み取ることができるようになっているの。」

「対数ってどういう数のことなの？」

「みっくんは対数ってまだだったわね。対数はそうね〜、簡単に言うと何桁の数かっていうことを示す数のこと。99だったら2桁の数だし、999だったら3桁の数よね。例えば $99$ × $999$ は幾つかしら。 素直に計算すると大変だけれど、ある数が10の何乗かって表すの。$10^{2} \times 10^{3} = 10^{2+3} = 10^5$ のように計算すると、掛け算が足し算に変わるわ。大きな数の計算がとても楽にできるようになって天文学者の寿命が倍に伸びたと言われたわ。オランダの数学者。ネイピアって言う人の発明ね。」

お姉さまの唇が滑らかに動き、そして流れるように言葉が溢れてくる。僕はお姉さまに見惚れている。

「やがてね、近世になって、一般の会社でもたくさんの計算を行うようになった。簿記や経理と呼ばれているお金の計算ね。算盤ができる人がもてはやされたのだけれど、もっと楽に計算したいって思いから登場したのが機械式の手回し計算機。いくつもの歯車を組み合わせて数回ハンドルを回すことで、加減乗除の計算ができるようになったわ。タイガー計算機として、とっても大人気で昭和の半ばまで大活躍していたの。」

「そうなんだー。」

「博物館などに飾ってあったりもするから、機会があったらみてみるといいわ。」

「うん。そして、そのタイガー計算機の後は、どうなったの？」

「その後に登場したのが半導体ね。よく世界最初の電子計算機と言われているENIACは、とても大きな部屋いっぱいにたくさんの真空管を使って作られたものだったの。人間が計算するよりはるかに速く弾道計算をやってのけたそうよ。もちろん円周率も計算したわ。」

「そして、真空管の次に登場したのが半導体。真空管も半導体も、電子の流れを制御するところは同じなのだけれども、数センチメートルの大きさがある真空管に比べては、数ミリメートルととても小さくできたわ。そして電卓戦争ってよく呼ばれるけれども電卓ね。 発売された当初はとても大きくて、車一台ほどもする価格で販売されていたけれども、どんどん小さくなって、カードサイズとなり、数千円と個人でも気軽に変えるものになったわ。 今ではiPhoneなどのアプリとして搭載されているわね。」

「そして、電卓が普及したのと同様に、大型コンピュータとして、研究所や大企業にしかなかった電子計算機だけれども、こちらもどんどん小型化と高性能化が進み、今みっくんの手元にある **MacBook Air**になっているわ。」

と、立て板に水との表現があるけれども、まさにその通りで、お姉さまは古代ギリシャから始まる計算機の歴史を僕に語ってくれた。

## コンピュータの仕組み

「じゃぁ、手元にある **MacBook Air** の中を見ていこう。中身はどんなふうになってると思う？」
「画面があって、キーボードがあるけれど、中身はどうなっているのかな〜。こんなに薄いけれど何がはいっているんだろう？」
「そうだね。画面があってキーボードがあるね。じゃあ、まずコンピュータはどういう機械だった？」
「とても速く計算が行える機械」
「そのとおり。だから計算するための装置「中央演算装置」が内蔵されているわ。演算を行うのはもちろんだけれど、他の装置の制御なども行うコンピュータの中枢ね。CPUとも呼ばれていて、人に例えると、ちょうど頭に相当する部分だね。」と、お姉様が分かりやすく語りかけてくれる。

「みっくんがいろいろ宿題をやったりするような時は思い浮かべてほしいんだけれど、そうすると頭の他には何が必要かな。」

「紙と鉛筆。」
「うん、そうだね。頭の中でいろいろ考えたことを書き出して記録しておくために紙と鉛筆が必要だものね。そして、紙と鉛筆を載せてあるものは何かな。」
「あっ！机。」
「ええ、そう。机が必要だわ。大きな机があるとたくさんの本を広げて紙を広げてサクサクできるわよね。コンピュータもそれと一緒で、メモリって呼ばれる装置が内蔵されているわ。メモリは、その名前の通り記憶するという意味なんだけれども、CPUが使うためのいろんなデータを記憶しておいて、CPUから求められる都度、データを渡したり、演算結果を書き込んだりしているわ。」

「そうなんだ〜。」

「そしてこのメモリなんだけれど、電源が付いている間は記憶されているけれど、オフにしたら消えてしまう。」

「消えてしまうと、困るなぁ〜。」
「そうね。困るわよね。だからちょうど本棚にしまっておくように、コンピュータの中にもストレージといって、永続的にデータを蓄えておける記憶しておける装置が用意されているの。 様々なアプリもそうだし、みっくんが作ったプログラムも、このストレージに保存されることになるわ。」

「頭に相当するCPU、メモリは机で、ストレージは本棚、そして入力するためのキーボードと結果を表示するための画面。これらからコンピュータは成り立っているわ。」

今日もゆっくり日が沈んでいく。空は夕焼けに赤く染まっている。慈愛の光だ。僕はお姉さまを見送る。長い髪がはらりと染まる。振り向き様、またねと手を振る。次はどんなお話を聞かせてくれるのだろう。僕はそう夢を見る。頭のてっぺんから爪先まで今日学んだ知識が知恵が染み渡っていく。

未來のMPが1上がった!!
