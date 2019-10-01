import 'dart:convert' as json;
import 'package:flutter/services.dart';
import 'package:padak_starter/model/Movie.dart';
import 'package:padak_starter/model/response/comments_response.dart';
import 'package:padak_starter/model/response/movie_response.dart';
import 'package:padak_starter/model/response/movies_response.dart';

import '../Comment.dart';

class DummysRepository {
  // 상세 데이터
  static MovieResponse loadMovie(String movieId) {
    const getMovie = <MovieResponse>[
      MovieResponse(
          actor: '하정우(강림), 차태현(자홍), 주지훈(해원맥), 김향기(덕춘)',
          date: '2017-12-20',
          director: '김용화',
          audience: 11676822,
          userRating: 7.98,
          id: '5a54c286e8a71d136fb5378e',
          reservationGrade: 1,
          grade: 12,
          title: '신과함께-죄와벌',
          genre: '판타지, 드라마',
          image:
              'http://movie.phinf.naver.net/20171201_181/1512109983114kcQVl_JPEG/movie_image.jpg',
          duration: 139,
          synopsis:
              '저승 법에 의하면, 모든 인간은 사후 49일 동안 7번의 재판을 거쳐야만 한다. 살인, 나태, 거짓, 불의, 배신, 폭력, 천륜 7개의 지옥에서 7번의 재판을 무사히 통과한 망자만이 환생하여 새로운 삶을 시작할 수 있다. \n\n “김자홍 씨께선, 오늘 예정 대로 무사히 사망하셨습니다” \n\n화재 사고 현장에서 여자아이를 구하고 죽음을 맞이한 소방관 자홍, 그의 앞에 저승차사 해원맥과 덕춘이 나타난다.\n자신의 죽음이 아직 믿기지도 않는데 덕춘은 정의로운 망자이자 귀인이라며 그를 치켜세운다.\n저승으로 가는 입구, 초군문에서 그를 기다리는 또 한 명의 차사 강림, 그는 차사들의 리더이자 앞으로 자홍이 겪어야 할 7개의 재판에서 변호를 맡아줄 변호사이기도 하다.\n염라대왕에게 천년 동안 49명의 망자를 환생시키면 자신들 역시 인간으로 환생시켜 주겠다는 약속을 받은 삼차사들, 그들은 자신들이 변호하고 호위해야 하는 48번째 망자이자 19년 만에 나타난 의로운 귀인 자홍의 환생을 확신하지만, 각 지옥에서 자홍의 과거가 하나 둘씩 드러나면서 예상치 못한 고난과 맞닥뜨리는데…\n\n누구나 가지만 아무도 본 적 없는 곳, 새로운 세계의 문이 열린다!',
          reservationRate: 35.5),
      MovieResponse(
          actor: '벤 애플렉(브루스 웨인/배트맨), 갤 가돗(다이애나 프린스)',
          date: '2017-11-15',
          director: '잭 스나이더',
          audience: 1363103,
          userRating: 7.8,
          id: '5a54c1e9e8a71d136fb5376c',
          reservationGrade: 2,
          grade: 12,
          title: '저스티스 리그',
          genre: '액션,모험,판타지,SF',
          image:
              'http://movie.phinf.naver.net/20170925_296/150631600340898aUX_JPEG/movie_image.jpg',
          duration: 120,
          synopsis:
              '인류의 수호자인 슈퍼맨이 사라진 틈을 노리고 ‘마더박스’를 차지하기 위해 빌런 스테픈울프가 악마군단을 이끌고 지구에 온다. 마더박스는 시간과 공간, 에너지, 중력을 통제하는 범우주적인 능력으로 행성의 파괴마저도 초래하는 물체로 이 강력한 힘을 통제하기 위해 고대부터 총 3개로 분리되어 보관되고 있던 것. 인류에 대한 믿음을 되찾고 슈퍼맨의 희생 정신에 마음이 움직인 브루스 웨인은 새로운 동료인 다이애나 프린스에게 도움을 청해 이 거대한 적에 맞서기로 한다. 배트맨과 원더 우먼은 새로이 등장한 위협에 맞서기 위해 아쿠아맨, 사이보그, 플래시를 찾아 신속히 팀을 꾸린다. 이들 슈퍼히어로 완전체는 스테픈울프로부터 마더박스를 지키기 위해 지구의 운명을 건 전투를 벌인다!',
          reservationRate: 12.63),
      MovieResponse(
          actor: '크리스 헴스워스(토르), 마크 러팔로(헐크), 톰 히들스턴(로키)',
          date: '2017-10-25',
          director: '타이카 와이티티',
          audience: 4653683,
          userRating: 9.8,
          id: '5a54c1f2e8a71d136fb5376e',
          reservationGrade: 3,
          grade: 12,
          title: '토르:라그나로크',
          genre: '액션, 모험, 판타지, SF',
          image:
              'http://movie.phinf.naver.net/20170928_85/1506564710105ua5fS_PNG/movie_image.jpg',
          duration: 130,
          synopsis:
              '피할 수 없는 세상의 멸망 ‘라그나로크’를 막아라! 죽음의 여신 ‘헬라’가 아스가르드를 침략하고, 세상은 모든 것의 종말 ‘라그나로크’의 위기에 처한다. 헬라에게 자신의 망치마저 파괴당한 토르는 어벤져스 동료인 헐크와도 피할 수 없는 대결을벌이면서 절체절명의 위기에 빠지게 되는데…',
          reservationRate: 6.73),
      MovieResponse(
          actor: '시얼샤 로넌(마르그리트 가셰), 제롬 플린(가셰 박사)',
          date: '2017-11-09',
          director: '도로타 코비엘라, 휴 웰치맨',
          audience: 152523,
          userRating: 8.5,
          id: '5a54c1fbe8a71d136fb53770',
          reservationGrade: 4,
          grade: 15,
          title: '러빙 빈센트',
          genre: '애니메이션,미스터리',
          image:
              'http://movie.phinf.naver.net/20171013_210/1507861351048TMJcR_JPEG/movie_image.jpg',
          duration: 95,
          synopsis:
              "“당신은 그의 삶에 대해 무엇을 알죠?” 살아생전 단 한 점의 그림만을 팔았던 화가‘빈센트’의 죽음 후 1년. ‘아르망’은 그의 그림을 사랑했던 아버지의 부탁을 받고, ‘빈센트’가 마지막으로 살았던 장소로 찾아가 미스터리한 죽음을 추적해 나간다. ‘빈센트’를 그리워하는 여인 '마르그리트'. ‘빈센트’를 가장 가까운 곳에서 지켜봤던 ‘아들린’. ‘빈센트’의 비밀을 알고 있는 닥터 ‘폴 가셰’. ‘아르망’은 그들의 이야기를 듣고, 인간 ‘빈센트’에 대해 몰랐던 놀라운 사실들을 알게 되는데…",
          reservationRate: 3.82),
      MovieResponse(
          actor: '마동석(마석도), 윤계상(장첸)',
          date: '2017-10-03',
          director: '강윤성',
          audience: 6838470,
          userRating: 3.4,
          id: '5a54c207e8a71d136fb53772',
          reservationGrade: 5,
          grade: 19,
          title: '범죄도시',
          genre: '액션',
          image:
              'http://movie.phinf.naver.net/20170915_299/1505458505658vbKcN_JPEG/movie_image.jpg',
          duration: 121,
          synopsis:
              '“오늘 밤, 다 쓸어버린다!” 2004년 서울… 하얼빈에서 넘어와 단숨에 기존 조직들을 장악하고 가장 강력한 세력인 춘식이파 보스 ‘황사장(조재윤 분)’까지 위협하며 도시 일대의 최강자로 급부상한 신흥범죄조직의 악랄한 보스 ‘장첸(윤계상 분)’. 대한민국을 뒤흔든 ‘장첸(윤계상 분)’ 일당을 잡기 위해 오직 주먹 한방으로 도시의 평화를 유지해 온 괴물형사 ‘마석도(마동석 분)’와 인간미 넘치는 든든한 리더 ‘전일만(최귀화 분)’ 반장이 이끄는 강력반은 나쁜 놈들을 한방에 쓸어버릴 끝.짱.나.는. 작전을 세우는데… 통쾌하고! 화끈하고! 살벌하게! 나쁜 놈들 때려잡는 강력반 형사들의 ‘조폭소탕작전’이 시작된다!',
          reservationRate: 2.37),
      MovieResponse(
          actor: '현빈(황지성), 유지태(박희수 검사), 배성우(고석동)',
          date: '2017-11-22',
          director: '장창원',
          audience: 476810,
          userRating: 6.4,
          id: '5a54be21e8a71d136fb536a1',
          reservationGrade: 6,
          grade: 15,
          title: '꾼',
          genre: '범죄',
          image:
              'http://movie.phinf.naver.net/20171107_251/1510033896133nWqxG_JPEG/movie_image.jpg',
          duration: 117,
          synopsis:
              '‘희대의 사기꾼’을 잡기 위해 사기‘꾼’들이 뭉쳤다! “판 다시 짜야죠, 팀플레이로!” 대한민국을 발칵 뒤집어 놓은 ‘희대의 사기꾼’ 장두칠이 돌연 사망했다는 뉴스가 발표된다. 그러나 그가 아직 살아있다는 소문과 함께 그를 비호했던 권력자들이 의도적으로 풀어준 거라는 추측이 나돌기 시작한다. 사기꾼만 골라 속이는 사기꾼 지성(현빈)은 장두칠이 아직 살아있다며 사건 담당 검사 박희수(유지태)에게 그를 확실하게 잡자는 제안을 한다. 박검사의 비공식 수사 루트인 사기꾼 3인방 고석동(배성우), 춘자(나나), 김 과장(안세하)까지 합류시켜 잠적한 장두칠의 심복 곽승건(박성웅)에게 접근하기 위한 새로운 판을 짜기 시작한다. 하지만 박검사는 장두칠 검거가 아닌 또 다른 목적을 위해 은밀히 작전을 세우고, 이를 눈치 챈 지성과 다른 꾼들도 서로 속지 않기 위해 각자만의 계획을 세우기 시작하는데… 이 판에선 누구도 믿지 마라! 진짜 ‘꾼’들의 예측불가 팀플레이가 시작된다!',
          reservationRate: 61.69),
      MovieResponse(
          actor: '드웨인 존슨(닥터 브레이브스톤), 잭 블랙(셸리 오베론)',
          date: '2018-01-03',
          director: '제이크 케스단',
          audience: 980893,
          userRating: 8.01,
          id: '5a54c2f8e8a71d136fb537a7',
          reservationGrade: 7,
          grade: 12,
          title: '쥬만지: 새로운 세계',
          genre: '액션, 모험',
          image:
              'http://movie.phinf.naver.net/20171127_196/1511757905894vduNA_JPEG/movie_image.jpg',
          duration: 118,
          synopsis:
              '학교 창고를 청소하다가 낡은 ‘쥬만지’ 비디오 게임을 발견한 네 명의 아이들.\n게임 버튼을 누르는 순간 화면 속으로 빨려 들어가버렸다! \n\n거대한 몸집의 고고학자 닥터 브레이브스톤(드웨인 존슨)으로 변한 공부벌레 스펜서, \n슈퍼 여전사 루비 라운드하우스(카렌 길런)가 된 운동신경 제로 마사, \n저질체력의 동물학 전문가 무스 핀바(케빈 하트)가 된 예비 풋볼선수 프리지, \n중년의 지도 연구학 교수 셸리 오베론(잭 블랙)으로 변해버린 SNS 중독 퀸카 베서니까지. \n\n게임 안에서 주어진 목숨의 기회는 단 세 번뿐! \n이들은 자신의 아바타가 가진 능력으로 게임 속 세계를 구해야만 현실로 돌아갈 수 있는데…',
          reservationRate: 14.93),
      MovieResponse(
          actor: '이선(뽀로로 목소리), 이미자(크롱 목소리), 함수정(에디 목소리)',
          date: '2017-12-07',
          director: '김현호, 윤제완',
          audience: 98089813794,
          userRating: 9.2,
          id: '5a54df5ee8a71d136fb53d75',
          reservationGrade: 8,
          grade: 10,
          title: '뽀로로 극장판 공룡섬 대모험',
          genre: '애니메이션',
          image:
              'http://movie.phinf.naver.net/20171102_209/1509602233507BiJrs_JPEG/movie_image.jpg',
          duration: 1179,
          synopsis:
              '뽀로로와 친구들, 이번엔 공룡섬이다!\n공룡섬에서 펼쳐지는 스펙터클한 대결이 시작된다!\n뽀로로와 친구들은 숲 속에서 ‘알’ 모양의 비행선에 잠들어 있는 꼬마 공룡 ‘알로’를 발견한다. \n하지만 이름 말고는 아무것도 기억하지 못하는 ‘알로’를 위해 우주선을 고치던 중 비행선이 번쩍하며 ‘크롱’과 ‘알로’를 데리고 멀리 사라져 버린다. \n\n크롱과 알로를 구하기 위해 비행선을 뒤쫓던 뽀로로와 친구들은 공룡섬에 도착하고, \n그곳에서 공룡들을 잡아 외계인들에게 팔아 넘기는 공룡 사냥꾼 ‘Mr. Y’를 만나게 되는데… \n\n과연, 외계인 사냥꾼의 공격을 피해 위험에 빠진 친구들을 구할 수 있을까?',
          reservationRate: 11.93),
    ];

    MovieResponse targetMovieResponse;

    for (int i = 0; i < getMovie.length; i++) {
      if (getMovie[i].id == movieId)
        targetMovieResponse = getMovie[i];
    }
    return targetMovieResponse;
  }

