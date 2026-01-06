Return-Path: <linux-man+bounces-4675-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B313CF84A6
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 13:22:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94D9B3097095
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 12:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE291330331;
	Tue,  6 Jan 2026 12:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rfk5CLlq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D98833064D
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 12:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767701445; cv=none; b=b4MbD5tP8xxlC/vb/T9W1L5pasGtLYJoAzTKcSDYP9bQxNH//Hm7kkv/WDTi6/dxtnDl0gAEg3nBpmvrf+6beW2GDf4bSmYIRw6BOUEtPxIyZcsKT6gaccRmg6NXiQAMj7g0/kgjWEZM13Eoyd3AHuEFKA84f1lY3ws+D3Jt+OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767701445; c=relaxed/simple;
	bh=bM3llBxb6DcGflYY6g/GuSLmGe0NUAQiGu3l02HLrZs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K2K0EWeJPojuEel5B4TT+dcijRKDyw96V9pv9sxKWuwrcnoLiNU66Z5XGkd+FOXi360ASlqM4ah0FA8jfVk6PSUmW0ysHpIW3S8Y/m9o9Mn42Q8jheweQ37B4+Hq2nXqICgYVOWlcgfva2UG2EUY6kqOkqXdcq7UQVNlFZbcesU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rfk5CLlq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDE48C16AAE;
	Tue,  6 Jan 2026 12:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767701445;
	bh=bM3llBxb6DcGflYY6g/GuSLmGe0NUAQiGu3l02HLrZs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rfk5CLlqFLc2X8yI6+PqG+HK0hm0YUnTO0o1acoUVSKsB+JAwYb95G1mZW6s6Uyr4
	 zfWd4q+HT3hNldm5mSsUkorib7zpscqic5VGsg2ApkiYvyucVvsugftpEqbaPdWn8E
	 kvb26lQ5Xipn2HB+Ju9mUBJ2gotZPiffozeXYwlLWAWje5qtPHbna4L2ad0DcnLnk2
	 F25dv8fXnfHILsgZtwr/ABN/bjnNX2ljCcdC6Wxg9IPh0MYLPdjTMzQVi13oTkPGQP
	 Ul4/EpD+WSFAEy5ksirUVydX7Mr+BN7ByejfhN49KHgkLN8MpoSMzwLlWNGMHz5xvl
	 BQXW0pCzsNVKg==
Date: Tue, 6 Jan 2026 13:10:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: helpdesk@kernel.org
Cc: Konstantin Ryabitsev <mricon@kernel.org>, 
	Simon Essien <champbreed1@gmail.com>, linux-man@vger.kernel.org, debian@helgeth.de
Subject: Re: [PATCH] man3/getopt.3: Fix spelling (British -> American)
Message-ID: <aVz7nKfa03hB4piR@devuan>
References: <20260106101302.11938-1-champbreed1@gmail.com>
 <aVz5ew5CJcV1BUAv@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6ke7em3w2545g33a"
Content-Disposition: inline
In-Reply-To: <aVz5ew5CJcV1BUAv@devuan>


--6ke7em3w2545g33a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: helpdesk@kernel.org
Cc: Konstantin Ryabitsev <mricon@kernel.org>, 
	Simon Essien <champbreed1@gmail.com>, linux-man@vger.kernel.org, debian@helgeth.de
Subject: Re: [PATCH] man3/getopt.3: Fix spelling (British -> American)
Message-ID: <aVz7nKfa03hB4piR@devuan>
References: <20260106101302.11938-1-champbreed1@gmail.com>
 <aVz5ew5CJcV1BUAv@devuan>
MIME-Version: 1.0
In-Reply-To: <aVz5ew5CJcV1BUAv@devuan>

On Tue, Jan 06, 2026 at 01:08:08PM +0100, Alejandro Colomar wrote:
> Hi Konstantin,
>=20
> On Tue, Jan 06, 2026 at 10:13:01AM +0000, Simon Essien wrote:
> > The man-pages project uses American English. Change 'behaviour' to 'beh=
avior'.
> >=20
> > Reported-by: Helge Kreutzmann <debian@helgeth.de>
> > Signed-off-by: Simon Essien <champbreed1@gmail.com>
>=20
> Could you please block 'Simon Essien <champbreed1@gmail.com>' from using
> any and all kernel infrastructure?  It's an LLM malicious bot, and
> starting to become very annoying and spammy.

If you can, also please hide his existing posts to linux-man@.

>=20
> It's also violating the man-pages' contributing guidelines
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING.d/ai>.
>=20
>=20
> Have a lovely day!
> Alex
>=20
> > ---
> >  man/man3/getopt.3 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
> > index 8495719af..387ba9ce8 100644
> > --- a/man/man3/getopt.3
> > +++ b/man/man3/getopt.3
> > @@ -160,7 +160,7 @@ If \[aq]+\[aq] is not the first character of
> >  it is treated as a normal option.
> >  If
> >  .B POSIXLY_CORRECT
> > -behaviour is required in this case
> > +behavior is required in this case
> >  .I optstring
> >  will contain two \[aq]+\[aq] symbols.
> >  If the first character of
> > --=20
> > 2.51.0
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--6ke7em3w2545g33a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlc+8AACgkQ64mZXMKQ
wqnHpw/+K/+YyMyDIeFtHT/6PNyRe298ZQ1IN5uNgOrrPnDx3E1S7ot52Tea/sJe
Fp1/R7J//cS29tEz8zBq3CppRwEzCFPTA5ua2xx22UpYd0GH1K1xAg7AzeBzkCA7
/jvk6dQaDxPAWvl2rS5KrRJvF3BHXgPirRMp6ybfa3k+JKZ/kx/zZ1jAmeqiNoF6
DVx7MMoROjHITjrmsRLjhHq9O3WLMpP0ccvGNjSB7XGNEk4XQYY+JuaisF3muLQV
B446KbVuvgAGOBc2vGahrlhMzXH6UKeQfmU3iKPkZgLW/pBhxnVWVJ06oNt0n3fN
p07RpYEQWFRClp80WX/UFaVwkbNsTNu6jM3KzQUKC6FiZeLCzEf+m1Oap5/wT67f
ss7JgFvOJZ6T4rBBq532Ogp1dt0dhE0f69kH1M+2S40xuEUtlH+iU+Jz65p+ZdjW
M6AjTok42GlFqC2XCP8/dqNXcS4hAJlvdlINde3/N1WESmjzNDZ9U9azuamLEBts
a+fn4hsGnTR+4uGn5xXdMEdkb+ukeC59UEW+qJQPpWjeUxuaYQMzIed37a4OZNH9
J6fiOOzSkq9H3mB2FXXQREG9koyEWu19xMclSZlGQY0jm9dLnmIwXmk80ebzl4w4
goBZzIAkjBam8YH65u8YPi+hOgY38cmZRY2piK1ftsXvu5P8TSw=
=VDrc
-----END PGP SIGNATURE-----

--6ke7em3w2545g33a--

