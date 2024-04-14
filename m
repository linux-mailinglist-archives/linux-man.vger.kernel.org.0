Return-Path: <linux-man+bounces-750-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A55518A424C
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 14:32:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A53F1C21115
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 12:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54281EB21;
	Sun, 14 Apr 2024 12:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9a0kplC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818D01E88D
	for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 12:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713097949; cv=none; b=DGuUUjPhoNkrOsbmRb1UJlzmcnGrCwZS/3xbE1SVYToLCg2kpzZhgfH2YKzFYZDxLoNE+UDr0RrUKa1XlpjMzQ4b0D4Z3HirhXeeHL/PmkvUqEk8P1Nlk0TGc9iL6I51Hooq1WfMW87imumAPYaBK7WwhhcmdULKu2HRkFII1ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713097949; c=relaxed/simple;
	bh=xFtbopjxfsx6mOa85/eYtxYl9WMby1uVbfgoQsTAkwk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P5Ir5kRRFqrlMDtYgIO1JxpXj8m2/GteC9xGMKuxACFEyfyGmM0UuFLgDY4oWRFQtEB7uZ4qHbRpbc4L6tOiXQsXpn8tfwsSq8HIPpie8POOfXMxDyYIbmgZjGlmsMwUto0gTYlNhWPaFDjjiXsrP4X7iYQ/9azJGUi/RBHiwEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9a0kplC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C7E7C072AA;
	Sun, 14 Apr 2024 12:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713097948;
	bh=xFtbopjxfsx6mOa85/eYtxYl9WMby1uVbfgoQsTAkwk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q9a0kplC0B9ao73xj/7dDPco8VgXpYYR5It+xgQO1d4d1yGBu/20LwilK5rGoLxqB
	 rZjlx5iz4N3/6BSxshD1Vccy8xK40tyx1JwZr+YkLT1wlvv7/NHpCzY2HPAyiCXd0i
	 HFFhQxP9uPg62vyjd3g+Yd6x3zydQW4fzkbBBGVZ9iy8imuINvMymTREvW6cH/B9jw
	 zQdW/UZ9sX5zll749qC6GvlU1m0pwfgdfSUo1m00l5Lu5K1ZBQ0PHRYuXkg6QrLFHp
	 CvtrnUWQV41Z8yiPsGN8WqWF6GBEvvXyOi9Fkc+BE1vNU+ISF8Cw0ccY8N/m9+V1yI
	 ihdopW6RZZsJQ==
Date: Sun, 14 Apr 2024 14:32:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <ZhvM2Yy6lWGJLhtg@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
 <20240414115743.mzzwr2bd3j7lw46e@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="31vsPdW2cDRDYu+v"
Content-Disposition: inline
In-Reply-To: <20240414115743.mzzwr2bd3j7lw46e@illithid>


--31vsPdW2cDRDYu+v
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Apr 2024 14:32:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

Hi Branden,

On Sun, Apr 14, 2024 at 06:57:43AM -0500, G. Branden Robinson wrote:
> At 2024-04-14T13:37:15+0200, Alejandro Colomar wrote:
> > There's also the page issue.  Now it seems to reset the page number for
> > every TH.
>=20
> This might be a simple issue.  Make sure that you're passing groff (or
> troff) an option to set the `C` register to a true value.
>=20
> groff_man(7):
>      -rC1     Number output pages consecutively, in strictly increasing
>               sequence, rather than resetting the page number to 1 (or
>               the value of register P) with each new man document.

Hmmmm.  Maybe I should follow v7's tradition and restart the page number
at each TH.  Let's call it an accidental improvement, and not a
regression.  :)

Although it would be interesting to learn when/why this changed.

Thanks!
Alex

>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--31vsPdW2cDRDYu+v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYbzNkACgkQnowa+77/
2zJIhA/9E0H71odObp7roo2FZE5rFATN7O/6OqVBsQj6hiv5nn4rTAssoIsEP++l
Y8ZxEpmu7Sgk1aP3iRZmqnd2zcBWKECaN1/+cFIdnKhtR8QoMSuSRcz5102MzhfN
YoRAhZEgiPcledB57ZZ9/XE5dxDUp0MyN8nhbKu/f75Si0vrgg6AeA89bdF27NWQ
3Qm1kYw8uYD9PIUNCsMVuK4vW0xG39OTHoz/m02pAN90TyiGk3MJSXEZHvgQuwef
zxVr+RNNuL2+cIzmi6p+50br0FB1i+xpHynI1a4OfKP7rxW5N07RAoer8PLEVH+C
d/nGwkqnZHmecMqmekxTHjB4+EC7woZwfX2z4uQxLpM+wJcfytejfneis0DFxxvh
lNObxzs0YaYfOOPEo0oP1oxaSmeErTEPxoXktWmZXjBOH3kndbi7rxFHPzy+PlqY
vTrzqex6FVBZ3BlDK+vFXwZOTbIE/oF1ntOn+4kQJXRDbiWTO7357gLKmh5fX2nw
o/sl5msrOtynWr0xY2y7LQy2/Z+OmXbkX8t//WTXgGItWM5domPJDAE3IQ0G5xYj
lT+tTWz6scuureNiowcttE/ipnPlkO3C1htk7BlPSWV7giLbyGwbAaQV8aCPE6DJ
kkBVq/aVa9L62dlCnUdPWBe+DamyBC5iGuNw7eVJI3h+2/tqu1w=
=m3iM
-----END PGP SIGNATURE-----

--31vsPdW2cDRDYu+v--

