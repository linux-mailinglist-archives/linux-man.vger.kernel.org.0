Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B973F7E6062
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 23:17:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229885AbjKHWRQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 17:17:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbjKHWRP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 17:17:15 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 736E61990
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 14:17:13 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD0EDC433C8;
        Wed,  8 Nov 2023 22:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699481833;
        bh=2S5sXH+2py0eaUILdptTbOb7kphjdcau/5OLWaDG+WM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=M0YRAFobUmkhiQPo8+9zicBoNgtMGWnFoCXuyzNpyrsX6EwUIzC97ECPz0Zp9t6zz
         lMCZxUY87W46xmYv7tuOj92NSaH7pgmG9M8EZwaM8913nNKzgeLQHqxmN/ZEwqridv
         l5CP9fne7veYipIRqq88/S0GTYiInu/vocvVs7menb3KmMrzLilnt502+ry1vcTxlc
         V83no/6lrljSa+2o6mzoYLtV0CY56LMcg6wGhw/UZY1mtFOtcomR+flhiNjPdwEyKk
         gH7bZeyJCCx0qJbI7JGuk90L4dbRmE81MuiiKcWEkxyKt7NgJl3+jhUqp+ukz2rvYA
         mw84jO27frQQQ==
Date:   Wed, 8 Nov 2023 23:17:07 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
        DJ Delorie <dj@redhat.com>, Jonny Grant <jg@jguk.org>,
        Matthew House <mattlloydhouse@gmail.com>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Thorsten Kukuk <kukuk@suse.com>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        Zack Weinberg <zack@owlfolio.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Carlos O'Donell <carlos@redhat.com>
Subject: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy() do
 NOT produce a string
Message-ID: <20231108221638.37101-2-alx@kernel.org>
References: <ZUwCwxyPfur-hfea@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="e704l3jUFslF9iLB"
Content-Disposition: inline
In-Reply-To: <ZUwCwxyPfur-hfea@debian>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--e704l3jUFslF9iLB
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 8 Nov 2023 23:17:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
	DJ Delorie <dj@redhat.com>, Jonny Grant <jg@jguk.org>,
	Matthew House <mattlloydhouse@gmail.com>,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
	Thorsten Kukuk <kukuk@suse.com>,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	Zack Weinberg <zack@owlfolio.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Carlos O'Donell <carlos@redhat.com>
Subject: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy() do
 NOT produce a string

These copy *from* a string.  But the destination is a simple character
sequence within an array; not a string.

Suggested-by: DJ Delorie <dj@redhat.com>
Cc: Jonny Grant <jg@jguk.org>
Cc: Matthew House <mattlloydhouse@gmail.com>
Cc: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Cc: Thorsten Kukuk <kukuk@suse.com>
Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: Zack Weinberg <zack@owlfolio.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Carlos O'Donell <carlos@redhat.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Resending, including the mailing lists, which I forgot.

 man3/stpncpy.3        | 17 +++++++++++++----
 man7/string_copying.7 | 20 ++++++++++----------
 2 files changed, 23 insertions(+), 14 deletions(-)

diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index b6bbfd0a3..f86ff8c29 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -6,9 +6,8 @@
 .TH stpncpy 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
 stpncpy, strncpy
-\- zero a fixed-width buffer and
-copy a string into a character sequence with truncation
-and zero the rest of it
+\-
+fill a fixed-width null-padded buffer with bytes from a string
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
@@ -37,7 +36,7 @@ .SH SYNOPSIS
         _GNU_SOURCE
 .fi
 .SH DESCRIPTION
-These functions copy the string pointed to by
+These functions copy bytes from the string pointed to by
 .I src
 into a null-padded character sequence at the fixed-width buffer pointed to=
 by
 .IR dst .
@@ -110,6 +109,16 @@ .SH CAVEATS
 These functions produce a null-padded character sequence,
 not a string (see
 .BR string_copying (7)).
