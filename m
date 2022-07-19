Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 894EA57A9E4
	for <lists+linux-man@lfdr.de>; Wed, 20 Jul 2022 00:36:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237616AbiGSWgB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 18:36:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232480AbiGSWgA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 18:36:00 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A1331192B5
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 15:35:59 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id DF840A08;
        Wed, 20 Jul 2022 00:35:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658270158;
        bh=C21Qz3pi7Ta0Da7BMywDifdkE3rhUCSTX3GCrEXWKJk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Dh5e6kZ4yVbIddDGLhZ7cph+cLPwqlYWdz/S63yNwlZzJ8IjWnHfJ6S7ESvG2czJG
         2vak/qUk/zS6pI/0z3KktzqBIx2JwCDeT6dI9GXdHiqO3cTfncnQSBeV3cuzKA2zYy
         XZ85vJzrOapqOjhmBaIbMPIZwhbnzXjR2lvFNZ9tB1SNPWUpLiErzz+89DRPCt5e8D
         vXs2q5vFndPWThqiDAiHjUMu0B1/DW5THmWcnD6BOMMwtBZHvgFZlIWhC6C25gVAw7
         brIG9JbUAqcztFJJga5GQM/3OjXnjkIitFUZwbkod7K/iMihA/L+MkDi/tJZtf9Edr
         n+/haEGg0xOsBrcgjFY3wkQX9lctgujPjinYiJHp5tWdpMsMR/j0jL72UqTm+ICwp9
         /BYcqNHqrCRY5sVJe2+vhP+LipixvUaqwlpXeTX/CLDvR3lLlZWhRqjby/RcpGqmL6
         iie/W4u9d/NLYpunSWlwcvxP+sn22ab4Djk2FxVhipQ8ii6ETn/GqhIdkMAv0ruj84
         JS+9YntOBUKqAzbMyQETKLL/QOoyekRXR2KAaJticURQ0HsxmnND+wc32MG1693dzA
         0TnsgiFoLJt0qiIyK2Ttk8Fl67zkCJ6zqzzFWIlw5Chz6SCyDfCAIXHLCzaOuhMthZ
         f5/8hpTa3KVMCgr2tXrA/ghQ=
Date:   Wed, 20 Jul 2022 00:35:57 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 1/2] tm.3type: describe tm_zone, tm_gmtoff
Message-ID: <05ab2fa40002e379b0fa6d4a2c97c87e880156cb.1658270131.git.nabijaczleweli@nabijaczleweli.xyz>
References: <b84f1ff5815f24cc23e55a0d89ddd1878f35faa7.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="5m6b3q7wi62fetoo"
Content-Disposition: inline
In-Reply-To: <b84f1ff5815f24cc23e55a0d89ddd1878f35faa7.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--5m6b3q7wi62fetoo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

FreeBSD timezone(3) is V7 char *timezone(int zone, int dst),
our documentation would imply it's impossible to service this type of
system portably

Indeed, glibc defines them both, and they make more sense for most
use-cases than trying to use the globals

glibc cited for __USE_MISC, tm_zone invalidation is Debian 2.33-7
POSIX cited for XSI marking is Issue 7 TC2
CSRG CD #2 contains 4.3BSD-Tahoe with both members

We currently ship an outdated (and factually misleading) version
of this description in ctime.3

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/tm.3type | 51 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/man3/tm.3type b/man3/tm.3type
index 4117b36a0..4b98819f9 100644
--- a/man3/tm.3type
+++ b/man3/tm.3type
@@ -26,8 +26,26 @@ Standard C library
 .BR "    int         tm_yday;" \
 "   /* Day of the year  [" 0 ", " 365 "] (Jan/01 =3D " 0 ") */"
 .BR "    int         tm_isdst;" "  /* Daylight savings flag */"
+.PP
+.BR "    long        tm_gmtoff;" " /* Seconds East of UTC */"
+.BR "    const char *tm_zone;" "   /* Timezone abbreviation */"
 .B };
 .fi
