module.exports = {
  config: {
    fontSize: 14,
    fontFamily: 'Menlo for Powerline, Fira Code, monospace',
    fontWeight: 'normal',
    fontWeightBold: 'bold',

    cursorColor: '#979CAC',
    cursorShape: 'BEAM',
    cursorBlink: true,
    cursorAccentColor: '#000',

    // color of the text
    foregroundColor: '#979CAC',

    // terminal background color
    // opacity is only supported on macOS
    backgroundColor: '#2C2F39', // #20232C with 20% blur

    // terminal selection color
    selectionColor: 'rgba(248,28,229,0.3)',

    // border color (window, tabs)
    borderColor: '#2C2F39',

    // custom CSS to embed in the main window
    css: '',

    // custom CSS to embed in the terminal window
    termCSS: '',

    // if you're using a Linux setup which show native menus, set to false
    // default: `true` on Linux, `true` on Windows, ignored on macOS
    showHamburgerMenu: '',

    // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
    showWindowControls: 'left',

    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black             : '#000000',
      red               : '#AF4B57',
      green             : '#93B279',
      yellow            : '#E5C079',
      blue              : '#7D90A4',
      magenta           : '#A4799D',
      cyan              : '#85A6A5',
      white             : '#BFBFBF',
      lightBlack        : '#666666',
      lightRed          : '#AF4B57',
      lightGreen        : '#00D900',
      lightYellow       : '#E5E500',
      lightBlue         : '#0000FF',
      lightMagenta      : '#CAA6EC',
      lightCyan         : '#00E5E5',
      lightWhite        : '#E5E5E5'
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    shell: '',

    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to `false` for no bell
    bell: 'SOUND',

    // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,
  },

  plugins: [
     'hyperlinks',
     'hyperterm-paste'
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },
};