Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 600A1788E34
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 20:05:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229450AbjHYSFR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Aug 2023 14:05:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230100AbjHYSFG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Aug 2023 14:05:06 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 907DC2685
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 11:05:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 262BA65B6C
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 18:05:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0381BC433C7;
        Fri, 25 Aug 2023 18:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692986703;
        bh=HyEL3wjXNNIMPbphRnaN2l1yaq1thZtHNxml9gF5DHg=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Rxpwi4ZQdC2fTQWcnXhH4B0h29D9iNUEA0hinEdhVtFHmE+RshnoLLHK5z3Ozvl2M
         PNqTgYSCg3DlUQoEVUfN2EZ0rBwjfvspxl2/U8MoijMYYOm6LIQN2rVtrr7U1IGPR1
         NsO3REpWDo7Bo3yEKcjz/40IYaEle6I7eIFKLpvNen5yF6z06VEkLK/UpBgRfCPwTK
         Dl4Lxu4Oyj1OoXmNayda8ucz55K3KEDuJ+E1EJjiGlLfuMEfZhHAQovfBLsQRDFBjJ
         hXQ3my5OrZYDZdevzRFb+uDYK4AZfDWPhHRjISR7HVjGNJhFnGJ4tNFJuuUCg9zfwG
         j2w1lWtO2euHg==
Message-ID: <e0d5e4a4-82d4-68ae-a2c0-9c3e0b779806@kernel.org>
Date:   Fri, 25 Aug 2023 20:05:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] close.2: Suggest shutdown(2) when closing socket from
 another thread
Content-Language: en-US
To:     =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc:     linux-man@vger.kernel.org
References: <717947ba515ec7b179574ca3a3577cf849199872.1692717581.git.tgolembi@redhat.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <717947ba515ec7b179574ca3a3577cf849199872.1692717581.git.tgolembi@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------l2AcmxJuADnQ4TjoAD08Ae01"
X-Spam-Status: No, score=-6.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------l2AcmxJuADnQ4TjoAD08Ae01
Content-Type: multipart/mixed; boundary="------------HFqSRPd407X5azb0xAQL411Z";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc: linux-man@vger.kernel.org
Message-ID: <e0d5e4a4-82d4-68ae-a2c0-9c3e0b779806@kernel.org>
Subject: Re: [PATCH] close.2: Suggest shutdown(2) when closing socket from
 another thread
References: <717947ba515ec7b179574ca3a3577cf849199872.1692717581.git.tgolembi@redhat.com>
In-Reply-To: <717947ba515ec7b179574ca3a3577cf849199872.1692717581.git.tgolembi@redhat.com>

--------------HFqSRPd407X5azb0xAQL411Z
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom=C3=A1=C5=A1,

On 2023-08-22 17:19, Tom=C3=A1=C5=A1 Golembiovsk=C3=BD wrote:
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
>  * Copyright 2011 (C) Red Hat, Inc., Lukas Czerner <lczerner@redhat.com=
>
>  * Copyright 2023 (C) Red Hat, Inc., Tomas Golembiovsky <tgolembi@redha=
t.com>
>  *
>  * This program is free software; you can redistribute it and/or
>  * modify it under the terms of the GNU General Public License as
>  * published by the Free Software Foundation.

No version of the GPL may be understood as GPL-1.0-or-later.  I suggest
specifying.  But rather, we prefer SPDX license tags in this project,
so could you please specify the license as something SPDX?

Thanks,
Alex

>  *
>  * This program is distributed in the hope that it would be useful,
>  * but WITHOUT ANY WARRANTY; without even the implied warranty of
>  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>  * GNU General Public License for more details.
>  *
>  * You should have received a copy of the GNU General Public License
>  * along with this program; if not, write the Free Software Foundation,=

>  * Inc.,  51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
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
>=20
> Signed-off-by: Tom=C3=A1=C5=A1 Golembiovsk=C3=BD <tgolembi@redhat.com>
> ---
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

LGTM.


>  .\"
>  .SS Dealing with error returns from close()
>  A careful programmer will check the return value of

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------HFqSRPd407X5azb0xAQL411Z--

--------------l2AcmxJuADnQ4TjoAD08Ae01
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTo7U0ACgkQnowa+77/
2zLCPhAAjMqicKcAaXyPNUCBxOXVxMAvp9wHC6t3jHd+vWHl00733A+gUWr57P0K
uD9IIMFF3wdYiWUWCnBBhxwCkQMlR1k3SYSBDpuBMedEC5ZMniobcprMTwP2q55T
bcTXA2q9VX4/vm0oAZ5BpQtQkRDqGh3NbOaJElhKOT+696zdCGRKj11LQv+xfay8
W8QkEBuLohCR/W2AU6IdCWkvmUnQaxkiunFdhf1CJu75hkXa4bqFnjDCtYn35VJl
Aw3+J+GytZJAIsDXoW5RNQQ+/xt0b9uAwX/9z6K+WdnCJ9AknU9aJOcvS5rDgkhn
w3Ipm8xZnf8sgy3/sfKoZJhZP6NAwWI1rfFXgyVSG/24qKXG1OT/p5Ov4zOMng82
QVo6G4iPDtQ17SVVwlEj5NbEZQIwZIM0ljVvnkfJ7u6uLdLQETAX9sDh1Bn5G5fj
UFgZCCuOCPkPuHG/466TI6f5d0/4K+/itbstFVnrwdyPJ9vwCf7vE+wPPt7gbneR
Wsf2no2xIOlkhHXgTHoeoDf+nwe7VRruvWqtESz63hcRAZpYH6FH6D45neO/v4I/
jOZzQBopbB1ykOOOhOnUfWT1ZMhh9KbK/sHUlsnMrfUsHMBuu4o1TcQIKrCuzNCF
lE06pCEA1eEFVlEFVhl5ImmeCS5s4SrzTUGs20n4NJ8VR0IWIow=
=d6q7
-----END PGP SIGNATURE-----

--------------l2AcmxJuADnQ4TjoAD08Ae01--
