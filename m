Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A3467A00C1
	for <lists+linux-man@lfdr.de>; Thu, 14 Sep 2023 11:49:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235913AbjINJt7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 14 Sep 2023 05:49:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237922AbjINJt5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 Sep 2023 05:49:57 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49CDB1FE9
        for <linux-man@vger.kernel.org>; Thu, 14 Sep 2023 02:49:53 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A14DC433C8;
        Thu, 14 Sep 2023 09:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694684992;
        bh=0CtQrXJil9tzFnhdlClea1xM3Ws8dA9BOTRkySt4s34=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=K2nHgUiCDcLu8uj1PrcDE28Rl68W5zoWLle0l9hsPHGXyPuEtme/uUI3uiqlpEqxi
         i5U7XVg5Gl8X9RrTBYKMFd27vG/kOTZnCe0hHGQIutoPeLtFZBchkFE021Y/2BfV/k
         VU1S2dNz7dl3uB8ESnXWtq9fYeROWhiZ30dcZgU8cvgta0eh52KcetRq0Uy9BgzriO
         CeZZVgnqo5MpMCdToq80yGFIWxSU2pCovjO4uU5aqKVREt08pGJJOHRaCL1gvz0ptW
         jDjPB1PVgOYCeVUM26iDwWXPh3mB3n6SN4j2fvEdl8ep/AMmZfXZRGN+b53jWPFvtd
         j+yofCqnJQ+RQ==
Message-ID: <6e35753c-a96b-4632-bfda-d1fae345974d@kernel.org>
Date:   Thu, 14 Sep 2023 11:49:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] close.2: Suggest shutdown(2) when closing socket from
 another thread
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc:     linux-man@vger.kernel.org
References: <d076cdedac2bc5fffb819363b9431a40840bbe3a.1694677283.git.tgolembi@redhat.com>
 <612c83fe-2dcb-4029-adf7-f37a59cce2a7@kernel.org>
Organization: Linux
In-Reply-To: <612c83fe-2dcb-4029-adf7-f37a59cce2a7@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------FKWxgigm0b88CxVdrXv54zTB"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------FKWxgigm0b88CxVdrXv54zTB
Content-Type: multipart/mixed; boundary="------------oPXmzmNjEPfOCnjaJa3E10c0";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc: linux-man@vger.kernel.org
Message-ID: <6e35753c-a96b-4632-bfda-d1fae345974d@kernel.org>
Subject: Re: [PATCH v2] close.2: Suggest shutdown(2) when closing socket from
 another thread
References: <d076cdedac2bc5fffb819363b9431a40840bbe3a.1694677283.git.tgolembi@redhat.com>
 <612c83fe-2dcb-4029-adf7-f37a59cce2a7@kernel.org>
In-Reply-To: <612c83fe-2dcb-4029-adf7-f37a59cce2a7@kernel.org>

--------------oPXmzmNjEPfOCnjaJa3E10c0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-09-14 11:38, Alejandro Colomar wrote:
> On 2023-09-14 09:42, Tom=C3=A1=C5=A1 Golembiovsk=C3=BD wrote:
>> This is another take on the ancient saga of closing sockets from one
>> thread while another thread is blocked on recv(2). It all started with=

