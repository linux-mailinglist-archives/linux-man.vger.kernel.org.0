Return-Path: <linux-man+bounces-187-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC03F7FEBC5
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 10:22:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 681F6282080
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 09:22:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 683FA374C1;
	Thu, 30 Nov 2023 09:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0iXoEHs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296D830FBA
	for <linux-man@vger.kernel.org>; Thu, 30 Nov 2023 09:22:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50FB7C433C8;
	Thu, 30 Nov 2023 09:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701336139;
	bh=MtbJmua5fwoTzeyEWANPNdQD8ynVdsM7MBcJEgJsGTI=;
	h=Date:From:To:Cc:Subject:From;
	b=c0iXoEHsfmqPJg8/hQHz9KTMbNJahCCLpmGdbVUjxwwElFxKhceEn218aU7mkNMre
	 anh9UZuOAxbXKx5tArJcTpzQ8exOJkNlaiW19gNj7h4ZX203Kc+lRT9/vuI8V6rdrN
	 Xk+JLW6t6phlWFPgugUSclfEW4gkGIJTuUgybiZOkz+0HO8WlsCXuZivXYtlXLkIEd
	 Py7MsRddbxlE7oJWmaq/F9ubbkRCtOvyvGo1Ffn3dsSTpaFH6VBLMeESzShybFgObL
	 WFtdvEjvLVXetMKdxb8QVM6UzquHjQrjcde1Odh0PMR2qElGRakSGo/8jKnxHn0VeT
	 vk7I0LizWVwRA==
Date: Thu, 30 Nov 2023 10:22:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: GNU C Library <libc-help@sourceware.org>,
	Linux man-pages <linux-man@vger.kernel.org>
Cc: Iker Pedrosa <ipedrosa@redhat.com>, shadow <~hallyn/shadow@lists.sr.ht>,
	Michael Kerrisk <mtk.manpages@gmail.com>
Subject: strtol(3) setting of errno
Message-ID: <ZWhUR9AqoSLKeT46@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2i9yBkDHvCQtnsXl"
Content-Disposition: inline


--2i9yBkDHvCQtnsXl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 30 Nov 2023 10:22:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: GNU C Library <libc-help@sourceware.org>,
	Linux man-pages <linux-man@vger.kernel.org>
Cc: Iker Pedrosa <ipedrosa@redhat.com>, shadow <~hallyn/shadow@lists.sr.ht>,
	Michael Kerrisk <mtk.manpages@gmail.com>
Subject: strtol(3) setting of errno

Hi,

We were discussing a use of strtol(3) in shadow-utils, and after reading
strtol(3) several times, I'm not sure about the exact interface of the
function.

Normally, libc functions are allowed to set errno on success, and a
caller should not inspect errno, even if it was set to 0 prior to the
call, unless the function reported an error via the return value.

However, strtol(3) is a bit special, in that it's one of the few libc
functions that report an error with a return value that is also in the
range of valid return values of the function.

So, here's how I understand the function works:

-  If the base is unsupported, return 0, and set errno to EINVAL.  Let's
   ignore this error for the rest of the question, since usually you set
   the base to something common, likely 0 or 10.

-  If no digits were found (no conversion is performed), return 0, set
   *endptr =3D=3D str, and possibly set errno to EINVAL (setting errno is
   allowed but not required).

-  If the conversion would have overflowed, return LONG_MAX, and set
   errno to ERANGE.
-  If the conversion would have underflowed, return LONG_MIN, and set
   errno to ERANGE.

-  If the conversion succeeded, return the value, which may or may not
   be 0, LONG_MIN, or LONG_MAX.  And the question here is: is there any
   guarantee that strtol(3) won't set errno in this case?

I ask because the manual page says:

NOTES
     Since  strtol()  can legitimately return 0, LONG_MAX, or LONG_MIN
     (LLONG_MAX or LLONG_MIN for strtoll()) on both success and  fail=E2=80=