+.PP
+.RS -4
+Feature Test Macro Requirements for glibc (see
+.BR feature_test_macros (7)):
+.RE
+.PP
+.IR tm_gmtoff ,
+.IR tm_zone :
+.nf
+.\" Guarded with __USE_MISC:
+    Since glibc 2.20:
+        _DEFAULT_SOURCE
+    Glibc 2.20 and earlier:
+        _BSD_SOURCE
+.fi
 .SH DESCRIPTION
 Describes time, broken down into distinct components.
 .PP
@@ -36,6 +54,17 @@ describes wether daylight saving time is in effect at th=
e time described.
 The value is positive if daylight saving time is in effect,
 zero if it is not,
 and negative if the information is not available.
+.PP
+.I tm_gmtoff
+is the difference, in seconds,
+of the timezone represented by this broken-down time and UTC
+(this is the additive inverse of
+.BR timezone (3)).
+.PP
+.I tm_zone
+is the equivalent of
+.BR tzname (3)
+for the timezone represented by this broken-down time.
 .SH VERSIONS
 In C90,
 .I tm_sec
@@ -49,10 +78,32 @@ in C99.
 .SH CONFORMING TO
 C90 and later;
 POSIX.1-2001 and later.
+.PP
+.I tm_gmtoff
+and
+.I tm_zone
+originate from 4.3BSD-Tahoe (where
+.I tm_zone
+is a
+.IR "char *" ).
 .SH NOTES
 .I tm_sec
 can represent a leap second with the value
 .BR 60 .
+.PP
+.BR timezone (3),
+as a variable, is an XSI extension: some systems provide the V7-compatible
+.\" FreeBSD
+.BR timezone (3)
+function.
+The
+.I tm_gmtoff
+field provides an alternative (with the opposite sign) for those systems.
+.PP
+.I tm_zone
+points to static storage and may be overriden on subsequent calls to
+.BR localtime (3)
+and similar functions (however, this never happens under glibc).
 .SH SEE ALSO
 .BR ctime (3),
 .BR strftime (3),
--=20
2.30.2


--5m6b3q7wi62fetoo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLXMc0ACgkQvP0LAY0m
WPGFOw/9H+6ylfgCSmzzR8CFkmqSaxpyj+RSWuSs4WBV9Y29oYuR79orUxE5Tg3y
1d7sPY4l60PpdT2OI4vZzP65bdojoYmUl/hAeP7fO/bCI1JzUgqWxxoiF63baU56
mWG+jh2JjxlptGRxDMqbbHqPojNqKjEssRWtMMoITcV8BylPkGI7WBolxB6w8JxV
PFJlKlWfrGIhi4z/7CKbEVoIcfkqbvBe2gUi4Z3mpPKykfZWAw0sDPjlta2nR4cp
E8BPif8dbITU2oZdZ8KASmjb8U1WNUWOtB2SYcB/biabrkytWrt/VvI6A5h2xBZj
O4v4ukJWolO+lCi3gjx1r54Py8TU8/XT2kY9TnyTanNYHfKWbtzowKH9+D1KbU1l
30YTw2rDeZMs/FiPQ73ORMLd8XDbiX5Tu2sR02LxBK74kayUaXbLonqvxUJBRuBN
urMWRVeO0Xb2xE+e8Zx3sOZ+QVJxbVdqErncUHp40Msj3kmOyzgA8ISx/QN4n8Ne
2pB2p1yt9FGDyTe9j+q4iGjpGp2LkAG1SigEX/P9KL5r/2/C/MDGR3c4pTYFzbTj
YGozsAq8SGLEfyML1kI2vnbk7jEPXDZw0gyROSgaYNLJV1PupgWy5Da0vVk7gHct
tXfqzWUAKWi4aJqeYBZIDF0hmLzZHSg1IMyiBNwdFEZJVbYU+2A=
=aJV6
-----END PGP SIGNATURE-----

--5m6b3q7wi62fetoo--
