Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F0737A005D
	for <lists+linux-man@lfdr.de>; Thu, 14 Sep 2023 11:38:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237606AbjINJim (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 14 Sep 2023 05:38:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237441AbjINJia (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 Sep 2023 05:38:30 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 994B61BFF
        for <linux-man@vger.kernel.org>; Thu, 14 Sep 2023 02:38:24 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE47FC433C8;
        Thu, 14 Sep 2023 09:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694684304;
        bh=8wcII00Od2EJhLMfgRC00KIirB9FKT0/UmyasFKXZeM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=G2F3toJWfKRZpxGMVww+CvLaNifQYiHEqLblE6kK9d9wvOfq9IuQiGSypmEMC+paV
         IMM+ow4iSSdl9YKZVPKVmpxdOnMLlX3Se39efZwXNn+xdaKeJkikO8fT3BA3Of748a
         RaqTYmi4dDhm0E/2xDI/OrCUmnQPpuHixd1F1pOy0lTlYQwodiYOu5hXdYY5iqCFih
         /YNSBRnyhVw4LH0C/AI2ZJxB3sWlRXDnPTniHY1RghwUdEtjuLCODg3OtVPNzQS5gV
         0AtT4l0xu4NCVi4JuQrXxBP9NMRJe7FsoHlYb5qErHgvAgK9tZL8J9y9lgEzV2qe8V
         4jewkjMoDwX5w==
Message-ID: <612c83fe-2dcb-4029-adf7-f37a59cce2a7@kernel.org>
Date:   Thu, 14 Sep 2023 11:38:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] close.2: Suggest shutdown(2) when closing socket from
 another thread
To:     =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc:     linux-man@vger.kernel.org
References: <d076cdedac2bc5fffb819363b9431a40840bbe3a.1694677283.git.tgolembi@redhat.com>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <d076cdedac2bc5fffb819363b9431a40840bbe3a.1694677283.git.tgolembi@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------FmMhHzo3olgme5zVlRIAzoZv"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------FmMhHzo3olgme5zVlRIAzoZv
Content-Type: multipart/mixed; boundary="------------08zwZ0RBMZz9uKhG4zveMDhp";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc: linux-man@vger.kernel.org
Message-ID: <612c83fe-2dcb-4029-adf7-f37a59cce2a7@kernel.org>
Subject: Re: [PATCH v2] close.2: Suggest shutdown(2) when closing socket from
 another thread
References: <d076cdedac2bc5fffb819363b9431a40840bbe3a.1694677283.git.tgolembi@redhat.com>
In-Reply-To: <d076cdedac2bc5fffb819363b9431a40840bbe3a.1694677283.git.tgolembi@redhat.com>

--------------08zwZ0RBMZz9uKhG4zveMDhp
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-09-14 09:42, Tom=C3=A1=C5=A1 Golembiovsk=C3=BD wrote:
> This is another take on the ancient saga of closing sockets from one
> thread while another thread is blocked on recv(2). It all started with
> [1,2] and continued by [3]. It was established that this is expected an=
d
> long term behavior or Linux and the issue was closed by Michael Kerrisk=

> by commit c2f15a1349a7271f6c1d81361ec8b256266e1c09.
>=20
> This is all fine and the patch covered the issue in general terms.
> However, it does not mention the specific case of sockets and shutdown,=

> where the issue can be (at least for the read case) mitigated by proper=

> shutdown. While one may argue that such information may be implied by
> other man pages (perhaps return value of recv(2)) and thus is redundant=
,
> it seems only fair to mention shutdown(2) here as it is only rarely
> noted in Linux documentation that properly shutting down both side of
> the socket is a good programming practice when dealing with sockets.
>=20
> As a test program I am attaching the program originally written by Luka=
s
> Czerner. Only with small fixes here and there.
>=20
> [1] https://lore.kernel.org/linux-man/1314620800-15587-1-git-send-email=
-lczerner@redhat.com/
> [2] https://bugzilla.redhat.com/show_bug.cgi?id=3D650985
> [3] https://bugzilla.kernel.org/show_bug.cgi?id=3D53781
>=20
> ```c
> /**
>  * Copyright Red Hat
>  * SPDX-License-Identifier: GPL-2.0-or-later
>  */
>=20
> void *close_socket(void *arg) {
>         int sockfd =3D *(int *)arg;
>=20
>         sleep(3);
>         printf("Thread: closing socket %d\n", sockfd);
> //      shutdown(sockfd, SHUT_RDWR);
>         close(sockfd);
>         return NULL;
> }
>=20
> int client(void) {
>         int sockfd;
>         int len;
>         struct sockaddr_un address;
>         int ret;
>         char *buffer=3Dmalloc(BUFSIZE);
>         pthread_t thread;
>=20
>         sockfd =3D socket(AF_UNIX, SOCK_STREAM, 0);
>=20
>         address.sun_family =3D AF_UNIX;
>         strcpy(address.sun_path, "server_socket");
>         len =3D sizeof(address);
>=20
>         ret =3D connect(sockfd, (struct sockaddr *)&address, len);
>         if (ret =3D=3D -1) {
>                 perror("connect");
>                 return 1;
>         }
>         printf("client connected\n");
>=20
>         ret =3D pthread_create(&thread, NULL, close_socket, (void *)&so=
ckfd);
>         if (ret !=3D 0) {
>                 perror("Creating thread failed");
>                 return 1;
>         }
>=20
>         while (1) {
>                 ret =3D recv(sockfd,buffer,BUFSIZE,0);
>                 if (ret < 0) {
>                         perror("recv");
>                         return 1;
>                 }
>                 printf("Data received: %s\n", buffer);
>                 sleep(1);
>         }
>=20
>         close(sockfd);
>         return 0;
> }
>=20
> int server(void) {
>         char *message=3D"This is the message I am sending to you";
>         struct sockaddr_un server_addr, client_addr;
>         int server_sockfd, client_sockfd;
>         socklen_t server_len, client_len;
>         int ret;
>=20
>         unlink("server_socket");
>         server_sockfd =3D socket(AF_UNIX, SOCK_STREAM, 0);
>=20
>         server_addr.sun_family =3D AF_UNIX;
>         strcpy(server_addr.sun_path, "server_socket");
>         server_len =3D sizeof(server_addr);
>         bind(server_sockfd, (struct sockaddr *)&server_addr, server_len=
);
>=20
>         listen(server_sockfd, 5);
>=20
>         client_len =3D sizeof(client_addr);
>         client_sockfd =3D accept(server_sockfd,
>                 (struct sockaddr *)&client_addr, &client_len);
>=20
>         printf("Server: sending data...\n");
>         ret =3D send(client_sockfd ,message,strlen(message),0);
>         if (ret < 0) {
>                 perror("send");
>                 return 1;
>         }
>=20
>         /* simulate running server by not closing the client_socket soc=
ket */
>         return 0;
> }
>=20
> int main() {
>         pid_t pid;
>=20
>         pid =3D fork();
>         if (pid < 0) {
>                 perror("fork failed");
>                 exit(1);
>         }
>         if (pid > 0) {
>                 printf(" - starting server\n");
>                 server();
>                 printf(" - exiting server\n");
>                 wait(NULL);
>         } else {
>                 sleep(1);
>                 printf(" - starting client\n");
>                 client();
>                 printf(" - exiting client\n");
>         }
> }
> ```

Here are some fixes to the program:

$ diff -u old.c new.c=20
--- old.c	2023-09-14 11:35:06.556184223 +0200
+++ new.c	2023-09-14 11:35:33.109203789 +0200
@@ -3,6 +3,16 @@
  * SPDX-License-Identifier: GPL-2.0-or-later
  */
=20
+ #include <pthread.h>
+ #include <stddef.h>
+ #include <stdio.h>
+ #include <stdlib.h>
+ #include <string.h>
+ #include <sys/socket.h>
+ #include <sys/un.h>
+ #include <sys/wait.h>
+ #include <unistd.h>
+
 void *close_socket(void *arg) {
         int sockfd =3D *(int *)arg;
=20
@@ -15,10 +25,11 @@
=20
 int client(void) {
         int sockfd;
-        int len;
+        socklen_t len;
         struct sockaddr_un address;
         int ret;
-        char *buffer=3Dmalloc(BUFSIZE);
+        ssize_t r;
+        char *buffer=3Dmalloc(BUFSIZ);
         pthread_t thread;
=20
         sockfd =3D socket(AF_UNIX, SOCK_STREAM, 0);
@@ -41,8 +52,8 @@
         }
=20
         while (1) {
-                ret =3D recv(sockfd,buffer,BUFSIZE,0);
-                if (ret < 0) {
+                r =3D recv(sockfd, buffer, BUFSIZ, 0);
+                if (r < 0) {
                         perror("recv");
                         return 1;
                 }
@@ -59,7 +70,7 @@
         struct sockaddr_un server_addr, client_addr;
         int server_sockfd, client_sockfd;
         socklen_t server_len, client_len;
-        int ret;
+        ssize_t ret;
=20
         unlink("server_socket");
         server_sockfd =3D socket(AF_UNIX, SOCK_STREAM, 0);
@@ -76,7 +87,7 @@
                 (struct sockaddr *)&client_addr, &client_len);
=20
         printf("Server: sending data...\n");
-        ret =3D send(client_sockfd ,message,strlen(message),0);
+        ret =3D send(client_sockfd, message, strlen(message), 0);
         if (ret < 0) {
                 perror("send");
                 return 1;


After those fixes, I still get a warning of dead code:

$ clang -Weverything -Wno-missing-prototypes new.c
new.c:64:9: warning: code will never be executed [-Wunreachable-code]
        close(sockfd);
        ^~~~~
1 warning generated.

>=20
> Signed-off-by: Tom=C3=A1=C5=A1 Golembiovsk=C3=BD <tgolembi@redhat.com>
> ---
>=20
> v2: updated test file header
>=20
>  man2/close.2 | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/man2/close.2 b/man2/close.2
> index 68211bc58..08c6a0839 100644
> --- a/man2/close.2
> +++ b/man2/close.2
> @@ -145,6 +145,11 @@ Thus, the blocking system call in the first thread=
 may successfully
>  complete after the
>  .BR close ()
>  in the second thread.
> +.PP
> +When dealing with sockets,
> +blocking forever in another thread may be prevented by using
> +.BR shutdown (2)
> +to shut down both parts of the connection before closing the socket.
>  .\"
>  .SS Dealing with error returns from close()
>  A careful programmer will check the return value of

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------08zwZ0RBMZz9uKhG4zveMDhp--

--------------FmMhHzo3olgme5zVlRIAzoZv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUC1H4ACgkQnowa+77/
2zLOMQ//VCTeSM+oLvtbo/Hf5BzVZus4CbrJhFuVk7VUzbW/Iew0cDqLp+izP6E5
AJ+DBd1VaAcGAlcseEwXiXniZ0IMwm4WhX+9dz8sA1EvlV5seUOeN/J1jgZQaFQ1
E764xhJ+VLTtkOzwYwCSMUMHsxZqv7cWyA8z92caSptCVF+IpEFKdodDjS1NGZpq
JcUlQ1ovrToyovyMvlScmDTRewCmXw3QdIFMhMSerYRbf/Sd4f9XVJTn10AZyi2B
VMoHuQCQaT2+TC4U/kT3RdqfLKy5D+/BF1BlWr+xp591i7qh2YgEAIeytmUym2ly
Q9isn2rEGoTTVLdG73qMABlAzp7Fnib3ki9/RqJo0rZnWvz7GHBtYMC176foXTah
wIGgjmmERDmRw4TpIZxGwPCRH98CGR7Jyfa5ox3EMp4a26z9kJPXstBnI0wk0ApN
yBuOUJ9f8ni/F1qc5tso3MS163cCz3XyfW9XcPewNf8OJCnCOuorsjLOhffLc32W
3BMu/WaoBdHbSx3hiyiYvXhQf0oW7c5Plg4Vz0tdq9/U6a2cUPwbdm6losn5mOlU
4P5ABg+uT1tp8Bz0H1Tu21r0cfWPXasWEyMbu01qlMuM/PUJlP9czaKtanLm3pj/
GcnqavDxhPKd/UVjQauDqY4HkSoXoLLPn7+YhlP2yWwsplc6d2Y=
=4O9Y
-----END PGP SIGNATURE-----

--------------FmMhHzo3olgme5zVlRIAzoZv--
