Return-Path: <linux-man+bounces-2968-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3630AABAF2D
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 11:58:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84A903B71A7
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 09:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFA8119259F;
	Sun, 18 May 2025 09:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DODSJnJZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805B27E1
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 09:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747562303; cv=none; b=pJiyCNytklBP5RHflVz/8j9bupa7rrrxeoAimTNAUOUneiOUxvEb48Y7BPZmo8by5S45hEXIurfgqW3Rd6ckYfDWEokfCv2o1zRF3GMT5giJPIqWdcTN+eXVRDs+oZIDlLsvIT5n6ax2HhxH7VKW03sybxwVPQvo1/bA968Jjoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747562303; c=relaxed/simple;
	bh=4TYOgG+zgBHjQg0CWoamBJ7Ch+vUROabYlQRKE0hOR8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=JB3K+ltnU3NaZCdgeS6dI5Oa3MAufJM4WoZM+rhRittIUe17xbER1vufGVRWdaO6gienDzFKPYMWYD98E8lG/9vDUzB06bOgaEeMHJp3y60bBO4e6Ky5mqdEsooY4TGFmXRQ3+6vghzJKXIzIsSw1K/O85l/JpasMANuSd0OOZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DODSJnJZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 180F4C4CEE7;
	Sun, 18 May 2025 09:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747562303;
	bh=4TYOgG+zgBHjQg0CWoamBJ7Ch+vUROabYlQRKE0hOR8=;
	h=Date:From:To:Cc:Subject:From;
	b=DODSJnJZTJPEV4GMHKSVKNpFa15dqG/WPy//Q44cK46AFSbtlkidkIPah0Ds1aJSu
	 DbUvk41wfP+8JWwrLFZq5WiLXpu2D4JkQ0nyq0j5Obnp/X58Nw/ItSrlLcoMTqgo9V
	 bV0beXdY22xeSgdlq/fHRwleEUlUONtMC/HCzgfxrlySssAs5gc0eBufY5by6Ha6c8
	 kXRQIZxA9ibk4Sdy4u1U2kW120ANJ/Tg5YpQKXUR2XOVYNuUITUSlt+RqW3K8YvG0p
	 d5BPACSQYnuL0JS9EyCbZmxEmhuIPiMmweNGiuJUGRyhSunu5NzGb+1fAEHeYp23qk
	 L15ldqLHAXGPA==
Date: Sun, 18 May 2025 11:58:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Cc: Collin Funk <collin.funk1@gmail.com>
Subject: POSIX.1-2024 requires 64-bit time_t
Message-ID: <zagbrxifsyor6bxzkqi7b66ixw3q67vez2nng7aqjpykkohph3@plmaq4pfz3yf>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wnuobdrm37pnvyhl"
Content-Disposition: inline


--wnuobdrm37pnvyhl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Cc: Collin Funk <collin.funk1@gmail.com>
Subject: POSIX.1-2024 requires 64-bit time_t
MIME-Version: 1.0

Hi!

POSIX.1-2024 seems to require a 64-bit (or wider) time_t.  I don't know
how's the state of things as of now in glibc, so would you mind checking
the time_t(3type) manual page and letting me know if anything needs to
be updated or moved to history?

At first glancce, I see

DESCRIPTION
       time_t Used for time in seconds.  According to POSIX,
              it is an integer type.

where I'll have to append "of at least 64 bits".  Then, there's

NOTES
       On some architectures, the width  of  time_t  can  be
       controlled  with  the  feature test macro _TIME_BITS.
       See feature_test_macros(7).

Which sounds redundant with the new requirements.  That sounds like it's
for architectures that are non-conforming only, right?  In the
conforming ones, it wouldn't make sense.  So, we'll need to clarify
which architectures are conforming and which are not.  Please let me
know.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--wnuobdrm37pnvyhl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgprzMACgkQ64mZXMKQ
wqlgDQ/+KUSZoO5FlZkVn9BQa0DjURLZvjq3uFZussqJUi360UW6a0sKqMyRIFya
XRkvGkhmbVfwkKoixUubOHETIYmmq6DgeJtFwmKltGVmt3PqHn++IfBpCqwxD6Q0
CnwODILOcXFj+Rznt6CT/hYbt7+kZhkz0/ayB4pq0osWC1+qlWre71Nje4I0oUr8
c0gLs7ODt29QQMf1NhzS3h7LtcjfwQat6W4J3rtvTOYx5U0m0JtYR9BzyVorWKgm
FEb4kTYxGXghgSH5gF7ByzrtBls7peUxaiUwn3T6R3W9sROyJ14IdeiRQe04lNS5
VsKfqZMsWuQGS3J9tZbclPVroigtvTeI+jeCr+NZiHVcY8KGBR8eIniE5vEA3j+8
jvnOSf/tnuJQBlkCle19KVsalGyBu0Z7y2z6qJq13/d5qNBUbhU+/EIJ0ZS1ZGNh
5MZdRhXzDKzlp3bpSRlsDOjvylDv2OLYVTqQP60U6HTwnnyuY1dPB+JlM89p6+LS
kPQx2z6A6nuoTort0OIB1rICwwqdZIeyXe7xoBseeDBDgPTyik/KmLJXp4+xK9o7
Uh75HLQNYt5YZB2UG0fQnasDRyOdvmGBcsi/rseX5xbVTQlOUD5sgJTNNTBKTjqK
xUCfQj2m9125BG4EQ4sOubkXuD8X7xvxINI9p8OvX/fMdjuMHsE=
=Try7
-----END PGP SIGNATURE-----

--wnuobdrm37pnvyhl--