  // 영화 전체 목록
  static MoviesResponse loadMovies(int orderType) {
    const getMovies = MoviesResponse(orderType: 0, movies: [
      Movie(
          title: '신과함께-죄와벌',
          userRating: 7.98,
          grade: 12,
          reservationGrade: 1,
          id: '5a54c286e8a71d136fb5378e',
          date: '2017-12-20',
          thumb: 'http://movie.phinf.naver.net/20171201_181/1512109983114kcQVl_JPEG/movie_image.jpg?type=m99_141_2',
          reservationRate: 35.5),
      Movie(
          title: '저스티스 리그',
          userRating: 7.8,
          grade: 12,
          reservationGrade: 2,
          id: '5a54c1e9e8a71d136fb5376c',
          date: '2017-11-15',
          thumb:
              'http://movie2.phinf.naver.net/20170925_296/150631600340898aUX_JPEG/movie_image.jpg?type=m99_141_2',
          reservationRate: 12.63),
      Movie(
          title: '토르:라그나로크',
          userRating: 9.8,
          grade: 12,
          reservationGrade: 3,
          id: '5a54c1f2e8a71d136fb5376e',
          date: '2017-10-25',
          thumb:
              'http://movie2.phinf.naver.net/20170928_85/1506564710105ua5fS_PNG/movie_image.jpg?type=m99_141_2',
          reservationRate: 6.73),
      Movie(
          title: '러빙 빈센트',
          userRating: 8.5,
          grade: 15,
          reservationGrade: 4,
          id: '5a54c1fbe8a71d136fb53770',
          date: '2017-11-09',
          thumb:
              'http://movie2.phinf.naver.net/20171013_210/1507861351048TMJcR_JPEG/movie_image.jpg?type=m99_141_2',
          reservationRate: 3.82),
      Movie(
          title: '범죄도시',
          userRating: 3.4,
          grade: 19,
          reservationGrade: 5,
          id: '5a54c207e8a71d136fb53772',
          date: '2017-10-03',
          thumb:
              'http://movie2.phinf.naver.net/20170915_299/1505458505658vbKcN_JPEG/movie_image.jpg?type=m99_141_2',
          reservationRate: 2.37),
      Movie(
          title: '꾼',
          userRating: 6.4,
          grade: 15,
          reservationGrade: 6,
          id: '5a54be21e8a71d136fb536a1',
          date: '2017-11-22',
          thumb:
              'http://movie2.phinf.naver.net/20171107_251/1510033896133nWqxG_JPEG/movie_image.jpg?type=m99_141_2',
          reservationRate: 61.69),
      Movie(
          title: '쥬만지: 새로운 세계',
          userRating: 8.01,
          grade: 12,
          reservationGrade: 7,
          id: '5a54c2f8e8a71d136fb537a7',
          date: '2018-01-03',
          thumb:
              'http://movie.phinf.naver.net/20171127_196/1511757905894vduNA_JPEG/movie_image.jpg?type=m99_141_2',
          reservationRate: 14.93),
      Movie(
          title: '뽀로로 극장판 공룡섬 대모험',
          userRating: 9.2,
          grade: 0,
          reservationGrade: 8,
          id: '5a54df5ee8a71d136fb53d75',
          date: '2017-12-07',
          thumb:
              'http://movie.phinf.naver.net/20171102_209/1509602233507BiJrs_JPEG/movie_image.jpg?type=m99_141_2',
          reservationRate: 1.93),
    ]);

    return getMovies;
  }

