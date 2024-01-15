Return-Path: <linux-man+bounces-367-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCEE82D8F0
	for <lists+linux-man@lfdr.de>; Mon, 15 Jan 2024 13:37:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F7D91F20FF7
	for <lists+linux-man@lfdr.de>; Mon, 15 Jan 2024 12:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5D7C28F4;
	Mon, 15 Jan 2024 12:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jF32++Oy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0007168A4
	for <linux-man@vger.kernel.org>; Mon, 15 Jan 2024 12:37:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BF7DC433C7;
	Mon, 15 Jan 2024 12:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705322261;
	bh=8JaX0lOBOxxDwyVl5fOsbSHxyG1In61qIcF0wgrLr+o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jF32++OyUuBuFDtszHuURm9JOVKZNsAwFDxut8FhBNXjBj+XyNu0zEmfEcgJTC5yF
	 v4AptFTA/ci1XiYIO4cSe09oV7QXLhJhL037c2dFvb08dzsrwg22Nhdne3N6sGT4Sp
	 /Grcwj3c0d6y+mBtolbbvhpbed16Ub/KE7bW/RSvQRIKZoXK1cZmNwIusbZ8g7H7Xt
	 P78pVdoLlO70EIXcM7ufaK3e1mrS3rWMEXixvfanCawMk/9XKqVjDi+uZPgj2ZYYYI
	 lsv9zwi4iL326wZpFmopXE4IUjnvvHx5ie4OppVnU8F0uG7+eHpjrkbLQcrnRMZe0W
	 ILKrufmoI5tkg==
Date: Mon, 15 Jan 2024 13:37:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
	Ingo Schwarze <schwarze@usta.de>
Subject: Re: [RECIPE] Pull the trigger on Mister Sed? (MR macro migration)
Message-ID: <ZaUnEaza41FA_Uew@debian>
References: <20240114154225.5tyuiqrgwyltqmj3@illithid>
 <ZaQmd0aP1XlFiAKA@debian>
 <ZaR4BqahP7QNVxMe@debian>
 <20240115120520.igveghma4xb47gpl@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zYMRJVRU5vSP/gNx"
Content-Disposition: inline
In-Reply-To: <20240115120520.igveghma4xb47gpl@illithid>


--zYMRJVRU5vSP/gNx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jan 2024 13:37:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
	Ingo Schwarze <schwarze@usta.de>
Subject: Re: [RECIPE] Pull the trigger on Mister Sed? (MR macro migration)

Hi Branden,

On Mon, Jan 15, 2024 at 06:05:20AM -0600, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2024-01-15T01:10:45+0100, Alejandro Colomar wrote:
> > I was checking the book script from Deri (Deri, could you simplify the
> > script now that we use MR?  So dropping support for old BR?), and
> > noticed about syscalls.2, which has man-page references inside a tbl.
> >=20
> > That hasn't been migrated by the script.  I guess you'd want to also
> > migrate those, right, Branden?
>=20
> Yes.  This can be done by setting the cross references inside text
> blocks "T{"/"T}", where they can call macros.  I'll test this, of
> course--calling macros from within a text block can be a chancy thing.
> I don't _expect_ problems here, since `MR` does not mess with the format
> of the output line--it does not alter line length, indentation, or
> vertical spacing.  I trust but will verify.
>=20
> I also see several references that didn't get converted ca. line 850
> because my sed script cowardly refused to rewrite lines with *roff
> comments in them.  So I'll search for more stragglers like this.
>=20
> I will therefore be back with a "RECIPE v2".  I do not promise that the
> updated sed script will be any easier to look at.  :P

Maybe some preparation patch can help with this?

>=20
> > BTW, I've amended now the author, which I forgot.
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/commit/?h=3Dcontrib>
>=20
> Thanks!  Better if I take the heat for this 15,000+-line change.  As
> Ferris Bueller said to Cameron Frye, "you don't want this much heat."
> ;-)

:-)

Cheers,
Alex

>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--zYMRJVRU5vSP/gNx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWlJxEACgkQnowa+77/
2zJwjRAAhk4da52QTQJ8KzLHQWhoQy3CMWMTzoP5VR9DQSHuznrJ2aGuhSybTsGz
CtKg1eWEShb1LpdZy460eyZuh/NdUcsn7fwaZ/nKFWIwCa8G2FJ0ojaKvhAuF9xl
pCmsVEU2YCZ/sZ58IfYVKMyBZ0mePhNwK7uZYqD/GlrSvqQdnt+IpLiBB+3lg8cT
OKR8oGbQKVFoS0Un1I4TECDrJJCFFtQmYei1Eu0m3T0LO+I/EZkygFMyjkMObx2p
X4aSalqsjPoOXzPFFj7MktyKU1Wzl2yOgtLtjWpKh75W+nd12k3tNxs1Yv9/aciT
afqSNlfo9A1A9jwI3A1nh35rf+P+TDp1TCfAzk5zkcsntskV3meuVHqC9oKT1Xod
PESQJdJ9AmIeo3sVVyAPOAoIO+aawwXcwnrjyGMAoR1r2YvAdAAVmA9aMAvl9Lgz
7mWmMqRC4ver4L4ktDEd7yWfzRShdlI4nHDtmVRpfmiwlzVOkXJIb8Bbr1GzFIHP
JHx1spYlZ2GFeLa9g3NbKXLfjpQOVkoIUofw+5jdkX4I1xTdp8tv3HUOAV3nj2UV
HLPxis5/TiMvzpduA18ILZ46kwVnYsDFNNeQwns9kTcL6JP9q5agiHNhmlaCNNej
s/RB/pyJiJpi8ncHcL6Ki4KNogPI8yrbCa+99PLrRHF/WuR1QNw=
=mupe
-----END PGP SIGNATURE-----

--zYMRJVRU5vSP/gNx--

