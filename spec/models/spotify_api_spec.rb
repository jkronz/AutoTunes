require 'spec_helper'

describe SpotifyApi do

  describe 'searching' do
    it "should build the correct URL" do
      url = SpotifyApi.build_url("New Order")
      url.should == "http://ws.spotify.com/search/1/track.json?q=New%20Order"
    end

    #this is pretty long :(
    let :response_hash do
      {"info"=> {
              "num_results" => 417,
              "limit" => 100,
              "offset" => 0,
              "query" => "kaizers orchestra",
              "type" => "track",
              "page" => 1
      }, "tracks" => [
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:5AN6A9IR1g1xRgY0RoKOsT",
                              "name" => "Hjerteknuser",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Hjerteknuser",
                      "popularity" => "0.66900",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1002070"
                              }
                      ],
                      "length" => 199.407,
                      "href" => "spotify:track:6dKWi7apHjn2W7Ojncv4Wu",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "1"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:2oZ0PnxiH9LaoUAFzlPSGK",
                              "name" => "Siste dans",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Siste dans",
                      "popularity" => "0.65046",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1202060"
                              }
                      ],
                      "length" => 217.891,
                      "href" => "spotify:track:0z26fQRDfSwxxuyKYrjZn3",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "1"
              },
              {
                      "album" => {
                              "released" => "2010",
                              "href" => "spotify:album:6jbtJwRmuezfOSXyJy3tRZ",
                              "name" => "Violeta Violeta Volume I",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Hjerteknuser",
                      "popularity" => "0.63283",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1002070"
                              }
                      ],
                      "length" => 200.322,
                      "href" => "spotify:track:3NThq9BqYtKYBfsHIogjM6",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "7"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:5E9Kg0KC7H0CWOVongiKRe",
                              "name" => "Violeta Violeta Volume III",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Begravelsespolka",
                      "popularity" => "0.61530",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1202020"
                              }
                      ],
                      "length" => 426.58,
                      "href" => "spotify:track:4k2VAoUhJx7lxMscgY8USe",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "1"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:0hoeWFBKo9kGoKMhKOuKRY",
                              "name" => "V\u00e5re Demoner",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Prosessen (The Process)",
                      "popularity" => "0.61067",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0901100"
                              }
                      ],
                      "length" => 250.572,
                      "href" => "spotify:track:0RpzT6xIqxzc9xht3QUqeB",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "10"
              },
              {
                      "album" => {
                              "released" => "2011",
                              "href" => "spotify:album:60jPiwq3HElMGtvR6z6SAP",
                              "name" => "Violeta Violeta Volume II",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Dr\u00f8m videre Violeta",
                      "popularity" => "0.60326",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1101040"
                              }
                      ],
                      "length" => 207.878,
                      "href" => "spotify:track:2kEBylVsJZI0A5N5Vx643q",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "4"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:5E9Kg0KC7H0CWOVongiKRe",
                              "name" => "Violeta Violeta Volume III",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Siste dans",
                      "popularity" => "0.58751",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1202060"
                              }
                      ],
                      "length" => 218.623,
                      "href" => "spotify:track:5kYo1LTGsEwvTV7xSRXI1R",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "6"
              },
              {
                      "album" => {
                              "released" => "2010",
                              "href" => "spotify:album:6jbtJwRmuezfOSXyJy3tRZ",
                              "name" => "Violeta Violeta Volume I",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Diamant Til Kull",
                      "popularity" => "0.58079",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1002020"
                              }
                      ],
                      "length" => 285.293,
                      "href" => "spotify:track:1t9BnujwI2T9YUJmPMtxsa",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "2"
              },
              {
                      "album" => {
                              "released" => "2001",
                              "href" => "spotify:album:3X9sIttglnkMeSE9iMbZPP",
                              "name" => "Ompa Til Du D\u00f8r",
                              "availability" => {
                                      "territories" => "worldwide"
                              }
                      },
                      "name" => "Ompa til du d\u00f8r",
                      "popularity" => "0.57815",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0101020"
                              }
                      ],
                      "length" => 304.745,
                      "href" => "spotify:track:1OhVVyfSAZwMH6i3xyVGWu",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "2"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:0IzOqSIx2qvjQDR7dVKx0q",
                              "name" => "Dr\u00f8m videre Violeta",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Dr\u00f8m videre Violeta",
                      "popularity" => "0.56023",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1101040"
                              }
                      ],
                      "length" => 208.427,
                      "href" => "spotify:track:2PAmrCTaTZ0zRYBGVzUxyZ",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "1"
              },
              {
                      "album" => {
                              "released" => "2001",
                              "href" => "spotify:album:3X9sIttglnkMeSE9iMbZPP",
                              "name" => "Ompa Til Du D\u00f8r",
                              "availability" => {
                                      "territories" => "worldwide"
                              }
                      },
                      "name" => "Resistansen",
                      "popularity" => "0.55829",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0101080"
                              }
                      ],
                      "length" => 180.033,
                      "href" => "spotify:track:4WqkCo9BNKSLRUg5O2Aaem",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "8"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:5E9Kg0KC7H0CWOVongiKRe",
                              "name" => "Violeta Violeta Volume III",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Forloveren",
                      "popularity" => "0.55309",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1202030"
                              }
                      ],
                      "length" => 447.391,
                      "href" => "spotify:track:1Tl8PD55niV3ssL7zievNC",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "2"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:5E9Kg0KC7H0CWOVongiKRe",
                              "name" => "Violeta Violeta Volume III",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Aldri vodka, Violeta",
                      "popularity" => "0.54901",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1202010"
                              }
                      ],
                      "length" => 413.664,
                      "href" => "spotify:track:2YD9vp1siKm4c1uBuCypQ9",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "3"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:5qjfEs5Nl6c9bXlf6QKR5N",
                              "name" => "Aldri vodka, Violeta",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Aldri vodka, Violeta",
                      "popularity" => "0.54725",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1202010"
                              }
                      ],
                      "length" => 411.39,
                      "href" => "spotify:track:0p13DN7nKfp4ePuR3LxFOw",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "1"
              },
              {
                      "album" => {
                              "released" => "2011",
                              "href" => "spotify:album:60jPiwq3HElMGtvR6z6SAP",
                              "name" => "Violeta Violeta Volume II",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Tusen dr\u00e5per regn",
                      "popularity" => "0.54688",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1101030"
                              }
                      ],
                      "length" => 227.513,
                      "href" => "spotify:track:0keOYIEWLBZh2LvpvQOtzS",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "3"
              },
              {
                      "album" => {
                              "released" => "2001",
                              "href" => "spotify:album:3X9sIttglnkMeSE9iMbZPP",
                              "name" => "Ompa Til Du D\u00f8r",
                              "availability" => {
                                      "territories" => "worldwide"
                              }
                      },
                      "name" => "Kontroll p\u00e5 kontinentet",
                      "popularity" => "0.54072",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0101010"
                              }
                      ],
                      "length" => 241.422,
                      "href" => "spotify:track:0PM2l2BLvo8EP9oyjCN1KH",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "1"
              },
              {
                      "album" => {
                              "released" => "2010",
                              "href" => "spotify:album:6jbtJwRmuezfOSXyJy3tRZ",
                              "name" => "Violeta Violeta Volume I",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Philemon Arthur & the Dung",
                      "popularity" => "0.53815",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1002010"
                              }
                      ],
                      "length" => 202.936,
                      "href" => "spotify:track:2F3INZgLaTgRhaT5mUaI2i",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "1"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:5E9Kg0KC7H0CWOVongiKRe",
                              "name" => "Violeta Violeta Volume III",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Markedet bestemmer",
                      "popularity" => "0.53519",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1202070"
                              }
                      ],
                      "length" => 390.265,
                      "href" => "spotify:track:2aGBMMLvM0T5gN4YTcwDNy",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "7"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:5E9Kg0KC7H0CWOVongiKRe",
                              "name" => "Violeta Violeta Volume III",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Satan i halsen",
                      "popularity" => "0.53111",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1202080"
                              }
                      ],
                      "length" => 270.05,
                      "href" => "spotify:track:0d2gpe33Pqvz4XzFurUXov",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "8"
              },
              {
                      "album" => {
                              "released" => "2005",
                              "href" => "spotify:album:7iQ7Es143ejfki6YqXkDIt",
                              "name" => "Maestro",
                              "availability" => {
                                      "territories" => "AT BE CH CN CZ DE DK EE ES FI FR HK HR HU IE IT LT LU LV MY NL NO PL PT RU SE SG SK TH TR TW UA ZA"
                              }
                      },
                      "name" => "Maestro - Album Edit",
                      "popularity" => "0.52893",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOKAZ0510020"
                              }
                      ],
                      "length" => 280.953,
                      "href" => "spotify:track:2oUvEYqPuWqAQvcDokPhfR",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "2"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:5E9Kg0KC7H0CWOVongiKRe",
                              "name" => "Violeta Violeta Volume III",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Tvilling",
                      "popularity" => "0.52878",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1202040"
                              }
                      ],
                      "length" => 458.921,
                      "href" => "spotify:track:0jLZDDMjAUSd485DW4GxWR",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "4"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:5E9Kg0KC7H0CWOVongiKRe",
                              "name" => "Violeta Violeta Volume III",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Sekskl\u00f8ver",
                      "popularity" => "0.52803",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1202100"
                              }
                      ],
                      "length" => 376.905,
                      "href" => "spotify:track:1WifkJ6FVHwRvW2sgeZ8gR",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "10"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:2GcMkLEUSSY4MHINjALQyK",
                              "name" => "Tusen dr\u00e5per regn",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Tusen dr\u00e5per regn",
                      "popularity" => "0.52168",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1101030"
                              }
                      ],
                      "length" => 225.395,
                      "href" => "spotify:track:6YjCthZn1tPYSchnifv2jY",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "1"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:5E9Kg0KC7H0CWOVongiKRe",
                              "name" => "Violeta Violeta Volume III",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Perfekt i en dr\u00f8m",
                      "popularity" => "0.52148",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1202090"
                              }
                      ],
                      "length" => 464.176,
                      "href" => "spotify:track:2Kwt5ExJvbCSeVOFQBUVJX",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "9"
              },
              {
                      "album" => {
                              "released" => "2010",
                              "href" => "spotify:album:6jbtJwRmuezfOSXyJy3tRZ",
                              "name" => "Violeta Violeta Volume I",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "En for orgelet, en for meg",
                      "popularity" => "0.51897",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1002050"
                              }
                      ],
                      "length" => 186.125,
                      "href" => "spotify:track:2ui0zLmB76jdPgWxneH6Vj",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "5"
              },
              {
                      "album" => {
                              "released" => "2001",
                              "href" => "spotify:album:3X9sIttglnkMeSE9iMbZPP",
                              "name" => "Ompa Til Du D\u00f8r",
                              "availability" => {
                                      "territories" => "worldwide"
                              }
                      },
                      "name" => "170",
                      "popularity" => "0.51059",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0101040"
                              }
                      ],
                      "length" => 253.501,
                      "href" => "spotify:track:2rSWcMbuxjJsUmGrIKFiZT",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "4"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:5E9Kg0KC7H0CWOVongiKRe",
                              "name" => "Violeta Violeta Volume III",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Det polaroide liv",
                      "popularity" => "0.51033",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1202050"
                              }
                      ],
                      "length" => 230.702,
                      "href" => "spotify:track:5BNPRLwIBencVeVaXJXBSF",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "5"
              },
              {
                      "album" => {
                              "released" => "2011",
                              "href" => "spotify:album:60jPiwq3HElMGtvR6z6SAP",
                              "name" => "Violeta Violeta Volume II",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "St\u00f8v og sand",
                      "popularity" => "0.50211",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1101020"
                              }
                      ],
                      "length" => 229.343,
                      "href" => "spotify:track:0dSuDglU6hVSGeUX4ZOhbI",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "2"
              },
              {
                      "album" => {
                              "released" => "2001",
                              "href" => "spotify:album:3X9sIttglnkMeSE9iMbZPP",
                              "name" => "Ompa Til Du D\u00f8r",
                              "availability" => {
                                      "territories" => "worldwide"
                              }
                      },
                      "name" => "Bris",
                      "popularity" => "0.50190",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0101110"
                              }
                      ],
                      "length" => 215.329,
                      "href" => "spotify:track:3hffCKdLCnm0NRbMwrI4Wu",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "11"
              },
              {
                      "album" => {
                              "released" => "2011",
                              "href" => "spotify:album:60jPiwq3HElMGtvR6z6SAP",
                              "name" => "Violeta Violeta Volume II",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "I ett med verden",
                      "popularity" => "0.49251",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1101010"
                              }
                      ],
                      "length" => 344.72,
                      "href" => "spotify:track:4IUnNFJ0TlA4Tesuyn9K0G",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "1"
              },
              {
                      "album" => {
                              "released" => "2010",
                              "href" => "spotify:album:6jbtJwRmuezfOSXyJy3tRZ",
                              "name" => "Violeta Violeta Volume I",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Din kjole lukter bensin, mor",
                      "popularity" => "0.49043",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1002040"
                              }
                      ],
                      "length" => 196.949,
                      "href" => "spotify:track:7iB3zxMgLq4gBUF7M0fvTj",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "4"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:0hoeWFBKo9kGoKMhKOuKRY",
                              "name" => "V\u00e5re Demoner",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Die Polizei (The Police)",
                      "popularity" => "0.48895",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0901030"
                              }
                      ],
                      "length" => 297.084,
                      "href" => "spotify:track:2QOwhm3MkT3jceVTssZ3K6",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "3"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:1IyEeqVQzrmQVisIY7sDGy",
                              "name" => "Die Polizei (The Police)",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Die Polizei (The Police)",
                      "popularity" => "0.48770",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0901030"
                              }
                      ],
                      "length" => 297.346,
                      "href" => "spotify:track:0CdSOQ0A0XenHt9PEJ3uld",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "1"
              },
              {
                      "album" => {
                              "released" => "2010",
                              "href" => "spotify:album:6jbtJwRmuezfOSXyJy3tRZ",
                              "name" => "Violeta Violeta Volume I",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Svarte katter & flosshatter",
                      "popularity" => "0.48509",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1002090"
                              }
                      ],
                      "length" => 313.268,
                      "href" => "spotify:track:3vhHtVDSzT0TniZES4Nyoc",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "9"
              },
              {
                      "album" => {
                              "released" => "2010",
                              "href" => "spotify:album:6jbtJwRmuezfOSXyJy3tRZ",
                              "name" => "Violeta Violeta Volume I",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Tumor i ditt hjerte",
                      "popularity" => "0.48430",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1002060"
                              }
                      ],
                      "length" => 264.429,
                      "href" => "spotify:track:1pBUTf3ciBWCazHif13uhN",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "6"
              },
              {
                      "album" => {
                              "released" => "2011",
                              "href" => "spotify:album:60jPiwq3HElMGtvR6z6SAP",
                              "name" => "Violeta Violeta Volume II",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Silver",
                      "popularity" => "0.47904",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1101080"
                              }
                      ],
                      "length" => 252.638,
                      "href" => "spotify:track:5qNmgu58vibfSd7Ck49dG8",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "8"
              },
              {
                      "album" => {
                              "released" => "2005",
                              "href" => "spotify:album:7iQ7Es143ejfki6YqXkDIt",
                              "name" => "Maestro",
                              "availability" => {
                                      "territories" => "AT BE CH CN CZ DE DK EE ES FI FR HK HR HU IE IT LT LU LV MY NL NO PL PT RU SE SG SK TH TR TW UA ZA"
                              }
                      },
                      "name" => "Knekker Deg Til Sist",
                      "popularity" => "0.47466",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOKAZ0510030"
                              }
                      ],
                      "length" => 223.983,
                      "href" => "spotify:track:5xncn9EFy7lQBI8hsCQlIJ",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "3"
              },
              {
                      "album" => {
                              "released" => "2010",
                              "href" => "spotify:album:6jbtJwRmuezfOSXyJy3tRZ",
                              "name" => "Violeta Violeta Volume I",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Psycho under min hatt",
                      "popularity" => "0.46872",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1002080"
                              }
                      ],
                      "length" => 183.328,
                      "href" => "spotify:track:2LcJ23OzTWtq4X7kSUStk8",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "8"
              },
              {
                      "album" => {
                              "released" => "2011",
                              "href" => "spotify:album:60jPiwq3HElMGtvR6z6SAP",
                              "name" => "Violeta Violeta Volume II",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Far til datter",
                      "popularity" => "0.46866",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1101070"
                              }
                      ],
                      "length" => 210.623,
                      "href" => "spotify:track:6VmjzWxTR1TZHqDpFfzTzm",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "5"
              },
              {
                      "album" => {
                              "released" => "2001",
                              "href" => "spotify:album:3X9sIttglnkMeSE9iMbZPP",
                              "name" => "Ompa Til Du D\u00f8r",
                              "availability" => {
                                      "territories" => "worldwide"
                              }
                      },
                      "name" => "B\u00f8n fra helvete",
                      "popularity" => "0.46410",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0101030"
                              }
                      ],
                      "length" => 240.402,
                      "href" => "spotify:track:5vw1t121Awjj7yeBGlvYTO",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "3"
              },
              {
                      "album" => {
                              "released" => "2010",
                              "href" => "spotify:album:6jbtJwRmuezfOSXyJy3tRZ",
                              "name" => "Violeta Violeta Volume I",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Femtakt filosofi",
                      "popularity" => "0.46328",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1002030"
                              }
                      ],
                      "length" => 223.512,
                      "href" => "spotify:track:4N2Us3MaQUKklbHw37JXHk",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "3"
              },
              {
                      "album" => {
                              "released" => "2001",
                              "href" => "spotify:album:3X9sIttglnkMeSE9iMbZPP",
                              "name" => "Ompa Til Du D\u00f8r",
                              "availability" => {
                                      "territories" => "worldwide"
                              }
                      },
                      "name" => "Dekk bord",
                      "popularity" => "0.46210",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0101090"
                              }
                      ],
                      "length" => 216.218,
                      "href" => "spotify:track:5c14BDxHgoJhHd5bgjEEv8",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "9"
              },
              {
                      "album" => {
                              "released" => "2001",
                              "href" => "spotify:album:3X9sIttglnkMeSE9iMbZPP",
                              "name" => "Ompa Til Du D\u00f8r",
                              "availability" => {
                                      "territories" => "worldwide"
                              }
                      },
                      "name" => "Bak et halleluja",
                      "popularity" => "0.45864",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0101100"
                              }
                      ],
                      "length" => 115.56,
                      "href" => "spotify:track:23uNRhqWZuwJvFGW1oSECE",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "10"
              },
              {
                      "album" => {
                              "released" => "2002",
                              "href" => "spotify:album:1r9QVhidokOejUj0drqLGI",
                              "name" => "Evig Pint",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Djevelens Orkester",
                      "popularity" => "0.45794",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0301050"
                              }
                      ],
                      "length" => 229.813,
                      "href" => "spotify:track:4rTumCbNdNTVcHZDWt2CGy",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "5"
              },
              {
                      "album" => {
                              "released" => "2002",
                              "href" => "spotify:album:1r9QVhidokOejUj0drqLGI",
                              "name" => "Evig Pint",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Evig Pint",
                      "popularity" => "0.45647",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0301030"
                              }
                      ],
                      "length" => 234.467,
                      "href" => "spotify:track:06nUe20rVQRPnWHbMhx6WW",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "3"
              },
              {
                      "album" => {
                              "released" => "2011",
                              "href" => "spotify:album:1AsK1pSUx2TGQo2cvzcbox",
                              "name" => "Violeta Violeta Volume I",
                              "availability" => {
                                      "territories" => "SE"
                              }
                      },
                      "name" => "Hjerteknuser",
                      "popularity" => "0.45532",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1002070"
                              }
                      ],
                      "length" => 200.322,
                      "href" => "spotify:track:3IwDm0NLizB4mtDNZwmczN",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "7"
              },
              {
                      "album" => {
                              "released" => "2001",
                              "href" => "spotify:album:3X9sIttglnkMeSE9iMbZPP",
                              "name" => "Ompa Til Du D\u00f8r",
                              "availability" => {
                                      "territories" => "worldwide"
                              }
                      },
                      "name" => "Mr. Kaizer, hans Constanse og Meg",
                      "popularity" => "0.45321",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0101120"
                              }
                      ],
                      "length" => 209.394,
                      "href" => "spotify:track:1e8cK8ACdrFOgZ4x2ShOKD",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "12"
              },
              {
                      "album" => {
                              "released" => "2008",
                              "href" => "spotify:album:3G9lkHsfLKFwh0A6UH4UD5",
                              "name" => "Maskineri",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Den Andre Er Meg",
                      "popularity" => "0.45292",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0701040"
                              }
                      ],
                      "length" => 256.716,
                      "href" => "spotify:track:1iADstHsveel9ixLAuevsH",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "3"
              },
              {
                      "album" => {
                              "released" => "2011",
                              "href" => "spotify:album:60jPiwq3HElMGtvR6z6SAP",
                              "name" => "Violeta Violeta Volume II",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Den romantiske tragedien",
                      "popularity" => "0.45148",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1101100"
                              }
                      ],
                      "length" => 312.222,
                      "href" => "spotify:track:0pNjUHT9AEfAuPaND6lGlW",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "10"
              },
              {
                      "album" => {
                              "released" => "2010",
                              "href" => "spotify:album:6jbtJwRmuezfOSXyJy3tRZ",
                              "name" => "Violeta Violeta Volume I",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Sju b\u00f8tter t\u00e5rer er nok, Beatrice",
                      "popularity" => "0.45072",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1002100"
                              }
                      ],
                      "length" => 311.307,
                      "href" => "spotify:track:39oxlSYKifLDt8Pq00FdWz",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "10"
              },
              {
                      "album" => {
                              "released" => "2001",
                              "href" => "spotify:album:3X9sIttglnkMeSE9iMbZPP",
                              "name" => "Ompa Til Du D\u00f8r",
                              "availability" => {
                                      "territories" => "worldwide"
                              }
                      },
                      "name" => "Rullett",
                      "popularity" => "0.44729",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0101050"
                              }
                      ],
                      "length" => 168.085,
                      "href" => "spotify:track:2VrVSH8k6DfaJhBJbO3PrB",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "5"
              },
              {
                      "album" => {
                              "released" => "2011",
                              "href" => "spotify:album:60jPiwq3HElMGtvR6z6SAP",
                              "name" => "Violeta Violeta Volume II",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Faen i b\u00e5ten",
                      "popularity" => "0.44502",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1101060"
                              }
                      ],
                      "length" => 122.567,
                      "href" => "spotify:track:5PB8B8a6gUhu4R14iOCIqm",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "6"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:06UOr2bKrdqtsBK7OEcDOP",
                              "name" => "Kaisers-Live i Oslo Spektrum 9. april 2011",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Hjerteknuser",
                      "popularity" => "0.44388",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1103110"
                              }
                      ],
                      "length" => 200.322,
                      "href" => "spotify:track:2rri5i2QznZbnVlYyrx7xl",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "11"
              },
              {
                      "album" => {
                              "released" => "2011",
                              "href" => "spotify:album:60jPiwq3HElMGtvR6z6SAP",
                              "name" => "Violeta Violeta Volume II",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Gresk komedie",
                      "popularity" => "0.44373",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1101050"
                              }
                      ],
                      "length" => 214.257,
                      "href" => "spotify:track:4lkZjwEEC453O1kdpRwrsL",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "7"
              },
              {
                      "album" => {
                              "released" => "2002",
                              "href" => "spotify:album:1r9QVhidokOejUj0drqLGI",
                              "name" => "Evig Pint",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Di Grind",
                      "popularity" => "0.44163",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0301010"
                              }
                      ],
                      "length" => 248.978,
                      "href" => "spotify:track:2AuIgHawPVh5XnHfqYjEGL",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "1"
              },
              {
                      "album" => {
                              "released" => "2001",
                              "href" => "spotify:album:3X9sIttglnkMeSE9iMbZPP",
                              "name" => "Ompa Til Du D\u00f8r",
                              "availability" => {
                                      "territories" => "worldwide"
                              }
                      },
                      "name" => "Fra sj\u00e5f\u00f8r til passasjer",
                      "popularity" => "0.44047",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0101070"
                              }
                      ],
                      "length" => 300.405,
                      "href" => "spotify:track:5G1v54ls5KwgiFKIpwnoY8",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "7"
              },
              {
                      "album" => {
                              "released" => "2002",
                              "href" => "spotify:album:1r9QVhidokOejUj0drqLGI",
                              "name" => "Evig Pint",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Min Kvite Russer",
                      "popularity" => "0.44005",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0301080"
                              }
                      ],
                      "length" => 273.998,
                      "href" => "spotify:track:0AaTVshXKguAAkDc1MwOdK",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "8"
              },
              {
                      "album" => {
                              "released" => "2001",
                              "href" => "spotify:album:3X9sIttglnkMeSE9iMbZPP",
                              "name" => "Ompa Til Du D\u00f8r",
                              "availability" => {
                                      "territories" => "worldwide"
                              }
                      },
                      "name" => "Dr. Mowinckel",
                      "popularity" => "0.43862",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0101060"
                              }
                      ],
                      "length" => 191.511,
                      "href" => "spotify:track:6Rnj2eIeHwvGpSLwurIdbj",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "6"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:0hoeWFBKo9kGoKMhKOuKRY",
                              "name" => "V\u00e5re Demoner",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Sonny",
                      "popularity" => "0.43838",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0901090"
                              }
                      ],
                      "length" => 252.063,
                      "href" => "spotify:track:71XegommBZbvp9mr95HtqN",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "9"
              },
              {
                      "album" => {
                              "released" => "2005",
                              "href" => "spotify:album:6LHQH396AGcKfoS9Bbwwqd",
                              "name" => "Maestro",
                              "availability" => {
                                      "territories" => "AT BE CH CZ DK EE ES FR GB HU IE LT LV NL NO PT SE SK"
                              }
                      },
                      "name" => "Maestro - Album Edit",
                      "popularity" => "0.43460",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOKAZ0510020"
                              }
                      ],
                      "length" => 280.796,
                      "href" => "spotify:track:1Z98rrGMZXJRGqu8Dx010R",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "2"
              },
              {
                      "album" => {
                              "released" => "2011",
                              "href" => "spotify:album:60jPiwq3HElMGtvR6z6SAP",
                              "name" => "Violeta Violeta Volume II",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Domino",
                      "popularity" => "0.43135",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1101090"
                              }
                      ],
                      "length" => 195.694,
                      "href" => "spotify:track:28mSuq4rrvm2GONZHg6XC7",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "9"
              },
              {
                      "album" => {
                              "released" => "2005",
                              "href" => "spotify:album:6LHQH396AGcKfoS9Bbwwqd",
                              "name" => "Maestro",
                              "availability" => {
                                      "territories" => "AT BE CH CZ DK EE ES FR GB HU IE LT LV NL NO PT SE SK"
                              }
                      },
                      "name" => "Knekker Deg Til Sist",
                      "popularity" => "0.43007",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOKAZ0510030"
                              }
                      ],
                      "length" => 219.512,
                      "href" => "spotify:track:4BqYP2L5J3ZDUYyIg9F1Ja",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "3"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:06UOr2bKrdqtsBK7OEcDOP",
                              "name" => "Kaisers-Live i Oslo Spektrum 9. april 2011",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Djevelens orkester",
                      "popularity" => "0.42831",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1103010"
                              }
                      ],
                      "length" => 207.695,
                      "href" => "spotify:track:4CkbmE4XgF03il8H2ycPTN",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "1"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:0hoeWFBKo9kGoKMhKOuKRY",
                              "name" => "V\u00e5re Demoner",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Medisin & psykiatri (Medicine and Psychiatry)",
                      "popularity" => "0.42802",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0901010"
                              }
                      ],
                      "length" => 265.37,
                      "href" => "spotify:track:3PzBs6OUBTXU00oMLSjXEc",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "1"
              },
              {
                      "album" => {
                              "released" => "2005",
                              "href" => "spotify:album:0iuoRg04arQv8hhyETnO3H",
                              "name" => "Maestro",
                              "availability" => {
                                      "territories" => "AU CA ES GB GR IT JP NO NZ PT US"
                              }
                      },
                      "name" => "Tokyo Ice Til Clementine",
                      "popularity" => "0.42427",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOKAZ0510160"
                              }
                      ],
                      "length" => 162.908,
                      "href" => "spotify:track:0Z9VdgvX1FHBAJOYI6VITs",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "3"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:0hoeWFBKo9kGoKMhKOuKRY",
                              "name" => "V\u00e5re Demoner",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "V\u00e5re demoner (Our Demons)",
                      "popularity" => "0.42234",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0901020"
                              }
                      ],
                      "length" => 160.503,
                      "href" => "spotify:track:3okvKg7jzur1nPRL9XiVB3",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "2"
              },
              {
                      "album" => {
                              "released" => "2008",
                              "href" => "spotify:album:3G9lkHsfLKFwh0A6UH4UD5",
                              "name" => "Maskineri",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Bastard S\u00f8nn",
                      "popularity" => "0.42171",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0701050"
                              }
                      ],
                      "length" => 238.938,
                      "href" => "spotify:track:3Eto8E8izG57Cxl5FZIkst",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "4"
              },
              {
                      "album" => {
                              "released" => "2002",
                              "href" => "spotify:album:1r9QVhidokOejUj0drqLGI",
                              "name" => "Evig Pint",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Salt & Pepper",
                      "popularity" => "0.42101",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0301110"
                              }
                      ],
                      "length" => 283.123,
                      "href" => "spotify:track:000XUp5RmUftwfG2hCkS7q",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "11"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:0hoeWFBKo9kGoKMhKOuKRY",
                              "name" => "V\u00e5re Demoner",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Under m\u00e5nen (Beneath the Moon)",
                      "popularity" => "0.41983",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0901120"
                              }
                      ],
                      "length" => 335.047,
                      "href" => "spotify:track:06FyYRZHoRPrRPCg04vTly",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "12"
              },
              {
                      "album" => {
                              "released" => "2008",
                              "href" => "spotify:album:3G9lkHsfLKFwh0A6UH4UD5",
                              "name" => "Maskineri",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "9mm",
                      "popularity" => "0.41901",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0701080"
                              }
                      ],
                      "length" => 191.616,
                      "href" => "spotify:track:5yOw9M43f1tL4fniaDeNI5",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "7"
              },
              {
                      "album" => {
                              "released" => "2009",
                              "href" => "spotify:album:6CSTOAMHphZGon9leEyN9c",
                              "name" => "V\u00e5re Demoner",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IM IN IO IQ IR IS IT JE JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Prosessen",
                      "popularity" => "0.41809",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0901100"
                              }
                      ],
                      "length" => 250.572,
                      "href" => "spotify:track:5S9edTU6BpUmp0enwiYoZ6",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "10"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:0hoeWFBKo9kGoKMhKOuKRY",
                              "name" => "V\u00e5re Demoner",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Fanden hakk i hel (The Devil on Our Tails)",
                      "popularity" => "0.41700",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0901040"
                              }
                      ],
                      "length" => 231.879,
                      "href" => "spotify:track:6PKtsAek4p6s9dAlZSH96D",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "4"
              },
              {
                      "album" => {
                              "released" => "2005",
                              "href" => "spotify:album:6LHQH396AGcKfoS9Bbwwqd",
                              "name" => "Maestro",
                              "availability" => {
                                      "territories" => "AT BE CH CZ DK EE ES FR GB HU IE LT LV NL NO PT SE SK"
                              }
                      },
                      "name" => "Blitzregn Baby",
                      "popularity" => "0.41357",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOKAZ0510050"
                              }
                      ],
                      "length" => 181.681,
                      "href" => "spotify:track:064PkOtpSoOEsx7rO9oCzV",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "5"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:06UOr2bKrdqtsBK7OEcDOP",
                              "name" => "Kaisers-Live i Oslo Spektrum 9. april 2011",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Philemon Arthur & the Dung",
                      "popularity" => "0.41292",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1103040"
                              }
                      ],
                      "length" => 202.57,
                      "href" => "spotify:track:02CsYkBScRPPdWj3KCxb0E",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "4"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:06UOr2bKrdqtsBK7OEcDOP",
                              "name" => "Kaisers-Live i Oslo Spektrum 9. april 2011",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Maestro",
                      "popularity" => "0.41305",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1103140"
                              }
                      ],
                      "length" => 326.863,
                      "href" => "spotify:track:42pT56y3wV78CBPSOKNZkx",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "14"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:06UOr2bKrdqtsBK7OEcDOP",
                              "name" => "Kaisers-Live i Oslo Spektrum 9. april 2011",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Ompa til du d\u00f8r",
                      "popularity" => "0.41237",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1103130"
                              }
                      ],
                      "length" => 300.98,
                      "href" => "spotify:track:5RHCcHbhvxUKTz7R7ifiaU",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "13"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:06UOr2bKrdqtsBK7OEcDOP",
                              "name" => "Kaisers-Live i Oslo Spektrum 9. april 2011",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Die Polizei",
                      "popularity" => "0.41246",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1103170"
                              }
                      ],
                      "length" => 455.627,
                      "href" => "spotify:track:1JqIoiWld1DzAl6N0tMv1W",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "17"
              },
              {
                      "album" => {
                              "released" => "2008",
                              "href" => "spotify:album:3G9lkHsfLKFwh0A6UH4UD5",
                              "name" => "Maskineri",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Enden Av November",
                      "popularity" => "0.41185",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0701010"
                              }
                      ],
                      "length" => 263.671,
                      "href" => "spotify:track:1jSqdhmVSvuJM758gCxzBv",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "9"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:06UOr2bKrdqtsBK7OEcDOP",
                              "name" => "Kaisers-Live i Oslo Spektrum 9. april 2011",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Diamant til kull",
                      "popularity" => "0.41109",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1103080"
                              }
                      ],
                      "length" => 248.507,
                      "href" => "spotify:track:6Gavxv1B2BAjMJACbfa5Dj",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "8"
              },
              {
                      "album" => {
                              "released" => "2005",
                              "href" => "spotify:album:6LHQH396AGcKfoS9Bbwwqd",
                              "name" => "Maestro",
                              "availability" => {
                                      "territories" => "AT BE CH CZ DK EE ES FR GB HU IE LT LV NL NO PT SE SK"
                              }
                      },
                      "name" => "Christiania",
                      "popularity" => "0.41001",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOKAZ0510070"
                              }
                      ],
                      "length" => 224.244,
                      "href" => "spotify:track:3u5yxA64WH64nrAkjemCEB",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "7"
              },
              {
                      "album" => {
                              "released" => "2005",
                              "href" => "spotify:album:6LHQH396AGcKfoS9Bbwwqd",
                              "name" => "Maestro",
                              "availability" => {
                                      "territories" => "AT BE CH CZ DK EE ES FR GB HU IE LT LV NL NO PT SE SK"
                              }
                      },
                      "name" => "Dieter Meyers Inst.",
                      "popularity" => "0.40818",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOKAZ0510060"
                              }
                      ],
                      "length" => 334.105,
                      "href" => "spotify:track:65Pk9PXpCi6iw6cYsOJ4sR",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "6"
              },
              {
                      "album" => {
                              "released" => "2008",
                              "href" => "spotify:album:3G9lkHsfLKFwh0A6UH4UD5",
                              "name" => "Maskineri",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Kaizers 115. Dr\u00f8m",
                      "popularity" => "0.37374",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0701110"
                              }
                      ],
                      "length" => 199.119,
                      "href" => "spotify:track:72Q4OuoUNYB51iTpXQjGii",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "11"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:0hoeWFBKo9kGoKMhKOuKRY",
                              "name" => "V\u00e5re Demoner",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Se\u00f1or Torpedo",
                      "popularity" => "0.40653",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0901070"
                              }
                      ],
                      "length" => 182.047,
                      "href" => "spotify:track:2FU21OXlJuiBuXIkOpvuj7",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "7"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:0hoeWFBKo9kGoKMhKOuKRY",
                              "name" => "V\u00e5re Demoner",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Gruvene p\u00e5 16 (The Mines on 16)",
                      "popularity" => "0.40600",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0901060"
                              }
                      ],
                      "length" => 280.561,
                      "href" => "spotify:track:6vrhL6amD3yFyT0ba2wH9V",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "6"
              },
              {
                      "album" => {
                              "released" => "2008",
                              "href" => "spotify:album:3G9lkHsfLKFwh0A6UH4UD5",
                              "name" => "Maskineri",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Maskineri",
                      "popularity" => "0.40574",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0701060"
                              }
                      ],
                      "length" => 249.683,
                      "href" => "spotify:track:1jJXHZYiTwB9KKpnCZb4mj",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "5"
              },
              {
                      "album" => {
                              "released" => "2008",
                              "href" => "spotify:album:3G9lkHsfLKFwh0A6UH4UD5",
                              "name" => "Maskineri",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Apokalyps Meg",
                      "popularity" => "0.40444",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0701030"
                              }
                      ],
                      "length" => 268.403,
                      "href" => "spotify:track:43lptpVKwF41KHzEbEJkbu",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "2"
              },
              {
                      "album" => {
                              "released" => "2002",
                              "href" => "spotify:album:1r9QVhidokOejUj0drqLGI",
                              "name" => "Evig Pint",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "De Involverte",
                      "popularity" => "0.40447",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0301040"
                              }
                      ],
                      "length" => 257.998,
                      "href" => "spotify:track:36qC4vRq4qosYykWYpKHwJ",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "4"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:6wWoVWZOmqDdYj6ayr3lg8",
                              "name" => "Philemon Arthur & the Dung",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Philemon Arthur & the Dung",
                      "popularity" => "0.40428",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1002010"
                              }
                      ],
                      "length" => 488.387,
                      "href" => "spotify:track:5TwfeUqQGy8CNUx89WSmbL",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "1"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:0hoeWFBKo9kGoKMhKOuKRY",
                              "name" => "V\u00e5re Demoner",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Kaval\u00e9r (Dance Partner)",
                      "popularity" => "0.40312",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0901050"
                              }
                      ],
                      "length" => 222.519,
                      "href" => "spotify:track:7Fnf4TphonHdmCvaBMJWVd",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "5"
              },
              {
                      "album" => {
                              "released" => "2002",
                              "href" => "spotify:album:1r9QVhidokOejUj0drqLGI",
                              "name" => "Evig Pint",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Dr\u00f8m Hardt - Requiem Part I",
                      "popularity" => "0.39729",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0301120"
                              }
                      ],
                      "length" => 505.067,
                      "href" => "spotify:track:19k4Lx1vCdSaMPcLnCUHcl",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "12"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:06UOr2bKrdqtsBK7OEcDOP",
                              "name" => "Kaisers-Live i Oslo Spektrum 9. april 2011",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "En for orgelet, en for meg",
                      "popularity" => "0.39675",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1103070"
                              }
                      ],
                      "length" => 250.102,
                      "href" => "spotify:track:7sZ2CmnqcZ4A0M0Nza5fmu",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "7"
              },
              {
                      "album" => {
                              "released" => "2008",
                              "href" => "spotify:album:3G9lkHsfLKFwh0A6UH4UD5",
                              "name" => "Maskineri",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Med En Gang Eg N\u00e5r B\u00e5nn",
                      "popularity" => "0.39665",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0701100"
                              }
                      ],
                      "length" => 250.886,
                      "href" => "spotify:track:3i0dunp0KGfVZ20w7n0oFb",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "10"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:0hoeWFBKo9kGoKMhKOuKRY",
                              "name" => "V\u00e5re Demoner",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Stormfull vals (Stormy Waltz)",
                      "popularity" => "0.39653",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0901110"
                              }
                      ],
                      "length" => 282.077,
                      "href" => "spotify:track:2DcwIcvKErjIk2KuiylHHm",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "11"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:06UOr2bKrdqtsBK7OEcDOP",
                              "name" => "Kaisers-Live i Oslo Spektrum 9. april 2011",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Senor Torpedo",
                      "popularity" => "0.39579",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1103020"
                              }
                      ],
                      "length" => 184.87,
                      "href" => "spotify:track:4omOOlZl0fp0Cpt3jjF4nJ",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "2"
              },
              {
                      "album" => {
                              "released" => "2005",
                              "href" => "spotify:album:7iQ7Es143ejfki6YqXkDIt",
                              "name" => "Maestro",
                              "availability" => {
                                      "territories" => "AT BE CH CN CZ DE DK EE ES FI FR HK HR HU IE IT LT LU LV MY NL NO PL PT RU SE SG SK TH TR TW UA ZA"
                              }
                      },
                      "name" => "Christiania",
                      "popularity" => "0.39543",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOKAZ0510070"
                              }
                      ],
                      "length" => 225.264,
                      "href" => "spotify:track:0bntBrnGxsjmQEuaiPemGL",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "7"
              },
              {
                      "album" => {
                              "released" => "2002",
                              "href" => "spotify:album:1r9QVhidokOejUj0drqLGI",
                              "name" => "Evig Pint",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Hevnervals",
                      "popularity" => "0.39420",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOPVA0301020"
                              }
                      ],
                      "length" => 170.7,
                      "href" => "spotify:track:68I0tUnySa5E7jMCniR1Sg",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "2"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:0hoeWFBKo9kGoKMhKOuKRY",
                              "name" => "V\u00e5re Demoner",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Den sjette sansen (The Sixth Sense)",
                      "popularity" => "0.39311",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL0901080"
                              }
                      ],
                      "length" => 223.382,
                      "href" => "spotify:track:4SVMTJBnSvvmKM6FhriJDg",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "8"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:06UOr2bKrdqtsBK7OEcDOP",
                              "name" => "Kaisers-Live i Oslo Spektrum 9. april 2011",
                              "availability" => {
                                      "territories" => "NO"
                              }
                      },
                      "name" => "Din kjole lukter bensin, mor",
                      "popularity" => "0.39191",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHDL1103060"
                              }
                      ],
                      "length" => 255.435,
                      "href" => "spotify:track:08UsQSXJmx1CKpS6EAvDFt",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "6"
              },
              {
                      "album" => {
                              "released" => "2008",
                              "href" => "spotify:album:0CcXJgClU7jBJXM2ZUSddf",
                              "name" => "250 Prosent",
                              "availability" => {
                                      "territories" => "AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IN IO IQ IR IS IT JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ZZ"
                              }
                      },
                      "name" => "Maestro",
                      "popularity" => "0.39102",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOKAZ0810040"
                              }
                      ],
                      "length" => 330.811,
                      "href" => "spotify:track:546oUDFfk2sshsBt5EvhX9",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "4"
              },
              {
                      "album" => {
                              "released" => "2012",
                              "href" => "spotify:album:13XikEVk01ez5oMQBTOQ6r",
                              "name" => "Vi har den \u00e6re. En hyllest til Thorbj\u00f8rn Egner",
                              "availability" => {
                                      "territories" => "worldwide"
                              }
                      },
                      "name" => "R\u00f8vervise",
                      "popularity" => "0.38863",
                      "external-ids" => [
                              {
                                      "type" => "isrc",
                                      "id" => "NOHMA1255080"
                              }
                      ],
                      "length" => 185.445,
                      "href" => "spotify:track:0iDmWBC9CZGimyQ4BdndCo",
                      "artists" => [
                              {
                                      "href" => "spotify:artist:1s1DnVoBDfp3jxjjew8cBR",
                                      "name" => "Kaizers Orchestra"
                              }
                      ],
                      "track-number" => "8"
              }
      ]}
    end

    let :success_response do
      @success = mock(Typhoeus::Response)
      @success.stub(:body).and_return(response_hash.to_json())
      @success
    end

    it "should parse a single track artist correctly" do
      result = SpotifyApi.parse_track(success_response)
      result[:artist].should == "Kaizers Orchestra"
    end

    it "should parse a single track artist correctly" do
      result = SpotifyApi.parse_track(success_response)
      result[:name].should == "Hjerteknuser"
    end

    it "should parse a single track artist correctly" do
      result = SpotifyApi.parse_track(success_response)
      result[:length].should == 199407
    end

    it "should parse a single track artist correctly" do
      result = SpotifyApi.parse_track(success_response)

      result[:uri].should == "spotify:track:6dKWi7apHjn2W7Ojncv4Wu"
    end
  end
end