  static CommentsResponse loadComments(String movieId) {
    const getMovieComments = <CommentsResponse>[
      CommentsResponse(movieId: '5a54c286e8a71d136fb5378e', comments: [
        Comment(
          rating: 10,
          id: '5d891d9e1b865eef5c2ed96f',
          timestamp: 1569267102.0,
          writer: 'goodgoodred',
          contents: 'D',
          movieId: '5a54c286e8a71d136fb5378e'
        ),
        Comment(
          rating: 5,
          id: '5d890e991b865eef5c2ed96a',
          timestamp: 1569263257.0,
          writer: 'goodgood',
          contents: 'Sdd',
          movieId: '5a54c286e8a71d136fb5378e'
        ),
        Comment(
          rating: 7,
          id: '5d853bcf1b865e5bd8727542',
          timestamp: 1569012687.0,
          writer: '폰과함께',
          contents: '팝',
          movieId: '5a54c286e8a71d136fb5378e'
        ),
        Comment(
          rating: 8,
          id: '5d848e851b865edd5e016fca',
          timestamp: 1568968325.0,
          writer: 'kmbang',
          contents: 'Good',
          movieId: '5a54c286e8a71d136fb5378e'
        ),
        Comment(
          rating: 7,
          id: '5d848e791b865edd5e016fc9',
          timestamp: 1568968313.0,
          writer: 'kmbang',
          contents: 'Good',
          movieId: '5a54c286e8a71d136fb5378e'
        ),
        Comment(
          rating: 9,
          id: '5d83bcac1b865edd5e016fc8',
          timestamp: 1568914604.0,
          writer: '톨',
          contents: '다음편이 기대됨',
          movieId: '5a54c286e8a71d136fb5378e'
        ),
        Comment(
          rating: 9,
          id: '5d83ae2c1b865edd5e016fc2',
          timestamp: 1568910892.0,
          writer: '신과함께를 본 이임',
          contents: '꼭 봐야하는 영화! 다시 보고 싶음',
          movieId: '5a54c286e8a71d136fb5378e'
        ),
        Comment(
          rating: 4,
          id: '5d81cae01b865e90542b7b41',
          timestamp: -9.5367431640625e-07,
          writer: 'jyng1',
          contents: 'test',
          movieId: '5a54c286e8a71d136fb5378e'
        ),
        Comment(
          rating: 4,
          id: '5d81caba1b865e90542b7b40',
          timestamp: -5.96046447753906e-06,
          writer: 'jyng1',
          contents: 'test',
          movieId: '5a54c286e8a71d136fb5378e'
        ),
      ]),
      CommentsResponse(movieId: '5a54c1e9e8a71d136fb5376c', comments: [
        Comment(
          rating: 5,
          id: '5d8884df1b865eef5c2ed967',
          timestamp: 1569227999.0,
          writer: 'ㅋㅋㅋㅋ',
          contents: 'ㅎㅎ',
          movieId: '5a54c1e9e8a71d136fb5376c'
        ),
        Comment(
          rating: 8,
          id: '5d87c9f71b865eef5c2ed962',
          timestamp: 1569180151.0,
          writer: '체크맨',
          contents: '리그',
          movieId: '5a54c1e9e8a71d136fb5376c'
        ),
        Comment(
          rating: 10,
          id: '5d85269d1b865e5bd8727536',
          timestamp: 1569007261.0,
          writer: '우왕',
          contents: '저스티스',
          movieId: '5a54c1e9e8a71d136fb5376c'
        ),
        Comment(
          rating: 9,
          id: '5d8526401b865e5bd8727535',
          timestamp: 1569007168.0,
          writer: '이상하군',
          contents: '이상하긴',
          movieId: '5a54c1e9e8a71d136fb5376c'
        ),
        Comment(
          rating: 7,
          id: '5d8525001b865e5bd8727533',
          timestamp: 1569006848.0,
          writer: '에러야가랏',
          contents: '저스티스리그 고고',
          movieId: '5a54c1e9e8a71d136fb5376c'
        ),
        Comment(
          rating: 5,
          id: '5d8524441b865e5bd8727532',
          timestamp: 1569006660.0,
          writer: '고고',
          contents: '저스티스리그으으',
          movieId: '5a54c1e9e8a71d136fb5376c'
        ),
        Comment(
          rating: 7.69553089141846,
          id: '5d81df371b865e90542b7b49',
          timestamp: 1568792375.0,
          writer: 'aaa',
          contents: 'aaa',
          movieId: '5a54c1e9e8a71d136fb5376c'
        ),
        Comment(
          rating: 9.9162015914917,
          id: '5d81df001b865e90542b7b48',
          timestamp: 1568792320.0,
          writer: '마무리',
          contents: '1',
          movieId: '5a54c1e9e8a71d136fb5376c'
        ),
        Comment(
          rating: 10,
          id: '5d81d5f51b865e90542b7b46',
          timestamp: 1568790005.0,
          writer: '거의다왔다',
          contents: '테스트!',
          movieId: '5a54c1e9e8a71d136fb5376c'
        ),
        Comment(
          rating: 9.776535987854,
          id: '5d81d29b1b865e90542b7b44',
          timestamp: 1568789147.0,
          writer: 'test',
          contents: 'test',
          movieId: '5a54c1e9e8a71d136fb5376c'
        ),
        Comment(
          rating: 4,
          id: '5d81cb421b865e90542b7b43',
          timestamp: -4.88758087158203e-06,
          writer: 'jyng1',
          contents: 'test',
          movieId: '5a54c1e9e8a71d136fb5376c'
        ),
        Comment(
          rating: 5,
          id: '5d8074661b865e90542b7b35',
          timestamp: 1568699494.0,
          writer: '저스티스',
          contents: '리그',
          movieId: '5a54c1e9e8a71d136fb5376c'
        ),
        Comment(
          rating: 6,
          id: '5d764c171b865e8c096af6e3',
          timestamp: 1568033815.0,
          writer: 'Test test',
          contents: 'Funny movie!!!!',
          movieId: '5a54c1e9e8a71d136fb5376c'
        ),
      ]),
      CommentsResponse(movieId: '5a54c1f2e8a71d136fb5376e', comments: [
        Comment(
          rating: 8,
          id: '5d8a76bd1b865eef5c2ed971',
          timestamp: 1569355453.0,
          writer: 'dely',
          contents: '재미있어요!',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
        Comment(
          rating: 5,
          id: '5d8913971b865eef5c2ed96c',
          timestamp: 1569264535.0,
          writer: 'typical ',
          contents: 'Wakanda',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
        Comment(
          rating: 10,
          id: '5d88ee061b865eef5c2ed969',
          timestamp: 1569254918.0,
          writer: 'goodgood',
          contents: 'Good',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
        Comment(
          rating: 5,
          id: '5d88edf81b865eef5c2ed968',
          timestamp: 1569254904.0,
          writer: 'good',
          contents: 'Whdhkdyd',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
        Comment(
          rating: 10,
          id: '5d87cb831b865eef5c2ed963',
          timestamp: 1569180547.0,
          writer: '돌아온델리만쥬',
          contents: '토르르르르르르르르르르르르르',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
        Comment(
          rating: 10,
          id: '5d8539771b865e5bd872753f',
          timestamp: 1569012087.0,
          writer: '델리만쥬',
          contents: '한정판 말고 한줄평',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
        Comment(
          rating: 10,
          id: '5d852bf01b865e5bd872753c',
          timestamp: 1569008624.0,
          writer: '쥬만지',
          contents: '토르 와칸다 포에버',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
        Comment(
          rating: 10,
          id: '5d83bc621b865edd5e016fc7',
          timestamp: 1568914530.0,
          writer: '톨',
          contents: '슬펐음ㅠ',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
        Comment(
          rating: 10,
          id: '5d83ae9f1b865edd5e016fc3',
          timestamp: 1568911007.0,
          writer: '또르!!!!!!!!!',
          contents: '토르님 사랑합니다',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
        Comment(
          rating: 7.73743009567261,
          id: '5d81d2d11b865e90542b7b45',
          timestamp: 1568789201.0,
          writer: 'test2',
          contents: 'test2',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
        Comment(
          rating: 4,
          id: '5d81cb051b865e90542b7b42',
          timestamp: -1.09672546386719e-05,
          writer: 'jyng1',
          contents: 'test',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
        Comment(
          rating: 5,
          id: '5d8074561b865e90542b7b34',
          timestamp: 1568699478.0,
          writer: '토르',
          contents: '라그나로크',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
        Comment(
          rating: 4,
          id: '5d764d1d1b865e8c096af6e4',
          timestamp: 1568034077.0,
          writer: 'Rte',
          contents: 'Raera',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
        Comment(
          rating: 10,
          id: '5d75033f1b865ed90a53a84f',
          timestamp: 1567949631.0,
          writer: 'Asdfdsf',
          contents: 'Asdfasdfs',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
        Comment(
          rating: 10,
          id: '5d74e1531b865ed90a53a84a',
          timestamp: 1567940947.0,
          writer: '11',
          contents: '111',
          movieId: '5a54c1f2e8a71d136fb5376e'
        ),
      ]),
      CommentsResponse(movieId: '5a54c1fbe8a71d136fb53770', comments: [
        Comment(
          rating: 10,
          id: '5d891d521b865eef5c2ed96e',
          timestamp: 1569267026.0,
          writer: 'goodgood',
          contents: 'ㄹㄹ',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
        Comment(
          rating: 10,
          id: '5d891c241b865eef5c2ed96d',
          timestamp: 1569266724.0,
          writer: 'goodgood',
          contents: 'For ',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
        Comment(
          rating: 10,
          id: '5d890f141b865eef5c2ed96b',
          timestamp: 1569263380.0,
          writer: 'goodgood',
          contents: 'Dd',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
        Comment(
          rating: 5,
          id: '5d8865f71b865eef5c2ed966',
          timestamp: 1569220087.0,
          writer: '러빙',
          contents: '빈센트',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
        Comment(
          rating: 3,
          id: '5d853a361b865e5bd8727541',
          timestamp: 1569012278.0,
          writer: '안녕',
          contents: '빈센트',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
        Comment(
          rating: 9,
          id: '5d8525691b865e5bd8727534',
          timestamp: 1569006953.0,
          writer: '러빙',
          contents: '빈센트',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
        Comment(
          rating: 6,
          id: '5d83b1b21b865edd5e016fc4',
          timestamp: 1568911794.0,
          writer: '빈센트',
          contents: '띵작!',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
        Comment(
          rating: 5,
          id: '5d81dfae1b865e90542b7b4a',
          timestamp: 1568792494.0,
          writer: 'abc',
          contents: 'abc',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
        Comment(
          rating: 10,
          id: '5d81d7131b865e90542b7b47',
          timestamp: 1568790291.0,
          writer: 'hellㅐ',
          contents: '좋은 영화!',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
        Comment(
          rating: 10,
          id: '5d806e4a1b865e90542b7b33',
          timestamp: 1568697930.0,
          writer: '드디어',
          contents: '이 작품을 보게되네요!',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
        Comment(
          rating: 2.36033511161804,
          id: '5d806d1f1b865e90542b7b32',
          timestamp: 1568697631.0,
          writer: 'hello',
          contents: 'hello as',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
        Comment(
          rating: 9,
          id: '5d7db5971b865e8c096af6e6',
          timestamp: 1568519575.0,
          writer: 'ㅇㄴㅇ',
          contents: 'ㅇㅇㅇ',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
        Comment(
          rating: 2,
          id: '5d764db71b865e8c096af6e5',
          timestamp: 1568034231.0,
          writer: '1',
          contents: '1',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
        Comment(
          rating: 10,
          id: '5d7501331b865ed90a53a84e',
          timestamp: 1567949107.0,
          writer: '123',
          contents: '1234',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
        Comment(
          rating: 10,
          id: '5d74da071b865ed90a53a849',
          timestamp: 1567939079.0,
          writer: 'Asdfasfd',
          contents: 'Asdfasfadfaf',
          movieId: '5a54c1fbe8a71d136fb53770'
        ),
      ]),
      CommentsResponse(movieId: '5a54c207e8a71d136fb53772', comments: [
        Comment(
          rating: 10,
          id: '5d87cbc91b865eef5c2ed964',
          timestamp: 1569180617.0,
          writer: '돌아온델리만쥬',
          contents: '한줄평작성중',
          movieId: '5a54c207e8a71d136fb53772'
        ),
        Comment(
          rating: 8,
          id: '5d8539f01b865e5bd8727540',
          timestamp: 1569012208.0,
          writer: '이영화',
          contents: '별점이 낮네요',
          movieId: '5a54c207e8a71d136fb53772'
        ),
        Comment(
          rating: 10,
          id: '5d852bc61b865e5bd872753b',
          timestamp: 1569008582.0,
          writer: '쥬만지',
          contents: '도 보고 범죄도시 보고',
          movieId: '5a54c207e8a71d136fb53772'
        ),
        Comment(
          rating: 9,
          id: '5d7f99001b865e90da0bc602',
          timestamp: 1568643328.0,
          writer: 'is',
          contents: '범죄도시',
          movieId: '5a54c207e8a71d136fb53772'
        ),
        Comment(
          rating: 10,
          id: '5d74d9e11b865ed90a53a848',
          timestamp: 1567939041.0,
          writer: 'Sdfasdfa',
          contents: 'Asdfasdfasf',
          movieId: '5a54c207e8a71d136fb53772'
          ),
        Comment(
          rating: 10,
          id: '5d6d6b561b865e1a285e3acf',
          timestamp: 1567451990.0,
          writer: '하필',
          contents: 'ㅁㄴㅇㅁㄴㅇ',
          movieId: '5a54c207e8a71d136fb53772'
        ),
        Comment(
          rating: 10,
          id: '5d6d28d91b865e1a285e3ac2',
          timestamp: 1567434969.0,
          writer: '오렌지 말랭이',
          contents: 'hgjiitt',
          movieId: '5a54c207e8a71d136fb53772'
        ),
        Comment(
          rating: 5,
          id: '5d3b056d1b865eaa7561c814',
          timestamp: 1564149101.0,
          writer: '뽀로로',
          contents: '잼있는 중국인',
          movieId: '5a54c207e8a71d136fb53772'
        ),
        Comment(
          rating: 9,
          id: '5d3588901b865efcb44afcad',
          timestamp: 1563789456.0,
          writer: 'ㅎㅎ호',
          contents: 'ㅋㅋ',
          movieId: '5a54c207e8a71d136fb53772'
        ),
        Comment(
          rating: 7,
          id: '5d2dac4a1b865ef87b010fe2',
          timestamp: 1563274314.0,
          writer: '중국인',
          contents: '시마이',
          movieId: '5a54c207e8a71d136fb53772'
        ),
        Comment(
          rating: 8,
          id: '5d1c5be81b865ef2de73b930',
          timestamp: 1562139624.0,
          writer: '장친',
          contents: '잔인해',
          movieId: '5a54c207e8a71d136fb53772'
        ),
        Comment(
          rating: 10,
          id: '5d18c28a1b865ef2de73b929',
          timestamp: 1561903754.0,
          writer: '마리',
          contents: '범죄와의 도시 잘 보았습니다.',
          movieId: '5a54c207e8a71d136fb53772'
        ),
        Comment(
          rating: 9,
          id: '5cec9ea21b865e000f35e269',
          timestamp: 1559010978.0,
          writer: '닉네임뿌셔',
          contents: '똥꼬',
          movieId: '5a54c207e8a71d136fb53772'
        ),
        Comment(
          rating: 8,
          id: '5cec9e871b865e000f35e268',
          timestamp: 1559010951.0,
          writer: '닉네임뿌셔',
          contents: '한줄평뿌셔',
          movieId: '5a54c207e8a71d136fb53772'
        ),
        Comment(
          rating: 4,
          id: '5cec9e591b865e000f35e267',
          timestamp: 1559010905.0,
          writer: 'Asdfcv',
          contents: 'Aqwr',
          movieId: '5a54c207e8a71d136fb53772'
          )
      ]),
      CommentsResponse(movieId: '5a54be21e8a71d136fb536a1', comments: [
        Comment(
          rating: 7,
          id: '5d8528631b865e5bd8727537',
          timestamp: 1569007715.0,
          writer: '에러사냥꾼',
          contents: '꾼잼',
          movieId: '5a54be21e8a71d136fb536a1'
        ),
        Comment(
          rating: 9,
          id: '5d410d151b865eaa7561c81a',
          timestamp: 1564544277.0,
          writer: 'ㅔㅋㅋㅎㅎ',
          contents: 'ㅋ\nㅋ\nㅋ\nㅋ\nㅋㅋ\nㅋ\nㅋ\n',
          movieId: '5a54be21e8a71d136fb536a1'
        ),
        Comment(
          rating: 6,
          id: '5d3bbcdd1b865eaa7561c817',
          timestamp: 1564196061.0,
          writer: '중국인',
          contents: '나나 이뻐요.',
          movieId: '5a54be21e8a71d136fb536a1'
        ),
        Comment(
          rating: 7,
          id: '5d39b7041b865eaa7561c813',
          timestamp: 1564063492.0,
          writer: '중국인',
          contents: '가로모드 잼',
          movieId: '5a54be21e8a71d136fb536a1'
        ),
        Comment(
          rating: 10,
          id: '5d2dac281b865e00101b8942',
          timestamp: 1563274280.0,
          writer: '쥬만지',
          contents: '시마이\n',
          movieId: '5a54be21e8a71d136fb536a1'
        ),
        Comment(
          rating: 8,
          id: '5d1a162d1b865ef2de73b92e',
          timestamp: 1561990701.0,
          writer: '마리',
          contents: '꾼\n재\n미\n있\n어\n요',
          movieId: '5a54be21e8a71d136fb536a1'
        ),
        Comment(
          rating: 6,
          id: '5d19fcd41b865ef2de73b92d',
          timestamp: 1561984212.0,
          writer: '마리',
          contents: '꾼 재미있습니다. 꾼 재미있습니다. 꾼 재미있습니다. 꾼 재미있습니다.',
          movieId: '5a54be21e8a71d136fb536a1'
        ),
        Comment(
          rating: 7,
          id: '5d18c0e71b865ef2de73b927',
          timestamp: 1561903335.0,
          writer: '마리',
          contents: '꾼 다시 한 번 봐야할 것 같습니다.',
          movieId: '5a54be21e8a71d136fb536a1'
        ),
        Comment(
          rating: 7,
          id: '5d18c0da1b865ef2de73b926',
          timestamp: 1561903322.0,
          writer: '마리',
          contents: '꾼 다시 한 번 봐야할 것 같습니다.',
          movieId: '5a54be21e8a71d136fb536a1'
        ),
        Comment(
          rating: 8,
          id: '5cedd5a31b865e000f35e278',
          timestamp: 1559090595.0,
          writer: 'Dkrlrhdfyd',
          contents: 'ㅂㅈㄷㄱ',
          movieId: '5a54be21e8a71d136fb536a1'
        ),
        Comment(
          rating: 10,
          id: '5cedd4f81b865e000f35e276',
          timestamp: 1559090424.0,
          writer: 'Dkrlrhdfyd',
          contents: 'ㅁ435345234',
          movieId: '5a54be21e8a71d136fb536a1'
        ),
        Comment(
          rating: 9,
          id: '5cedd4121b865e000f35e273',
          timestamp: 1559090194.0,
          writer: 'Dkrlrhdfyd',
          contents: 'ㅗㅎ56555656',
          movieId: '5a54be21e8a71d136fb536a1'
        ),
        Comment(
          rating: 8,
          id: '5cedd4051b865e000f35e272',
          timestamp: 1559090181.0,
          writer: 'Dkrlrhdfyd',
          contents: '76ㅕㅅ7ㅕ',
          movieId: '5a54be21e8a71d136fb536a1'
        ),
        Comment(
          rating: 4,
          id: '5cecb90b1b865e000f35e26b',
          timestamp: 1559017739.0,
          writer: 'Dkrlrhdfyd',
          contents: 'ㅁㅇㄹㅁㅇㄹㄴㅇㄹ',
          movieId: '5a54be21e8a71d136fb536a1'
        ),
        Comment(
          rating: 10,
          id: '5cdfb8a91b865e62357c1c0b',
          timestamp: 1558165673.68995,
          writer: '재밌쩡',
          contents: '꾼',
          movieId: '5a54be21e8a71d136fb536a1'
    )
      ]),
      CommentsResponse(movieId: '5a54c2f8e8a71d136fb537a7', comments: [
        Comment(
          rating: 10,
          id: '5d852b6c1b865e5bd872753a',
          timestamp: 1569008492.0,
          writer: '쥬만지',
          contents: 'new world',
          movieId: '5a54c2f8e8a71d136fb537a7'
        ),
        Comment(
          rating: 5,
          id: '5d83bb691b865edd5e016fc6',
          timestamp: 1568914281.0,
          writer: '델리만쥬',
          contents: '재미남',
          movieId: '5a54c2f8e8a71d136fb537a7'
        ),
        Comment(
          rating: 10,
          id: '5d80f7061b865e90542b7b36',
          timestamp: 1568732907.08833,
          writer: 'we',
          contents: 'Eee',
          movieId: '5a54c2f8e8a71d136fb537a7'
        ),
        Comment(
          rating: 3,
          id: '5d6d54d91b865e1a285e3aca',
          timestamp: 1567446233.0,
          writer: 'ㅁㄴ암ㄴㅇ',
          contents: '재밌지 ',
          movieId: '5a54c2f8e8a71d136fb537a7'
        ),
        Comment(
          rating: 10,
          id: '5d6d2f511b865e1a285e3ac4',
          timestamp: 1567436625.0,
          writer: '오렌지 말랭이ㄴㅇㄹㄴ이',
          contents: '1232123',
          movieId: '5a54c2f8e8a71d136fb537a7'
        ),
        Comment(
          rating: 10,
          id: '5d3b07661b865eaa7561c815',
          timestamp: 1564149607.0,
          writer: '중국인',
          contents: '쥬만지',
          movieId: '5a54c2f8e8a71d136fb537a7'
        ),
        Comment(
          rating: 5,
          id: '5d3501b01b865efcb44afca6',
          timestamp: 1563754928.0,
          writer: 'ㅎㅎ',
          contents: 'ㅋ\nㅋ\nㅋ\nㅋ\nㅋ\nㅋ\n',
          movieId: '5a54c2f8e8a71d136fb537a7'
        ),
        Comment(
          rating: 7,
          id: '5d3501a21b865efcb44afca5',
          timestamp: 1563754914.0,
          writer: 'ㅎㅎ',
          contents: 'ㅋㅋ',
          movieId: '5a54c2f8e8a71d136fb537a7'
        ),
        Comment(
          rating: 6,
          id: '5d18c9bf1b865ef2de73b92c',
          timestamp: 1561905599.0,
          writer: '쥬만지',
          contents: '쥬만지는 재밌어요.',
          movieId: '5a54c2f8e8a71d136fb537a7'
        ),
        Comment(
          rating: 5,
          id: '5d18c1181b865ef2de73b928',
          timestamp: 1561903384.0,
          writer: '마리',
          contents: '주는지 다시 한번 봐야할 것 같습니다.',
          movieId: '5a54c2f8e8a71d136fb537a7'
        ),
        Comment(
          rating: 6,
          id: '5cedd52c1b865e000f35e277',
          timestamp: 1559090476.0,
          writer: 'Dkrlrhdfyd',
          contents: '567567',
          movieId: '5a54c2f8e8a71d136fb537a7'
        ),
        Comment(
          rating: 8,
          id: '5cb07d931b865eaa0a00cd88',
          timestamp: 1555070355.45803,
          writer: '지아ㅓㄱ',
          contents: 'ㅑㅌ탕아하오하',
          movieId: '5a54c2f8e8a71d136fb537a7'
        ),
        Comment(
          rating: 5,
          id: '5cb07d8c1b865eaa0a00cd87',
          timestamp: 1555070347.94457,
          writer: '지아ㅓㄱ',
          contents: 'ㄴㅇㅇㄹ',
          movieId: '5a54c2f8e8a71d136fb537a7'
        ),
        Comment(
          rating: 1,
          id: '5caced361b865eb2fe2020a8',
          timestamp: 1554836789.95043,
          writer: '노잼',
          contents: '핵노잼',
          movieId: '5a54c2f8e8a71d136fb537a7'
        ),
        Comment(
          rating: 10,
          id: '5caced2d1b865eb2fe2020a7',
          timestamp: 1554836781.03602,
          writer: '민구니',
          contents: '만지지',
          movieId: '5a54c2f8e8a71d136fb537a7'
        )]
      ),
      CommentsResponse(movieId: '5a54df5ee8a71d136fb53d75', comments: [
        Comment(
          rating: 10,
          id: '5d8537241b865e5bd872753e',
          timestamp: 1569011492.0,
          writer: '오잉',
          contents: '극장판',
          movieId: '5a54df5ee8a71d136fb53d75'
        ),
        Comment(
          rating: 7,
          id: '5d8536ba1b865e5bd872753d',
          timestamp: 1569011386.0,
          writer: '대모험',
          contents: '떠나요',
          movieId: '5a54df5ee8a71d136fb53d75'
        ),
        Comment(
          rating: 7,
          id: '5d852a3b1b865e5bd8727539',
          timestamp: 1569008187.0,
          writer: '에러사냥꾼',
          contents: '뽀로로 화면',
          movieId: '5a54df5ee8a71d136fb53d75'
        ),
        Comment(
          rating: 10,
          id: '5d8528a81b865e5bd8727538',
          timestamp: 1569007784.0,
          writer: '에러사냥꾼',
          contents: '크롱크롱',
          movieId: '5a54df5ee8a71d136fb53d75'
        ),
        Comment(
          rating: 7,
          id: '5d83b7a11b865edd5e016fc5',
          timestamp: 1568913313.0,
          writer: '뽀로로로로로롱',
          contents: '아가들이랑 함께함',
          movieId: '5a54df5ee8a71d136fb53d75'
        ),
        Comment(
          rating: 10,
          id: '5d6e06e41b865e1a285e3ad3',
          timestamp: 1567491812.0,
          writer: '뽀로로 엄마',
          contents: '재밌지만 하구만',
          movieId: '5a54df5ee8a71d136fb53d75'
        ),
        Comment(
          rating: 7,
          id: '5d690c411b865e00110ab5f7',
          timestamp: 1567165505.0,
          writer: '뽀로로 아빠',
          contents: '재미없구먼',
          movieId: '5a54df5ee8a71d136fb53d75'
        ),
        Comment(
          rating: 5,
          id: '5d67d76e1b865e00110ab5f6',
          timestamp: 1567086446.0,
          writer: 'test',
          contents: 'Tttttt',
          movieId: '5a54df5ee8a71d136fb53d75'
        ),
        Comment(
          rating: 7,
          id: '5d3984cd1b865eaa7561c812',
          timestamp: 1564050637.0,
          writer: '뽀로로',
          contents: '뽀로로',
          movieId: '5a54df5ee8a71d136fb53d75'
        ),
        Comment(
          rating: 6,
          id: '5d1b62441b865ef2de73b92f',
          timestamp: 1562075716.0,
          writer: '마리',
          contents: '뽀로로야 ㅠㅠ 이름이 길어서 나를 힘들게하는구나.',
          movieId: '5a54df5ee8a71d136fb53d75'
        ),
        Comment(
          rating: 10,
          id: '5d18c43f1b865ef2de73b92b',
          timestamp: 1561904191.0,
          writer: '마리',
          contents: '뽀로로는 영원하다.',
          movieId: '5a54df5ee8a71d136fb53d75'
        ),
        Comment(
          rating: 6,
          id: '5d18c3171b865ef2de73b92a',
          timestamp: 1561903895.0,
          writer: '마리',
          contents: '뽀통령!!!',
          movieId: '5a54df5ee8a71d136fb53d75'
        ),
        Comment(
          rating: 10,
          id: '5d0c4e051b865ec77567a1f7',
          timestamp: 1561087493.0,
          writer: '뽀로로는 내 친구',
          contents: '내 친구 뽀로로를 보니 10점 만점에 10점!!',
          movieId: '5a54df5ee8a71d136fb53d75'
        ),
        Comment(
          rating: 10,
          id: '5cecd2a21b865e000f35e26d',
          timestamp: 1559024290.0,
          writer: 'Dkrlrhdfyd',
          contents: 'ghjfhfhfhfh',
          movieId: '5a54df5ee8a71d136fb53d75'
        ),
        Comment(
          rating: 5,
          id: '5cd927751b865ed5a10a48f0',
          timestamp: 1557735285.0,
          writer: 'Extension',
          contents: 'Extension guard let if else go break',
          movieId: '5a54df5ee8a71d136fb53d75'
        )
      ])
    ];

    CommentsResponse targetCommentsResponse;

    for (int i = 0; i < getMovieComments.length; i++) {
      if (getMovieComments[i].movieId == movieId)
        targetCommentsResponse = getMovieComments[i];
    }
    return targetCommentsResponse;
  }
}