=90
     ure,  the  calling program should set errno to 0 before the call,
     and then determine if an error occurred by checking whether errno
     has a nonzero value after the call.

And then in EXAMPLES:

         val =3D strtol(str, &endptr, base);

         /* Check for various possible errors. */

         if (errno !=3D 0) {
             perror("strtol");
             exit(EXIT_FAILURE);
         }

         if (endptr =3D=3D str) {
             fprintf(stderr, "No digits were found\n");
             exit(EXIT_FAILURE);
         }

         /* If we got here, strtol() successfully parsed a number. */

Which is consistent with a possible interpretation of what NOTES says,
but I think that may be because it is a bit ambiguous.  The example
program is my fault, because I changed that code:

	commit 93f369892aeab4d56b92962224e318f739ee2455
	Author: Alejandro Colomar <colomar.6.4.3@gmail.com>
	Date:   Wed Oct 28 10:33:08 2020 +0100

	    strtol.3: EXAMPLES: Simplify errno checking
	   =20
	    (No expected change in behavior,)
	   =20
	    Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
	    Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>

	diff --git a/man3/strtol.3 b/man3/strtol.3
	index a436bcac4..3889ef6b5 100644
	--- a/man3/strtol.3
	+++ b/man3/strtol.3
	@@ -276,8 +276,7 @@ .SS Program source
	=20
	     /* Check for various possible errors */
	=20
	-    if ((errno =3D=3D ERANGE && (val =3D=3D LONG_MAX || val =3D=3D LONG_M=
IN))
	-            || (errno !=3D 0 && val =3D=3D 0)) {
	+    if (errno !=3D 0) {
		 perror("strtol");
		 exit(EXIT_FAILURE);
	     }

Now I realize that commit was probably wrong, and one needs to check
both errno and the return value to determine that the call failed.  Can
you please confirm what the correct specification of strtol(3) is?

Thanks,
Alex

--=20
<https://www.alejandro-colomar.es/>

--2i9yBkDHvCQtnsXl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVoVEEACgkQnowa+77/
2zLcaA/7BPS+zOhpPU7ghPgYLIcJeq59FtmmRqGnqE3cuBiNRKs2isNQIyea1228
//afzbKhJBcTMoiMsK/DwzQIgvMd8NgMTnKtR1/aCuFQO7GnNIeg0Pnxzd+9eydu
GT+kwVKSyrIyeErP5dv46QCAfxS0ULQMbhCSZ/wHwdQEd3jdnC4C1VyCNK0jPxIs
lMcLZVxsDd+tco1M0Bjm7utPw4IJ1Of3MqTISkjeo310mhyHxw70GVmFBjyrzXCO
4JpjZM3PeOnMSFBOZWAP/lkhI4tj1B6uNgrNdCR89gPxaCYZhKyQNaaxE6ftmTMV
tBSfz+e+N7Y2ws5UjJQD9oyDOYjTk8yKqZl5eeKPM40WMBF+dxy1Q6YYOUMGi4DB
7V0FoEKV4iGMK7BjuHCSxr5FrkAZ04M/tlIcFbot4S9fdj1LyYMvhCS4eIy2l10O
S/V1DTMlwnPZaVjnl5b2Tz3+dqcX/CLoNtyZNHmxkktPOzsdj14dJScjbZbSX6In
047P6lBdQjd7jbmX2j3tlbPnz+57WowvniX+5JEBUoTODINg0DfaH6fS+Sz6ndnR
538T89qIDsiQ96TZVb6uNjQOcK2999UW8hcndKxhPiCUxMWwwXN5lyrw0k5MqC9J
w3pRknqsiWy1nFgo0bsWo8Vdzto/GEakJetsRLCbI+GFfQZMOzs=
=pxP2
-----END PGP SIGNATURE-----

--2i9yBkDHvCQtnsXl--

