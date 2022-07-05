Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86832567416
	for <lists+linux-man@lfdr.de>; Tue,  5 Jul 2022 18:21:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbiGEQVt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Jul 2022 12:21:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229798AbiGEQVs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Jul 2022 12:21:48 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 801C21ADB9
        for <linux-man@vger.kernel.org>; Tue,  5 Jul 2022 09:21:46 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E63BC3EE;
        Tue,  5 Jul 2022 18:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1657038102;
        bh=U55qf18xvNNXaQz/m2Gd2qd9HaBaAbKwEPLcIWTsKSs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Yd1tPe4py0FpWFS3BxXJo7rkHy61IqIsT7qRFZL4nfrmBebIUE2V6AS6SzfItXrjq
         Ygd9omGZ2ZwFfLcBlz9kHWBTci+8MBpr4MypDcFfBaMDslmmWF1B6/+itNIjmu4YGw
         BrMgXV8/mK6R2R8DrxPCN285NZfWDH0gjkOys3qmmpa9YHbIGGxm2YtZnXhz3T7C3C
         PlQcCd9T3yFVME8upmS9Zt4KtjSOS8WLkKMJ0ddTKMpyf3Uygf5TEVxyCDUcqBRfj5
         ZFYtwA5d6IuO29YfJ55XpLa3qsA/GX86J4awqj/RIb8sL2SnIrAJ2GJD3fJ6xEQ4Qc
         90UzODiMD+jSEnSxivv0x3n7uOzVnGIUz8a+JGEKRmFkSbZ9BpexgeZlOsmDnY8wFq
         N/kuLQ00+2nh6iehIO8rrhbyLao3a+UyLsLtQfec4SNPjHFl4ABfvgy97nJk6RdQe/
         x5xyFheZFsUNBTOWh7sUUazt0/dMZdElfis8pBB9Lnm0T1SeHorsCk5/5k2rjMzTvt
         f9jWTuFL1yQvOIdlCFPqhQeQ6H6E/cYFIlAbzoyh3BLhX03t0v2WrxXdTZ34KmB+T8
         eG0IgqUJ+dLjrqVf0vN68uGNgPSfbYdpbf9TL2+qZ6HYvWIuijX+lryXGnkqs4v7pH
         GcnWApXq4sBQ+8eeWaz2kteA=
Date:   Tue, 5 Jul 2022 18:21:41 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 1/5] fts.3: note that lstat(2) may also provide fts_statp
Message-ID: <b39ecb5c36de2198501ed3e12c937b6ddf06596a.1657038020.git.nabijaczleweli@nabijaczleweli.xyz>
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="y6tkrwdxp235xudf"
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


--y6tkrwdxp235xudf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

In FTS_PHYSICAL                 mode, it's always lstat()
In FTS_LOGICAL                  mode, it's stat() unless it ENOENTs
                                      in which case it's lstat()
In FTS_PHYSICAL | FTS_COMFOLLOW mode, it's FTS_LOGICAL  for path_argv
                                      and  FTS_PHYSICAL for children

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
All of your comments applied; original 3/4 omitted since you applied it.

 man3/fts.3 | 25 ++++++++++++++++++-------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/man3/fts.3 b/man3/fts.3
