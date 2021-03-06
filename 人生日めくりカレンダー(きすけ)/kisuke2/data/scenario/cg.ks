;=========================================
; CG モード　画面作成
;=========================================

@layopt layer=message0 visible=false

@clearfix
[hidemenubutton]
[cm]

[bg storage="cgbg.png" time=100]
[layopt layer=1 visible=true]
[ptext layer=1 page=fore text="CGモード" x=20 y=20 size=26 color=0xA8401C visible=true]

[iscript]
    
    tf.page = 0;
    tf.selected_cg_image = ""; //選択されたCGを一時的に保管
    
[endscript]



*cgpage
[cm]
[button graphic="back_title.gif" target="*backtitle" x=800 y=20 ]

[iscript]
    tf.tmp_index = 0;
    tf.cg_index = 12 * tf.page;
    tf.top = 100;
    tf.left = 60;
    
[endscript]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*cgview
@jump target=&tf.target_page

*page_0
[cg_image_button graphic="toile.jpg" no_graphic="noise.jpg" x=60 y=100 width=160 height=140 folder="bgimage" ]
[cg_image_button graphic="entrance.jpg" no_graphic="noise.jpg" x=250 y=100 width=160 height=140 folder="bgimage" ]

@jump target="*common"

*common


*endpage



[s]

*backtitle
[cm]
[freeimage layer=1]
@jump storage=title.ks

*nextpage
[emb exp="tf.page++;"]
@jump target="*cgpage"


*backpage
[emb exp="tf.page--;"]
@jump target="*cgpage"

*clickcg
[cm]

[image storage=&tf.selected_cg_image folder="bgimage"  ]
[l]
[bg storage="cgbg.png" time=10]
@jump  target=*cgpage
[s]

*no_image

@jump  target=*cgpage



