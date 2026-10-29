class DataInfo{
  final String? group;
  final int position;
  final String? name;
  final String? iconImage;
  final String? description;
  final List<String>? images;

  DataInfo(
      this.position, {
      this.group,
      this.name,
      this.iconImage,
      this.description,
      this.images
      });
}

//List Group - BTS
List<DataInfo> data_bts =[
  DataInfo(1,
    group: 'BTS',
    name: 'RM',
    iconImage: 'assets/rm_icon.png',
    description: 'Kim Nam-joon, better known by his stage name RM, formerly known as Rap Monster and Runch Randa is a South Korean rapper-songwriter and record producer under Big Hit Music. He is a member of the boy group BTS, and has the positions of leader and rapper.',
    images: ['https://i.pinimg.com/564x/e1/a2/b6/e1a2b62831e227e86ce2b489fdcf3a7e.jpg',
             'https://i.pinimg.com/564x/0d/0a/ae/0d0aae9eb46151e0e5c0621bdfef9f90.jpg',
              'https://i.pinimg.com/564x/18/59/9f/18599fa5b24169c82a0d6dfe51c4c651.jpg',
              'https://i.pinimg.com/564x/50/28/94/502894d08f107c95cb1cf10cb6d1efdd.jpg',
              'https://i.pinimg.com/564x/66/cb/3b/66cb3b11c48c7b99c173bc629fc7af80.jpg',
              'https://i.pinimg.com/564x/05/91/71/0591711e1a442d4ef06ae602a526728a.jpg']
  ),
  DataInfo(2,
      group: 'BTS',
      name: 'Jin',
      iconImage: 'assets/jin_icon.png',
      description: 'Kim Seok-jin, better known by the mononym Jin, is a South Korean singer-songwriter and record producer under Big Hit Music. He is a member in the boy group BTS, and has the positions of vocalist and visual.',
      images: ['https://i.pinimg.com/564x/1d/45/68/1d45687989a02d1c93bb4794d77bdb3a.jpg',
              'https://i.pinimg.com/564x/78/38/73/7838730297c97e7e566a4f9dfd7c5471.jpg',
              'https://i.pinimg.com/564x/a7/4b/f3/a74bf32ff616dfc44674c3d4235367dc.jpg',
              'https://i.pinimg.com/564x/5c/e4/9b/5ce49bad0130048504d02cd9b956f404.jpg',
              'https://i.pinimg.com/564x/6d/7a/fd/6d7afd95448bc337e0903364fc8ef98f.jpg']
  ),
  DataInfo(3,
      group: 'BTS',
      name: 'Suga',
      iconImage: 'assets/suga_icon.png',
      description: 'Min Yoon-gi, better known by his stage names SUGA and Agust D is a South Korean rapper-songwriter and record producer under Big Hit Music. He is member of the boy group BTS, and has the position of rapper.',
      images: ['https://i.pinimg.com/564x/79/48/bc/7948bc3b1a408cc3df7b64575195e91d.jpg',
              'https://i.pinimg.com/564x/44/f9/27/44f9275ae1e557924093bbd3c61d8bca.jpg',
              'https://i.pinimg.com/564x/cf/f4/82/cff482b6fb6fb636e9a9d19fecad8beb.jpg',
              'https://i.pinimg.com/564x/0e/ca/d0/0ecad095aaa4eee0c9d02f47edad47ff.jpg',
              'https://i.pinimg.com/564x/73/89/f7/7389f7bf1c6306f7d377d9c8e2a614f9.jpg']
  ),
  DataInfo(4,
      group: 'BTS',
      name: 'J-Hope',
      iconImage: 'assets/hope_icon.png',
      description: 'Jung Ho-seok, better known by his stage name j-hope, is a South Korean rapper-songwriter and record producer under Big Hit Music. He is a member in the boy group BTS, and has the positions of rapper and dancer.',
      images: ['https://i.pinimg.com/564x/83/6e/6a/836e6a4dfdbcb7b290832b55929cf1f8.jpg',
              'https://i.pinimg.com/564x/65/5b/05/655b0531fba88efbd4711c977fb6e152.jpg',
              'https://i.pinimg.com/564x/46/de/39/46de39fbe0eb0490d6039f35534966f4.jpg',
              'https://i.pinimg.com/564x/06/a5/60/06a560e73373601560980a11f3c9ffd1.jpg',
              'https://i.pinimg.com/564x/15/46/db/1546db3545f40e37e7d8378dd1eb42a4.jpg']
  ),
  DataInfo(5,
      group: 'BTS',
      name: 'Jimin',
      iconImage: 'assets/jimin_icon.png',
      description: 'Park Jimin, better known by the mononym Jimin Park, is a South Korean singer-songwriter and record producer under UBig Hit Music. He is a member in the boy group BTS, and has the positions of vocalist and dancer.',
      images: ['https://i.pinimg.com/564x/9d/10/a4/9d10a4721a4fb1d31ec0b3cd6834007d.jpg',
              'https://i.pinimg.com/564x/ed/ce/56/edce56079c4122f505ffcdf7c78c9ab5.jpg',
              'https://i.pinimg.com/564x/08/f7/5e/08f75e60851221f1410e6f50bba950d4.jpg',
              'https://i.pinimg.com/564x/ae/40/59/ae4059ac585230c68f2861caeb964a2b.jpg',
              'https://i.pinimg.com/564x/64/c7/6e/64c76eba7ad4ea3e85e141aba5a279b6.jpg']
  ),
  DataInfo(6,
      group: 'BTS',
      name: 'V',
      iconImage: 'assets/v_icon.png',
      description: 'Kim Tae-hyung, better known by his stage name V, is a South Korean singer-songwriter, record producer and actor under Big Hit Music. He is a member in the boy group BTS, and has the positions of vocalist, dancer and visual.',
      images: ['https://i.pinimg.com/564x/ef/4a/72/ef4a725ea3a5c71c53e8466f27c08067.jpg',
              'https://i.pinimg.com/564x/4f/c8/63/4fc8635ae0229d0ddde987cfc80ba2f0.jpg',
              'https://i.pinimg.com/564x/5b/e3/5e/5be35e118810122f93b0c9f82656f488.jpg',
              'https://i.pinimg.com/564x/d9/06/6e/d9066e99d8491b00ad6166efed038823.jpg',
              'https://i.pinimg.com/564x/80/cf/86/80cf86bfcc5fc80704db18c14b8b8d20.jpg']
  ),
  DataInfo(7,
      group: 'BTS',
      name: 'JungKook',
      iconImage: 'assets/jk_icon.png',
      description: 'Jeon Jeong-guk, better known by his stage name Jung Kook, is a South Korean singer-songwriter and record producer under Big Hit Music. He is a member in the boy group BTS, and has the positions of center, vocalist, dancer, visual and maknae.',
      images: ['https://i.pinimg.com/564x/43/91/11/439111b2b35296efdb055d70608fff54.jpg',
              'https://i.pinimg.com/564x/6b/87/5b/6b875bf39989a12186160162588c0384.jpg',
              'https://i.pinimg.com/564x/e4/01/aa/e401aa1011d0ae09746bba8b7be025b5.jpg',
              'https://i.pinimg.com/564x/21/fc/35/21fc35fe52202e757ff03d3c8e43655a.jpg',
              'https://i.pinimg.com/564x/c3/13/df/c313dfe7b1b79e7b089cc7512aa71c89.jpg',]
  )
];

