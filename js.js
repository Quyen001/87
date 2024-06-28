var app = new Vue({
  el: '#app',
  data() {
    var _0x45a1ca = {}
    return (
      (_0x45a1ca.value = '0%'),
      (_0x45a1ca.label = '0%'),
      {
        password: localStorage.getItem('savedPassword') || '',
        correctPassword: 'cc',
        isPasswordCorrect: true,
        linkToCopy: 'https://megalink.pro/GgF',
        maxAttempts: 99999993,
        currentAttempt: 0,
        ifshow: true,
        checked: false,
        radio: '1',
        activeSelect: '',
        selectOption: [
          _0x45a1ca,
          {
            value: '50%',
            label: '50%',
          },
          {
            value: '100%',
            label: '100%',
          },
        ],
        input: '',
        showOption1: false,
        showOption: false,
        showOption2: false,
        tabValue: 'one',
      }
    )
  },
  mounted() {
    this.setRect(360, 320)
    var _0x29dc2c = window.screen.width,
      _0x405982 = window.screen.height
    window.screen.availWidth > window.screen.availHeight &&
      ((_0x29dc2c = window.screen.height), (_0x405982 = window.screen.width))
    setWindowRect(0, 0, _0x29dc2c, _0x405982)
    setButtonAction(function () {
      var _0x54e8e9 = document.querySelector('#app')
      _0x54e8e9.style.display == 'none'
        ? ((_0x54e8e9.style.display = 'block'), setWindowTouch(true))
        : ((_0x54e8e9.style.display = 'none'), setWindowTouch(false))
    })
  },
  methods: {
    setRect(_0x4b0736, _0x5a8d0f, _0x3019da = -1, _0x3905d5 = -1) {
      var _0x1bf3a9 = _0x4b0736,
        _0x4ca7af = _0x5a8d0f,
        _0x33572b = this['$refs'].menuMain
      _0x33572b.style.width = _0x1bf3a9 + 'px'
      _0x33572b.style.height = _0x4ca7af + 'px'
      if (_0x3019da == -1) {
        _0x33572b.style.left = 'calc(50% - ' + _0x1bf3a9 / 2 + 'px)'
      }
      if (_0x3905d5 == -1) {
        _0x33572b.style.top = 'calc(50% - ' + _0x4ca7af / 2 + 'px)'
      }
    },
    titleTouchStart(_0x2b54c7) {
      this.touchStartX = parseInt(_0x2b54c7.touches[0].clientX)
      this.touchStartY = parseInt(_0x2b54c7.touches[0].clientY)
      var _0x5c87fd = this['$refs'].menuMain
      this.menuLastX = _0x5c87fd.offsetLeft
      this.menuLastY = _0x5c87fd.offsetTop
    },
    titleTouchMove(_0x3f4d96) {
      _0x3f4d96.preventDefault()
      var _0x1ae9e5 = _0x3f4d96.touches[0].clientX - this.touchStartX,
        _0x5830c6 = _0x3f4d96.touches[0].clientY - this.touchStartY,
        _0x59783a = this['$refs'].menuMain
      _0x59783a.style.left = this.menuLastX + _0x1ae9e5 + 'px'
      _0x59783a.style.top = this.menuLastY + _0x5830c6 + 'px'
    },
    checkPassword() {
      this.password === this.correctPassword
        ? ((this.isPasswordCorrect = true),
          localStorage.setItem('savedPassword', this.password),
          (this.password = ''))
        : (alert(
            'Bạn đã nhập sai pass hoặc pass đã được thay đổi, Hãy bấm get key để lấy Pass mới!'
          ),
          this.currentAttempt++)
    },
    copyLink() {
      var _0x535208 = document.createElement('input')
      _0x535208.value = this.linkToCopy
      document.body.appendChild(_0x535208)
      _0x535208.select()
      document.execCommand('copy')
      document.body.removeChild(_0x535208)
      alert('Link đã được sao chép, Dán qua Safari vượt để lấy Pass !')
    },
    changeTab(_0xa61b33) {
      this.tabValue = _0xa61b33
    },
    closeimgui() {
      var _0x1a7207 = document.querySelector('#app')
      _0x1a7207.style.display = 'none'
    },
  },
})
function AimCope() {
  function _0x350dd7(_0x26bad6, _0x5dbd7c, _0x5ca35f) {
    h5gg.clearResults()
    h5gg.searchNumber(_0x26bad6, _0x5ca35f, '0x100000000', '0x160000000')
    var _0x5760ac = h5gg.getResults(h5gg.getResultsCount())
    for (var _0x235f9a = 0; _0x235f9a < _0x5760ac.length; _0x235f9a++) {
      h5gg.setValue(
        _0x5760ac[_0x235f9a].address,
        _0x5dbd7c.toString(),
        _0x5ca35f
      )
    }
  }
  _0x350dd7(0.09, 180, 'F32')
}
function Norecoil() {
  function _0x521bba(_0x15aa06, _0x1781d8, _0x2e6fff) {
    h5gg.clearResults()
    h5gg.searchNumber(_0x15aa06, _0x2e6fff, '0x100000000', '0x160000000')
    var _0x5ae8ce = h5gg.getResults(h5gg.getResultsCount())
    for (var _0x4419a2 = 0; _0x4419a2 < _0x5ae8ce.length; _0x4419a2++) {
      h5gg.setValue(
        _0x5ae8ce[_0x4419a2].address,
        _0x1781d8.toString(),
        _0x2e6fff
      )
    }
  }
  _0x521bba(1016018816, 6018816, 'I32')
}
function hsCu() {
  function _0x503076(_0x8cf0cc, _0x1064db, _0x19cab7) {
    h5gg.clearResults()
    h5gg.searchNumber(_0x8cf0cc, _0x19cab7, '0x100000000', '0x160000000')
    var _0x19044e = h5gg.getResults(h5gg.getResultsCount()),
      _0x53801b = 0
    for (
      var _0x633764 = 0;
      _0x633764 < _0x19044e.length && _0x53801b < 30;
      _0x633764++
    ) {
      var _0x42761a = _0x19044e[_0x633764].address
        .toString(16)
        .slice(-3)
        .toUpperCase()
      _0x42761a !== 'E50' &&
        _0x42761a !== 'E00' &&
        _0x42761a !== 'FE0' &&
        (h5gg.setValue(
          _0x19044e[_0x633764].address,
          _0x1064db.toString(),
          _0x19cab7
        ),
        _0x53801b++)
    }
  }
  _0x503076(96688289, 2018908708, 'I32')
}
function Xoahaot() {
  function _0x1d4090(_0x48b32e, _0x14109a, _0x4d66b2) {
    h5gg.clearResults()
    h5gg.searchNumber(_0x48b32e, _0x4d66b2, '0x100000000', '0x160000000')
    var _0x1f86b8 = h5gg.getResults(h5gg.getResultsCount())
    for (
      var _0xa5f20a = 0;
      _0xa5f20a < _0x1f86b8.length && _0xa5f20a < 10;
      _0xa5f20a++
    ) {
      h5gg.setValue(
        _0x1f86b8[_0xa5f20a].address,
        _0x14109a.toString(),
        _0x4d66b2
      )
    }
  }
  _0x1d4090(3145840, 49, 'I32')
}
var Buoc1 = 1053273620,
  Buoc2 = 1054951342,
  Buoc3 = 1057048494,
  Buoc4 = 1069547520,
  Buoc5 = 1092616192,
  Chao = 909000005,
  khieukhich = 909000003,
  Votay = 909000004,
  Xm8 = 909000085,
  camco = 909000034,
  Akrongxanh = 909000063,
  scarcamap = 909000068,
  mp40maxa = 909000075,
  m1014longtoc = 909000081,
  daxoa = 909000090,
  UMP = 909000098,
  mp40sacmau = 909040010,
  mp5anhsang = 909033002,
  m1887aothuat = 909035007,
  m4a1 = 909033001,
  an94 = 909035012,
  namdam = 909037011,
  lucchinhphuc = 909038012,
  thomson = 909038010,
  m1014huyet = 909039011,
  muakatana = 909044015,
  glora = 909041005,
  gokien = 909042008,
  lv100 = 909042007,
  hopthe = 909044005,
  ngoisanh = 909043002,
  cuoiech = 909043001,
  cuoiboncau = 909043003,
  CaothuSt = 909041012,
  CaothuTc = 909041013,
  racingboy = 909043009
