Return-Path: <linux-man+bounces-4445-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7328CC9CC2
	for <lists+linux-man@lfdr.de>; Thu, 18 Dec 2025 00:23:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B1C2302C4C1
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 23:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3847330336;
	Wed, 17 Dec 2025 23:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHMOJWAy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8137021CC7B
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 23:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766013834; cv=none; b=XYCwO1jXY7YLTsq/ZrevJwIQf28ALBCxoNqaB+3rEQbGEsTmJaOZiyGa1bABf7HPHgTCDQvmzVwg5QZC9ozMsLkutRlUTF7oYArZRjk1WIe7aoTGO1j4Z81m3HEtoR51Uwa2rc20xp2AW0s8i+S57k+Td6JK+V06o5Mgf8Koo5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766013834; c=relaxed/simple;
	bh=PpwfpFCtdCSMrv5YhE/WjmpJWl8SNAsuK3lEP5dUtpQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H1GuvFwx4Mwy/teU3LhjaT1CfibNUaviFuqJ2iDnytRWKlJtmqG/1D2Kv20ydxFOUztVBc8BwrodwQNNL7jdWPR0uREVDJK0NFFApT5xSblX3MKdSbbVdCCs2mceUpsPaM5A0UQHpM0UpYpm+1x79mho0p90dvP4NGYUFGlaTLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHMOJWAy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BD7DC4CEF5;
	Wed, 17 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766013834;
	bh=PpwfpFCtdCSMrv5YhE/WjmpJWl8SNAsuK3lEP5dUtpQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iHMOJWAyj+QyRmviWrJCDtHxuPIKri7Hv1v3zqTuemj3Xv8uY1rLafO0xrDmecnjB
	 zrEff2BB13AG5wguaugIXk4YRUdf02/b5E6ag/9WO8Q+MLxTfKjlEyjv10/Rj9yUAZ
	 f5Hcb5F4usYek7+iE7gv855bg0w3zpoJIBg4EcyJOO8V49Uj8cBcFt4XCnw0m+wPd4
	 jlQr7uJqjG0Jqu/m3+qSwQt/qy5p3E+qCN8L21O7f4CjyqdlZ4I9VzDPWItLRivex0
	 itZ1Rz0miWJ3LsjoUsdwR79rlu2mNYrVBaTsFzeEQ+zmPBkyIaOFwqkWUbxWMswU7G
	 8CbIVdcYpwyXA==
Date: Thu, 18 Dec 2025 00:23:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getopt_long.3: Assist users
Message-ID: <mlixy35w67jnpwbx7kpnhomkbznwewaeriu5rgxfymcgwnyl3u@iqzqwytbdi6x>
References: <20251214013754.hvrmeblfbr3cb4he@illithid>
 <dfezdrhg7wupodwha53d7yzymf43poxonxhelekituha7yuma6@rklvqpo5fwfa>
 <20251217231953.2m3sdzfph3h3lgyf@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4lxg45bo2h3dra5e"
Content-Disposition: inline
In-Reply-To: <20251217231953.2m3sdzfph3h3lgyf@illithid>


--4lxg45bo2h3dra5e
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getopt_long.3: Assist users
Message-ID: <mlixy35w67jnpwbx7kpnhomkbznwewaeriu5rgxfymcgwnyl3u@iqzqwytbdi6x>
References: <20251214013754.hvrmeblfbr3cb4he@illithid>
 <dfezdrhg7wupodwha53d7yzymf43poxonxhelekituha7yuma6@rklvqpo5fwfa>
 <20251217231953.2m3sdzfph3h3lgyf@illithid>
MIME-Version: 1.0
In-Reply-To: <20251217231953.2m3sdzfph3h3lgyf@illithid>

On Wed, Dec 17, 2025 at 05:19:53PM -0600, G. Branden Robinson wrote:
> At 2025-12-18T00:15:21+0100, Alejandro Colomar wrote:
> > > diff --git a/man/man3/getopt_long.3 b/man/man3/getopt_long.3
> > > index 73e8f3e6f..a464349fe 100644
> > > --- a/man/man3/getopt_long.3
> > > +++ b/man/man3/getopt_long.3
> > > @@ -102,6 +102,12 @@ .SH DESCRIPTION
> > >  is not NULL, it
> > >  points to a variable which is set to the index of the long option re=
lative to
> > >  .IR longopts .
> > > +.P
> > > +Its analogue to
> > > +.BR getopt (3)'s
> > > +.I optopt
> > > +is
> > > +.RI \[lq] "argv[(optind \- 1)]" \[rq].
> >=20
> > Would you mind adding \% to the entire expression?
>=20
> Strictly speaking, it's not necessary, because in groff's English
> hyphenation patterns (and when using the hyphenation mode configured by
> "en.tmac"), "optind" is the only letter sequence long enough
> to be eligible for hyphenation, and it doesn't.

Hmmm, I guess that's fine then.

>=20
> $ hyphen optind filibuster
> optind
> fil=E2=80=90i=E2=80=90buster
>=20
> I'm attaching my "hyphen" script.
>=20
> I can do it, but FYI.
>=20
> Regards,
> Branden

> #!/bin/sh
>=20
> : ${HY:=3D4}
>=20
> for W
> do
>     printf ".hy $HY\n.ll 1u\n%s\n" "$W" | nroff -Wbreak | sed '/^$/d' \
>         | tr -d '\n'
>     echo
> done
>=20
> # vim:set ai et sw=3D4 ts=3D4 tw=3D80:




--=20
<https://www.alejandro-colomar.es>

--4lxg45bo2h3dra5e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlDO4YACgkQ64mZXMKQ
wqlYLA/6Ai6eHJVQCyvOik5yChyqjfIF9EEktnFaXpXcMI3M2H4CA6m5Gkz0dsLg
Zur+QeEV3O65iuCeQnbr4fagZEWT4R4jcK52NARVJkc9GjSqhKEA99HwOzSDnwLO
IYLh+V8wfiyuNlNF/SD5Qi22fIz2um0sMOdfx34OmBtojES69xduezSL6Y2xJ3x/
nAwBOeb4P78t6zePhEJC8h3negSEoDHXXLbcnIWeMK4ovGTKdxRd113VNj8UXYYR
EdlnXoQ4FbfgpoSIqdz+2k7jdEkzCkCplWUj7ZapQuGz11PsF1nlrKsCV5oPTmiq
+gnifKR1g4bXRE9cuqGUPZ7s7lqFDMMeyOkm2t/ddJUmaRDC947OHWKNV6NLXIRg
TvJQ+OK+i5Q+5zDZ5gshnQlvKruc/J3ZYmvXCQ1fZDQwf6AUq9CrV82MjMAPr0Nu
51hJ42Dy0YM//SsXLguipvq44Qh/1GgVPisvDvAcFgMQjBQAu2WasahKM97Vb9Zc
Rha99IQzLUW8e6GYwphgrMBSHJN+wTAkSaOpoAPKL2DhVIr7HXSZZa/9P+Dabu8q
+U5x5oPfeckuiUL+e5/04EDJa8zyldev7PhVGqszgvWZUcvbOuRWeRvHSJ+Up8pu
JUlcRgf9TCqE36FsiNn45hB6gtPPHDYZSM1JSmu8KXpgArjx/18=
=K4oY
-----END PGP SIGNATURE-----

--4lxg45bo2h3dra5e--

