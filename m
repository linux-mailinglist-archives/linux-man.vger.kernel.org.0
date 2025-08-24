Return-Path: <linux-man+bounces-3696-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF04B3325A
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 21:25:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E57624E1E9B
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 19:25:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27F4C1C8632;
	Sun, 24 Aug 2025 19:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0Tz+WoN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89BF8F40
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 19:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756063524; cv=none; b=B80aKSE1fl9dSUY1idF89lsu7Rzzp/ah7YQB9b+IE3pZm+EZyZC+sSKjX2qzhR/IrTgXRECjeLDnK6WAOXiLqSOQvH9XZUcy413rA3NqkiQNBcBgTOzLVTwwjowAcTUdoa8RbgXkq7952kKi+pehPf5V4FgNY9umk3XQj71XgLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756063524; c=relaxed/simple;
	bh=9UQhg9KgbI9DmiBKbv3w2EWnZdFhdYglBNOnWeLt/FU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ab8MAKQIpoL6EkK/KzIF3ataRBLGnFG91PetNNjgoHpI59iQMQn9n/YJA98q3bAbEcdVOvoavoocCyjGcVBnM8m/V1F/EpHvY3vjdkLkEJtBw8Gtbj+7B6lwGn0PRsVAMQhQHxaEo11bJX8IT//ABK74RwHl5h6IqPcUuR/U2ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0Tz+WoN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6D89C4CEEB;
	Sun, 24 Aug 2025 19:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756063524;
	bh=9UQhg9KgbI9DmiBKbv3w2EWnZdFhdYglBNOnWeLt/FU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g0Tz+WoN2BWwamIuVVjPH3IM8nhGugtGWn1cuwVi3rD2XZ0MmV8psZwiWG/Mne01u
	 f39vsrYrH9BnFxMQVSBkWNW9HcDG6AZstCVpgZrqBbauhIA7odWwm9AGXf//ScKY5A
	 Hi6B4MusMeXx9cITkuo1ykz37kyCYOYurgrfgendfvoff5/Qo2tsYB48QPXV0smkXS
	 iYVYo9xhdihAvBRM3e76SogKUHDe7ZoglAIFEhbG06ZUXNGXb5Sjeq/Br9cdyhcRk4
	 LxKvDJxrAl4ZFQyZ5dlAXRnsITWKK3AS0RpYiixde1c+VOK85Fh/ZSM7rFYkext5C+
	 zSllsjWOXuwtg==
Date: Sun, 24 Aug 2025 21:25:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
Message-ID: <2fwmykc2tdqxnq6caavqkvhw5viwoyjo2mm7fws5wkxolzy6j2@cyk2rj2oic4c>
References: <aKsmUDB9cQY7Qo9P@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eryrdn3b5hoctfss"
Content-Disposition: inline
In-Reply-To: <aKsmUDB9cQY7Qo9P@meinfjell.helgefjelltest.de>


--eryrdn3b5hoctfss
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
References: <aKsmUDB9cQY7Qo9P@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmUDB9cQY7Qo9P@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    I<op> =E2=86=92 I<flags> ?
>=20
> "I<op> is B<PR_SET_SECUREBITS>, and the caller does not have the "
> "B<CAP_SETPCAP> capability, or tried to unset a \"locked\" flag, or tried=
 to "
> "set a flag whose corresponding locked flag was set (see B<capabilities>(=
7))."

Hmmm, this is cruft that I forgot to update after splitting the page.
I've fixed it with this:

	commit c71d7a2e31c0689d942bc3b030284144bd331f04 (HEAD -> contrib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sun Aug 24 21:23:39 2025 +0200

	    man/man2const/PR_SET_SECUREBITS.2const: wfix
	   =20
	    Fixes: 2dcad3cde34e (2024-05-31; "PR_SET_SECUREBITS.2const: Tweak afte=
r split")
	    Reported-by: Helge Kreutzmann <debian@helgefjell.de>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man2const/PR_SET_SECUREBITS.2const b/man/man2const/PR_SET=
_SECUREBITS.2const
	index ae7268d7d..c80ce0f2e 100644
	--- a/man/man2const/PR_SET_SECUREBITS.2const
	+++ b/man/man2const/PR_SET_SECUREBITS.2const
	@@ -35,10 +35,7 @@ .SH ERRORS
	 is not a valid value.
	 .TP
	 .B EPERM
	-.I op
	-is
	-.BR PR_SET_SECUREBITS ,
	-and the caller does not have the
	+The caller does not have the
	 .B CAP_SETPCAP
	 capability,
	 or tried to unset a "locked" flag,

Thanks for the report!


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--eryrdn3b5hoctfss
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmirZx8ACgkQ64mZXMKQ
wqljTA/8DsseQ1eEVIGgEUjdgd+PZdNg2oqc4dws92kLY11wLQqXkD0S9a6sGzCa
q5MWNuHrMRYC3cfgLlpTYsWkBwLIz6owiSNGmdqSjDIHIBCieBn2OJeCo6Yi4H6w
UqgNoqLrqOZQ8068UebsYue1zsFQmOp1S30eybfQBkX0BYUV41/vdDtLJEczKLIn
GoyhHfN9Bsk984qDMXUxcVvu2gf+S50pVo8v3r/Bpt/XIyeS3LAL/RTWzT20SVTe
p1EKElgjlja1COhhUNSs/sqXVpLeEMLe0FEo1XT4ZWg6dyR48EDxmoUa42WAi/zh
0SENXgefLaatyc7Mm4vbewWOTq4uB35WgYZYGJgoq1y5dEdOIv4RhabIopf5lYHu
U/w2gzKsoSedefBBFEc86mOPrL9K9zFVZXA1mMGAgOEbPnE781zK/JqrrkEUtR2Z
aeRNjzv7GbMd1Niw8FtFmaI+A6ZJq9o3SG2wTX2N7ybAa2k8BVFyhsDjjMuinyY+
t9PYuC5n40Lb7p3TjUhBqxElCHJ204lo0NTzee9kgiyPD8JtV+6MDjwYHXawtRW1
h0glGhZnqFveq4dDQZiOzh5menWbL6/WKph/Y8+uM4c1IvqxGfWR2/AdoSwYY+9T
55jDOf5ee/atpCHOZHhQFd85LGNwZVbkBgcGYUQk1aoomXhDgAA=
=s9U/
-----END PGP SIGNATURE-----

--eryrdn3b5hoctfss--

