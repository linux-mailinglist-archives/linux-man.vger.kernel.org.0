Return-Path: <linux-man+bounces-2008-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E10B69D045E
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:55:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 82E981F21657
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 14:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39EB61D27B4;
	Sun, 17 Nov 2024 14:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCt0Vx/5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7F51898FC
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 14:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731855329; cv=none; b=lLGZsIHd4GHmhJ5bsZXt0nF8iFz+7Xx+a2fl7EfIjtDhnI7nsv5LUHa5CiaZLYBAK3ZhvQm7w+aZ15eS3d+WR/fI7mAFW/cnC0mGQp59t0Yqf0zg6rvyeHV6WCzpXbVR6ETPX3UJI1DSsBZwVwjlMszMzlbPMFa7aAxKpq329kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731855329; c=relaxed/simple;
	bh=U40aVY+KwUde3RL2ZTX8flTg7bEp7Eow+euaAv1YdhA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YOkS1s/RME7vGWYslMlLyzGuMwA9d+/aA7AEfJE1n97pn2yUHUEq4c0Z8Lk5jdvFK2t4fZ/WQu1/awvAauo4vPXVOD9tQ2HcyaoG7wp3YSmrhKaGEAklSu2PVGSG7k2fMhfdWm5lMnUYCXdaPnIeRkzzhPsz6wbb6isp0NMFy4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCt0Vx/5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CE9EC4CECD;
	Sun, 17 Nov 2024 14:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731855326;
	bh=U40aVY+KwUde3RL2ZTX8flTg7bEp7Eow+euaAv1YdhA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aCt0Vx/5zw1tfiR33ge5ziiVVAeju6oJt5KneVqHw2OI+My2i9dixRFb2FPZ/iTzm
	 7Mzp/ccwbTNZ8mEFKDZExMNlrmCui4zBT+dZcx8PM5DuaLW1E7XlIIZUOIQzLVk8jw
	 kPMWJVDmyO2twkORXbd+SvztZeDEDfVu6otje+IN3aFTItx+odMOTqCx6SiHlD2gxk
	 JxA50BCA+q/J7taVy9MZmpLTOVTs+XHfVTU4pqFCnrdpZ8+RiZHgMQcwO28YFJI9Hx
	 B+NwH800KORdzDYe1OSE6+1spw46RYY0ySieYDG2Re/udFHg4Q+H62O8mEfxiwyIxS
	 Q8rKApTssUMEw==
Date: Sun, 17 Nov 2024 15:55:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	"Dr. Tobias Quathamer" <toddy@debian.org>
Subject: Re: Issue in man page tzfile.5
Message-ID: <hq423ifu5ilhhkb6nph2wptsoinkrhliilif4on56jdutz7vs2@yuavaywyynio>
References: <ZznJgShtaSiy5wle@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bsfbqlenpi5jkaa3"
Content-Disposition: inline
In-Reply-To: <ZznJgShtaSiy5wle@meinfjell.helgefjelltest.de>


--bsfbqlenpi5jkaa3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	"Dr. Tobias Quathamer" <toddy@debian.org>
Subject: Re: Issue in man page tzfile.5
References: <ZznJgShtaSiy5wle@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgShtaSiy5wle@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    timezone =E2=86=92 B<timezone>(3)
>=20
> "It seems that timezone uses B<tzfile> internally, but glibc refuses to "
> "expose it to userspace.  This is most likely because the standardised "
> "functions are more useful and portable, and actually documented by glibc=
=2E  "
> "It may only be in glibc just to support the non-glibc-maintained timezon=
e "
> "data (which is maintained by some other entity)."

You're right, but this is a Debian patch.  I've CCed Tobias.
I suggest transforming

	+It seems that timezone uses

into

	+It seems that
	+.BR timezone (1)
	+uses

Reported-by: Helge Kreutzmann <debian@helgefjell.de>
Reported-by: Alejandro Colomar <alx@kernel.org>
Suggested-by: Alejandro Colomar <alx@kernel.org>

Cheers,
Alex



alx@debian:~/src/debian/doc/manpages/debian/latest/debian/patches$ cat ./00=
10-tzfile.5.patch
=46rom: "Dr. Tobias Quathamer" <toddy@debian.org>
Date: Sat, 6 Feb 2016 01:25:30 +0100
Subject: tzfile.5

---
 man/man5/tzfile.5 | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/man/man5/tzfile.5 b/man/man5/tzfile.5
index 4aa3f6c..d0cefa9 100644
--- a/man/man5/tzfile.5
+++ b/man/man5/tzfile.5
@@ -210,6 +210,22 @@ if either
 .B tzh_timecnt
 is zero or the time argument is less than the first transition time record=
ed
 in the file.
+.\" http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D122906#47
+.\" Reviewed by upstream and rejected, May 2012
+.SH NOTES
+This manual page documents
+.I <tzfile.h>
+in the glibc source archive, see
+.IR timezone/tzfile.h .
+.PP
+It seems that timezone uses
+.B tzfile
+internally, but glibc refuses to expose it to userspace.  This is most
+likely because the standardised functions are more useful and
+portable, and actually documented by glibc.  It may only be in glibc
+just to support the non-glibc-maintained timezone data (which is
+maintained by some other entity).
+.\" End of patch
 .SS Version 2 format
 For version-2-format timezone files,
 the above header and data are followed by a second header and data,


--=20
<https://www.alejandro-colomar.es/>

--bsfbqlenpi5jkaa3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6A9oACgkQnowa+77/
2zKSsBAAhiTDEkXcg4DPC47fG6Od7+H3n9aTd94HivC9It7KLX/rHfMDL2jbsDSp
illryvTLbqdNfbBPe8xpA1iSCOf7ur2pMWczM4SsUTriS/Wltam5aiFd3gzx6Fu/
pZ+PRGrLAP3DC/CENEa4CpmiBx26yd5I9NnJhIHjtaaSJc/QreKyc0O1iyEuNEdZ
aVzDzNWLf7ok6R3MQzDcp9uaKPdoSTB8gRoCJglwXwkSMuVZNWBk7kMCMbTjqtGt
5d1b1Q2kRzHo4QIdPGuibH5UNFpwO2MIiJAotofwmEFv4lTSwFVQOhJGAtRxmCoI
2UVPq6gGEv5HWfaq/8Z/mbDTcylzc9mRO6sdEjOJzZofpUWFm+cNbDpL1NUK2NV5
TpapJyh4v7wltDA/XRlUc66R4qnYUz0DV0AmB89PGV26AS/7z3k51nCbtv1gy3cG
i4ZMu223aaGEzEi9sxPLgpvRd0RbkjDLQW6v4p9JPoFk3kcwodW6seO9kzH4WJZf
iTdJWcO3meQYYjW1O31HzJ9Qmc53AW4onwSCcI+6ZQiFkPFhTzXjrbE33dACdxbe
A25kHXt0IJHkZgW5l28v0BsIBV+Qibn2w11j5rjXotPrQaxyIPV1xgDPGvJQWXw5
NKFvarv9Hh9DfqVkCJnOQyTWhBk3kN3omoIiVSIT3PkuGG7b/EU=
=DVfa
-----END PGP SIGNATURE-----

--bsfbqlenpi5jkaa3--

