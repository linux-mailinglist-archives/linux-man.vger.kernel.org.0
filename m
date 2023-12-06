Return-Path: <linux-man+bounces-224-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CAABB80730D
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 15:52:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D312B20D84
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 14:52:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C1EA3DBB2;
	Wed,  6 Dec 2023 14:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyielA/M"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA516381DD
	for <linux-man@vger.kernel.org>; Wed,  6 Dec 2023 14:52:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4621DC433C9;
	Wed,  6 Dec 2023 14:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701874357;
	bh=g2gUG/OLsfRXuUHAJjDmBndBwBx5tE0POG8/WZdSnIY=;
	h=Date:From:To:Cc:Subject:From;
	b=KyielA/Mn3m1u0l1XBKDuBVSKuBwmrfMJ1IczrNxiTFhX+cRP3HofqfnjBQbT5DrR
	 gY6ZCBKdV/TCw2L3BsigcNECTqeryZYpYga1KA4TpfST7kjmkaYfsnS7xTZkBv9W1u
	 3XZ6DBa/BGHl43C16NBKYgPHmUuhwPR6WkB72G15U0/oKytLjFi/XCt7Zwh8r9LG1O
	 ww+CZ2jVbD2f6GSDctA65Q1ZBejvQABEJfax+gzOxRDkqdWboaAX1aODf90VhPuiRW
	 Ewc7OFHrxNHl4c/XMAKHrS7EQvvYgNQgxgrVWNVsoUTcYU6yB5NCeM08nyxMYv/ak3
	 GcIW2Pngm3BAg==
Date: Wed, 6 Dec 2023 15:52:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Lee Griffiths <poddster@gmail.com>,
	Zack Weinberg <zack@owlfolio.org>
Subject: [PATCH] sscanf.3: Remove term 'deprecated', and expand BUGS
Message-ID: <20231206145132.5538-2-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="A4BWm8doOhafW94I"
Content-Disposition: inline
X-Mailer: git-send-email 2.42.0


--A4BWm8doOhafW94I
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 6 Dec 2023 15:52:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Lee Griffiths <poddster@gmail.com>,
	Zack Weinberg <zack@owlfolio.org>
Subject: [PATCH] sscanf.3: Remove term 'deprecated', and expand BUGS

Several programmers have been confused about this use of 'deprecated'.

Also, maximum field width can be used with these fields to mitigate the
problem.  Still, it's only a mitigation, since it limits the number of
characters read, but that means an input of LONG_MAX+1 --which takes up
the same number of characters than LONG_MAX-- would still cause UB; or
one can limit that to well below the limit of UB, but then you
artificially invalidate valid input.  No good way to avoid UB with
sscanf(3), but it's not necessarily bad with trusted input (and
strtol(3) isn't the panacea either; strtoi(3) is good, though, but not
standard).

Try to be more convincing in BUGS instead.

Link: <https://stackoverflow.com/questions/77601832/man-sscanf-d-is-depreca=
ted-in-c-or-glibc/>
Cc: Lee Griffiths <poddster@gmail.com>
Cc: Zack Weinberg <zack@owlfolio.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Lee!

Thanks for the report.  After seeing how much frustration it has caused,
I propose this change.  Does it look good to you?

Thanks,
Alex

 man3/sscanf.3 | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/man3/sscanf.3 b/man3/sscanf.3
index 2211cab7d..4c0bdc318 100644
--- a/man3/sscanf.3
+++ b/man3/sscanf.3
@@ -359,7 +359,6 @@ .SS Conversions
 and assignment does not occur.
 .TP
 .B d
-.IR Deprecated .
 Matches an optionally signed decimal integer;
 the next pointer must be a pointer to
 .IR int .
@@ -374,7 +373,6 @@ .SS Conversions
 .\" is silently ignored, causing old programs to fail mysteriously.)
 .TP
 .B i
-.IR Deprecated .
 Matches an optionally signed integer; the next pointer must be a pointer to
 .IR int .
 The integer is read in base 16 if it begins with
@@ -387,18 +385,15 @@ .SS Conversions
 Only characters that correspond to the base are used.
 .TP
 .B o
-.IR Deprecated .
 Matches an unsigned octal integer; the next pointer must be a pointer to
 .IR "unsigned int" .
 .TP
 .B u
-.IR Deprecated .
 Matches an unsigned decimal integer; the next pointer must be a
 pointer to
 .IR "unsigned int" .
 .TP
 .B x
-.IR Deprecated .
 Matches an unsigned hexadecimal integer
 (that may optionally begin with a prefix of
 .I 0x
@@ -409,33 +404,27 @@ .SS Conversions
 .IR "unsigned int" .
 .TP
 .B X
-.IR Deprecated .
 Equivalent to
 .BR x .
 .TP
 .B f
-.IR Deprecated .
 Matches an optionally signed floating-point number; the next pointer must
 be a pointer to
 .IR float .
 .TP
 .B e
-.IR Deprecated .
 Equivalent to
 .BR f .
 .TP
 .B g
-.IR Deprecated .
 Equivalent to
 .BR f .
 .TP
 .B E
-.IR Deprecated .
 Equivalent to
 .BR f .
 .TP
 .B a
-.IR Deprecated .
 (C99) Equivalent to
 .BR f .
 .TP
@@ -661,8 +650,8 @@ .SS Numeric conversion specifiers
 programs should use functions such as
 .BR strtol (3)
 to parse numeric input.
-This manual page deprecates use of the numeric conversion specifiers
-until they are fixed by ISO C.
+Alternatively,
+mitigate it by specifying a maximum field width.
 .SS Nonstandard modifiers
 These functions are fully C99 conformant, but provide the
 additional modifiers
--=20
2.42.0


--A4BWm8doOhafW94I
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVwirIACgkQnowa+77/
2zLe6A/+OGk3Nv3/iVD4L2+xFjzuyTj2a8CilaB8kzk/Gm9cDFewQMOjPNqa5f7y
Y8T5Dd7aPBigh1OtZ59kRT4xphQH6By2WrOurUjgNsMiICMX0RVMnIokzXlfasci
tJAjxFYw2/k0U6mGBaCTx/rUMVnqQRMAdBraeLqoBtTRr9Z4TLJXsjsl3W/zCyZc
OWUbV8VF5HfP3aR7lfPd1+8l/QdFK0JDOVuRP2IXn0VCMDEPs7w3weF7yRdDQTHl
fLq5ke9T4jakv6Qs4b1u48S33i3WcYkih2Fo0PZs9Xj/mUdwDNa9UHlcSfH4BmVH
og46Kz+vi93+E85NezaxhouOJk8CUxlBQTPbUFg96Z++5ol4b753324yvsoJdxKv
YfLEquqJdZ061kw5Pp1XYSaYZTfB6PqksfvlB5j67FygDwQkm7InuL2WFzzgBFqB
/dl+H74m1WdE+2suoxXgsokgQx9sjmufE+i0F7i0lCeMq9TWzyt9DJtib9tcUM3D
jrsR3FHOCPDvni4AxJBNe/X3sV1NXHVNGWV/LSMPJZ5zBQbYoO6zscB8zzMCUdM0
weTWsrnq1S97PzRjtOlArTeEi2SIoF/H6DojInEumd9w8+Qz+iASjPQ28qHZDFC/
GsPzvoa19r3HCXOfKqjNWxihMwkavSVzSTgxBpeT/wZ/yFf9EEw=
=wAsI
-----END PGP SIGNATURE-----

--A4BWm8doOhafW94I--

