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
    for those who are called according to his purpose.'''
  ];

  // Picks one verse for the day based on date
  static String getTodayVerse() {
    final today = DateTime.now();
    final seed = today.year + today.month + today.day; // Unique per day
    final random = Random(seed);
    return _verses[random.nextInt(_verses.length)];
  }
}
