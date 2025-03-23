Return-Path: <linux-man+bounces-2635-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A12EAA6CEE3
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 12:16:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 016E116D2CB
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 11:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FDE31DB154;
	Sun, 23 Mar 2025 11:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUQaWeG8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2564B73176
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 11:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742728561; cv=none; b=Cz7NQb0I8mVPn+OYiPJ0YK8BcoNiies4eNjox1Jdzmj4dawHMVXJ4xQcJVOQDu/XA2v3q3cYvlpTB1lgIoL3eoV2f82mvgGW74mNA0JQN5EdHrLEsQieLrO/8icvZcmM7sUMy8+iIOToe6exyJBYEDS0PIFuJmzxYoZvfQax2Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742728561; c=relaxed/simple;
	bh=RpzZFzPY/y/gFcSIAhRLXDFdP+JfgP3IF9ev6qkq3Jk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=euePP53f3B857BbZ09H1R87evlHRhY59j42dPklyNzPVn7GTytfvTn9dbKXJ+CbeBYK7lwKVXpTlToCsdqGpcli/Y327gQT+seJpYlSvXiLcQX7NWVaMu1KZJ1qr+KC23L9t78nQdohnFIF7h5UO718r8YwMWohQ9ngHLaOCWGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUQaWeG8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4950C4CEE2;
	Sun, 23 Mar 2025 11:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742728560;
	bh=RpzZFzPY/y/gFcSIAhRLXDFdP+JfgP3IF9ev6qkq3Jk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FUQaWeG827L7DTwBaaXPTkuyO6bDE7e4MrhA36YRHXOXVBwhG2/oB+F1PCSts0Tpy
	 DE1xhTIx16YmuvFd576vecqkq7WSrhzKx5DmqsHh1BxTmU32L2oOzRmJw4AtBdReWJ
	 pGnUWY518jv0Nua1dSU6UxaAMtuzam36wEYU82ixOXgbYuLhj8jzViLWLBv01LO3eo
	 iF+w2W4K7hzk9x6906sXpBDjer8bKE+3AoE2lHJUW91WxYmnsIqk/Eih8HCjqunbgk
	 vsceAUvMnhamIpO+smAPRk85a/OjstW+Xy5udUujwMMJUREN/AQgbxyktEq6Q4z5E6
	 jvsOnLJPBpuRQ==
Date: Sun, 23 Mar 2025 12:15:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and
 white space are not rejected
Message-ID: <aosccs7dgk54atbu7snyuz7u3vx55fgy7ttvivtjetipx5yw25@np2tbxrmfjsh>
References: <cover.1742689797.git.alx@kernel.org>
 <3c456a1a01d34385e7c92e5847fc8a22f4b48460.1742689797.git.alx@kernel.org>
 <1799725.K4a6FZZPjd@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7ax2wtpmxtjcr5en"
Content-Disposition: inline
In-Reply-To: <1799725.K4a6FZZPjd@nimes>


--7ax2wtpmxtjcr5en
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and
 white space are not rejected
References: <cover.1742689797.git.alx@kernel.org>
 <3c456a1a01d34385e7c92e5847fc8a22f4b48460.1742689797.git.alx@kernel.org>
 <1799725.K4a6FZZPjd@nimes>
MIME-Version: 1.0
In-Reply-To: <1799725.K4a6FZZPjd@nimes>

Hi Bruno,

On Sun, Mar 23, 2025 at 11:27:53AM +0100, Bruno Haible wrote:
> Thanks for theses BUGS sections, Alejandro.
>=20
> > +.SS White space
> > +These functions silently accept leading white space.
> > +One should call
> > +.BR isspace (3)
> > +before
> > +.BR strtol ()
> > +to reject white space.
>=20
> Just a question of wording, but it would be more straightforward to read
> when written like this:
>=20
> +.SS White space
> +These functions silently accept leading white space.
> +In situations where rejecting white space is desired instead, call
> +.BR isspace (3)
> +before
> +.BR strtol ().
>=20
> (As usual, presenting the "why" and "what" before the "how" is nicer. [1])

LGTM.  I'd make it shorter, though.  How about this?

+.SS White space
+These functions silently accept leading white space.
+To reject white space, call
+.BR isspace (3)
+before
+.BR strtol ().

which BTW makes it more consistent with your proposal from below.

>=20
> > +One should call
> > +.BR isalnum (3)
> > +before
> > +.BR strtoul ()
> > +to reject white space and/or a sign.
>=20
> Likewise here. It is more straightforward when written like this:
>=20
> +To reject white space and/or a sign, call
> +.BR isalnum (3)
> +before
> +.BR strtoul ().
>=20
> Bruno
>=20
> [1] https://gitlab.com/ghwiki/gnow-how/-/wikis/Documentation/Writing

Thanks!  That's useful.  :)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--7ax2wtpmxtjcr5en
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmff7WcACgkQ64mZXMKQ
wqlruA//XTMF37ZqaWrpQ1S0qZrEUJZbD6qTNmi13ClnRTCQyR9bus6w5L3nh3kn
1+MP38prYdybyJrscGAzS58KTkJsDN5Zg+WnxK4jj9kWB8yeBxRS5/mVwy79NZSP
vjPVF+1MZvK5uKPIcTtStewmWU0XiHnVwOF2cIDk6SsZwgNwyCHfkKAkiuDR4ynO
wE8MS5tIx6Am2DbYeeFJ4qVzMLcD/+XNZ9wjoumiBQCkEd8Jl0I+zg7rbrHdNQUW
IpBWtF1XEIlZKSEJbMDOuzKJXBe2zMZKLbpSg95KlTUh/JrYeNFJCSnVorR1trlB
xsU0bccIGNa6kW468kJauthzHwe8wJ8qMH9Czq5SqViwnPuaWWpPDgK/IlksQ8uz
xP6wO6m7gxZt24J6HQ51zXHEI7sQXuSHKlCU3SDjpnZy4IBSP/osjh3YMdpHEiK7
8jCTHxESn2aNvL8yqJeEvm5kyI4DMJLOPC4yZd3uUaNufjlvndo7MD2KrKaXkXUs
pyaLORLDBQVDkxu6N/XKcDZwwS9yH3xDsJHYrrot6tzwVXw2BxQzOIIkpFTjsR/r
jqj92SvCKBLl5wfquSi58R6VHNq+KcycsOh0o06JiUs4EtVHItQrv0h1J1yYJwII
pvTjfS3N2/ur9YUucXzKJ1JqNfc5wBLw+NkTGflqNeJepAzXI/Q=
=yKgu
-----END PGP SIGNATURE-----

--7ax2wtpmxtjcr5en--

