import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Container(
                  width: 40,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUSEhUREhUSEhIRERESEhERERERERERGBQZGRgUGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDszPy40NTEBDAwMEA8QHhISHDQhJCQ0NDQ0NDE0NDQ0NDExNDE0NDQ0MTQ0MTQ0MTQ0NDE0NDQ0NDQ0MTQ0NDQ0NDQxNDQ0NP/AABEIARMAtwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAADAAIEBQYBBwj/xAA8EAACAQIDBgMFBQcEAwAAAAABAgADEQQSIQUGMUFRYSJxkRMygaGxI0JScsEHFTNi0eHwFCRDsoKSov/EABoBAAMBAQEBAAAAAAAAAAAAAAABAgMEBQb/xAAnEQACAgIBAwQDAAMAAAAAAAAAAQIRAyESBDFBEzJRcSJhoTOBkf/aAAwDAQACEQMRAD8AyyYc9YanhT1iSSEjsniFp4Y9Y8YUzqGHUw5C4kdsGbSHiMCZb6xeyvHY1Eo6WzWvJdHZzS6oYaTEw0XIOBRJs1ryww2BZTcSyWjDosdicDlKowEZXdzJOSc9mYWHAzmMw7GVbYRrzYVqEhthdYWCiVFHDtbhGPhW6TQJQtE9GFhxZnhhm6QdbCk8poTSgKiQsXFmYfAnpAPgzbhNG4kdxCx8WZephyOUHkNuEv6lO8F/pomxqJmaqnpFL6rgu05FY+I+m4k2kJmaONk+lj4FGiprJCLM+u0e8Ou0+8Qy+VIVElGm1B1hE2oOsANHRWS0WZqltYdZLTaw6wAvQkIqSjXaw6wTbwhD4iMsAo0qpHZJnKW8gbgNOp0kuntxGgFMsnpwDJIdXbKDiyjzNoEbXQ8CD5XPzgFFnljGEh/vEdYxtojrAZKZYGokjttEQTbREAO1UkWok7Ux4kZ8aIAdKRyJIxxgiGNEBEl0ikZsaIoAYBbwyM00ezdgCpbQmXlPcsnlJbBGDLv1jDXcc5u8Rufl5GZvauxjSPaCYyoGKfrHjFv1hqOEzScmxrjjrDkg4srlxr9YZce/WS12I9+GkPU2WKQzN2/tBSTDiztGo1gWY6jrIL1C7acSeJ5CSX5kEFSpAt+UysVGubdLfQywCtiiugueV+sam02B++PJv0nBQaxAGui+oH9DI1bDFRz/AM5ntACYmLDdbniTYk/GScDtBzUyA+H6SkTv8gfreWWDAuLA37m0ALKvtF16yP8AvZ5JxlPMoYlQTpYWv2lZ7AyXoO5K/ejd5w7SbvBJhCYVdnOdALwsKGNtFu8G20GlrR3ZrONF9Yq26mIUXKj5xWBUHaBjf3iY7E7PembMtpENKOxUHO0TFIxpxQsKPcN2dmhaam2pAmop4UAcJB2Cn2aflH0l4qxRVqwkypxmEBHCeeb2YYANp1nqOJEwu+FC1Jm8/oZm3TKirRgtl0QbS4SkLgSgwtQpYiTBjzmEpoqMjV0qKheF+g5k9JQ7xMEZUJAIGY24gnQWkzB4/TMxtlF5mMfihXru+pHfko0AihGnY5O1RJw2FNdlVAx68zNLh9yibG+XzEu9y9kqlIVCBmbX4cpp3tG5MFFGLO6KLcg9Jn9qbruLhfFPSnEjVFk8maqMTxzE7t1l1ynyErRh2VrEsjdwR857gaIPECZ7eHd5aiF6YAYC+nOCm/IpYl4MNgK5By1LZrWDEA38jJAoi/EafOQqbrnNN9NbA8gZZ4WjdgDc25X4jtNJPRlFbLPZezC9rDTraaTZ+wbOCRJ+79BPZqR2B/rNPSw4nP6jbNnjSWyJhcAAOA9ITEYAMLWliqWhCJ0J2jmkqZ55t3dzODYfKYuruy4J/pPbMRRB5StqbPB5TOVp6Li15PG6m7riKer1dmr0ik8pFfiWOwh9mv5RLtBKjYi/Zr5CXSCbx7GEu5GxAmJ33NqB+P0M3tRJjd+aF6Ddgx/+TM5LZUXo8hR45KnikZ1InaQOaasSLrDNcEdRaVOFpH2pXkDnqHteyLLDDkjzPyHWSNh4cVa9KmP+SoXqHmVWTdI0Suj1Td9CMOgI1yiSnGsHXdEp5S/s1A1ynKxFuAPL4TG496JYtQr1ab8mFd3F+6sSDMm0u5sot9jYuRAsJQ7FxWIZslUrUHKootcdxyMs9o1XpoSoueQkci+IdliyXB8pkPbYmo32mIWipPuU0UtbuzTQ7KR1X+M1dfvK4TOO6lQPQwTT8jaa8HlG9dELXdl0sx4ecbs7E1LZlIbLa6nj5jrLb9oFAJicw92oobhpfUa+kotkVMrW9B2/D/Sbx3E53qR6Bu9t4KFFS6dDxXjfiNPWegYLHo6gqwIPCxvPJqRtYrwP+WPIybg9pvRbw+7zT7vmBymEsbu4mqyKqketJXBnfaiYWhvQo0a485NXeFDwYesIuS7omUYvaZrWqCBdxKvD4vOAeskuwtLUmzJqgjuIpW13twiitjos9hn7NfIS7SZXdvGBqaWPITSU6om0JaMpLYd5k98xeg/5G/6maSrWAExG+G0hkZAeII9dJMnbocUeYVKNzO0cNrLBEvH5LGWwRXbSBp0yw+8MvlLf9naXxlz/AMdE/AkgSr24bqifif8ASW37PAf9U7/dIanfv7w+kiWkaw2z0Lbex0xSZKgZlGtldk9cp1mNxm5tNTemKyEfhcn5k3no6cNZExLqouZn9OjVb01ZS7rbMel77M3IZwoI9JY7YplkYLo2tjLHZbiomcCy3IUn71ja/reMrUyysQMxF9BxPaFXEOT5HmT7v1KjEvVqISeKUwAR00N/nLXYm7dSjUVxiHKD3kKKA3xH11mlwtRKgDLwPIixB5gjkZLVAIttd9FaT7bPO/2m0f4bdmHzE8+w1SzeX0no/wC0WoCEQ8Tn/T+k8xDansSPheaY3owyqpWbjZNYOhHUX8mHH9IarWGnlKHYeJs69G0+PKWePXw3HDWWkS3oLUxSmQ3qAEWPPrKwVjONWN46Is9m2Tb2aW/Cv0lwEBE893d28DTVSdVAE0j7bCre44TNLwU/klYlIpl8RvCW5iKacTPmQdg7aNAZT7v0moTe1AOMwMcrw9NMfJm0xm9ZYWUWmZxddqhuxgFa8IqSowSJcmJEhDThESSEpyuJPJmZ3h8OTzf6CT9w9qpTqrRcENVdSjDhmykFTIu9qWVDzDn0t/eZrD12Qq6e/Tdai+am4+YmU1ejoxyrZ9BVK1heZzF4w1ahQMFRf4jsQqgdLmWGFxa16KVU1WogYfEcPhwmP2rs1lc4rJ7WmtSz0mY5bA8e2l9eoE5HbdHdjSNomJp5UFOuoye6EqJlbsQdDEmKa4+0ysL+HNT1v15yswL7NrouemtAiylaqLTIupNy406a36QGKwWyqShy6NbJ7jPUJzPawC37+spxY08f7/4EZmoVTe+Wob35ZiZc06+YTAYOn7atfDGsmFR1v7QnK7crKfd1+OnebSl4R5TN2nQ2kYz9omIVCDcZsllF9bljraeb0eNvOaDfLaAr4yoQbqi+yU30uupP/sSPhKBBr6GdeONRODLLlItMKCLEdfQ8po2fPTBHTXsZnMMwPk2h7HkZe7Je5KNodfXnKXcT7EJ8L/nKBbDTTPge0A+B7TWjBszqBkN1JB7QlbG1WFixtLR8HItTCQ4i5FWcQ4PGckmth4oUFlqHvC01nKNGTqOHiKOU0kqnThaVCTKdGOxUBSlDrTklKUL7KFhRk9r0faZy3uqoA9df09JiqRsb8Rwbym33kf2dNwOerdteExBOSogI94eIfmPCZvZstG7/AGd7WyFsHUN11qUT2PvJ+vrPRqOEQo6MLo5N/jPHty6ZONRRrZapF+gW1u09V2ZtIAmlU8Lcs2h/v5iYSSUjog3WikxeExNAlERK1K5yqVpuvHjlbVT2BtISYTE12yGimHQnxMtOnTI4cGN2HD7s3FVVMCKQEh38nWuotbir+aItDZyUkSnTFlQ3J5s3MmZffXbow1M00P2tQEJb7o5uf07zSbR2hl8FPVubch/eeWb9ofaIxJJYNcmEEpSownJqLl5MmEJ78z1iR9YV18Ib8WkigWNj1nWcJY0KgBseekt8ExqMqqctTUKeHjXUeouPjM+w+f1El7NqkVBfkfnwiopM3mx9pCp4KgyVFOUg6XbpbkZbvhx0mSqKTasDmKr4r+8yDvzIGoPbymw2ZV9pTDHiND5iXGREo+SBVw0hVcNL6rTkKtTjszoz1fDRSxrU52FhQKgksKKSLQEsaIhQ7DU6clIkZTWSkWADkSEancEXtccRyjlWPZgouxAA5nSIa26Rj95tl1WCKqFqakscguS3InrM+2FpmmyuCKgIYXXxAj7p6TZ7W3lRAVp2Lfibh8BzmFxeNZ3LXvmOrfDlIk6O+HSZGlKSpf0tNzCtLGozkfaBkBPItw+Yno2MwgY6gHzAM8hR73buMtuVuFps9ib6Cy08VcFbBaoFwR/OOveYTi3s7JdK4RUo7LzE+0p+4xAHI6iRkxNVuLXHQC0tRi0qrmVldT95SCJHZlHCc8tGS/aI+SwJmD34F8rdDabvGYpKaFnZVsOZnmO8e0Pb1PD7i6L37zTDF3ZOSNqigAvpfT6GLLqB0iW17EX+UNUQDS3Hvedh57VE/bGANIr0dFqL6WYeo+cirZAjcc63bscxFvlLbE7XTEYZEYZa1AgK3J0tYi/obdpUNTvboDfyMANFgK5FMk6gpU/6kfrNRu/dqIdTrzHJhMtsmomRqdQ5cysgY8Fvwl3svG/6e1OoCgbRX+4/k3C/aJFM0lwyg9ZErLC0n963C4YfEf2g60oxZXVhOR1adjAZQEsaAkCgJY0RHYiXSE7jMalCn7Spe1wLAXJJ6CCr4laSF25cB1PSYvbO0mq3udOQ5Adomzu6To5Zrk9Jf0vMRvmAD7Omb8i5FvQTPbR27WrHxNYfhXQSqYmMBibPVx4IYuy2Gzk8Tfz1itoRyJv5RiwqiQdSipKmJTYWgnMMYxxBouS1Q2jiXpm9NmQ/ysRJDbZxBFjVe3mJEKThWQ4pnNKF90crV3f32ZvMkyO4hysGyx0ZShoiVKfMQbqx58PWS2WDNOUmcGXp+W0RLm4/zSSqdT1+sG9KCsRHZyShKLplthqov4hp16TR4EComRScraNTPiQ8jYHgfKY2nWI4y/3exwpuL3Kkg68u8YKLejTbvV2Gei5uabGmGPMDUfGxlrWlLsKoKhqvzNeo3ca2HyEuXbSNGUlsg1p2NrmdjIFQljRlXRaTRWCqzHgqk+ggUlbood49oZqnswfDT0825zPVHvOYjEFmZjxZifUwBeZtn0mNrHjUF4HXnQI1YRRAqOxywimDEeDA3i6HmMM7eNMCmxtpwrHRRENIGViyx8UCeKBMkYUhyI0iBEoIAUg2oyVaNIgYywxktkI0YZCdB0j2MSmOzD0IWajdzBpWVhmdKi+IOjFSR36y3wzujmjUOZrZke1s68DcdRp6zNbuYr2ddDyY5D5H+9pqttCwWoONNw3/AIHwsPQ/KUjh6vEoSVdmgVcTs5WaclHER6LTm2K2XDv3AX1M5RMjbxP9h5usGa4VeRfZk2M4JwmIGZs9nlsOIYCRA2o7iTFGkR1YXys4J0GNivA0sfecM5FAqzsUUUAORRGcJgSKciM5eBLZ2NaOWMqcCegiFL22BbjGgxE8Y28Zxt7JNCoVII4ggjzE9Arn2lL86D5iedK03mzql6FM/wAglROXrdwT+GcqcBfjFG1mnZZ5ZHpNIW8jfYj84+kPSaQN4n+zQdW/SD7G2D/IjPXnCYoxjMz03KkOpN4u/ASz4CU9I+MectS0TOjo5XF/YjOXiMbeNHU5DgZ28ZedBgCkOvO3jLxXiHyHExpMRM4TATkdvOXnLxpMZm5BAZx+HwMaDFiDZSe0kHL8W/ghK8cDAIYUGUebGdoIpm12W/8At0/LMQpmx2W/+3TyMaM+qdwX2HqtFBVWilnnAKZlfvAfAnmfpJqNIO3taano36QfY1wupoorxrmdJg2MzO6UtD8L74liWlZhj4h8ZPLQZ09JKoP7HExXg80WaB0cwl4rwYadvAakEvFeMzRZoh8h95yNvOExg5HWM5eNvOXiM3IIJzFnwHzH1iBg8Y3gt1IgKcqxv6ZCWFBgVhAYzzIsIpms2cbUE8rzJJrp10mxRMqKvRQPlKiLqJfikDqvOwdWKUcQxGkTbb/ZgfzQytIe2D4F84M0xe5FOTGMZ0wbGZnVJnVaxB6GTS0gSzxNOyow0zoCR3EC8M6tAs05mg805eBt6gXNOh4G8V4hrIHzTueAzRZoFeqHzxpaCzRZoCeULmizQWaLNAXqBlaBxj8B01j1kSq12J7xonPkqFfIlhBAqYVYHLFk7ZdHPVUcgcx8hNU5lNu/SsGqdfCJZu8pGWaVuvga8UGzRSjEjrIm1j4B5w6NIu1NUB6GJl4/cioJjCZ1oyQayY6mtyBxuQJoNs2ApIBbLT1+Mg7GwhaorHQA3lhvC/jUDkusfgvE6mimZYMiFBiI7RHRKKe0CivH2igTQy8V46KAq/Y2KOnbQHxY0CPVJwCOBgXGK8hVsOPCV7yZUPhMgkwRl1L2kOWEWCElYOnmdR1PygYxZpNnpkpKDxIufjCs0aW5QbNLOeTt2JmigmaKAgSmSqFNXurAEW4GQlaS8K1ryZdioe5A6+z6S8FlZiVVfdAEs8S8pMW+szjbOiTLPY9YAktwVbyFi6/tKjP1OnlA0KtkYfi0+EaTNGXiVLkK8V428V4jRyOkzk5eK8CbHaRXjbxQHyO3nY2K8AsdeKcE7eA0zma4I56yLDn3oVaYbjC6MJ3L/RFWWux6fiL8gLfGBXZxPukfGW9CkKahRy49zGtmcnxQYtBs0TNBs0oxGu0UGxigA2nJeH5xRSZdioe5AcTKbE8YopETaXY5T4Toiils2j7UcM5FFESxTgiigB2ciigMUUUUAOzoiigCGc/SSMLFFB9iC3wsM0UUcexhk7gmg2iilEA2iiigB//Z'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  'Hi, Amanda!',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                trailing: Icon(Icons.more_vert),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.black87,
                      ),
                      child: ListTile(
                        isThreeLine: true,
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.star_sharp,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        title: Text(
                          'Go Premium!',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Get Unlimited acess',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                height: 1.5,
                              ),
                            ),
                            Text(
                              'to all our features!',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: -1,
                      bottom: 20,
                      child: MaterialButton(
                        onPressed: () {},
                        height: 40,
                        minWidth: 40,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.lightBlueAccent,
                        child: Icon(
                          Icons.arrow_right_sharp,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Task',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ),
              ),
              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.arrow_right_sharp,
                          color: Colors.white,
                          size: 22,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
