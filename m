Return-Path: <linux-man+bounces-234-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E33807A8B
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 22:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A21681C20B1A
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 21:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADC9270964;
	Wed,  6 Dec 2023 21:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8YTFF9l"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719FC12E65
	for <linux-man@vger.kernel.org>; Wed,  6 Dec 2023 21:34:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04BFCC433C7;
	Wed,  6 Dec 2023 21:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701898487;
	bh=VQokRyHP64KKq64vIII+PcAtaoHxebk7hAtxxE95HXw=;
	h=Date:From:To:Cc:Subject:From;
	b=J8YTFF9lyW8GdlLicYPYTKkqwQcRpc22A1XJxFm5lA5qjn1QVL9WO7aXpQ+a5TvMU
	 LNXIJoTElwZU6IuYXl26pIEhCQm8T0AR3pH7AHiCrY1JbWhpiygrrELBoT9/RRikiD
	 Te3BggTvr2CmZL+bbJyiSKYEhnh7qf/j6drFbwvg9qfj22xy3VJSGGf8vGog2KyLVy
	 i8MI8IxcmXZVK6yeKxXnR1CdZg0NbLSiZIXnUkvSMJZ+JXYS4nX+dAF8WLAS7g0Gss
	 Od4sjLUIbDROU1Rt105lSyZiJ/BaVLE5xkg9uRldLAGqjQQsw5nolMaLsiQmE0AWoV
	 TrbLg9ck4pe7Q==
Date: Wed, 6 Dec 2023 22:34:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	Matthew House <mattlloydhouse@gmail.com>
Subject: [PATCH] strtol.3: Clarify that the base should be tested beforehand,
 if at all
Message-ID: <20231206213421.220065-2-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pdMvKxFxzvrF9BPv"
Content-Disposition: inline
X-Mailer: git-send-email 2.42.0


--pdMvKxFxzvrF9BPv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 6 Dec 2023 22:34:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	Matthew House <mattlloydhouse@gmail.com>
Subject: [PATCH] strtol.3: Clarify that the base should be tested beforehand,
 if at all

Normally, the base need not be tested, and the only interesting errno
value should be ERANGE.

If the base needs to be tested, it should be tested in a call that
would not otherwise fail.  Otherwise, it would be easy to trigger
Undefined Behavior.  Consider the following example:

errno =3D 0;
val =3D strtol("foo", &end, -42);

There's no portable way to know if the call failed due to the string or
the base.

Cc: Matthew House <mattlloydhouse@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/strtol.3 | 28 +++++++++++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/man3/strtol.3 b/man3/strtol.3
index 1f1f98216..4b30b3269 100644
--- a/man3/strtol.3
+++ b/man3/strtol.3
@@ -184,8 +184,8 @@ .SH NOTES
 .I errno
 to 0 before the call,
 and then determine if an error occurred by checking whether
-.I errno
-has a nonzero value after the call.
+.I errno =3D=3D ERANGE
+after the call.
 .P
 According to POSIX.1,
 in locales other than "C" and "POSIX",
@@ -206,6 +206,21 @@ .SH NOTES
 .BR strtoll ()
 or to
 .BR strtol ().
+.SH CAVEATS
+If the
+.I base
+needs to be tested,
+it should be tested in a call where the string is known to succeed.
+Otherwise, it's impossible to portably differentiate the errors.
+.P
+.in +4n
+.EX
+errno =3D 0;
+strtol("0", NULL, base);
+if (errno =3D=3D EINVAL)
+    goto unsupported_base;
+.EE
+.in
 .SH EXAMPLES
 The program shown below demonstrates the use of
 .BR strtol ().
@@ -260,13 +275,20 @@ .SS Program source
 \&
     str =3D argv[1];
     base =3D (argc > 2) ? atoi(argv[2]) : 0;
+\&
+    errno =3D 0;    /* To distinguish success/failure after call */
+    strtol("0", NULL, base);
+    if (errno =3D=3D EINVAL) {
+        fprintf(stderr, "The base is not supported\en");
+        exit(EXIT_FAILURE);
+    }
 \&
     errno =3D 0;    /* To distinguish success/failure after call */
     val =3D strtol(str, &endptr, base);
 \&
     /* Check for various possible errors. */
 \&
-    if (errno !=3D 0) {
+    if (errno =3D=3D ERANGE) {
         perror("strtol");
         exit(EXIT_FAILURE);
     }
--=20
2.42.0


--pdMvKxFxzvrF9BPv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVw6PUACgkQnowa+77/
2zIidxAAk9HumldlOMkOvELldL4sfEmAZ2d2qhwpOd4dQj7563HC5i6V0FOYkQD1
OrZ7NcURfh3iBbRg1HmHSIopfT+VFSlIAYFmB1D4lao7ReoSwR/7tX2sTvokEDG/
Gct35ZEJLe9TO5Hc+wQyOFo1FNRJdrDQ146AkB4KFHR79OuUpMwPh4smSq/J547B
HzHbtm23rd7RCBbXrSIpb5xqMH27JfCX7BjYFzUkdC6cIKl9V7AqC0hNNLudA1Bk
LSi6njlouX+TPcGs+ZZpZfHUv9SVBBfmpcRx5VgyZPuVWdfS/93auK+0lM3LoCp0
yz6ceQA2CS9F9feAygKs9KHeDuMpvFDVo3X+aW2gpZhoGAJ4L8W3BClIZoH20D9i
YZ649LfdejKUj517ORAK00ZOSTgpJJn13WjVKMD8RF5y2EfdAp1kWClssYFASQFx
cS56nepqQEqc/IfuNcvxpjAGpeQPvssSvkPkG+FBLcIbttPDoRhIaCClhsb0bSrk
Wx9arVLLhANBP7UdtqPIFTkSC6bUW0qEawX+vEPPgppLrYpXvgUOj/iJcuwiai57
kxk69VpQ0mVoq1bXSYKE0qzMyU124/5Os/bOazv0fm26eYQjFeCGCEyS9Ti4ZB2P
Gvg3A6+3mi8h9z+YBXHmE8QaReZAgYnY0JFjUocbTmWvYe8suTY=
=b6zy
-----END PGP SIGNATURE-----

--pdMvKxFxzvrF9BPv--

