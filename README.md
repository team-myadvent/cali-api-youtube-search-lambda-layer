# cali-api-youtube-search-lambda-layer
AWS Lambda service layer by Youtube data API v3 and selenium crawling

## Pre

⭐ AWS Configuration


## Quick Start

first. "Run deploy scripts"

```bash
sh deploy.sh
```

second. "Create the lambda function"

> "I used AWS managed console"

![image](https://github.com/user-attachments/assets/75e9a7a0-2335-429a-ae06-51a6a19c1877)

third. "Custom configuration"

function call count
* Youtube Data API V3 call blocked: When the API quota limit is reached, the Lambda Function is triggered to perform the crawling operation instead.

Daily calls: 100 (average).
Execution duration: 10 seconds per invocation (average).

Using the AWS Lambda free-tier resources
- memeory: 4096MB

![image](https://github.com/user-attachments/assets/f0a053bf-8c99-42cc-a6f7-f327cc443ac4)



final. "Test"

> "Set event"

```json
{
  "query": "luther"
}
```

> "Run the test"

```plain-text
[
  {
    "title": "Kendrick Lamar - luther (Official Audio)",
    "link": "https://www.youtube.com/watch?v=HfWLgELllZs&pp=ygUGbHV0aGVy",
    "youtube_video_id": "HfWLgELllZs"
  },
  {
    "title": "그래도 그대의 세상은 아름답다 / Kendrick Lamar & SZA - luther [가사해석]",
    "link": "https://www.youtube.com/watch?v=CggEGNBvr_c&pp=ygUGbHV0aGVy",
    "youtube_video_id": "CggEGNBvr_c"
  },
  {
    "title": "Luther Vandross's Greatest Hits Full Album Best Songs Of Luther Vandross",
    "link": "https://www.youtube.com/watch?v=cbA85t05-Mg&pp=ygUGbHV0aGVy",
    "youtube_video_id": "cbA85t05-Mg"
  },
  {
    "title": "Kendrick Lamar - luther | Spider-Verse",
    "link": "https://www.youtube.com/watch?v=FZ9wv1unnRg&pp=ygUGbHV0aGVy",
    "youtube_video_id": "FZ9wv1unnRg"
  },
  {
    "title": "Luther (2003 film)",
    "link": "https://www.youtube.com/watch?v=WIx82PuGfTk&pp=ygUGbHV0aGVy",
    "youtube_video_id": "WIx82PuGfTk"
  },
  {
    "title": "Luther Vandross Best Christmas Songs -- Luther Vandross Christmas Full Album -- Old Soul Christmas",
    "link": "https://www.youtube.com/watch?v=SvgHfMwCSBA&pp=ygUGbHV0aGVy",
    "youtube_video_id": "SvgHfMwCSBA"
  },
  {
    "title": "Kendrick Lamar - luther (Official Audio) (1 HOUR)",
    "link": "https://www.youtube.com/watch?v=I79jp-hbp-k&pp=ygUGbHV0aGVy",
    "youtube_video_id": "I79jp-hbp-k"
  },
  {
    "title": "Syria is “not a threat to the world” its new Islamist leader tells BBC | BBC News",
    "link": "https://www.youtube.com/watch?v=SNVfDEqeapQ&pp=ygUGbHV0aGVy",
    "youtube_video_id": "SNVfDEqeapQ"
  },
  {
    "title": "Playing with the Owner of Blox Fruits",
    "link": "https://www.youtube.com/watch?v=P9yiC7Nb7L0&pp=ygUGbHV0aGVy",
    "youtube_video_id": "P9yiC7Nb7L0"
  },
  {
    "title": "Luther Vandross Christmas Full Album 2022 --Old Soul Christmas-Luther Vandross Best Christmas Songs",
    "link": "https://www.youtube.com/watch?v=4QCxLUgPZH4&pp=ygUGbHV0aGVy",
    "youtube_video_id": "4QCxLUgPZH4"
  },
  {
    "title": "Nat King Cole - \"King Of Christmas\"",
    "link": "https://www.youtube.com/watch?v=yzGFPQQj9BQ&pp=ygUGbHV0aGVy",
    "youtube_video_id": "yzGFPQQj9BQ"
  },
  {
    "title": "Kendrick Lamar - luther (Lyrics) ft. SZA",
    "link": "https://www.youtube.com/watch?v=Tv3vbJTzmfg&pp=ygUGbHV0aGVy",
    "youtube_video_id": "Tv3vbJTzmfg"
  },
  {
    "title": "내가 세상을 가졌더라면.. Kendrick&SZA - Luther [가사 해석]",
    "link": "https://www.youtube.com/watch?v=1EBV6n9gJhc&pp=ygUGbHV0aGVy",
    "youtube_video_id": "1EBV6n9gJhc"
  },
  {
    "title": "Luther Vandross - Dance With My Father",
    "link": "https://www.youtube.com/watch?v=wmDxJrggie8&pp=ygUGbHV0aGVy",
    "youtube_video_id": "wmDxJrggie8"
  },
  {
    "title": "Luther and the Protestant Reformation: Crash Course World History #218",
    "link": "https://www.youtube.com/watch?v=1o8oIELbNxE&pp=ygUGbHV0aGVy",
    "youtube_video_id": "1o8oIELbNxE"
  },
  {
    "title": "Kendrick Lamar - luther (Lyrics) ft. SZA",
    "link": "https://www.youtube.com/watch?v=FXzWth_zBMs&pp=ygUGbHV0aGVy",
    "youtube_video_id": "FXzWth_zBMs"
  },
  {
    "title": "Kendrick Lamar - luther [Lyrics] ft. SZA",
    "link": "https://www.youtube.com/watch?v=4_taypLmSMU&pp=ygUGbHV0aGVy",
    "youtube_video_id": "4_taypLmSMU"
  },
  {
    "title": "[แปลเพลง] Kendrick Lamar - luther ft. SZA",
    "link": "https://www.youtube.com/watch?v=AjCKk8ztx9c&pp=ygUGbHV0aGVy",
    "youtube_video_id": "AjCKk8ztx9c"
  },
  {
    "title": "Rick Steves' Luther and the Reformation",
    "link": "https://www.youtube.com/watch?v=CXK9NNp1yk4&pp=ygUGbHV0aGVy",
    "youtube_video_id": "CXK9NNp1yk4"
  },
  {
    "title": "Martin Luther - PBS documentary",
    "link": "https://www.youtube.com/watch?v=8QNSzPREln0&pp=ygUGbHV0aGVy",
    "youtube_video_id": "8QNSzPREln0"
  },
  {
    "title": "Kendrick Lamar, SZA - luther (Lyrics)",
    "link": "https://www.youtube.com/watch?v=dnXkiUljP6M&pp=ygUGbHV0aGVy",
    "youtube_video_id": "dnXkiUljP6M"
  },
  {
    "title": "Luther: The Fallen Sun | Official Trailer | Netflix",
    "link": "https://www.youtube.com/watch?v=EGK5qtXuc1Q&pp=ygUGbHV0aGVy",
    "youtube_video_id": "EGK5qtXuc1Q"
  },
  {
    "title": "Kendrick Lamar - luther - UNCUT REACTION MASHUP",
    "link": "https://www.youtube.com/watch?v=YwtwK-itEyU&pp=ygUGbHV0aGVy",
    "youtube_video_id": "YwtwK-itEyU"
  },
  {
    "title": "Do you believe in Evil? - Alice & Luther - Luther - BBC",
    "link": "https://www.youtube.com/watch?v=-AB_znetvII&pp=ygUGbHV0aGVy",
    "youtube_video_id": "-AB_znetvII"
  },
  {
    "title": "ＬＵＴＨＥＲ 💗",
    "link": "https://www.youtube.com/watch?v=YDE5Fcd90pM&pp=ygUGbHV0aGVy",
    "youtube_video_id": "YDE5Fcd90pM"
  },
  {
    "title": "Kendrick Lamar - luther (Lyrics) ft. SZA",
    "link": "https://www.youtube.com/watch?v=gTv8_RdLDYI&pp=ygUGbHV0aGVy",
    "youtube_video_id": "gTv8_RdLDYI"
  }
]
```
