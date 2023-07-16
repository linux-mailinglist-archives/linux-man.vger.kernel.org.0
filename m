Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62C74754E7E
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 13:45:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbjGPLpx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Jul 2023 07:45:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbjGPLpx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Jul 2023 07:45:53 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F2552EE
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 04:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1689507949;
        bh=ftlSJ/YfiME3/m6wSu2JCKFvG8HKzk/7eZJGSGeZPT0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=b9ofbcvM+pfsa6uMbT3kpXBDSYPnJdtEfm2syearXMCpiTiCifLq+hvjqLaEulJay
         Tm3IhOQjGbPVCa+09c7M3IOQk/MMK3LZQFLvsE4pGBBsVNQZSkx+TmXEF+Cu5g3l7W
         0wFg0WVfiwwoD4q+zyKMJrItSqIelnE75f7uQSUmlcPn6+DPld35JEJc+fvYJ8L1pm
         o/NJXE9X0uUvOR0oNVdtgQwXfxk1LMI4X4m4F9PqNhzwd6HtQk2FC/IUp6eRTQv8v0
         9VPhs1BAIMp25tVXinyvwJUKV5ytj8rGMbTR2w6omjuRrMcjkTdhN8NZoLcofAMZDl
         6ZSG8S6xpfjHw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id D18BA334A;
        Sun, 16 Jul 2023 13:45:49 +0200 (CEST)
Date:   Sun, 16 Jul 2023 13:45:48 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4] epoll_create.2: HISTORYise "max_user_instances" EMFILE
Message-ID: <eeb222b6mvgjgush7rmu4uqn4h4tgr2lwodklz2inhicazfrch@mvjqzfksoayp>
References: <2ac89a3b-6626-ec3c-de34-8efe976aaac7@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="qtm4hyxe3t4uk4cx"
Content-Disposition: inline
In-Reply-To: <2ac89a3b-6626-ec3c-de34-8efe976aaac7@kernel.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qtm4hyxe3t4uk4cx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

/proc/sys/fs/epoll/max_user_instances hasn't existed since
  commit 9df04e1f25effde823a600e755b51475d438f56b
  ("epoll: drop max_user_instances and rely only on max_user_watches")
=66rom
  Date:   Thu Jan 29 14:25:26 2009 -0800
which describes to v2.6.29-rc3-24-g9df04e1f25ef.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
The sysctl(2) path would be "fs.epoll.m_u_i" so "kernel parameter" it is
since we spec the filesystem-domain path.

 man2/epoll_create.2 | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/man2/epoll_create.2 b/man2/epoll_create.2
index 4d3566a79..2a21bbf8b 100644
--- a/man2/epoll_create.2
+++ b/man2/epoll_create.2
@@ -83,14 +83,6 @@ .SH ERRORS
 .IR flags .
 .TP
 .B EMFILE
-The per-user limit on the number of epoll instances imposed by
-.I /proc/sys/fs/epoll/max_user_instances
-was encountered.
-See
-.BR epoll (7)
-for further details.
-.TP
-.B EMFILE
 The per-process limit on the number of open file descriptors has been reac=
hed.
 .TP
 .B ENFILE
@@ -134,6 +126,17 @@ .SH HISTORY
 in order to ensure backward compatibility when new
 .B epoll
 applications are run on older kernels.
+.PP
+Prior to Linux 2.6.29,
+.\" commit 9df04e1f25effde823a600e755b51475d438f56b
+a
+.I /proc/sys/fs/epoll/max_user_instances
+kernel parameter limited live epolls for each real user ID,
+and caused
+.BR epoll_create ()
+to fail with
+.B EMFILE
+on overrun.
 .SH SEE ALSO
 .BR close (2),
 .BR epoll_ctl (2),
--=20
2.39.2

--qtm4hyxe3t4uk4cx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSz2GwACgkQvP0LAY0m
WPHrzw/+NY7mUZ6QS8+IYt1p6gO1WImlZzEaOz3MrAXbMGE60RxvuKA/c2LpB7sB
k+P9jP8skDInmOi4RE2agZNpXeNzJcKAAfVO7pXvSEhzjBOo5IK9vFBqKbHmXF9R
j41BgOlhUYGW80KOMtanPGYRUajvSglTx2jZI25otJWo8N1m+wp+TGalP0jiFpwd
5xk5xL7AjXsG7675ac59o9EuKhoW5rLosFfVhT8+Eg/BIexWO7ui74yEW4Ye3rbZ
Vwjuzhz2MW1dlmOGbfli5R3bmKRzRUb2hg0XttIVsY+bUfZqLq8oeOJXaXHHy2DV
TM3kP3c+KblC7jWzaE0yqOF3Mbh8sdpKf7z1a0wrZfN0YSayxvntr6fVF5zqS0J6
6OqF8hqPZizKf5ubkwfAM3SwN+EvXwc8W+IQLqsVLclQOU/VUlVvT4lay5J+yDPl
bLhrk+FqZ6+ci/UBHco/6kUp8KPB4XqFDrcPNwn4WJnYs4r/4BehRL28N83PY6jg
iZy06rTOxaP8ZmNZwfO1h4LroTJgDQnZ2Z4kltUEye7dqYUtGiwAM8GGIGRKq7dJ
YU64i4vZ/HcVOXUWZFyAMdVqI01Hi34jV6eXfbO5YdFyCGOy5NRGM4gxlcTtZTQu
GfD8CCnivIyftNW84YsXJNurQXRgenl8nsn6BniP0OL7PLx8/cs=
=CIs8
-----END PGP SIGNATURE-----

--qtm4hyxe3t4uk4cx--
