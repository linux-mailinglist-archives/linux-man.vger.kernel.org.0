Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5601C754CF0
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 02:50:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbjGPAuI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 20:50:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229528AbjGPAuH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 20:50:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90FFF101
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 17:50:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 12AB960C50
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 00:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4B6AC433C8;
        Sun, 16 Jul 2023 00:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689468605;
        bh=LL4PPIDvWoByTPN6FbWK0dpJX4SYFyJsaKFjTXCC704=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Xb7vpu09Qgnunc7/eM5ld1GnBo5AU8O6dS6b4ddkImnijv7WQdpPK5cZdMVl9gG90
         CZxxRd9gmC0RT/yYtL0s+en+MAQ+qA8v0wN6/9Sdnf5QvWOQph6urwRIScH5dv14Hq
         c0vjK2+j7p4DCKQX5FveGBeJs/boTZq2E/daUfdusn3TcCXtwjBfmM2zQjyL4NvbMP
         cScAjVdbX+J6/WsBnqxpt4DmJZPcCTEkiHQ2CkdK5l1gQ/Y2G6vdfo9uMyV/ykvQbX
         w8shAFNzJG/PasNK0l1LAwl1wueTyjpVrdS4rh1Ce8ASwXntjlYZXgDj5WckXcWHBb
         e73dQ/SkaC5rw==
Message-ID: <63164c24-1e6a-f1e6-3892-047fbebd3074@kernel.org>
Date:   Sun, 16 Jul 2023 02:50:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3] pipe.7: document read()s with O_NONBLOCK
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <c45d6b71-f054-c3df-9a9f-749f30aaabee@kernel.org>
 <ohlr6zojoreknhkmbmrsjwtkhpm6hj7twgh6lbtpo2cyslb7nz@omy6j2ilcano>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <ohlr6zojoreknhkmbmrsjwtkhpm6hj7twgh6lbtpo2cyslb7nz@omy6j2ilcano>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fEh0X0evL2dYU06j0O3xflQw"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------fEh0X0evL2dYU06j0O3xflQw
Content-Type: multipart/mixed; boundary="------------039sGnZB6eK5J0pGPy3gdI7H";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <63164c24-1e6a-f1e6-3892-047fbebd3074@kernel.org>
Subject: Re: [PATCH v3] pipe.7: document read()s with O_NONBLOCK
References: <c45d6b71-f054-c3df-9a9f-749f30aaabee@kernel.org>
 <ohlr6zojoreknhkmbmrsjwtkhpm6hj7twgh6lbtpo2cyslb7nz@omy6j2ilcano>
In-Reply-To: <ohlr6zojoreknhkmbmrsjwtkhpm6hj7twgh6lbtpo2cyslb7nz@omy6j2ilcano>

--------------039sGnZB6eK5J0pGPy3gdI7H
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-15 20:36, =D0=BD=D0=B0=D0=B1 wrote:
> Which don't behave like you may expect them to;
> unprimed, I expected the natural extension of either:
> files   (being a  filesystem object), always returning 0 if no data, or=

> sockets (being an IPC mechanism),     always EAGAINing   if no data.
>=20
> The pipe semantics make sense of course =E2=80=92 pipes can be modelled=
 as
> sockets if there aren't writers, but files if there are; indeed,
> this makes sense as the writer continuously appending a sliding
> "window" over a file =E2=80=92 but they're unique amongst the UNIX file=
 types,
> but arriving at that specific interaction table is non-obvious,
> especially to a user.
>=20
> Quoth Issue 8 Draft 3:
> 60746  When attempting to read from an empty pipe or FIFO:
> 60747    =E2=80=A2 If no process has the pipe open for writing, read( )=
 shall return 0 to indicate end-of-file.
> 60748    =E2=80=A2 If some process has the pipe open for writing and O_=
NONBLOCK is set, read( ) shall return
> 60749      =E2=88=921 and set errno to [EAGAIN].
> 60750    =E2=80=A2 If some process has the pipe open for writing and O_=
NONBLOCK is clear, read( ) shall
> 60751      block the calling thread until some data is written or the p=
ipe is closed by all processes that
> 60752      had the pipe open for writing.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Applied.  Thanks!

> ---
>  man7/pipe.7 | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>=20
> diff --git a/man7/pipe.7 b/man7/pipe.7
> index c3e06bdab..91554fa3c 100644
> --- a/man7/pipe.7
> +++ b/man7/pipe.7
> @@ -56,12 +56,19 @@ .SS I/O on pipes and FIFOs
>  .BR write (2)
>  blocks until sufficient data has been read from the pipe
>  to allow the write to complete.
> +.PP
>  Nonblocking I/O is possible by using the
>  .BR fcntl (2)
>  .B F_SETFL
>  operation to enable the
>  .B O_NONBLOCK
> -open file status flag.
> +open file status flag or by opening a
> +.BR fifo (7)
> +with
> +.BR O_NONBLOCK .
> +If any process has the pipe open for writing, reads fail with
> +.BR EAGAIN ;
> +otherwise\[em]with no potential writers\[em]reads succeed and return e=
mpty.
>  .PP
>  The communication channel provided by a pipe is a
>  .IR "byte stream" :

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------039sGnZB6eK5J0pGPy3gdI7H--

--------------fEh0X0evL2dYU06j0O3xflQw
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSzPrsACgkQnowa+77/
2zJPOQ/9HAeyKJ2SKGcAkzlkyhIc9Wfpt++Mn0gZ3tcElj+G2K2V7uNVCZlr1dau
cx7Yy+eEi8O0RePaSzzFoq1ZOW7y4E1QpbOXHUm8VPcyqQGp967b5NOTMwEJyvlg
R7HgYu2qJUk2rn7C04gPAP1WBKK+npe4JimZ6SGzZFzehRnvw4vyE8NN9uNpSzbA
mjld79qjNv5Y8hK+/nrSFTIqvDpyevnHGGLs/tqMdpGJnwTwFc7nd2wk6Gq2/aFe
ymf2V3KswM4uWzPSpSEYbaKKvtOdF0ZUEtKmrSXKu5OmTY5vC3E0Bwj6B2ZAGDDC
UdFDt606B+98Ts7Rf9FsmcuRkxwdWfOT4VC+xaymKkEemVm9U7+aQuyf1MejBdYs
v9ySnSE98cb7AtuRzDIp51OavflcO5eCCD+Rzp1lFIQBn+r5Qo+oYj5HXrQrTQWv
QDPKZwuv9yok6swdAtRtS6bYoAaPhhhsRDSdF87ALAzZphdjf6xIWhg5s7ymgTfi
vNIDkxYRIHKbtdqTpOfGPlHmvWXpUE0FUYuYstXXdT6f6QVC35go09kRRVytn5Zv
CkWG84BMarkIfR+IuhorcGtbRuTNyX+ZfyrHXvsQrn8nqH0eUUCw63hCKZgXO5rs
R785n2da8WLhAcwnnH1l4CvkxdKC7fhdL7/sSatBtaS2o9YpjQc=
=e5ob
-----END PGP SIGNATURE-----

--------------fEh0X0evL2dYU06j0O3xflQw--
