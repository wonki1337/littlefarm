{"filter":false,"title":"application.js","tooltip":"/app/javascript/packs/application.js","undoManager":{"mark":7,"position":7,"stack":[[{"start":{"row":18,"column":18},"end":{"row":18,"column":20},"action":"insert","lines":["  "],"id":15}],[{"start":{"row":18,"column":19},"end":{"row":18,"column":20},"action":"remove","lines":[" "],"id":16},{"start":{"row":18,"column":18},"end":{"row":18,"column":19},"action":"remove","lines":[" "]}],[{"start":{"row":18,"column":0},"end":{"row":18,"column":19},"action":"remove","lines":["import 'summernote'"],"id":17},{"start":{"row":18,"column":0},"end":{"row":18,"column":1},"action":"insert","lines":["/"]},{"start":{"row":18,"column":1},"end":{"row":18,"column":2},"action":"insert","lines":["/"]},{"start":{"row":18,"column":2},"end":{"row":18,"column":3},"action":"insert","lines":["="]}],[{"start":{"row":18,"column":3},"end":{"row":18,"column":4},"action":"insert","lines":["r"],"id":18},{"start":{"row":18,"column":4},"end":{"row":18,"column":5},"action":"insert","lines":["e"]},{"start":{"row":18,"column":5},"end":{"row":18,"column":6},"action":"insert","lines":["q"]},{"start":{"row":18,"column":6},"end":{"row":18,"column":7},"action":"insert","lines":["u"]},{"start":{"row":18,"column":7},"end":{"row":18,"column":8},"action":"insert","lines":["i"]},{"start":{"row":18,"column":8},"end":{"row":18,"column":9},"action":"insert","lines":["r"]},{"start":{"row":18,"column":9},"end":{"row":18,"column":10},"action":"insert","lines":["e"]}],[{"start":{"row":18,"column":10},"end":{"row":18,"column":11},"action":"insert","lines":[" "],"id":19}],[{"start":{"row":17,"column":0},"end":{"row":18,"column":11},"action":"remove","lines":["","//=require "],"id":20}],[{"start":{"row":17,"column":0},"end":{"row":18,"column":0},"action":"insert","lines":["",""],"id":21},{"start":{"row":18,"column":0},"end":{"row":19,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":19,"column":0},"end":{"row":39,"column":7},"action":"insert","lines":["   var tag = document.createElement('script');","      tag.src = \"https://www.youtube.com/player_api\";","      var firstScriptTag = document.getElementsByTagName('script')[0];","      firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);"," ","      // 3. This function creates an <iframe> (and YouTube player)","      //    after the API code downloads.","      var player;","      function onYouTubePlayerAPIReady() {","        player = new YT.Player('player', {","          playerVars: { 'autoplay': 1, 'controls': 1,'autohide':1,'wmode':'opaque' },","          videoId: 'JW5meKfy3fY',","          events: {","            'onReady': onPlayerReady}","        });","      }"," ","      // 4. The API will call this function when the video player is ready.","      function onPlayerReady(event) {","        event.target.mute();","      }"],"id":22}]]},"ace":{"folds":[],"scrolltop":263.5,"scrollleft":0,"selection":{"start":{"row":39,"column":7},"end":{"row":39,"column":7},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":51,"mode":"ace/mode/javascript"}},"timestamp":1590231992980,"hash":"e94e621e88e79368cd1e72796b189c5e4f5a7d27"}