//List Group - TWICE
List<DataInfo> data_twice = [
  DataInfo(1,
    group: "TWICE",
    name: 'Nayeon',
    iconImage: 'assets/nayeon_icon.png',
    description: 'sdasdasdasd',
    images: [],
  ),
  DataInfo(2,
    group: "TWICE",
    name: 'Jeongyeon',
    iconImage: 'assets/jg_icon.png',
    description: 'sdasdasdasd',
    images: [],
  ),
  DataInfo(3,
    group: "TWICE",
    name: 'Momo',
    iconImage: 'assets/momo_icon.png',
    description: 'sdasdasdasd',
    images: [],
  ),
  DataInfo(4,
    group: "TWICE",
    name: 'Sana',
    iconImage: 'assets/sana_icon.png',
    description: 'sdasdasdasd',
    images: [],
  ),
  DataInfo(5,
    group: "TWICE",
    name: 'Jihyo',
    iconImage: 'assets/jihyo_icon.png',
    description: 'sdasdasdasd',
    images: [],
  ),
  DataInfo(6,
    group: "TWICE",
    name: 'Mina',
    iconImage: 'assets/mina_icon.png',
    description: 'sdasdasdasd',
    images: [],
  ),
  DataInfo(7,
    group: "TWICE",
    name: 'Dahyun',
    iconImage: 'assets/dubu_icon.png',
    description: 'sdasdasdasd',
    images: [],
  ),
  DataInfo(8,
    group: "TWICE",
    name: 'Chaeyoung',
    iconImage: 'assets/chae_icon.png',
    description: 'sdasdasdasd',
    images: [],
  ),
  DataInfo(9,
    group: "TWICE",
    name: 'Tzuyu',
    iconImage: 'assets/chuwy_icon.png',
    description: 'sdasdasdasd',
    images: [],
  ),

];

//List Group - NEW JEANS
List<DataInfo> data_nj = [
  DataInfo(1,
    group: 'NEW JEANS',
    name: 'Minji',
    iconImage: 'assets/minji_icon.png',
    description: 'sdasdasdasd',
    images: []
  ),
  DataInfo(2,
    group: 'NEW JEANS',
    name: 'Hanni',
    iconImage: 'assets/hanni_icon.png',
    description: 'sdasdasdasd',
    images: []
  ),
  DataInfo(3,
    group: 'NEW JEANS',
    name: 'Danielle',
    iconImage: 'assets/danielle_icon.png',
    description: 'sdasdasdasd',
    images: []
  ),
  DataInfo(4,
    group: 'NEW JEANS',
    name: 'Haerin',
    iconImage: 'assets/haerin_icon.png',
    description: 'sdasdasdasd',
    images: []
  ),
  DataInfo(5,
    group: 'NEW JEANS',
    name: 'Hyein',
    iconImage: 'assets/hyein_icon.png',
    description: 'sdasdasdasd',
    images: []
  )

];
