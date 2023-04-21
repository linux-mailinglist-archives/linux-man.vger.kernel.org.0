Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 247506EA9E7
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 14:03:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229938AbjDUMDv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 08:03:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbjDUMDv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 08:03:51 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0481646A4
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 05:03:50 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 57D1F62E2;
        Fri, 21 Apr 2023 14:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682078628;
        bh=Q9X/aKRHDlvZDWBMqumd2EGliD0rtKKduJxFt1XxK5s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=HUZsD/TfRJunonxxoH77gswUQKvZVwXzUKSxjNfh0yhniAxtZdphaBQy2iaQ/HeYC
         GZSgrmNz/loYkZQzatVlosIe6muLNcY6eg6q/990NsfbG/OsRQQMt0uuS7RXu/HR4m
         pcxy49YDsOQRpnYgv3mwXElP1M0vx8jXdvWRe/ziODKyKPckbHTrTFPdPNM1meiLVG
         OwdjKzIeHuWp3Ze2C6wyw/UZ1bcyOobQEtg9NQyx8/FM2hUYc3I/ErZn3l/vCr+BJN
         6TkFFKSz13xsZKZp0K4znfZDvwXkHKARjh2p5bn3AjJGmRoiAo4JzXKQfEiAGb2YWB
         AmZjOKYMpUw3A==
Date:   Fri, 21 Apr 2023 14:03:47 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v9] regex.3: Desoupify regerror() description
Message-ID: <bdliqsvy5uuizjz2gbxxlhlj72k22qc3faoapcbqqqezcusmma@yw6vqoeinh5u>
References: <bb6d4a20-ff44-f5e6-12bb-fdfd9db986fc@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="35tegml33mlkipgh"
Content-Disposition: inline
In-Reply-To: <bb6d4a20-ff44-f5e6-12bb-fdfd9db986fc@gmail.com>
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


--35tegml33mlkipgh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Range-diff against v8:
1:  4479e1572 ! 1:  38109fcc6 regex.3: Desoupify regerror() description
    @@ man3/regex.3: .SS Error reporting
     +.IR preg .
     +.PP
     +If
    -+.I errbuf_size
    -+is
    -+.BR 0 ,
    -+the size of the required buffer is returned.
    -+Otherwise, up to
      .I errbuf_size
     -are nonzero,
     -.I errbuf
     -is filled in with the first
     -.I "errbuf_size \- 1"
     -characters of the error message and a terminating null byte (\[aq]\e0=
\[aq]).
    ++isn't 0, up to
    ++.I errbuf_size
     +bytes are copied to
     +.IR errbuf ;
     +the error string is always null-terminated, and truncated to fit.
      .SS Freeing
      .BR regfree ()
      deinitializes the pattern buffer at
    +@@ man3/regex.3: .SH RETURN VALUE
    + returns zero for a successful match or
    + .B REG_NOMATCH
    + for failure.
    ++.PP
    ++.BR regerror ()
    ++returns the size of the buffer required to hold the string.
    + .SH ERRORS
    + The following errors can be returned by
    + .BR regcomp ():

 man3/regex.3 | 36 ++++++++++++++++--------------------
 1 file changed, 16 insertions(+), 20 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index d91acc19d..efca582d7 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -210,27 +210,20 @@ .SS Error reporting
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
 .I errbuf_size
-are nonzero,
-.I errbuf
-is filled in with the first
-.I "errbuf_size \- 1"
-characters of the error message and a terminating null byte (\[aq]\e0\[aq]=
).
+isn't 0, up to
+.I errbuf_size
+bytes are copied to
+.IR errbuf ;
+the error string is always null-terminated, and truncated to fit.
 .SS Freeing
 .BR regfree ()
 deinitializes the pattern buffer at
@@ -247,6 +240,9 @@ .SH RETURN VALUE
 returns zero for a successful match or
 .B REG_NOMATCH
 for failure.
+.PP
+.BR regerror ()
+returns the size of the buffer required to hold the string.
 .SH ERRORS
 The following errors can be returned by
 .BR regcomp ():
--=20
2.30.2

--35tegml33mlkipgh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRCe6IACgkQvP0LAY0m
WPGnchAAtKkPIikeLzJ/45i6XEZ1qhZCIEKxwZWCJZ/3k93XP4dd1JJ/xx3BhKrj
vEyCqRmLnf0oANRQex7JOKVXsBimijGarl26fsMEFlnXsL7VPHPUrxt597vp6H9V
fHNI+OtjS5RUdp3OFmezxMHMOIy4w/GFrti/XyM0uCHqtrXN+jkKmjiAE8Ju12yH
emVQY31FGdIBpzVn4diPnSyBevNa7SdxUywydtgZ4QPMasDIdif8hZ1MMVymvR/F
Vt5V1svZllBrbaEitIg7RHs96dftsbs/Fx2Yzc2uwqYl2leHPCh7sU2v3Y69oqj+
IBaMQn7RuQNps5XSuPayLtcYznwxWy/bxj4aacyXXdb1OFFu7AzWhk44ZUK3uWEG
kEkVpqqh0z8obOC7GGOmWlglkcVkHsO6Ch/Ie2AZdEbvFLh8UKFkkDReV5Y+zD4U
s7jVXndeQb3+DDwIMQ6sheW2YwC3vZ5JHndW5DiKH0bLoVMQ/OsTcbegadOvqUIQ
oMtZeUcUqO2PO+dQ6SnXNzx167fzZjV17Pyn+mc5oxxQiqZs33lCOwTuFUDJiv2o
lasIZBNi9Ht3iHM7MSETBXUMaC7P17xAszkdzhj6+jqfT/boKdHLcL7Rtm/18uDl
h4hW5kL7Hb7g+gKetiKe8cwO1SKzW4YqpzCo53RV6SgoEKFCZ04=
=+wes
-----END PGP SIGNATURE-----

--35tegml33mlkipgh--
