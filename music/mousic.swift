import Foundation

struct Prince {
    let name: String  //音樂名子
    let image: String //照片名字
    let url : String  //音樂連結
}
let princes: [Prince] = {
    var princes = [Prince]()
    for i in 1...4 {
        let prince = Prince(name:"好不容易",image:"1",url:"https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/66/99/d7/6699d7c1-fece-858d-4194-8c7a2846950d/mzaf_10985157936477192288.plus.aac.p.m4a")
        princes.append(prince)
        let prince1 = Prince(name: "唯一", image: "2",url: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/11/63/21/1163219a-8c15-2910-50e7-3b9ff2714585/mzaf_7624788738125138911.plus.aac.p.m4a")
        princes.append(prince1)
        let prince2 = Prince(name: "帶我去找夜生活", image: "3",url: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/f1/44/be/f144bea3-b30c-6be0-0d12-a91001bbc31a/mzaf_11974403910445256670.plus.aac.p.m4a")
        princes.append(prince2)
        let prince3 =  Prince(name: "愛人錯過", image: "4",url: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/35/aa/ae/35aaae55-b317-740d-0145-597ec205a806/mzaf_6471693933579497032.plus.aac.p.m4a")
        princes.append(prince3)
    }
    return princes
}()


