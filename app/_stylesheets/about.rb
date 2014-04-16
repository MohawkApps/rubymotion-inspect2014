Teacup::Stylesheet.new(:about) do
  import :fonts

  style :root,
    backgroundColor: UIColor.whiteColor

  style :scroll,
    frame: :full,
    alwaysBounceVertical: true

  style :content,
    frame: :full

  rm_image = 'logo-rubymotion'.uiimage

  style :rubymotion,
    constraints: [constrain_top(20), :center_x, constrain_size(rm_image.size.width, rm_image.size.height)],
    image: rm_image

  style :title, extends: :font_inspect,
    constraints: [:full_width, constrain_below(:rubymotion, 10), :center_x, constrain_height(30)],
    textAlignment: NSTextAlignmentCenter,
    numberOfLines: 1,
    text: '#inspect 2014'

  style :about, extends: :font_about,
    constraints: [constrain_width(Device.screen.width - 40), constrain_below(:title, 10), :center_x, constrain_height(180)],
    textAlignment: NSTextAlignmentCenter,
    numberOfLines: 0,
    text: "A RubyMotion Conference\nwww.rubymotion.com\n\nOrganized by HipByte & InfiniteRed\ninfo@hipbyte.com\n\nWith the help of:\nMark Rickert, Gant Laborde\n\nCopyright © HipByte SPRL 2012-2014"

  tw_image = 'twitter-about'.uiimage

  style :twitter,
    constraints: [
      :center_x,
      constrain_size(tw_image.size.width, tw_image.size.height),
      constrain_below(:about, 5),
    ],
    image: tw_image

  style :twitter_title, extends: :font_sans_15,
    constraints: [:full_width, constrain_below(:twitter, 5), :center_x, constrain_height(18)],
    textAlignment: NSTextAlignmentCenter,
    numberOfLines: 1,
    text: 'FOLLOW US'

  style :line,
    constraints: [constrain_below(:twitter_title, 20), constrain_size(220, 1), :center_x],
    backgroundColor: Settings.grey_color

  style :made_by, extends: :font_sans_10,
    backgroundColor: UIColor.whiteColor,
    constraints: [constrain_below(:twitter_title, 17), constrain_size(60, 10), :center_x],
    textAlignment: NSTextAlignmentCenter,
    numberOfLines: 1,
    text: 'MADE BY'

  mohawk_image = 'logo_mohawkapps'.uiimage
  iconoclast_image = 'logo_iconoclast'.uiimage

  style :made_by_icons,
    constraints: [
      :center_x,
      constrain_below(:line, 20),
      constrain_size(160, mohawk_image.size.height)
    ]

  style :mohawk,
    constraints: [
      :top,
      :left,
      constrain_size(mohawk_image.size.width, mohawk_image.size.height),
    ],
    image: mohawk_image

  style :iconoclast,
    constraints: [
      :top,
      :right,
      constrain_size(iconoclast_image.size.width, iconoclast_image.size.height),
    ],
    image: iconoclast_image

end
