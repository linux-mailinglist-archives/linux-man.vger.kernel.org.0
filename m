Return-Path: <linux-man+bounces-246-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D4180BE51
	for <lists+linux-man@lfdr.de>; Mon, 11 Dec 2023 00:47:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D5DA91F20D3C
	for <lists+linux-man@lfdr.de>; Sun, 10 Dec 2023 23:47:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 391881DFE4;
	Sun, 10 Dec 2023 23:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgUA86ZL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0194847B
	for <linux-man@vger.kernel.org>; Sun, 10 Dec 2023 23:47:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEB3FC433C8;
	Sun, 10 Dec 2023 23:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702252042;
	bh=11MMCAxPCIGlZndBx/APWUIwJqS9Buf8NoVqoZcq9cE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KgUA86ZLQAXTPSyc1UNt8MYvoRUVrVUx9qP0otFkTnHczMB+NhSDqvKeqXIPI8INO
	 JpsiDrPh1gmolBW2z/a25PC20alQ9hBqBHsA4xZyy178sj8h/TbaddO24gutjyTrKl
	 t0JbJFb9U1bcvjsvkGEJCokAzoIwSJshJuxpRAm+UviuZne1067/AvUVjNA10NdhM5
	 GP56FQ2ESvYxtfeSAKfbMRV4ToT0+mlT5EkmPAcfn0pGTToIaJVXZFLXPRaIomihve
	 h/E8YR9L3gcE+VOuICtvBoLRyc8KNftONO5qOUDs2oeRNZUGcdDT8EXpZ8P9n8gXar
	 JyAj07BMoW5FA==
Date: Mon, 11 Dec 2023 00:47:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Thomas Habets <thomas@habets.se>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] atoi.3: Document return value on under/overflow as
 undefined
Message-ID: <ZXZOB0STGjxX3aH0@debian>
References: <CA+kHd+cpgbREUpfm+xBJkhUNc52n1juM3gF_M+8_Wo3AU6wdEw@mail.gmail.com>
 <ZXYhCo6s-usIn-9d@debian>
 <CA+kHd+eOibN0vynr5WdBHQKfMSMBBC_tS+24_771475yYt_SqQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Z1d4reCln4Gn8q3a"
Content-Disposition: inline
In-Reply-To: <CA+kHd+eOibN0vynr5WdBHQKfMSMBBC_tS+24_771475yYt_SqQ@mail.gmail.com>


--Z1d4reCln4Gn8q3a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 Dec 2023 00:47:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Thomas Habets <thomas@habets.se>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] atoi.3: Document return value on under/overflow as
 undefined

Hi Thomas,

On Sun, Dec 10, 2023 at 02:25:20PM -0800, Thomas Habets wrote:
> On Sun, 10 Dec 2023 20:35:15 +0000, Alejandro Colomar <alx@kernel.org> sa=
id:
> > For extra fun, you could have quoted this together :)
> >
> > ```
> >      except that atoi() does not detect errors.
> > ```
>=20
> Yeah, which of course makes no sense no matter if over/underflow is
> supposed to be considered an "error".
>=20
> > However, maybe we should instead try to fix glibc to do the right thing.
> >
> > 	int
> > 	atoi(const char *nptr)
> > 	{
> > 		int   i, err;
> >
> > 		i =3D strtoi(nptr, NULL, 10, INT_MIN, INT_MAX, &err);
> > 		if (err)
> > 			errno =3D err;
> > 		return i;
> > 	}
> >
> > This is compatible with ISO C, since it behaves like
> >
> > 	(int) strtol(nptr, NULL, 10);
> >
> > "Except for the behavior on error", in which this atoi(3) implementation
> > sets errno, but nothing forbids that (ISO C only says "need not affect
> > the value of the integer expression errno on an error", which allows
> > affecting errno).  POSIX also allows this implementation: "except that
> > the handling of errors may differ".
>=20
> If we don't change the manpage, then it should return 0 on error, not
> the clamped value. Unless you mean that the manpage should be changed
> to say it'll return the clamped value?

Yes, if the implementation is changed for good, I'd also change the
manual page.

>=20
> Portable code won't be able to rely on errno anyway, so might as well
> not set it, in my opinion.
>=20
> But at least this implementation won't trigger UB for any input.

Yeah, I'm thinking in 50 years from now, assuming all implementations
have good intentions and don't want to break programs just because the
standard says they can.  Hopefully atoi(3) could be usable in half a
century; if the planet is still there.

BTW, regarding your blog post about strtoul(3), I don't think it's so
hard to parse unsigned integers.  I couldn't reply to your blong without
logging in, but replied to the linked SO post:
<https://softwareengineering.stackexchange.com/a/449060/332848>

Have a lovely night,
Alex

>=20
> --
> typedef struct me_s {
>   char name[]      =3D { "Thomas Habets" };
>   char email[]     =3D { "thomas@habets.se" };
>   char kernel[]    =3D { "Linux" };
>   char *pgpKey[]   =3D { "http://www.habets.pp.se/pubkey.txt" };
>   char pgp[] =3D { "9907 8698 8A24 F52F 1C2E  87F6 39A4 9EEA 460A 0169" };
>   char coolcmd[]   =3D { "echo '. ./_&. ./_'>_;. ./_" };
> } me_t;

--=20
<https://www.alejandro-colomar.es/>

--Z1d4reCln4Gn8q3a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmV2TgcACgkQnowa+77/
2zKMaA//bbvDfNR1xcHNF//wJSFgQxsqWdIhrpmwUx8gDk+DwK5bREdABqFPU5Rk
SSWOqxvii/uxCaIWAU9q1G4GpiIh3gnOuYjzwmAiAs6CHWJMROM/Ii9VKVxIXnqM
/hHwPRuLRicPhzqX9ySjssDxXh4Mn3IEfIea/7jzxM4SZnvCnB57IlDDRUFrRGTe
VY04IpU+a9X1ojwNpyhf1YdE4+MqXHMuR1IxV0ivN+iKOBaEmM9GGkog4PbNbW7F
OKDv20kokl7+hhyuRBEcCad+5Xvxtq1xd4J5qrX41xWR32AZndCvawtmULXDhzal
oSW/1spbSc2vChgzp5GZmtntuhgERCCuDYsp4egRgryrN/Ttos9h86t4+rlpmHGg
Szagu/PT3XsNIazb8PuNuZKSO6pQS/fqdlBstQnoBjXMgpqebZ3DBnbZWWuzwsXg
GtmYxiDOgYv6BiSD/GoSHAYbzo4s1R4eB9K9czATVqB8IDIqqbiM9ydwx7A2awn5
kiydnMeAac4yyImYCmb6hnIg2lLDrKjZ0bX7wmL/eJNqDLXmN0XPd1n+2x/ynGUZ
0aTQQJKrBYIuMkJetwYhWXV2f/Ga4yF8wRk3FAT6r7M73zFlvoNITeqpUR6OCI8O
OVYmwhMZAaePh1gfZreWUEgpcvJWTR2w4hOu1HFU5XK8C0YtdhY=
=3tZa
-----END PGP SIGNATURE-----

--Z1d4reCln4Gn8q3a--