function modifyValue(_0x9019f, _0x2a61ee, _0xe04e47, _0x1e7e5e, _0x466728) {
  h5gg.clearResults()
  h5gg.searchNumber(_0x9019f, 'I32', '0x100000000', '0x160000000')
  const _0x1ae617 = h5gg.getResults(h5gg.getResultsCount())
  let _0x57779d = 0
  _0x1ae617.forEach((_0x405291) => {
    if (
      _0x405291.address.endsWith(_0xe04e47) ||
      _0x405291.address.endsWith(_0x1e7e5e)
    ) {
      h5gg.setValue(_0x405291.address, _0x2a61ee.toString(), 'I32')
      _0x57779d++
      if (_0x9019f === Chao) {
        Chao = _0x2a61ee
      }
      if (_0x9019f === Votay) {
        Votay = _0x2a61ee
      }
      if (_0x9019f === khieukhich) {
        khieukhich = _0x2a61ee
      }
      if (_0x9019f === Buoc1) {
        Buoc1 = _0x2a61ee
      }
      if (_0x9019f === Buoc2) {
        Buoc2 = _0x2a61ee
      }
      if (_0x9019f === Buoc3) {
        Buoc3 = _0x2a61ee
      }
    }
  })
  if (_0x57779d > 0) {
    if (_0x466728) {
      alert(_0x466728)
    }
  } else {
    _0x466728 && alert('Không tìm thấy kết quả phù hợp để thay đổi.')
  }
}
function Aim180() {
  modifyValue(Buoc1, -2000, 'A44')
  modifyValue(Buoc2, -2000, 'A3C')
  modifyValue(Buoc3, -2000, 'A30', 'A38')
}
function Nhetam() {
  modifyValue(Buoc4, 1065990102, 'A10')
  modifyValue(Buoc5, 1069547520, 'A6C')
}
function lever() {
  modifyValue(Votay, lv100, '')
}
function hopthelv() {
  modifyValue(Votay, hopthe, '')
}
function ngoi() {
  modifyValue(Votay, ngoisanh, '')
}
function xm8lv7() {
  modifyValue(Votay, Xm8, '')
}
function upmlv7() {
  modifyValue(Votay, UMP, '')
}
function camcolv7() {
  modifyValue(Votay, camco, '')
}
function aklv7() {
  modifyValue(Votay, Akrongxanh, '')
}
function scarlv7() {
  modifyValue(Votay, scarcamap, '')
}
function mp40mxlv7() {
  modifyValue(Votay, mp40maxa, '')
}
function m1014ltlv7() {
  modifyValue(Votay, m1014longtoc, '')
}
function famalv7() {
  modifyValue(Votay, daxoa, '')
}
function mp40smlv7() {
  modifyValue(Votay, mp40sacmau, '')
}
function mp5lv7() {
  modifyValue(Votay, mp5anhsang, '')
}
function m1014hlv7() {
  modifyValue(Votay, m1014huyet, '')
}
function m1887lv7() {
  modifyValue(Votay, m1887aothuat, '')
}
function gokienlv7() {
  modifyValue(Votay, gokien, '')
}
function thomsonlv7() {
  modifyValue(Votay, thomson, '')
}
function gloralv7() {
  modifyValue(Votay, glora, '')
}
function an94lv7() {
  modifyValue(Votay, an94, '')
}
function m4a1lv7() {
  modifyValue(Votay, m4a1, '')
}
function namdamlv7() {
  modifyValue(Votay, namdam, '')
}
function luclv7() {
  modifyValue(Votay, lucchinhphuc, '')
}
function katalv7() {
  modifyValue(Votay, muakatana, '')
}
function caothust7() {
  modifyValue(Votay, CaothuSt, '')
}
function caothutc7() {
  modifyValue(Votay, CaothuTc, '')
}
function cuoiEch7() {
  modifyValue(Votay, cuoiech, '')
}
function cuoiBC7() {
  modifyValue(Votay, cuoiboncau, '')
}
function Racingboy7() {
  modifyValue(Votay, racingboy, '')
}
function caothustC() {
  modifyValue(khieukhich, CaothuSt, '')
}
function caothutcC() {
  modifyValue(khieukhich, CaothuTc, '')
}
function cuoiEchC() {
  modifyValue(khieukhich, cuoiech, '')
}
function cuoiBCC() {
  modifyValue(khieukhich, cuoiboncau, '')
}
function RacingboyC() {
  modifyValue(khieukhich, racingboy, '')
}
function leverC() {
  modifyValue(khieukhich, lv100, '')
}
function hopthelvC() {
  modifyValue(khieukhich, hopthe, '')
}
function ngoiC() {
  modifyValue(khieukhich, ngoisanh, '')
}
function xm8lv7C() {
  modifyValue(khieukhich, Xm8, '')
}
function upmlv7C() {
  modifyValue(khieukhich, UMP, '')
}
function camcolv7C() {
  modifyValue(khieukhich, camco, '')
}
function aklv7C() {
  modifyValue(khieukhich, Akrongxanh, '')
}
function scarlv7C() {
  modifyValue(khieukhich, scarcamap, '')
}
function mp40mxlv7C() {
  modifyValue(khieukhich, mp40maxa, '')
}
function m1014ltlv7C() {
  modifyValue(khieukhich, m1014longtoc, '')
}
function famalv7C() {
  modifyValue(khieukhich, daxoa, '')
}
function mp40smlv7C() {
  modifyValue(khieukhich, mp40sacmau, '')
}
function mp5lv7C() {
  modifyValue(khieukhich, mp5anhsang, '')
}
function m1014hlv7C() {
  modifyValue(khieukhich, m1014huyet, '')
}
function m1887lv7C() {
  modifyValue(khieukhich, m1887aothuat, '')
}
function gokienlv7C() {
  modifyValue(khieukhich, gokien, '')
}
function thomsonlv7C() {
  modifyValue(khieukhich, thomson, '')
}
function gloralv7C() {
  modifyValue(khieukhich, glora, '')
}
function an94lv7C() {
  modifyValue(khieukhich, an94, '')
}
function m4a1lv7C() {
  modifyValue(khieukhich, m4a1, '')
}
function namdamlv7C() {
  modifyValue(khieukhich, namdam, '')
}
function luclv7C() {
  modifyValue(khieukhich, lucchinhphuc, '')
}
function katalv7C() {
  modifyValue(khieukhich, muakatana, '')
}
function caothustB() {
  modifyValue(Chao, CaothuSt, '')
}
function caothutcB() {
  modifyValue(Chao, CaothuTc, '')
}
function cuoiEchN() {
  modifyValue(Chao, cuoiech, '')
}
function cuoiBCB() {
  modifyValue(Chao, cuoiboncau, '')
}
function RacingboyB() {
  modifyValue(Chao, racingboy, '')
}
function leverB() {
  modifyValue(Chao, lv100, '')
}
function hopthelvB() {
  modifyValue(Chao, hopthe, '')
}
function ngoiB() {
  modifyValue(Chao, ngoisanh, '')
}
function xm8lv7B() {
  modifyValue(Chao, Xm8, '')
}
function upmlv7B() {
  modifyValue(Chao, UMP, '')
}
function camcolv7B() {
  modifyValue(Chao, camco, '')
}
function aklv7B() {
  modifyValue(Chao, Akrongxanh, '')
}
function scarlv7B() {
  modifyValue(Chao, scarcamap, '')
}
function mp40mxlv7B() {
  modifyValue(Chao, mp40maxa, '')
}
function m1014ltlv7B() {
  modifyValue(Chao, m1014longtoc, '')
}
function famalv7B() {
  modifyValue(Chao, daxoa, '')
}
function mp40smlv7B() {
  modifyValue(Chao, mp40sacmau, '')
}
function mp5lv7B() {
  modifyValue(Chao, mp5anhsang, '')
}
function m1014hlv7B() {
  modifyValue(Chao, m1014huyet, '')
}
function m1887lv7B() {
  modifyValue(Chao, m1887aothuat, '')
}
function gokienlv7B() {
  modifyValue(Chao, gokien, '')
}
function thomsonlv7B() {
  modifyValue(Chao, thomson, '')
}
function gloralv7B() {
  modifyValue(Chao, glora, '')
}
function an94lv7B() {
  modifyValue(Chao, an94, '')
}
function m4a1lv7B() {
  modifyValue(Chao, m4a1, '')
}
function namdamlv7B() {
  modifyValue(Chao, namdam, '')
}
function luclv7B() {
  modifyValue(Chao, lucchinhphuc, '')
}
function katalv7B() {
  modifyValue(Chao, muakatana, '')
}
