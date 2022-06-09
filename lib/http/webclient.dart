import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'interceptors/logging_interceptor.dart';

final Client client = InterceptedClient.build(
  interceptors: [LoggingInterceptor()],
  requestTimeout: Duration(seconds: 5),
);



Uri baseUrl = Uri.https('75a6-2804-14d-5c42-4486-8938-90b3-9b63-91b5.sa.ngrok.io','transactions');

//TODO: Altere para o seu Ip local
/*
Modelo:
  Uri baseUrl = Uri.http('your_ip:8080','transactions');


Para descobrir basta rodar o seguinte comando no terminal: `ipconfig`

No meu caso é o valor atribuído ao Endereço IPv4:

Adaptador de Rede sem Fio Wi-Fi:
   Endereço IPv4. . . . . . . .  . . . . . . . : 192.168.3.4

*/