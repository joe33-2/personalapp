import 'dart:math';

class RandomVerse {
  static final List<String> _verses = [
    '''Isaiah 41:10  

    Fear not, for I am with you; be not dismayed, for I am your God; 
    I will strengthen you, I will help you, I will uphold you with my righteous right hand.''',

    '''Jeremiah 29:11  

    For I know the plans I have for you, declares the Lord, plans for welfare and not for evil, 
    to give you a future and a hope.''',

    '''Philippians 4:13  

    I can do all things through him who strengthens me.''',

    '''Psalm 23:1  

    The Lord is my shepherd; I shall not want.''',

    '''Romans 8:28  
    
    And we know that for those who love God all things work together for good, 
    for those who are called according to his purpose.''',

    '''Proverbs 3:5-6  

    Trust in the Lord with all your heart, and do not lean on your own understanding. 
    In all your ways acknowledge him, and he will make straight your paths.''',

    '''Matthew 11:28  

    Come to me, all who labor and are heavy laden, and I will give you rest.''',

    '''John 14:27  

    Peace I leave with you; my peace I give to you. 
    Not as the world gives do I give to you. Let not your hearts be troubled, neither let them be afraid.''',

    '''Joshua 1:9  

    Have I not commanded you? Be strong and courageous. 
    Do not be frightened, and do not be dismayed, for the Lord your God is with you wherever you go.''',

    '''1 Peter 5:7  

    Casting all your anxieties on him, because he cares for you.''',

    '''2 Timothy 1:7  

    For God gave us a spirit not of fear but of power and love and self-control.''',

    '''Psalm 46:1  

    God is our refuge and strength, a very present help in trouble.''',

    '''Matthew 6:33  

    But seek first the kingdom of God and his righteousness, and all these things will be added to you.''',

    '''Lamentations 3:22-23  

    The steadfast love of the Lord never ceases; his mercies never come to an end; 
    they are new every morning; great is your faithfulness.''',

    '''Psalm 34:8  

    Oh, taste and see that the Lord is good! Blessed is the man who takes refuge in him!''',

    '''Isaiah 40:31  

    But they who wait for the Lord shall renew their strength; 
    they shall mount up with wings like eagles; 
    they shall run and not be weary; they shall walk and not faint.''',

    '''John 3:16  

    For God so loved the world, that he gave his only Son, 
    that whoever believes in him should not perish but have eternal life.''',

    '''Romans 12:2  

    Do not be conformed to this world, but be transformed by the renewal of your mind, 
    that by testing you may discern what is the will of God, what is good and acceptable and perfect.''',

    '''Ephesians 2:8-9  

    For by grace you have been saved through faith. And this is not your own doing; 
    it is the gift of God, not a result of works, so that no one may boast.''',

    '''Hebrews 13:5  

    Keep your life free from love of money, and be content with what you have, 
    for he has said, "I will never leave you nor forsake you."''',

    '''James 1:5  

    If any of you lacks wisdom, let him ask God, who gives generously to all without reproach, 
    and it will be given him.''',

    '''1 Corinthians 10:13  

    No temptation has overtaken you that is not common to man. God is faithful, 
    and he will not let you be tempted beyond your ability, 
    but with the temptation he will also provide the way of escape, that you may be able to endure it.''',

    '''Psalm 119:105  

    Your word is a lamp to my feet and a light to my path.''',

    '''Micah 6:8  

    He has told you, O man, what is good; and what does the Lord require of you 
    but to do justice, and to love kindness, and to walk humbly with your God?''',

    '''John 16:33  

    I have said these things to you, that in me you may have peace. 
    In the world you will have tribulation. But take heart; I have overcome the world.''',

    '''2 Corinthians 5:7  

    For we walk by faith, not by sight.''',

    '''Galatians 2:20  

    I have been crucified with Christ. It is no longer I who live, but Christ who lives in me. 
    And the life I now live in the flesh I live by faith in the Son of God, who loved me and gave himself for me.''',

    '''Philippians 4:6-7  

    Do not be anxious about anything, but in everything by prayer and supplication with thanksgiving 
    let your requests be made known to God. And the peace of God, which surpasses all understanding, 
    will guard your hearts and your minds in Christ Jesus.''',

    '''Revelation 21:4  

    He will wipe away every tear from their eyes, and death shall be no more, 
    neither shall there be mourning, nor crying, nor pain anymore, for the former things have passed away.''',

        '''Genesis 1:1
    In the beginning God created the heaven and the earth.''',

    '''Genesis 28:15
    And, behold, I am with thee, and will keep thee in all places whither thou goest...''',

    '''Exodus 14:14
    The LORD shall fight for you, and ye shall hold your peace.''',

    '''Exodus 33:14
    And he said, My presence shall go with thee, and I will give thee rest.''',

    '''Deuteronomy 31:6
    Be strong and of a good courage, fear not, nor be afraid of them: for the LORD thy God, he it is that doth go with thee; he will not fail thee, nor forsake thee.''',

    '''2 Samuel 22:31
    As for God, his way is perfect; the word of the LORD is tried: he is a buckler to all them that trust in him.''',

    '''Job 19:25
    For I know that my redeemer liveth, and that he shall stand at the latter day upon the earth.''',

    '''Psalm 1:1–2
    Blessed is the man that walketh not in the counsel of the ungodly... But his delight is in the law of the LORD...''',

    '''Psalm 3:3
    But thou, O LORD, art a shield for me; my glory, and the lifter up of mine head.''',

    '''Psalm 16:8
    I have set the LORD always before me: because he is at my right hand, I shall not be moved.''',

    '''Psalm 18:2
    The LORD is my rock, and my fortress, and my deliverer...''',

    '''Psalm 19:14
    Let the words of my mouth, and the meditation of my heart, be acceptable in thy sight, O LORD, my strength, and my redeemer.''',

    '''Psalm 27:1
    The LORD is my light and my salvation; whom shall I fear?...''',

    '''Psalm 34:8
    O taste and see that the LORD is good: blessed is the man that trusteth in him.''',

    '''Psalm 37:4
    Delight thyself also in the LORD; and he shall give thee the desires of thine heart.''',

    '''Psalm 55:22
    Cast thy burden upon the LORD, and he shall sustain thee...''',

    '''Psalm 91:1–2
    He that dwelleth in the secret place of the most High shall abide under the shadow of the Almighty...''',

    '''Psalm 103:2–3
    Bless the LORD, O my soul, and forget not all his benefits: Who forgiveth all thine iniquities; who healeth all thy diseases;''',

    '''Psalm 119:105
    Thy word is a lamp unto my feet, and a light unto my path.''',

    '''Proverbs 4:23
    Keep thy heart with all diligence; for out of it are the issues of life.''',

    '''Proverbs 18:10
    The name of the LORD is a strong tower: the righteous runneth into it, and is safe.''',

    '''Isaiah 26:3
    Thou wilt keep him in perfect peace, whose mind is stayed on thee: because he trusteth in thee.''',

    '''Isaiah 40:31
    But they that wait upon the LORD shall renew their strength; they shall mount up with wings as eagles...''',

    '''Isaiah 43:2
    When thou passest through the waters, I will be with thee...''',

    '''Daniel 12:3
    And they that be wise shall shine as the brightness of the firmament...''',

    '''Micah 6:8
    He hath shewed thee, O man, what is good; and what doth the LORD require of thee...''',

    '''Nahum 1:7
    The LORD is good, a strong hold in the day of trouble; and he knoweth them that trust in him.''',

    '''Habakkuk 3:19
    The LORD God is my strength, and he will make my feet like hinds’ feet...''',

    '''Zephaniah 3:17
    The LORD thy God in the midst of thee is mighty; he will save, he will rejoice over thee with joy...''',

    '''Zechariah 4:6
    Not by might, nor by power, but by my spirit, saith the LORD of hosts.''',

    '''Matthew 5:14
    Ye are the light of the world. A city that is set on an hill cannot be hid.''',

    '''Matthew 7:7
    Ask, and it shall be given you; seek, and ye shall find; knock, and it shall be opened unto you:''',

    '''Matthew 28:20b
    ...lo, I am with you alway, even unto the end of the world. Amen.''',

    '''Mark 9:23
    If thou canst believe, all things are possible to him that believeth.''',

    '''Mark 10:27
    With men it is impossible, but not with God: for with God all things are possible.''',

    '''Luke 1:37
    For with God nothing shall be impossible.''',

    '''Luke 6:38
    Give, and it shall be given unto you... For with the same measure that ye mete withal it shall be measured to you again.''',

    '''Luke 12:32
    Fear not, little flock; for it is your Father’s good pleasure to give you the kingdom.''',

    '''John 3:16
    For God so loved the world, that he gave his only begotten Son...''',

    '''John 8:12
    I am the light of the world: he that followeth me shall not walk in darkness, but shall have the light of life.''',

    '''John 10:10
    I am come that they might have life, and that they might have it more abundantly.''',

    '''John 14:1
    Let not your heart be troubled: ye believe in God, believe also in me.''',

    '''John 16:33
    In the world ye shall have tribulation: but be of good cheer; I have overcome the world.''',

    '''Acts 1:8
    But ye shall receive power, after that the Holy Ghost is come upon you...''',

    '''Acts 16:31
    Believe on the Lord Jesus Christ, and thou shalt be saved, and thy house.''',

    '''Romans 5:8
    But God commendeth his love toward us, in that, while we were yet sinners, Christ died for us.''',

    '''Romans 8:1
    There is therefore now no condemnation to them which are in Christ Jesus...''',

    '''Romans 12:2
    And be not conformed to this world: but be ye transformed by the renewing of your mind...''',

    '''1 Corinthians 10:13
    There hath no temptation taken you but such as is common to man: but God is faithful...''',

    '''1 Corinthians 13:4–7
    Charity suffereth long, and is kind; charity envieth not...''',

    '''2 Corinthians 5:7
    For we walk by faith, not by sight.''',

    '''2 Corinthians 12:9
    My grace is sufficient for thee: for my strength is made perfect in weakness...''',

    '''Galatians 2:20
    I am crucified with Christ: nevertheless I live; yet not I, but Christ liveth in me...''',

    '''Galatians 5:22–23
    But the fruit of the Spirit is love, joy, peace, longsuffering, gentleness, goodness, faith, meekness, temperance...''',

    '''Ephesians 2:8–9
    For by grace are ye saved through faith; and that not of yourselves: it is the gift of God...''',

    '''Ephesians 3:20
    Now unto him that is able to do exceeding abundantly above all that we ask or think...''',

    '''Ephesians 6:11
    Put on the whole armour of God, that ye may be able to stand against the wiles of the devil.''',

    '''Philippians 4:6–7
    Be careful for nothing; but in every thing by prayer and supplication with thanksgiving let your requests be made known unto God...''',

    '''Colossians 3:23
    And whatsoever ye do, do it heartily, as to the Lord, and not unto men;''',

    '''1 Thessalonians 5:16–18
    Rejoice evermore. Pray without ceasing. In every thing give thanks...''',

    '''2 Thessalonians 3:3
    But the Lord is faithful, who shall stablish you, and keep you from evil.''',

    '''1 Timothy 6:12
    Fight the good fight of faith, lay hold on eternal life...''',

    '''Hebrews 4:16
    Let us therefore come boldly unto the throne of grace, that we may obtain mercy...''',

    '''Hebrews 10:23
    Let us hold fast the profession of our faith without wavering; (for he is faithful that promised;)''',

    '''Hebrews 11:1
    Now faith is the substance of things hoped for, the evidence of things not seen.''',

    '''Hebrews 13:5b–6
    ...for he hath said, I will never leave thee, nor forsake thee. So that we may boldly say, The Lord is my helper...''',

    '''James 1:5
    If any of you lack wisdom, let him ask of God... and it shall be given him.''',

    '''James 1:12
    Blessed is the man that endureth temptation: for when he is tried, he shall receive the crown of life...''',

    '''1 Peter 5:10
    But the God of all grace... after that ye have suffered a while, make you perfect, stablish, strengthen, settle you.''',

    '''1 John 1:9
    If we confess our sins, he is faithful and just to forgive us our sins, and to cleanse us from all unrighteousness.''',

    '''1 John 4:4
    ...greater is he that is in you, than he that is in the world.''',

    '''1 John 4:18
    There is no fear in love; but perfect love casteth out fear...''',

    '''Jude 24–25
    Now unto him that is able to keep you from falling... to the only wise God our Saviour, be glory and majesty...''',

  ];

  // Picks one verse for the day based on date
  static String getTodayVerse() {
    final today = DateTime.now();
    final seed = today.year + today.month + today.day; // Unique per day
    final random = Random(seed);
    return _verses[random.nextInt(_verses.length)];
  }
}
