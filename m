Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B46C74BF0A
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 21:56:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229828AbjGHT4M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 15:56:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229454AbjGHT4L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 15:56:11 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 361DF198
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 12:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1688846167;
        bh=4FSEzk64CI3u7UQwhGp0moTdvbE1H2bC/kq3CnPCGzg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GbJbeObzB3+zQJJUpRDBgJLs9Gp20+r4+Zof3I57N418+5j9bvYYZUgzRaPhBnwX6
         Wi4BWeIJb/GsALu3aJ6yJXO6Y6jpEAJH5v3bb/1lClEMcYuRFe8VMLRsEo2Et67qZe
         jd8dXMSo7Pr4K0wf9dPX4Yf28aklc6Z+3lVNYPsQBveNmhe69/QqYcGsBYgrkcMUOG
         DeWm0RaB1g9xbfQsgm7oMEhwrlQrGxKaWwo+wzul2VlaxG3G3uAz7V/oo5Tn47+zNU
         R2StQNth9zDeanKhvwnhJEgWlXUsIiqYgvau6Q8xC1wtmfDMNjoYYPQPSMKRJ0mVKB
         2wTKHHfkp/7wQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 37E6A2A90;
        Sat,  8 Jul 2023 21:56:07 +0200 (CEST)
Date:   Sat, 8 Jul 2023 21:56:06 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] epoll_create.2: HISTORYise "max_user_instances" EMFILE
Message-ID: <re4bxpexbszjru6xxofj7p4rxnwjxvta4jdn4fnkg62pvzkbbn@na4zaedzdx77>
References: <7c0279c1-bbb8-c623-14d2-bb4d25966d28@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="fcn3wlfkfxbape7n"
Content-Disposition: inline
In-Reply-To: <7c0279c1-bbb8-c623-14d2-bb4d25966d28@kernel.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--fcn3wlfkfxbape7n
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

/proc/sys/fs/epoll/max_user_instances hasn't existed since 2009.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
I blindly copied the tag and didn't check, but even if I did,
'Linux v[0-9]' does return results, so I wouldn't've been dissuaded.

 man2/epoll_create.2 | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/man2/epoll_create.2 b/man2/epoll_create.2
index 4d3566a79..b51f5051e 100644
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
@@ -134,6 +126,20 @@ .SH HISTORY
 in order to ensure backward compatibility when new
 .B epoll
 applications are run on older kernels.
+.PP
+Prior to Linux 2.6.29,
+.\" commit 9df04e1f25effde823a600e755b51475d438f56b
+.\" ("epoll: drop max_user_instances and rely only on max_user_watches")
+.\" Date:   Thu Jan 29 14:25:26 2009 -0800
+.\" v2.6.29-rc3-24-g9df04e1f25ef
+a
+.I /proc/sys/fs/epoll/max_user_instances
+sysctl limited live epolls for each real user ID,
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

--fcn3wlfkfxbape7n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSpv1UACgkQvP0LAY0m
WPFykQ//dKQ8kKP/U0p6Y7fsustKnPhW67T1U5tCk7nxU9h6fxMBhjqOvKmjFw3z
tw/gdxI/6cvkQKK4cnb0w1TOLRk9CkBPJcN9pm+8stbRdH0tn/FAuQakqrQiCWyn
dw+/e0qQvMOtIgZGsM5Q/bI9kpvpYfRBxvz++mr1Lk7nqMB9n9nbKJy4zcuBDWt9
qBrIAc/OWDlApDHWRDP9BJVAES7jnfC2XE/w+BbNOIGirirW56TSACfTSeva7d2u
StLh82ODu51tIJOMBri9EemnSTOtdGg7qM2gYmI+Qn64XGwzvwdpc60838YLmQvw
yiQ3q1tcff/EXAr7yWT/po5i1i55grUMbT0g7V6b5c986DLPVloR04pRKWrbBYIU
qnIoWAjPdaNKoN3VxDNwz0+CFfiS5mXfcuZVpWIvGLYiyGvSl9L36YRYWt5XpP3p
X8yulAH7p4G5mINbhF9LnLy2Ig6Ah3zot5w7PlQJI2hCBjA6Tqa2zyriy0AEsux+
46jbleDDt+46CeWESdXRwYcpsYxjDIRzJiP5MGVOueC6AGOm36mMhZjmO95MU0fl
pzcBQHLbQPgPOUHJIPoYLu6vgheL0yWS9P2tMgGBlFejirwXVhc/ncCJgnQKsUkN
1jPZGMCHMNqZVKbq1FfW2Il1H5w9DhMLM0YjtsmJmQ6FCFoC87I=
=uPUF
-----END PGP SIGNATURE-----

--fcn3wlfkfxbape7n--
