Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2735C754AC8
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 20:41:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229549AbjGOSlP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 14:41:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjGOSlO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 14:41:14 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B6EA9184
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 11:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1689446473;
        bh=Fk3JvWmSCgL8sO+d1XXphGV/ODw9+2rfrLb1Bf9yJxY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IMyGi+9U8YZ0IZwSGcyg2/LGl+Bd3jbaitcJ8gT3J6QKJdf41pflAE+cqmBkrOjZp
         Q5OOJmJE7E4zuR+zpp+wSqpELzucQF41z/+MQZa2Iz2spd5gQyDF4UmiAyz4mNfT1X
         O+/mEYVaX0fq6lBCmJicFWhIBHiapBg0IhY/EZi3BAE0MrOXpvFDpTQkGqAneMhmTO
         fqxSSagF8M5St8ZRDTRikXteEiOLBY4olHfvJqNppn9ad5o8ZayUVueSnD4ZJoNYAJ
         W2FCHhOWFKu/ZjzAg1Jkhe5+sMt7fl9eKivZJiGgtDTbZLX+oataCYflcK3MinhEQF
         JVodLb0U2XL0g==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 0ADA32DF6;
        Sat, 15 Jul 2023 20:41:13 +0200 (CEST)
Date:   Sat, 15 Jul 2023 20:41:11 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3] epoll_create.2: HISTORYise "max_user_instances" EMFILE
Message-ID: <viuuagw2p3fu33lj4gytcpw2qy6lz7ypunhsxlfbbp75u6ykys@n5nntxb2micu>
References: <3f4b7314-71ad-a4e0-0f29-b34114d8b5ed@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="qup4ou6ftobxd5jx"
Content-Disposition: inline
In-Reply-To: <3f4b7314-71ad-a4e0-0f29-b34114d8b5ed@kernel.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qup4ou6ftobxd5jx
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
 man2/epoll_create.2 | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/man2/epoll_create.2 b/man2/epoll_create.2
index 4d3566a79..7146757d3 100644
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

--qup4ou6ftobxd5jx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSy6EcACgkQvP0LAY0m
WPGUeg//cXd/2UiZrHRuiY2BNfRVUTMD53hmehcFfaOduVj3hsOxQJmSYHJ7CCFL
uQMSmwNTidd4TprcRGHvi0bbmDDkFsRKvM5Zf7zGdj0Ceh/2XURSTXmMDgnVrNgp
EwwiiHQ/rUrD9V3yDhNfrfJ1D93lKyGA9fCAF7qcs7SBqZBCYJSp4RrG3URpUmpB
/poOxXsaQufLgE8pwABbZM9bMPHL7+D6oEWIz9TQs5ymz6B9Pfamk3VYlVQccVPn
5kzFxsPtUBr3nhAy/9wSBQ+FJ9gZYI4Dj571i/emAgOUwfP9bepfOZ/BKYDRrQhK
U0VmG6IJN/RQcShTn2COXlrKWY9INu0Pr8vuiSyLJMPidHu/juZ4n+IBm6vJZhjW
FqQOOtaiMf7g8P4h4lc+Y8Vou0n/Gac8J2GhL5fhznnPzruDh0zgqsZ2qnP/zFqB
DYG71S3v66l3u94vHSJNz2FpT7grelETBn3SHMdJrQ0wBC85AAZuJbTXR5fNXZ5+
U9A9tqVf8FCf/PPZ6K2bNUibTYhbjsZgVL5UdV9MAHzjVbGw8vgUcdb+mHbeJQ+y
/a8aoLZkYb4EoQ0KYu9qo+Dw1wc4sHXxpYBxbGmkcSS2HyfyV283E+QQH2/9wm7z
/rYO8dUMJazk+R0uW+WQ17qmIL7/jDWXeQ/ME6oAJYIXfAd1sLg=
=dyvg
-----END PGP SIGNATURE-----

--qup4ou6ftobxd5jx--