index 0b3513192..5197b5868 100644
--- a/man3/fts.3
+++ b/man3/fts.3
@@ -104,7 +104,7 @@ typedef struct _ftsent {
     struct _ftsent *fts_parent;   /* parent directory */
     struct _ftsent *fts_link;     /* next file structure */
     struct _ftsent *fts_cycle;    /* cycle structure */
-    struct stat    *fts_statp;    /* stat(2) information */
+    struct stat    *fts_statp;    /* [l]stat(2) information */
 .\" Also:
 .\"     ino_t fts_ino;                  /* inode (only for directories)*/
 .\"     dev_t fts_dev;                  /* device (only for directories)*/
@@ -186,7 +186,7 @@ A regular file.
 .TP
 .B FTS_NS
 A file for which no
-.BR stat (2)
+.RB [ l ] stat (2)
 information was available.
 The contents of the
 .I fts_statp
@@ -197,7 +197,7 @@ field will be set to indicate what caused the error.
 .TP
 .B FTS_NSOK
 A file for which no
-.BR stat (2)
+.RB [ l ] stat (2)
 information was requested.
 The contents of the
 .I fts_statp
@@ -328,7 +328,7 @@ field are undefined.
 .TP
 .I fts_statp
 A pointer to
-.BR stat (2)
+.RB [ l ] stat (2)
 information for the file.
 .\" .El
 .PP
@@ -391,7 +391,13 @@ instead of the symbolic links themselves.
 If this option is set, the only symbolic links for which
 .I FTSENT
 structures
-are returned to the application are those referencing nonexistent files.
+are returned to the application are those referencing nonexistent files:
+the
+.I fts_statp
+field is obtained via
+.BR stat (2)
+with a fallback to
+.BR lstat (2).
 Either
 .B FTS_LOGICAL
 or
@@ -441,7 +447,11 @@ of the target files they point to.
 If this option is set,
 .I FTSENT
 structures for all symbolic links in the
-hierarchy are returned to the application.
+hierarchy are returned to the application:
+the
+.I fts_statp
+field is obtained via
+.BR lstat (2).
 Either
 .B FTS_LOGICAL
 or
@@ -748,7 +758,7 @@ for any of the errors specified for
 .BR opendir (3),
 .BR readdir (3),
 and
-.BR stat (2).
+.RB [ l ] stat (2).
 .PP
 In addition,
 .BR fts_children (),
@@ -810,6 +820,7 @@ a program using the LFS APIs (e.g., when compiling with
 .SH SEE ALSO
 .BR find (1),
 .BR chdir (2),
+.BR lstat (2),
 .BR stat (2),
 .BR ftw (3),
 .BR qsort (3)
--=20
2.30.2


--y6tkrwdxp235xudf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLEZRUACgkQvP0LAY0m
WPGMzBAAqlOIysPAvaL57WRBodV7t67Par/s1dgsZ9HgudL/p7mnJGXSKGeao0Fx
0HNx+byRaXX8fr6hxR7+DCEHpX8BqUON+XfNhqQGBnvbvBbEdif5CRTi2tsijtyT
GmmRoBEtbBI1njARmXZn9q5cioO5eDFLn9DvvEvVGeCh+/Kvu8js9ibHssrGHrg6
g4OHFvQqUbiq8cEy67S3UUpDjgcq4hY0/uhfb2t9MPCrG5r+KrYYN1teSEdCwont
DtnG4yEkff0hvBTKeW0IPYRHzm3MbvLJWGoZmanQgdcb/xNoet8Dc4nqrqkwLR92
morHfSF7s72KVWswlGNT2nkJmUZor2TqC8DzMSA+8MjRfDqudwYx30fQLq9ktAQy
8Fck/n/ZCLI3Cd0HuNGqdPn11n61bZpeOjUWsDMVoQdMWjbE1+g46gI5nhHS7H92
RGS4jMFmxyaon6wpozWTqjcsVbO5udVy/RhcZ8DVeYc6iWNeW6XVprFVhuxwnUcv
8VN9WGlbFcjPnDJ8rKgZwu7FCzIFLIQR6ASQ63hm97MATnIHxecjk08zBEmTUkWD
onTuC8gej1rI+GwmoPrQ5hnRCHiAGbIwZOSMF63tpPw56AqavMzP4YoUvsQMuU8N
HFuLPNP1tb8hweX54JBbuMFtFhcP84n4ZQr2K0eSE+n1iWbb37s=
=ak4r
-----END PGP SIGNATURE-----

--y6tkrwdxp235xudf--