+For example:
+.P
+.in +4n
+.EX
+strncpy(buf, "1", 5);       // { \[aq]1\[aq],   0,   0,   0,   0 }
+strncpy(buf, "1234", 5);    // { \[aq]1\[aq], \[aq]2\[aq], \[aq]3\[aq], \[=
aq]4\[aq],   0 }
+strncpy(buf, "12345", 5);   // { \[aq]1\[aq], \[aq]2\[aq], \[aq]3\[aq], \[=
aq]4\[aq], \[aq]5\[aq] }
+strncpy(buf, "123456", 5);  // { \[aq]1\[aq], \[aq]2\[aq], \[aq]3\[aq], \[=
aq]4\[aq], \[aq]5\[aq] }
+.EE
+.in
 .P
 It's impossible to distinguish truncation by the result of the call,
 from a character sequence that just fits the destination buffer;
diff --git a/man7/string_copying.7 b/man7/string_copying.7
index cadf1c539..0e179ba34 100644
--- a/man7/string_copying.7
+++ b/man7/string_copying.7
@@ -41,15 +41,11 @@ .SS Strings
 .\" ----- SYNOPSIS :: Null-padded character sequences --------/
 .SS Null-padded character sequences
 .nf
-// Zero a fixed-width buffer, and
-// copy a string into a character sequence with truncation.
-.BI "char *stpncpy(char " dst "[restrict ." sz "], \
+// Fill a fixed-width null-padded buffer with bytes from a string.
+.BI "char *strncpy(char " dst "[restrict ." sz "], \
 const char *restrict " src ,
 .BI "               size_t " sz );
-.P
-// Zero a fixed-width buffer, and
-// copy a string into a character sequence with truncation.
-.BI "char *strncpy(char " dst "[restrict ." sz "], \
+.BI "char *stpncpy(char " dst "[restrict ." sz "], \
 const char *restrict " src ,
 .BI "               size_t " sz );
 .P
@@ -240,14 +236,18 @@ .SS Truncate or not?
 .\" ----- DESCRIPTION :: Null-padded character sequences --------------/
 .SS Null-padded character sequences
 For historic reasons,
-some standard APIs,
+some standard APIs and file formats,
 such as
-.BR utmpx (5),
+.BR utmpx (5)
+and
+.BR tar (1),
 use null-padded character sequences in fixed-width buffers.
 To interface with them,
 specialized functions need to be used.
 .P
-To copy strings into them, use
+To copy bytes from strings into these buffers, use
+.BR strncpy (3)
+or
 .BR stpncpy (3).
 .P
 To copy from an unterminated string within a fixed-width buffer into a str=
ing,
--=20
2.42.0

--e704l3jUFslF9iLB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVMCOMACgkQnowa+77/
2zKGTBAAo4thAp+0LNdiqiMLAg6E+ATNfE+hzEqLi97g8XuCH++Nn9QJqligeKvx
I/LGlpavg4K+zVpxh+kLXtDFBRLhVEMlJXnGtE9d2w9oB+81MKSGodspvK99SlTh
fAzWLtf8fRmxHMVng0TxWYHCbUdJjNaQFIr++cF5zQl6aCQkhkEqtqwknB5w0YwO
rhgpufo6HLlNSWhKvfMpL3goL8hbxU3hO4AvdcIwsttvKV34AF1twfeJMbc16Ciy
kesM79H32I3xvhfoVm0FQgxRcZlXTL3aEGNNOtWU9qoXE/6bld3GfoShNlvtXR6C
2kyb2giFbBiO0OjR0QAh/HVziwhoNC46aJB9c5RjIO2BPPXcfu8J5PDHY2TcBRZV
a3Z6YtEOrcdoLoTnwdpG8pEQsl+JMR1MzYpAC1MoMUZoLGaXXxiqNTTOtFt6z66z
tq9jHeM7+B7gXMPSAJw27M/QWOaT2jlwNmAAT3p8vlzh5VfPkwU0AtzDbzNcbnGe
Lg8whU4qp3kDrRnzj2UPulfjWomFrjOtnZ2rTwnCFDIj9ggcSpiSsYVLloxlERO/
+sOVUcmhbWwJNVP4KEqLdhFO3GZf3hVboLAeO6CIknwnMWhxXdlVUfUGVNjd/MRW
5ZXJP9m5fRDtElU3mCplAczZ6JBGqf2fFh3BNRi9m1dtZFt5334=
=Y1v2
-----END PGP SIGNATURE-----

--e704l3jUFslF9iLB--
