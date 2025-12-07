Return-Path: <linux-man+bounces-4373-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E353CAB7C7
	for <lists+linux-man@lfdr.de>; Sun, 07 Dec 2025 17:37:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEAD130169AA
	for <lists+linux-man@lfdr.de>; Sun,  7 Dec 2025 16:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16F112C3774;
	Sun,  7 Dec 2025 16:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQx631W1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DC126CE3F
	for <linux-man@vger.kernel.org>; Sun,  7 Dec 2025 16:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765125451; cv=none; b=l41MUBWa8kZWlWAMLSQ5XRGiZmcR4ltIOO5Y571uXy2SNV6W/x9fJhrHtpTnBOII5gApFyKFtbiLpX6AhvsWHzOBJjwfnfF/d/yt2qawIb3YGyiTzNYWA8liZ8XtXPr9G+oE+gtfvJZo9h58QeQ3SAMD/oOnIdd6S4UPlPsqCfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765125451; c=relaxed/simple;
	bh=9IrmsLCwyJhn2IsJ75PTHviiIRns90VH9Gykbk/KGyo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e8xdn4OvOCQXN51m6TiCFReQwW2jrFBs/e+Rb6fFhsoo1r3lCQiqJmPcAqBj2712HZqKg1VyFTeUEkmgY19sl0PQt5Yyp+jhleK6pS+0hs7Yp9ErLU17HkJetvKlbbHlHfjSR7UDdZ21theXXtoz8VGS7QxqEwZ3yGobi+RE6ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQx631W1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B13E1C4CEFB;
	Sun,  7 Dec 2025 16:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765125451;
	bh=9IrmsLCwyJhn2IsJ75PTHviiIRns90VH9Gykbk/KGyo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jQx631W1FwfotULhWbkIgG1TPx08ViEqF5ro471AImWjdKcZcnSuGbYFV3HM+LSOw
	 sT/sIwWV5PDNd3V+dkjJX5AFkYQ37E0ESBtKXuV+CxwDkSJd00DWEzaHJvGi2Daf+q
	 ZODQj8qBVEZ27jYTUiXDOm2j6gaMrDd/2YaM+F31PnbWSLxjzFmlCNEHgtdjxp88lJ
	 36ehtPTA9IJuB142nc+sSZJXJ57kXbzJe4aRAVTc/2Y0+s+Fk7YUQj5HbEUkJMi5Ir
	 woUaseERyz+6S97nwKte4KJ7UnrEBgJoBOiINFaCCrcfH6yLVEZGlTTLfKu33Q1iub
	 /+d5obR3ZgWYQ==
Date: Sun, 7 Dec 2025 17:37:28 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: Assist getopt_long() users
Message-ID: <biumm3f7coqdbxw3aiuzjmdcwwzdda4trjiaj5szpefu4fdyhe@zrafpuda2kjk>
References: <20251207144603.o7yh2azgezbfzpjd@illithid>
 <club67esr5i6tpohvauzkypakplgezuu473aifcdythtprkp5w@4ii762icgldt>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ehqzwn6k4zhquslq"
Content-Disposition: inline
In-Reply-To: <club67esr5i6tpohvauzkypakplgezuu473aifcdythtprkp5w@4ii762icgldt>


--ehqzwn6k4zhquslq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: Assist getopt_long() users
Message-ID: <biumm3f7coqdbxw3aiuzjmdcwwzdda4trjiaj5szpefu4fdyhe@zrafpuda2kjk>
References: <20251207144603.o7yh2azgezbfzpjd@illithid>
 <club67esr5i6tpohvauzkypakplgezuu473aifcdythtprkp5w@4ii762icgldt>
MIME-Version: 1.0
In-Reply-To: <club67esr5i6tpohvauzkypakplgezuu473aifcdythtprkp5w@4ii762icgldt>

On Sun, Dec 07, 2025 at 03:59:50PM +0100, Alejandro Colomar wrote:
> Hi Branden,
>=20
> On Sun, Dec 07, 2025 at 08:46:03AM -0600, G. Branden Robinson wrote:
> > Throw a bone to users of this function who need to report (in a
> > diagnostic message, for instance) the identity of an invalid long option
> > name.
> >=20
> > Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> > ---
> >  man/man3/getopt.3 | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >=20
> > diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
> > index 8495719af..432ea1252 100644
> > --- a/man/man3/getopt.3
> > +++ b/man/man3/getopt.3
> > @@ -300,6 +300,12 @@ .SS getopt_long() and getopt_long_only()
> >  points to a variable which is set to the index of the long option rela=
tive to
> >  .IR longopts .
> >  .P
> > +Its analogue to
> > +.BR getopt ()'s
> > +.I optopt
> > +is
> > +.RI \[lq] "argv[(optind \- 1)]" \[rq].
> > +.P
>=20
> Ughhh, this page is too crowded already.  I'll split the _long* variants
> into their own separate page.
>=20
> I'll ping you once that's done, so that you can rebase this patch.

Done.


Cheers,
Alex

>=20
>=20
> Have a lovely day!
> Alex
>=20
> >  .BR getopt_long_only ()
> >  is like
> >  .BR getopt_long (),
> > --=20
> > 2.30.2
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--ehqzwn6k4zhquslq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmk1rUcACgkQ64mZXMKQ
wqndFA/+P58Abx8IyFRYXCCteyglYDMsr+FzoJLem26pYeY4vgQkC9eBJlkZFZJY
HurPw7Zh5nCFGTTqLBV33eBEwMwABQ/9QrR17X0X6FVQlluTrQwDxrcSHzcmXj0X
k1o2UpYh+rd3IiyAoIcLf+65v9nHNC6Ia8kzldZIgC4sbIMshSYppiuHEFAnIuH4
gyjWr8jNV/NF83EGoAIZ6qi4uU5OipErzeNzgBFGnpBa5xMfn2JU+UIeaBhKb8ah
dpNOMAzyGsCicoHV19DsKfU8+UYMcgrqJm9Kk2J6Y/seo6TZqnDnglaN9WwB9MYr
miY/2KpubwDn0kiC7OZo64yLkge1RxBnrq2gPU+XPhajRXc6E0Z4b7BWvXQBIlII
HxwmL9o2SksUPHLs3S51jajgy8KFi1ivxHdftfQ1VzzsQD5Jk6cibFEd3awN+TO2
w6QRrABp/Ci8f5xMz1boI0CcQdwJ4ZQ+G8rVaPAFDX37D2VhQEBxcBkJnZyLxdzg
4BxkfncgRBgfrDcwubPq9i86iRyJ/9h9V0IBBni4sKi8ToCzvO/IMfc1MpZWDCPh
RWAd9gNLqNrzV4FqJ9VweaYeh9mZJpgj34dXwnog3YpXb4DNU+T8SsxeeFfK7eCx
3+5K/eGCmgeWcmQ9MyEu5blzfngVIt5daHE2BMmZgOL+QYEzmEQ=
=p3rn
-----END PGP SIGNATURE-----

--ehqzwn6k4zhquslq--

