Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DAA3373D500
	for <lists+linux-man@lfdr.de>; Mon, 26 Jun 2023 00:07:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229509AbjFYWHP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jun 2023 18:07:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbjFYWHO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jun 2023 18:07:14 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 13B90122
        for <linux-man@vger.kernel.org>; Sun, 25 Jun 2023 15:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1687730827;
        bh=qwXriwQoUPp9oYuOMt1rOfR1ocFZixNSlX/3/a5KxfU=;
        h=Date:From:To:Cc:Subject:From;
        b=WKOmLjUeO6RKjhVT9yBiO7b7++qwKRLOdeCfuYU7k6L0rDp9iP4akiqaSncJSO4DE
         PZ8hQOjCcuqXTtpGIbfvUqriRl2cbTn6IOf8MZV5kK3eA2+fMlrjMfCAPKeptRdfeQ
         DhzHbEFLV4ZM32RWyQCGTEw6I7M3OZEEbW0r+C0mitHus+0o0sg45sVCem72BxsgZn
         ZLroVgRunsoyFwi6z6TYZoUQ74UZbGVnWq1WxqpcDNoaP3H5NhPHg/b8z1bWIjkLVz
         A0BFrvsXeucf8VgXeSFhfPr/AAqY4D6nJgIj4nZpszm+h2RPbBZo+WHaL3hW06W23S
         7YfKuLCuPZp/g==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 47B6B105C;
        Mon, 26 Jun 2023 00:07:07 +0200 (CEST)
Date:   Mon, 26 Jun 2023 00:07:06 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] pipe.7: document read()s with O_NONBLOCK
Message-ID: <lnvrz4mlpcgpsv4uyh2wkzy2xxv2urogr7643cmasxhm74pbbe@dajglucy2zum>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="pa3a47nxnio7d3tu"
Content-Disposition: inline
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pa3a47nxnio7d3tu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Which don't behave like you may expect them to.

Quoth Issue 8 Draft 3:
60746  When attempting to read from an empty pipe or FIFO:
60747    =E2=80=A2 If no process has the pipe open for writing, read( ) sha=
ll return 0 to indicate end-of-file.
60748    =E2=80=A2 If some process has the pipe open for writing and O_NONB=
LOCK is set, read( ) shall return
60749      =E2=88=921 and set errno to [EAGAIN].
60750    =E2=80=A2 If some process has the pipe open for writing and O_NONB=
LOCK is clear, read( ) shall
60751      block the calling thread until some data is written or the pipe =
is closed by all processes that
60752      had the pipe open for writing.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/pipe.7 | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/man7/pipe.7 b/man7/pipe.7
index c3e06bdab..fb2ed61cd 100644
--- a/man7/pipe.7
+++ b/man7/pipe.7
@@ -56,12 +56,20 @@ .SS I/O on pipes and FIFOs
 .BR write (2)
 blocks until sufficient data has been read from the pipe
 to allow the write to complete.
+.PP
 Nonblocking I/O is possible by using the
 .BR fcntl (2)
 .B F_SETFL
 operation to enable the
 .B O_NONBLOCK
-open file status flag.
+open file status flag or by opening a
+.BR fifo (7)
+with
+.BR O_NONBLOCK .
+There are oddities if reading and no data is available:
+if any process has the pipe open for writing, reads fail with
+.BR EAGAIN ;
+otherwise\[em]with no potential writers\[em]reads succeed and return empty.
 .PP
 The communication channel provided by a pipe is a
 .IR "byte stream" :
--=20
2.39.2

--pa3a47nxnio7d3tu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSYuokACgkQvP0LAY0m
WPFT6g//fr5wQcp3jg4qzesu74qlEVnoRjzBtQDiwReOORMt6cUw2UcqggsRopUI
UDGzmTfZkrGesREJlAAZ7VjEF7S87hiRyymPHpOM2fxVuCYhIBXK8K8Ht0K/99Uy
Wi29DdCI8qiTujGE0BudDhy4e65ODypCOAwPjcnU2tTDDZGaRNaAUugk20a1jWQk
fM12dO7ZUnkN6TxfDsjxqeh3HJ4ZOJRQgFEn5CvJ0DtmCCrxhl+HT7cQIFwJ7BvM
5khdv4Q3x//+RP2DbYGovB18g96EudU4aihzO9DR/PrKqG/Gluld3ZSOJqe7btl8
wdRy/h5qQU+llfHC+xXLyK1nj6m9pLduhGKE71D9ZUCr0miSisL3Wa6o6aqJIpWv
fFStLWx2d8M59j174fSm9Xo92nihls6tO7M5/FFHA46OFBODNS7Lk2bElSwFSMI5
gWTa7Eek+f0GsWBFiNqTQWk2fmvZXa6FVos0bw3dWChwsiUfjsTlOu478DKQ5q9s
U5/TMDPdsamjgoWyllrSYZ3Deeo79NUaDX0LrtD00bNjHK9l+V+WspNjBMogHgcb
zklsyb0OjxKILq5jZsWbYKyMS+wER89khdGTvvKEy4KAgpCcicEMiySVcuFnrLfS
Hl7w+vDdtT51tHz/l43TKaWsFvNRCwbcyZe+36/3JaITMu5MkXM=
=XUco
-----END PGP SIGNATURE-----

--pa3a47nxnio7d3tu--