>> [1,2] and continued by [3]. It was established that this is expected a=
nd
>> long term behavior or Linux and the issue was closed by Michael Kerris=
k
>> by commit c2f15a1349a7271f6c1d81361ec8b256266e1c09.
>>
>> This is all fine and the patch covered the issue in general terms.
>> However, it does not mention the specific case of sockets and shutdown=
,
>> where the issue can be (at least for the read case) mitigated by prope=
r
>> shutdown. While one may argue that such information may be implied by
>> other man pages (perhaps return value of recv(2)) and thus is redundan=
t,
>> it seems only fair to mention shutdown(2) here as it is only rarely
>> noted in Linux documentation that properly shutting down both side of
>> the socket is a good programming practice when dealing with sockets.
>>
>> As a test program I am attaching the program originally written by Luk=
as
>> Czerner. Only with small fixes here and there.
>>
>> [1] https://lore.kernel.org/linux-man/1314620800-15587-1-git-send-emai=
l-lczerner@redhat.com/
>> [2] https://bugzilla.redhat.com/show_bug.cgi?id=3D650985
>> [3] https://bugzilla.kernel.org/show_bug.cgi?id=3D53781
>>
>> ```c
>> /**
>>  * Copyright Red Hat
>>  * SPDX-License-Identifier: GPL-2.0-or-later
>>  */
>>
>> void *close_socket(void *arg) {
>>         int sockfd =3D *(int *)arg;
>>
>>         sleep(3);
>>         printf("Thread: closing socket %d\n", sockfd);
>> //      shutdown(sockfd, SHUT_RDWR);
>>         close(sockfd);
>>         return NULL;
>> }
>>
>> int client(void) {
>>         int sockfd;
>>         int len;
>>         struct sockaddr_un address;
>>         int ret;
>>         char *buffer=3Dmalloc(BUFSIZE);
>>         pthread_t thread;
>>
>>         sockfd =3D socket(AF_UNIX, SOCK_STREAM, 0);
>>
>>         address.sun_family =3D AF_UNIX;
>>         strcpy(address.sun_path, "server_socket");
>>         len =3D sizeof(address);
>>
>>         ret =3D connect(sockfd, (struct sockaddr *)&address, len);
>>         if (ret =3D=3D -1) {
>>                 perror("connect");
>>                 return 1;
>>         }
>>         printf("client connected\n");
>>
>>         ret =3D pthread_create(&thread, NULL, close_socket, (void *)&s=
ockfd);
>>         if (ret !=3D 0) {
>>                 perror("Creating thread failed");
>>                 return 1;
>>         }
>>
>>         while (1) {
>>                 ret =3D recv(sockfd,buffer,BUFSIZE,0);
>>                 if (ret < 0) {
>>                         perror("recv");
>>                         return 1;
>>                 }
>>                 printf("Data received: %s\n", buffer);
>>                 sleep(1);
>>         }
>>
>>         close(sockfd);
>>         return 0;
>> }
>>
>> int server(void) {
>>         char *message=3D"This is the message I am sending to you";
>>         struct sockaddr_un server_addr, client_addr;
>>         int server_sockfd, client_sockfd;
>>         socklen_t server_len, client_len;
>>         int ret;
>>
>>         unlink("server_socket");
>>         server_sockfd =3D socket(AF_UNIX, SOCK_STREAM, 0);
>>
>>         server_addr.sun_family =3D AF_UNIX;
>>         strcpy(server_addr.sun_path, "server_socket");
>>         server_len =3D sizeof(server_addr);
>>         bind(server_sockfd, (struct sockaddr *)&server_addr, server_le=
n);
>>
>>         listen(server_sockfd, 5);
>>
>>         client_len =3D sizeof(client_addr);
>>         client_sockfd =3D accept(server_sockfd,
>>                 (struct sockaddr *)&client_addr, &client_len);
>>
>>         printf("Server: sending data...\n");
>>         ret =3D send(client_sockfd ,message,strlen(message),0);
>>         if (ret < 0) {
>>                 perror("send");
>>                 return 1;
>>         }
>>
>>         /* simulate running server by not closing the client_socket so=
cket */
>>         return 0;
>> }
>>
>> int main() {
>>         pid_t pid;
>>
>>         pid =3D fork();
>>         if (pid < 0) {
>>                 perror("fork failed");
>>                 exit(1);
>>         }
>>         if (pid > 0) {
>>                 printf(" - starting server\n");
>>                 server();
>>                 printf(" - exiting server\n");
>>                 wait(NULL);
>>         } else {
>>                 sleep(1);
>>                 printf(" - starting client\n");
>>                 client();
>>                 printf(" - exiting client\n");
>>         }
>> }
>> ```
>=20
> Here are some fixes to the program:
>=20
> $ diff -u old.c new.c=20
> --- old.c	2023-09-14 11:35:06.556184223 +0200
> +++ new.c	2023-09-14 11:35:33.109203789 +0200
> @@ -3,6 +3,16 @@
>   * SPDX-License-Identifier: GPL-2.0-or-later
>   */
> =20
> + #include <pthread.h>
> + #include <stddef.h>
> + #include <stdio.h>
> + #include <stdlib.h>
> + #include <string.h>
> + #include <sys/socket.h>
> + #include <sys/un.h>
> + #include <sys/wait.h>
> + #include <unistd.h>
> +
>  void *close_socket(void *arg) {
>          int sockfd =3D *(int *)arg;
> =20
> @@ -15,10 +25,11 @@
> =20
>  int client(void) {
>          int sockfd;
> -        int len;
> +        socklen_t len;
>          struct sockaddr_un address;
>          int ret;
> -        char *buffer=3Dmalloc(BUFSIZE);
> +        ssize_t r;
> +        char *buffer=3Dmalloc(BUFSIZ);
>          pthread_t thread;
> =20
>          sockfd =3D socket(AF_UNIX, SOCK_STREAM, 0);
> @@ -41,8 +52,8 @@
>          }
> =20
>          while (1) {
> -                ret =3D recv(sockfd,buffer,BUFSIZE,0);
> -                if (ret < 0) {
> +                r =3D recv(sockfd, buffer, BUFSIZ, 0);
> +                if (r < 0) {
>                          perror("recv");
>                          return 1;
>                  }
> @@ -59,7 +70,7 @@
>          struct sockaddr_un server_addr, client_addr;
>          int server_sockfd, client_sockfd;
>          socklen_t server_len, client_len;
> -        int ret;
> +        ssize_t ret;
> =20
>          unlink("server_socket");
>          server_sockfd =3D socket(AF_UNIX, SOCK_STREAM, 0);
> @@ -76,7 +87,7 @@
>                  (struct sockaddr *)&client_addr, &client_len);
> =20
>          printf("Server: sending data...\n");
> -        ret =3D send(client_sockfd ,message,strlen(message),0);
> +        ret =3D send(client_sockfd, message, strlen(message), 0);
>          if (ret < 0) {
>                  perror("send");
>                  return 1;
>=20
>=20
> After those fixes, I still get a warning of dead code:
>=20
> $ clang -Weverything -Wno-missing-prototypes new.c
> new.c:64:9: warning: code will never be executed [-Wunreachable-code]
>         close(sockfd);
>         ^~~~~
> 1 warning generated.

And one from clang-tidy(1):

/home/alx/tmp/new.c:81:9: error: the value returned by this function shou=
ld be used [bugprone-unused-return-value,-warnings-as-errors]
        bind(server_sockfd, (struct sockaddr *)&server_addr, server_len);=

        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

It seems it didn't realize about the ignored return value of listen(2),
but it seems there are a few functions whose error shouldn't be ignored.


And a couple from cppcheck(1):

$ cppcheck --enable=3Dall --error-exitcode=3D2 --inconclusive --quiet \
           --suppressions-list=3D./etc/cppcheck/cppcheck.suppress \
           /home/alx/tmp/new.c;
/home/alx/tmp/new.c:44:17: error: Memory leak: buffer [memleak]
                return 1;
                ^
/home/alx/tmp/new.c:51:17: error: Memory leak: buffer [memleak]
                return 1;
                ^

Cheers,
Alex


>=20
>>
>> Signed-off-by: Tom=C3=A1=C5=A1 Golembiovsk=C3=BD <tgolembi@redhat.com>=

>> ---
>>
>> v2: updated test file header
>>
>>  man2/close.2 | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/man2/close.2 b/man2/close.2
>> index 68211bc58..08c6a0839 100644
>> --- a/man2/close.2
>> +++ b/man2/close.2
>> @@ -145,6 +145,11 @@ Thus, the blocking system call in the first threa=
d may successfully
>>  complete after the
>>  .BR close ()
>>  in the second thread.
>> +.PP
>> +When dealing with sockets,
>> +blocking forever in another thread may be prevented by using
>> +.BR shutdown (2)
>> +to shut down both parts of the connection before closing the socket.
>>  .\"
>>  .SS Dealing with error returns from close()
>>  A careful programmer will check the return value of
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------oPXmzmNjEPfOCnjaJa3E10c0--

--------------FKWxgigm0b88CxVdrXv54zTB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUC1zgACgkQnowa+77/
2zL56BAAmpFaG/IVhKUIpE8T4FYIY/J/lepv8wP5VOWU3LWkBtqCyOZl4WxGUslX
IKrta6ahnSSYU7djV4F+rGUz8BGEWWozrgd1crANyoHzCoRQoRRvHrw5at1cv4QJ
/VKofh2ykorf6Dm4sJGFioB2VGN76r68GC1eMaAnP6SXFwcR5p2wA/lr6ZjE4wFL
ey33V1dWCjNeWS/JExvm7y1PdZ24LHtY77FAkdGyOrpzPGRgmaQ4Y20w9ZqMYJmV
gOtS2cub5Se/miqIbJ6AJX33T8vbebSopbPcqNYG6Nfcr/lFskA8HO6+4wOmTVFS
612CckJbLaqZO2dQ8gVTyJxBm1Kwfn6DbMXMBpyslHzCpgTfjdcvHQPsnwN5FtUj
/qDLVuiVvETYa7aRuS/aWcJALOE0IUGuiif3NseAMNk9HdviC0aIzVWvL65Qy4KF
Fm26v8la+MCBmvFz+7kxh9Xgaplbzh5b3mVgK7XNJA88SuJR73VjhBBcf8xnpjAa
ZnabNPJ8Tp3qoHWjhwOkUfi58fr74EQN0dnAn6owFebe+kIR4ae6tFkNyHAxHo5u
HI/tm2kGXYDLTwDdPBYztYs+YjU3Cy9TxvIS4xNDd8ESVfus0aG34/nAT/Y1m+oH
O94cCckixARfyNVpb8MxM1yA7trR3V8m20KtcLbWn5uP9LW75d8=
=9q9F
-----END PGP SIGNATURE-----

--------------FKWxgigm0b88CxVdrXv54zTB--
