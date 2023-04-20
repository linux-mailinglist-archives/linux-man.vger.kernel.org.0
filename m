Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44B336E9861
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 17:35:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229811AbjDTPf5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 11:35:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231583AbjDTPf4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 11:35:56 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 667C930DE
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 08:35:55 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B4A2765B4;
        Thu, 20 Apr 2023 17:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682004954;
        bh=TWb4WWMazUPF3cpZIHGmEMez7dDv0or06f9ndHs1IoQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SjiMmFkQ0L4GynPZKNZ7sDlY96rf6ktnYu+XzM+smv3aJJuupr6iby3UhgZ/8hBHX
         Y8PpRGH0VTeY64t3NeDPvPnTYdqGSdPVyaBLlZGK9Oq6T7+QDP/CMHrw69bDtS8RkS
         6W0DC+XLEGOovo5TKFp2Dhej80xFudkqfl8Sk5JDxrlEtUZBqYWnHxXMjg922nDrrg
         JgR9MAdq8IJaeQAXwJ1wQ0uRFEwUNUKJ0KoHxcduFG9R5Vdk94RRywfbMgSF6MqlCJ
         /acqrzqqnT9EkDRKg5tzKbwgjGvVkaBu38UgygW5MfQrA9TWvJ3CPA8Y34trh8joL4
         rR4i07no1KgtQ==
Date:   Thu, 20 Apr 2023 17:35:53 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 3/8] regex.3: Desoupify regerror() description
Message-ID: <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zdvz4p5f6xrmgnt5"
Content-Disposition: inline
In-Reply-To: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zdvz4p5f6xrmgnt5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 46 ++++++++++++++++++++--------------------------
 1 file changed, 20 insertions(+), 26 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index ae160c9b3..c5185549b 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -26,7 +26,7 @@ .SH SYNOPSIS
 .BI "            int " eflags );
 .PP
 .BI "size_t regerror(int " errcode ", const regex_t *_Nullable restrict " =
preg ,
-.BI "            char " errbuf "[restrict ." errbuf_size "], \
+.BI "                char " errbuf "[restrict ." errbuf_size "], \
 size_t " errbuf_size );
 .BI "void regfree(regex_t *" preg );
 .fi
@@ -207,34 +207,28 @@ .SS Error reporting
 .BR regexec ()
 into error message strings.
 .PP
-.BR regerror ()
-is passed the error code,
-.IR errcode ,
-the pattern buffer,
-.IR preg ,
-a pointer to a character string buffer,
-.IR errbuf ,
-and the size of the string buffer,
-.IR errbuf_size .
-It returns the size of the
-.I errbuf
-required to contain the null-terminated error message string.
-If both
-.I errbuf
-and
+.I errcode
+must be the latest error returned from an operation on
+.IR preg .
+If
+.I preg
+is a null pointer\(emthe latest error.
+.PP
+If
 .I errbuf_size
-are nonzero,
-.I errbuf
-is filled in with the first
-.I "errbuf_size \- 1"
-characters of the error message and a terminating null byte (\[aq]\e0\[aq]=
).
+is
+.BR 0 ,
+the size of the required buffer is returned.
+Otherwise, up to
+.I errbuf_size
+bytes are copied to
+.IR errbuf ;
+the error string is always null-terminated, and truncated to fit.
 .SS Freeing
-Supplying
 .BR regfree ()
-with a precompiled pattern buffer,
-.IR preg ,
-will free the memory allocated to the pattern buffer by the compiling
-process,
+invalidates the pattern buffer at
+.IR *preg ,
+which must have been initialized via
 .BR regcomp ().
 .SH RETURN VALUE
 .BR regcomp ()
--=20
2.30.2


--zdvz4p5f6xrmgnt5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBW9kACgkQvP0LAY0m
WPGxcxAAqK4Q1zBq/IAvujAIjMHKCDYDN9ctwCm4ZGn0pghjScWNGJrDWmEv9dag
bQKNASVg67NTUDH6gmhEfSKw8OtSx9YUGsoR8wEHkM+mLuukbbX1m68pU5RP4keQ
P6kVHMtWcYrOtMjxohQWYeQOoPmjUPiI8sEJetbgCCb6QRM9cHFQoRxmL70zJsQd
gcMoae1LUrCUF0IhQmZxl21nYD3U4TOjsWVL4KAg/MsLHmIpG1zVyruxvmHS4KOT
Tb4eWr3WUd1MsCxoh3OK1WNC3YwjFEzkO7x3Lo4kfEwrmEeZgCpST7oOlm/2lRj8
I1GvFKcqOJRRNs26+bN8UL4XLg74XQIJW/yJhxlELXBx3YpPQ4PaZakqE588pUyn
Hxjdngz0o52LdJq0poEP/p107mG9O7dClMR+XrrWKLp0SaQ1UYcVjCc0/ysB+U6p
O10ckXsq/WZd1r/4TtTQ76gl7d90NoRPXn3k1IYmIUaFmv3DbfJEFBNUQhAJbbWS
WVTN88zL9UAKfaLwurK9f1RGOaWoSArdaYCNvMXcGZ2UmAYIDEHeK0DwPLsKCsmS
A03/kSEAW/u24pERp0CTMnnot5qd+BdAnTeiTzEHXk6LqsQPi5sYiup/7UdnK7TC
ilf82J2Gjg66Hob3LS2hK24awRSUJwNx+rzphBj82iX4uIQeQ6k=
=zion
-----END PGP SIGNATURE-----

--zdvz4p5f6xrmgnt5--
