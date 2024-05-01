Return-Path: <linux-man+bounces-841-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF938B8865
	for <lists+linux-man@lfdr.de>; Wed,  1 May 2024 12:14:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69AE6283819
	for <lists+linux-man@lfdr.de>; Wed,  1 May 2024 10:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B028524D7;
	Wed,  1 May 2024 10:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6lACRfI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5FA50271
	for <linux-man@vger.kernel.org>; Wed,  1 May 2024 10:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714558439; cv=none; b=WLWUVRvqB8ZRA2iOj6NX3KS2gxixuq+NjAB6crtxBQ3lUqzZe4ks+tGQ5REpOjwb9crjhDHoXqTKzEXiRzpudofJafr5QpR8uL36cRXbtCAEHOAxhMWbBtv9zvlwWVAMubAal4wxT7iSPd+J6vfdGZ3eq5uj3g1TpQKbsFTAEwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714558439; c=relaxed/simple;
	bh=XQ9CicLaST0FQi6BYW74sr56Oa53GAqtzP3VWGv++rA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZeJK0hQAQViQ+nvSOmZYIQlXVeNyZa1ex0VKVwdkSLhd/PLGsMbrW37XeQStIqnFl0ZKHp0wPtwMG0QPExQtINITSBmVyl+OZdYMkCxI2eTDZJbPgOBQCQo2/guTAaE1RhniIzlhW/TyNl1vYOmMoBHSMFO4igSbc3g56GaROCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6lACRfI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A99CBC113CC;
	Wed,  1 May 2024 10:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714558439;
	bh=XQ9CicLaST0FQi6BYW74sr56Oa53GAqtzP3VWGv++rA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u6lACRfIbcJ64gann0mh83dJu6oUvkKYJVPW2qSU8XXRsZv3ksF95igBuWWAkWS3/
	 l2Z9+pB9TefZYuno0DOokhiFY/ls0Lj9YpyGEZBjE3mq3Rl9+O7C9Ibm5CXC3ZnCJZ
	 2G1NaGEd4fNK7yVZ8VFSS7YZDO74IQnZ5foQRTvdgpzjGc6EnGwiMLpq5U5C7paLFa
	 jfjZJYz6CrvxBFhajikbywX7zrfY0A9h8bspIJlvAYURz7C9fzl7kidnYTOtyzm6YX
	 Dff6p2DXgyL292aoKPYJubxrJvhOvSnozNQqTEFBL+XscxQqtl3pTIjwgHA1JXNdzD
	 9RFIEvqsJBTbg==
Date: Wed, 1 May 2024 12:13:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?5YeE5Li06Zuo?= <superzmy@qq.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: Feedback on Linux Manual Website - Translation Feature
 Compatibility
Message-ID: <ZjIV5KYc21zdl4eG@debian>
References: <tencent_B0B00C911A5C95BC9167B6D4E5BEF4251006@qq.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FlxuRe5ykL5SdEiR"
Content-Disposition: inline
In-Reply-To: <tencent_B0B00C911A5C95BC9167B6D4E5BEF4251006@qq.com>


--FlxuRe5ykL5SdEiR
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 May 2024 12:13:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?5YeE5Li06Zuo?= <superzmy@qq.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: Feedback on Linux Manual Website - Translation Feature
 Compatibility

Hi zmy,

On Wed, May 01, 2024 at 12:18:35PM +0800, =E5=87=84=E4=B8=B4=E9=9B=A8 wrote:
> Feedback on Linux Manual Website - Translation Feature Compatibility
>=20
> Dear Linux Manual Web Team,
>=20
> I hope you are doing well.  I am reaching out to provide some feedback
> regarding the Linux Manual website that I believe could help improve
> its usability for a wider audience.

Can you please provide a link to the website you're referring to?

> I have noticed that the <pre&gt; tags used on the website to display
> code and command examples are not compatible with the translation
> features embedded in web browsers.

The current website is <https://www.kernel.org/doc/man-pages/>, but that
is minimal and doesn't have any <pre> tags.

Or maybe you're referring to
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/README>
?

That's not the website, but rather a web view of the source code of the
repository.  It does use <pre> for everything, but because it's
formatting an entire file in the source repository.

Have a lovely day!
Alex

> This has created a barrier for
> non-native English speakers who rely on these translation tools to
> better understand the technical content presented.
>=20
> The use of <pre&gt; tags to preserve the formatting of code blocks
> unfortunately prevents these users from being able to translate the
> text easily.  While the intention to maintain the original formatting
> is appreciated, it would be beneficial to explore alternatives that
> allow the translation functionality to work alongside the display of
> code.
>=20
> I wanted to bring this to your attention as it impacts the
> accessibility of the content for international users.  I believe
> addressing this could significantly enhance the user experience for a
> diverse audience.
>=20
> Thank you for the excellent resources you provide to the Linux
> community, and for considering this feedback.
>=20
> Warm regards,
>=20
> zmy

--=20
<https://www.alejandro-colomar.es/>

--FlxuRe5ykL5SdEiR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYyFd0ACgkQnowa+77/
2zIk9A//SDF1WcsRqHLT0yoMO73Bic89vBYrs5uaBgs6Vv4PK1YBt80FBznctLyU
+s+gIjkFIaDNH3AUE3XKh5kgQlzwGNRC2S7vukdi1jmUjsV12R5I0qzNRrQSdM9w
8WWJvQgnuio8ncl9tg4pDTy6HLmgW1y8aKIbX+Xcvn/k3cZ9iNsZXsNhIVwBXuQi
RCNcK0SkOKwhW1zuaaYwXAVNXOKkK/qDg4qMmsk3RIav8oO8RYP+ufjFHZAoJbge
nqpUV3eb8nRVHiVTXcuuCjyjwVTJjs3nLGcVFbMeUOmo0WlQrxevkB7QUTYvsC9H
Y9aU9fHqBOhVcWh/TRrgXInLH3GWLgxeiO7yZO7cwaKlGAU2REmwgcGPjtkmK1Ti
TFRB5ynQdjIMnD4SJswy27jGmj0qbJRtCkYWa+UWRysphdoRvtVOO59IZaFXpYJd
Y0RyNfWtjF9rNKuKMcsLux432RbxclDCoomo0CQQ0XT/Re1990E2nv2V00TNCKi+
oiEATh4H+y47772CpXkZykUg+KSih4y1jIi4k2D9XjsvwCZ0F7IPx1Wh/R/xqTjh
2iemyEgj98RedZUxpa0sVgiZ6k/IYrdrCjGNLK+9rAnlchvDhNsgz7+OBeXoby1i
5aMSL8kr1kzEWOwzOKrnC4B4+ZVfbYbqwoHus81UQIlvDreDKsU=
=Kn90
-----END PGP SIGNATURE-----

--FlxuRe5ykL5SdEiR--

