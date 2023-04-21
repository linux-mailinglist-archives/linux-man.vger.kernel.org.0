Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 045346EA1D1
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 04:48:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231590AbjDUCsx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 22:48:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbjDUCsw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 22:48:52 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 1DA392723
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 19:48:52 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6964266B2;
        Fri, 21 Apr 2023 04:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682045331;
        bh=SMcQOcs2Y2M4g64RVTSy6fffpOC4q7CTCiWggV5OXAg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=aaUcy6ElAQmv11fS6TSUwye3KvG6aCItIkwOIEVTwHRGk0bJi6CTlgLUatNBfFwhg
         ATNKEQ1JFUvDwozd5pKb9ZucY6fbX1z4qg0BDaDOwZEBo+6hthikS0ydZpcrqZVSJr
         LitSvQ8vhWk+0axtbjgQMNG70DZYuhTb9ls5ULcq1hxEBYBeR6AfufUfwoZKFkEpds
         BvCmFHlwkFXekGrF3884md1WjySizqIuyUxuFjoayPaFhonYBWEUGbM5tdMjQqDffV
         CU5WbgxsMtopsk3zwUf0lcK/lWMxHsa2Q7bgRgcH5QUe+guT3yePn+Y2CeUJ//FKO8
         4UeqeNwzdAoXg==
Date:   Fri, 21 Apr 2023 04:48:50 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v8 1/5] regex.3: Desoupify regerror() description
Message-ID: <4479e1572eb7aa43437fceb8b985b641a600f41d.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kmc7pqwawehhoj3e"
Content-Disposition: inline
In-Reply-To: <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kmc7pqwawehhoj3e
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 36 ++++++++++++++++--------------------
 1 file changed, 16 insertions(+), 20 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index d91acc19d..069cc6388 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -210,27 +210,23 @@ .SS Error reporting
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
+If
+.I preg
+isn't a null pointer,
+.I errcode
+must be the latest error returned from an operation on
+.IR preg .
+.PP
+If
+.I errbuf_size
+is
+.BR 0 ,
+the size of the required buffer is returned.
+Otherwise, up to
 .I errbuf_size
-are nonzero,
-.I errbuf
-is filled in with the first
-.I "errbuf_size \- 1"
-characters of the error message and a terminating null byte (\[aq]\e0\[aq]=
).
+bytes are copied to
+.IR errbuf ;
+the error string is always null-terminated, and truncated to fit.
 .SS Freeing
 .BR regfree ()
 deinitializes the pattern buffer at
--=20
2.30.2


--kmc7pqwawehhoj3e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRB+ZEACgkQvP0LAY0m
WPHy2RAAiNCi+qkJDfWPfUVZUMfrgwYIP1Ny3xRVitBNke9rQFjWzJ7NsRsIWl+7
P4ExUPRNiRIPC9MJ7C4vL2tX/99H5wz3wl974okbd89TH0B9N2EhKH34dHhdyHgW
kaToOutJ7LWwuZzBogj38UcSvMBVjEWaBffecxwMwjN9e9Y0IKERk+2hzWppvvWS
dorAEyEueDT2J+w6dt/jMY+pK62r3xbvZ2vtToW34/9p9nxroKKj+UdjCP4Y4sPj
0KA4CM2L1oou+9YxWL9HgGq9eh/qhNTaGm0uJ2XN3/+rfNQzwJ9pVHnuRInyGtUp
Pyc16/fEvwD4nEstkoXOSUR6/MJL7Z6y+DFJo54LU5KrT5BBNVgxu6teJk1Km802
JVxvsLz3E2AWQLAWAc1Lhp5TVRkOfZj9ocENGSJO3fHOrdgloydHq5PKLDOx+3c5
uXCTvyIFVg9Lufqsyu6gv9L5K6sACfdRqgvtvno993IgdxurzM5fdD2tWjEhDEaB
68ZmMhRCrvyQYgZYpyx5LsEnnWEXxX8ycEBTVCAy8kiUNjxx1LqR2EJN9hsICQn7
71kr2B24czsSOSWJPCNL4xWndxzRAAOXTemBqFLooMFQvU6ZGiU/VV4JeJF2/Y8d
PK4PXhx3NToWnWoAg4cKLnND97YgAKtt0hXq+GHhQCPtEoA2rDU=
=DOoP
-----END PGP SIGNATURE-----

--kmc7pqwawehhoj3e--
