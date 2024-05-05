Return-Path: <linux-man+bounces-871-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD8E8BC067
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2024 14:44:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF9621C20F13
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2024 12:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89F8B171AB;
	Sun,  5 May 2024 12:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e36VMri2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B22DA21
	for <linux-man@vger.kernel.org>; Sun,  5 May 2024 12:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714913060; cv=none; b=HULnoSiJy+V8Zz37kgWPKCzzDZ7l+hbcwA9L2I0LfR0Vt5+xXKAe5N6K/+o1N5kOFo4lK5FzkquKlLy5PqOliejIGQbrwZhXluf7M7WCbyAGORQnlsWSGpTCqsu/gTgT3el1276psxUiCGQZhXJV1ljZOEYu3TWIBF/hKtDBBYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714913060; c=relaxed/simple;
	bh=CT5olPAQvpjnr0mCQCyQ/ReiJKFH+UOr14cPPdDlqrI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p3XcRsOyRuk3mv+WqjvBsCIHCmRqRmy+y/ccVYTfZ7NI/c8SbmxCTUcXxVSnbmaoNc2ZlnG9rqeB66Xektke/CzjmQ7EDNVa6UxzHF8Y3vLvK3Gp3Fzu1sbeTBdjlcFTgJ0HJ4GveoxJKzp2wzrzNHguv6sAph53v7BWS+h/4Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e36VMri2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCF58C113CC;
	Sun,  5 May 2024 12:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714913059;
	bh=CT5olPAQvpjnr0mCQCyQ/ReiJKFH+UOr14cPPdDlqrI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e36VMri29U5DLoU7V9IkA9nkqCTfxgpWizS4FspMdiUYs19ECnlxjYRh0CDpw4cJC
	 YFzN7XjJmm/Q2f6MnKI7VHwY5VKSbZMj2YMb48eRO0iQyEv97W8WCYoN5PHIRm/xsP
	 PAHRHZTNr/PeFngxI7NXpNtBa5OHFlpG9WRn6tHXbLegyF/IEdEPaFwLk56tNDJ+1u
	 al2IBRUr8IU1nPL6tg5Jbbxf7XJApmJbBKGGuT3I4pL5tmDBSKX8niUdoOMQZFu6hG
	 Q7ozOboam2ZywzHWr5klGmr56VSk/DO7GUr5m0Cc4QDomMY9GnQtHIgyWGEKpEKnzx
	 v1Sdh0c2pcapA==
Date: Sun, 5 May 2024 14:44:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff@gnu.org, linux-man@vger.kernel.org, bug-ncurses@gnu.org
Subject: Re: Proposed v2: revised man(7) synopsis macros
Message-ID: <Zjd_IEmita152Zdj@debian>
References: <20240426055958.3hzal6m4r7mgzhqj@illithid>
 <Zit0nT-jhNPE9T2v@debian>
 <20240503203126.uk32l2r3yp5gwltp@illithid>
 <Zjd-jgQ_VFTidbnT@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mnE3M6om9dH+cdjb"
Content-Disposition: inline
In-Reply-To: <Zjd-jgQ_VFTidbnT@debian>


--mnE3M6om9dH+cdjb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 5 May 2024 14:44:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff@gnu.org, linux-man@vger.kernel.org, bug-ncurses@gnu.org
Subject: Re: Proposed v2: revised man(7) synopsis macros

On Sun, May 05, 2024 at 02:41:44PM +0200, Alejandro Colomar wrote:
> Hi Branden,
>=20
> On Fri, May 03, 2024 at 03:31:26PM -0500, G. Branden Robinson wrote:
> > At 2024-04-26T11:32:06+0200, Alejandro Colomar wrote:
> > > > My questions:
> > > >=20
> > > > A.  Does anyone object to me committing this change to groff's
> > > >     master branch?  It will of course require a NEWS item, which I
> > > >     will write.
> > >=20
> > > Acked-by: Alejandro Colomar <alx@kernel.org>
> > >=20
> > > > B.  Does this look enticing enough to any documenters of C libraries
> > > >     for you to adopt it?
> > >=20
> > > This one at least.  :-)
> >=20
> > I've pushed this.
> >=20
> > $ head -n 9 tmac/an-ext.tmac
> > .\" groff extension macros for man(7) package
> > .\"
> > .\" Copyright (C) 2007-2024 Free Software Foundation, Inc.
> > .\"
> > .\" Written by Eric S. Raymond <esr@thyrsus.com>
> > .\"            Werner Lemberg <wl@gnu.org>
> > .\"            G. Branden Robinson <g.branden.robinson@gmail.com>
> > .\"
> > .\" You may freely use, modify and/or distribute this file.
> >=20
> > Share and enjoy!
>=20
> Thanks!
>=20
> I'm trying it already in liba2i, since it's a project that I don't
> expect to use until 1.24.0 is out.
>=20
> Here's some feedback:
>=20
> -  Hardcoded line widths have an interesting feature: the author decides
>    the breaking point, which is interesting to highlight differences
>    between similar functions.  See for example printf(3):
>=20
>      int printf(const char *restrict format, ...);
>      int fprintf(FILE *restrict stream,
>                  const char *restrict format, ...);
>      int dprintf(int fd,
>                  const char *restrict format, ...);
>      int sprintf(char *restrict str,
>                  const char *restrict format, ...);
>      int snprintf(char str[restrict .size], size_t size,
>                  const char *restrict format, ...);
>=20
>    As you can see, the breaking point clearly shows the differences
>    between all of those, and leaves the common part in a separate line.
>=20
>    Still, this is not the common case, and most pages would benefit of
>    this SY.  I'm just mentioning here to note that old hard-coded BI
>    still has its place in some pages.  I will probably never use SY in
>    printf(3).
>=20
> -  I found an inconsistent break point:
>=20
>    Type=E2=80=90generic macros
>      int a2i(TYPE, TYPE *restrict n, const char *s,
>              char **_Nullable restrict endp, int base, TYPE min, TYPE max=
);
>=20
>      int a2s(TYPE, TYPE *restrict n, const char *s, char **_Nullable re=
=E2=80=90
>              strict endp, int base, TYPE min, TYPE max);
>      int a2u(TYPE, TYPE *restrict n, const char *s, char **_Nullable re=
=E2=80=90
>              strict endp, int base, TYPE min, TYPE max);
>=20
>    Why is 'restrict' hyphenated in two cases, but not in the first one?!
>    The source is:

Oh, and removing the argument to YS fixes this.  :|

>=20
> alx@debian:~/tmp/groff/SY$ cat restrict.3=20
> .TH a s d f
> .SH Name
> restrict \- gets broken
> .SH Type-generic macros
> .B int
> .SY a2i (
> .B TYPE,
> .BI TYPE\~*restrict\~ n ,
> .BI const\~char\~* s ,
> .BI char\~**_Nullable\~restrict\~ endp ,
> .BI int\~ base ,
> .BI TYPE\~ min ,
> .BI TYPE\~ max );
> .YS .
> .P
> .B int
> .SY a2s (
> .B TYPE,
> .BI TYPE\~*restrict\~ n ,
> .BI const\~char\~* s ,
> .BI char\~**_Nullable\~restrict\~ endp ,
> .BI int\~ base ,
> .BI TYPE\~ min ,
> .BI TYPE\~ max );
> .YS .
> .B int
> .SY a2u (
> .B TYPE,
> .BI TYPE\~*restrict\~ n ,
> .BI const\~char\~* s ,
> .BI char\~**_Nullable\~restrict\~ endp ,
> .BI int\~ base ,
> .BI TYPE\~ min ,
> .BI TYPE\~ max );
> .YS
> alx@debian:~/tmp/groff/SY$ man ./restrict.3 | cat
> a(s)                                                                     =
  a(s)
>=20
> Name
>      restrict - gets broken
>=20
> Type=E2=80=90generic macros
>      int a2i(TYPE, TYPE *restrict n, const char *s,
>              char **_Nullable restrict endp, int base, TYPE min, TYPE max=
);
>=20
>      int a2s(TYPE, TYPE *restrict n, const char *s, char **_Nullable re=
=E2=80=90
>              strict endp, int base, TYPE min, TYPE max);
>      int a2u(TYPE, TYPE *restrict n, const char *s, char **_Nullable re=
=E2=80=90
>              strict endp, int base, TYPE min, TYPE max);
>=20
> f                                      d                                 =
  a(s)
>=20
>=20
> I would suggest never breaking anything between SY/YS.  Or do you want
> me to use \% where appropriate?  It's a bit of work that I'd prefer to
> avoid.
>=20
> Have a lovely day!
> Alex
>=20
> > Regards,
> > Branden
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>
> A client is hiring kernel driver, mm, and/or crypto developers;
> contact me if interested.



--=20
<https://www.alejandro-colomar.es/>
A client is hiring kernel driver, mm, and/or crypto developers;
contact me if interested.

--mnE3M6om9dH+cdjb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmY3fyAACgkQnowa+77/
2zKF6w//YzSsD65wXIsA2nJkeRkbkpqqq49mSFepZ3jaZtj1GwmbanuVW68WlDYy
jSEJGOJzysvP9b1xdu1E0m6/K8ARFKbTVUYB3vecBtsuZ9xbjmqVnCVyIlYqbEVQ
i2SJbxdbinuLvVhhdtAKOEUqVpoA/DLI1JBwkYp+LxYQEuzDVcAdKd7rqnS63tKM
vl6XyaCrKb3aRA1Fb8Vwa3LElNe+bGyLlY2beB8KcPtPMlLLg9Jj1kQeDTEXMCUs
YNxtpeR31xOiOqbrJFvf4nJX0jiAgOrPS+DIBs+jnOIKQ2Yh57BnGK9PQGn3x2qR
A6OqM5OBIx6cYa/OOCS7eETJNs9s9k/ug2QUu1A/NIV8WVk72Bkl83D9lLJG0DC8
bG7FC841GsHhwVC4bzoLpGqVUW7ZksKLoFk9lCkWBXVnKZ9NqNCTZTp592UwxR75
qFS2rzbAxeKeO0K37WZEgDWIBjuAUn1a+6+BDi8j8Nb2LY1I1iF6e/ypHpSYGGVG
Rz5HgyLQJs4+LFMMRC2vPxwWvDoDZEo8eRiRnRYwVafned1NFKPXCm9fG43vvvI3
qiS74ChYkMkqsYQ92gLZJiUHN5MvBldEIIvaz/azVd+MrYjuV0666WbuiGhpOJtY
OYam/OPcfiUvFjjdBnKS8BB+F/DgfQj23u215rGXMqvLhYhrbjU=
=2wXK
-----END PGP SIGNATURE-----

--mnE3M6om9dH+cdjb--

