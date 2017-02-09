
      // 引数で渡した範囲内のランダムな整数を生成するための関数
      var getRandomInt = function(min, max) {
           return Math.floor(Math.random() * (max - min + 1)) + min;
           };  
   
      // 要素の取得
      var $container = $('#container'),
          $wordList = $('#content').find('li'),
          containerWidth = $container.width(),
          containerHeight = $container.height();

      console.log(containerWidth, containerHeight) //960px,500vh
      // console.log($container.length)
      // liそれぞれをランダムに配置
      $.map($wordList, function(item, index) {
        var $item = $(item), // wordListのcontent要素が1番目から順に入ってきます
        topPos = getRandomInt(0, containerHeight), // 0〜500の間でtopの座標を取得
        leftPos = getRandomInt(0, containerWidth); // 0〜960の間でleft の座標を取得


      // 取得したランダム座標を設定
      $items.css({
        top: topPos,
        left: leftPos
        });
      });

