Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 884FF564A47
	for <lists+linux-man@lfdr.de>; Mon,  4 Jul 2022 00:23:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229673AbiGCWXm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jul 2022 18:23:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiGCWXl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jul 2022 18:23:41 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id ABF4B2BF4
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 15:23:39 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 484357D6;
        Mon,  4 Jul 2022 00:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1656887016;
        bh=3X+D4YaixKJlPeQ6zIyQ3AgRZ7czYLNnX+iuFvy+i88=;
        h=Date:From:To:Cc:Subject:From;
        b=g2/2ErqrfNwcFGlgJhmgJV+bNg6bIn9PirhsZ2t7mlAe/IFA5WEXQRXEeY5u7UPzi
         kxFWBwUHvXz3B8jPfDIrE8kQAd9PaED6ToT1CE1NXy59GV25kwqIn2UdMRaP8Ev29F
         dNwRAxxsLGAHJ6W7+vd8+IhvSJYiYHLnUpQO0NP6t1GPR0QaQ7ZuL/MjSuMTjVVkl+
         djWRtXf4Feg1pFuuTQa2PTW2xDtbvXaXOZirxrPqQglAH0EIX/aXXyC0A/IoeMlcPI
         LOLoIaPYCZJEmjKlZsVV7h7SAxY6t1X86qkDJf7oxMI8TAG5ZQcrIFPKu9Dij8a2wh
         v8pOjo3SjK6jwceQXJ/WpEMi6ABJ3fV8/4MpesdEbiFfq6+0xThS8LsXKbFEpPITD8
         b2T4930CItupaSP4PYe9M+pao/6KojIxMNv7jWY85TpnF6d6g2NZBqtXlHDPyCQOjy
         TZ6RtC/72f4HkPao/ghCA3zOOA8dkkTX7eLHmHaUtqCZ71AMsyVRucnvlOGCttSdnT
         x4i95whvPAlGJoOs9oZn7H2zOFySHloju7PLsdbcKGj74e8bdjEqY9mkGGC20Uw/t+
         jDkD1pPFErDiVJXxKdbUVGjZgqs4T41UIh4XaN3Ljrt7bLlwU3igFtgfBOk/FA9iA6
         6SUPqNw4azKtiVmRmfgbzdK0=
Date:   Mon, 4 Jul 2022 00:23:35 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/4] fts.3: note that lstat(2) may also provide fts_statp
Message-ID: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="n4wdxmsr7awztyon"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_PDS_OTHER_BAD_TLD,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--n4wdxmsr7awztyon
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/fts.3 | 25 ++++++++++++++++++-------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/man3/fts.3 b/man3/fts.3
index 495ae1d8b..bf3e075f2 100644
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
@@ -442,7 +448,11 @@ of the target files they point to.
 If this option is set,
 .I FTSENT
 structures for all symbolic links in the
-hierarchy are returned to the application.
+hierarchy are returned to the application:
+the
+.I fts_statp
+is obtained via
+.BR lstat (2).
 Either
 .B FTS_LOGICAL
 or
@@ -749,7 +759,7 @@ for any of the errors specified for
 .BR opendir (3),
 .BR readdir (3),
 and
-.BR stat (2).
+.RB [ l ] stat (2).
 .PP
 In addition,
 .BR fts_children (),
@@ -811,6 +821,7 @@ a program using the LFS APIs (e.g., when compiling with
 .SH SEE ALSO
 .BR find (1),
 .BR chdir (2),
+.BR lstat (2),
 .BR stat (2),
 .BR ftw (3),
 .BR qsort (3)
--=20
2.30.2


--n4wdxmsr7awztyon
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLCFuYACgkQvP0LAY0m
WPHgAQ//TwGo2HShn+QYodkDcs3hgPpGNPDLY46OOomUuINh8PWL3AUOnQz++prB
wYl7X861wimaCXkJgwFUKJ3b8K+VSOue/a0Fu/vpIbWGKjg8cfZNuA/I9BcL+/Zs
2ErG0/cHBX2SrpsozQdSwDw3fqLFKwodCH9LBksZ0EUmYgb9ok5G9hIpFpKJ4izR
puugBRweXDxTMojfwq/LyoPUy70pCBTFUWydt2lt9zuGc7Lh0bNiyVZjoA65fHRC
wsBz7M1Iylb9T+z/A6qJMYjsu2iSA+L+takq16CWoSecs5SpqTsuW9fuW7Uae2Dq
VLu/MIpdtw17QqArw77V/vbaRL1U0PoDARtjQRpYfCc+7+EZq9EW135kNsgnsa6Q
+EB7ckxJ7doOu9VTo8JxDOzw+APKIOM4ZzcUU3uy/oLg2inJun0otHbjYOBaMUIL
3LXuKF+jJTO5WnPmPEhWSKzLdM87/BjAh+o60Qi0JZuQqFXmqCHRGTUpsj3rk3NT
zF0vC0gMaWyYv6ayIrBPCaEmqp8FX+H0J/4p1MXcNxzb2SFFVi1aCYWKqHPXikiu
m7e4SBGnRvWf4jEsr4wdaauNVa/eYXEBaymFh9LkhlRaa5Y63ajI0yxhEnPpe+Zj
XYaAL5FVhmvlepoSIX7xWrDT6zStMy+cf5Af2ulYDp3vXpiEPUE=
=xUM5
-----END PGP SIGNATURE-----

--n4wdxmsr7awztyon--
