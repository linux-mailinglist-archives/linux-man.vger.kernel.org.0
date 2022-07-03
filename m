Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2811564A48
	for <lists+linux-man@lfdr.de>; Mon,  4 Jul 2022 00:23:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229835AbiGCWXn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jul 2022 18:23:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiGCWXn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jul 2022 18:23:43 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A40E72BF4
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 15:23:42 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E01C0A5C;
        Mon,  4 Jul 2022 00:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1656887021;
        bh=tvVVgh1ZBXdk2oE/OBuapV6GNO/h7s/MqCda5X+XbPw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GbebpfYsGAMDs9BR1DHUWmZ3KfYF+lX8cjcCEVpr5++6ft4fEGp0zKEGmaZsfWFqr
         GcWTywHuEeNFeWTPYVUbx4cxeirPYn6VSjdoy1WYZT0uJCoxPcv7C7XrkajpUdz4f4
         X7UQPJfGRZCOxuDFdcrv53nwuxXw20xbP50V8mtYtj46TmG1IDE6iUVmKG1IGfJsUw
         5ZGD7GJUvhp26P1RLshwuKxWRPk77wdR4VoaF7K552N8DS2oxbfhV1NOqUBP/DW8fR
         XHY/A9tkEewEOhYRHS2Ji+FWOoapiA50HxnjvhJdtIpM77npD+DJucnF4H68HcMUeG
         gzcd5/GEe7JzGtB4w0riSjbB8txPfEylewboU0RJsU54UXT4RbOTiJCnKeGNHHDcEN
         y1cMzy8KdgOz+atcZqJVzJxCdj1k0TA87BpDKOe6Oom0J3gxgpnjUxiv8iYiLBakWe
         BNsJD1/KG/DWZmwVewP2X75dziw21KHydDkh+qrnU3KStr06n67AH8bhKRe5t5IkFH
         uSTb+b7UMckfEiTexjVJkVszYzXlvWYMLSS8AN3FPe8Inuk8XrB97aMmn9M7n2oGmU
         gGmNmMW2uQ/gemvxW9BLTvzdcXpb1m9drbnoiJbPkSpVZnfyJ0562foXZyE4QpJmgB
         jctn7yPtDr3rveVpmYVvb4YU=
Date:   Mon, 4 Jul 2022 00:23:40 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/4] fts.3: list primary modes first, remove triplicate
 requirement spiel
Message-ID: <8a07a62c3dbf9690e6dcb02ecdd2fded7aa17a5b.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="xpm5vk67nqb5veey"
Content-Disposition: inline
In-Reply-To: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,T_PDS_OTHER_BAD_TLD,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--xpm5vk67nqb5veey
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/fts.3 | 56 +++++++++++++++++++-----------------------------------
 1 file changed, 20 insertions(+), 36 deletions(-)

diff --git a/man3/fts.3 b/man3/fts.3
index bf3e075f2..44465b815 100644
--- a/man3/fts.3
+++ b/man3/fts.3
@@ -376,12 +376,6 @@ The options are selected by ORing
 the following values:
 .\" .Bl -tag -width "FTS_PHYSICAL"
 .TP
-.B FTS_COMFOLLOW
-This option causes any symbolic link specified as a root path to be
-followed immediately whether or not
-.B FTS_LOGICAL
-is also specified.
-.TP
 .B FTS_LOGICAL
 This option causes the
 fts routines to return
@@ -398,14 +392,27 @@ field is obtained via
 .BR stat (2)
 with a fallback to
 .BR lstat (2).
-Either
-.B FTS_LOGICAL
-or
+.TP
 .B FTS_PHYSICAL
-.I must
-be provided to the
-.BR fts_open ()
-function.
+This option causes the
+fts routines to return
+.I FTSENT
+structures for symbolic links themselves instead
+of the target files they point to.
+If this option is set,
+.I FTSENT
+structures for all symbolic links in the
+hierarchy are returned to the application:
+the
+.I fts_statp
+is obtained via
+.BR lstat (2).
+.TP
+.B FTS_COMFOLLOW
+This option causes any symbolic link specified as a root path to be
+followed immediately, as if via
+.BR FTS_LOGICAL ,
+regardless of the primary mode.
 .TP
 .B FTS_NOCHDIR
 As a performance optimization, the
@@ -439,29 +446,6 @@ and leave the contents of the
 .I statp
 field undefined.
 .TP
-.B FTS_PHYSICAL
-This option causes the
-fts routines to return
-.I FTSENT
-structures for symbolic links themselves instead
-of the target files they point to.
-If this option is set,
-.I FTSENT
-structures for all symbolic links in the
-hierarchy are returned to the application:
-the
-.I fts_statp
-is obtained via
-.BR lstat (2).
-Either
-.B FTS_LOGICAL
-or
-.B FTS_PHYSICAL
-.I must
-be provided to the
-.BR fts_open ()
-function.
-.TP
 .B FTS_SEEDOT
 By default, unless they are specified as path arguments to
 .BR fts_open (),
--=20
2.30.2


--xpm5vk67nqb5veey
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLCFuwACgkQvP0LAY0m
WPE9Pg/9FmXf0ftVgiCzKinkFGr17ru+qZLe5PcLMQVgCfphLfiZ4T5mCq2M0aP4
Wq11kGhPE95gPJZAW0tcnpQaEJy7aWR3o0d2wUjfcMhOlFgq28CwGbsoxDEEWGRd
8zHJ5nP0GUL8kHbShO8ziObNBEWIqA8x2dn1yJCviNYEyTxofwqsBUKYfA7dZSNA
UbTOo6jelWicrjLro1ym4psGMOa1Jt4TiBx1CdmNCTJ3jhXymSaTlzmOEoouDHDc
ZTaBQCIvx7VAleP4fiyCFJs3C++vmZK5pyx19zOlYXWMlC7T4y8tKQ/QxyPrh27T
dl3xEeUF4W2HzywmgeuiQkGA5Hob97NphxwSwc6ZNKC7nhzCberpY4Zlw8NvdVR7
kwsiqSMUg0l0P5SKrkP+hc6oNICDt6MM9JbLvpBS9kmECpekkNVX6oR2MU45d8/9
D6KuEfmQ+MRRCGKJ3JVxP2SfGVh/v7AR7fMlsuQ+uGahWcTejoMiQsmy4O1kYjPr
mtnbVWvVV+lARaayg03199W+xFSaZjmQ6N4WrNLHTPKWXOF/RrU3xcWGmzRE20DR
WGv9sNZZ3k3EolLiApCPJROH0U1/jkM3crbwLNWanBqKLEfAO5YFYokmJeJuztWI
x0kDuewK4sBKVC98jprToGEmvz+vj3sEBOAPjMSDUjWF8NkYe1E=
=R2Hm
-----END PGP SIGNATURE-----

--xpm5vk67nqb5veey--
