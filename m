Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB219744BCD
	for <lists+linux-man@lfdr.de>; Sun,  2 Jul 2023 01:41:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229540AbjGAXlX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Jul 2023 19:41:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbjGAXlX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Jul 2023 19:41:23 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 25B841725
        for <linux-man@vger.kernel.org>; Sat,  1 Jul 2023 16:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1688254879;
        bh=Bg/VuJuffSTpKCF5iF2ywX9GMNJVAZPIWt29om9g+U8=;
        h=Date:From:To:Cc:Subject:From;
        b=Jlhf9vmx3B5ON6vi7JKmoXwnS/i/VD7bE2QYrl5PPbjtudqD6w+1JTXtcJey0krMd
         Q4yfRAcjQl9B8Nmxmp+OcAzHr0jz/PCeWQkTY/NKaOJgf3dK1ckP7DP2lGt2PZnSiL
         c/469Cbk4E1/SwOvlFF6ezvPH6BTy7MaBdGzVUPsw7+N7KAELfMwJPt96W+rCZlvUQ
         +Aqra1TaJtRIyCVlHzcETy/1BXEzc1k5aW6Qcq4tGJh1rVQ637tUigz8Tv1t6Leuf1
         C/hBmrk9ZjZcIvhgAhh4zAQ6zWEL+9sdxcWPm0V02wRdxckAkOKL1HEUm6DrA40mYX
         xTLfCBS5o0d+A==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 0D891228A;
        Sun,  2 Jul 2023 01:41:19 +0200 (CEST)
Date:   Sun, 2 Jul 2023 01:41:17 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] inotify.7: wds are in the range [1, INT_MAX], not [0,
Message-ID: <erkqk2qv5kv7xbyacbcnu5yn6g3s42ncxbrm2pquhjpdugvk5d@cskpexpgyuj2>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ndzkx5b4juqo57m2"
Content-Disposition: inline
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ndzkx5b4juqo57m2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Naturally, the first inotify_add_watch() returns 1,
but also fs/notify/inotify.c:inotify_add_to_idr() allocates them with
  idr_alloc_cyclic(idr, i_mark, start=3D1, end=3D0, GFP_NOWAIT);
(start inclusive, end exclusive).

(From SYSCALL_DEFINE3(inotify_add_watch, ...),
 from inotify_update_watch(),
 from inotify_new_watch()).

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/inotify.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/inotify.7 b/man7/inotify.7
index 4fe83902a..282e97ed7 100644
--- a/man7/inotify.7
+++ b/man7/inotify.7
@@ -838,7 +838,7 @@ .SH BUGS
 any pending unread events for that watch descriptor remain available to re=
ad.
 As watch descriptors are subsequently allocated with
 .BR inotify_add_watch (2),
-the kernel cycles through the range of possible watch descriptors (0 to
+the kernel cycles through the range of possible watch descriptors (1 to
 .BR INT_MAX )
 incrementally.
 When allocating a free watch descriptor, no check is made to see whether t=
hat
--=20
2.39.2

--ndzkx5b4juqo57m2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSguZ0ACgkQvP0LAY0m
WPG6Hw/+JIWgXILfqR9Faxc2SyfYNSp2WdSD0Qk/3Oq1I82pyHGIolqePb3HfmBE
BbQvL/am6CZz5Bs9gNbEt0OICCrSr3Nul21YgSyl2r2Bn5U6oVb4CTlZkUmhw2Ia
YdUA+Jp4sjxXpprt9ZQBbZyDymkKN9rp+XGje3ANJUW8VV04q2I7BuPywI8BIZfz
Ts2hkwMyD6yattJjPG7Dmkyf7uZZVGgQr84tKeK/Ym9SwVdVo9CP0HtB4CbJjE7F
DZNQYn2rQR2ZC5s5OH62aFtltLnrcWdlQJeTEmsSDseny8+Xxq0QBwqG+sDFIZKY
bTbp37xgyQnccXds6Qb91PoYTI4h67kk9mwI8NgCe+ycoTZMpquC43LaUKzzgJS7
DZr3DkXWyeKxOqI/36XzzQBuB/9U27Fjjv99hcv0sTPab97Dzjpmw/sDlkCk9IRL
lns4ZeuSz2kYfRCLYRqgqZXI/65AM9X9j4xpHDQW5HYG7YOyhsvuPiUAALmPPjIx
p/Gdr6ygdEy3RXVOMzEaoEegD7d+AWAljfNQiQsSe1Uo5WqHv5glLqBiXQJoZ//O
iPI9gg1QakYFTUjzqNx35LXuYrermLe/gBztos6ewEwNCGJgzO83fWkqgHUxC80k
1YVCenKGGM5HX6Nhrvnb7PTD5uunyxNwSYWJc5tTPtaEJ633mmg=
=51bj
-----END PGP SIGNATURE-----

--ndzkx5b4juqo57m2--
