Return-Path: <linux-man+bounces-870-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A698BC066
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2024 14:41:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 769DF281F07
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2024 12:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA62314293;
	Sun,  5 May 2024 12:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nziXbJRP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89C6C107A6
	for <linux-man@vger.kernel.org>; Sun,  5 May 2024 12:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714912914; cv=none; b=QhCSX9F85aFIFaQNQi1k0q4HfxsbLbcghXCeqF7WoaFXGUpWDI7PplOshawrxtEFbHfHAafkfDdzcO7PQseInPlGAV495fMnXACIEe8uzhIcVlvOuUoVMueb2jMz3fR2IVRIsPRCjNoeBpgXZj8gMgklTqzqSoKho6bH4zDu/po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714912914; c=relaxed/simple;
	bh=kIKH0dAs02HoQHbeeoR80kK42awRGmXQI3LpHKyOnvc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P3JQINjvrKfU48nVa6zV+ZQRsBFgL/CGU7mCmeNd9iNh+6M/IAhAYAW+0kRZmbKNFrK36sfnvt25C18sm6qrvGkFDQ7HAY7I42oiS06rM76tCi9C5DLw7ra1IgwCLw8mlFYxFwyaS4UEtn8XFfRo4c2kB8jyw4fl720ce+w2f0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nziXbJRP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 070A8C113CC;
	Sun,  5 May 2024 12:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714912914;
	bh=kIKH0dAs02HoQHbeeoR80kK42awRGmXQI3LpHKyOnvc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nziXbJRPwTs1gDLW2ezLqj+NQaCF7ngBzL4vdjxgRidtEFvnb51i6PWi2O6rluqxP
	 ZE887dPfrFgGLx8KXVPNHSfrq6c4dpfJR3BYsPdG83sHHEEuqEdCLs8Y1vkDCl+urn
	 KcwCwmHFwcMcSj0DKlvsPZecilaK0VjDP8nFksUs9ek7gl3g/blevmAveAzqhiufOT
	 MIMdZ+Ul2Ur99gf8/hD8njkhF+7b2b8ExtMsOTNU0a6cCtm+A8mCYaHu1DQECnzsHJ
	 wsQdnAosBQcnivQB8qfJuJWWj03lgTC8skDadynlC+0STx2Ya6FBpT/7Z+QY4ur/WN
	 fIPzOqAUdaBfg==
Date: Sun, 5 May 2024 14:41:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff@gnu.org, linux-man@vger.kernel.org, bug-ncurses@gnu.org
Subject: Re: Proposed v2: revised man(7) synopsis macros
Message-ID: <Zjd-jgQ_VFTidbnT@debian>
References: <20240426055958.3hzal6m4r7mgzhqj@illithid>
 <Zit0nT-jhNPE9T2v@debian>
 <20240503203126.uk32l2r3yp5gwltp@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uuGLxDRd5cujxQmo"
Content-Disposition: inline
In-Reply-To: <20240503203126.uk32l2r3yp5gwltp@illithid>


--uuGLxDRd5cujxQmo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 5 May 2024 14:41:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff@gnu.org, linux-man@vger.kernel.org, bug-ncurses@gnu.org
Subject: Re: Proposed v2: revised man(7) synopsis macros

Hi Branden,

On Fri, May 03, 2024 at 03:31:26PM -0500, G. Branden Robinson wrote:
> At 2024-04-26T11:32:06+0200, Alejandro Colomar wrote:
> > > My questions:
> > >=20
> > > A.  Does anyone object to me committing this change to groff's
> > >     master branch?  It will of course require a NEWS item, which I
> > >     will write.
> >=20
> > Acked-by: Alejandro Colomar <alx@kernel.org>
> >=20
> > > B.  Does this look enticing enough to any documenters of C libraries
> > >     for you to adopt it?
> >=20
> > This one at least.  :-)
>=20
> I've pushed this.
>=20
> $ head -n 9 tmac/an-ext.tmac
> .\" groff extension macros for man(7) package
> .\"
> .\" Copyright (C) 2007-2024 Free Software Foundation, Inc.
> .\"
> .\" Written by Eric S. Raymond <esr@thyrsus.com>
> .\"            Werner Lemberg <wl@gnu.org>
> .\"            G. Branden Robinson <g.branden.robinson@gmail.com>
> .\"
> .\" You may freely use, modify and/or distribute this file.
>=20
> Share and enjoy!

Thanks!

I'm trying it already in liba2i, since it's a project that I don't
expect to use until 1.24.0 is out.

Here's some feedback:

-  Hardcoded line widths have an interesting feature: the author decides
   the breaking point, which is interesting to highlight differences
   between similar functions.  See for example printf(3):

     int printf(const char *restrict format, ...);
     int fprintf(FILE *restrict stream,
                 const char *restrict format, ...);
     int dprintf(int fd,
                 const char *restrict format, ...);
     int sprintf(char *restrict str,
                 const char *restrict format, ...);
     int snprintf(char str[restrict .size], size_t size,
                 const char *restrict format, ...);

   As you can see, the breaking point clearly shows the differences
   between all of those, and leaves the common part in a separate line.

   Still, this is not the common case, and most pages would benefit of
   this SY.  I'm just mentioning here to note that old hard-coded BI
   still has its place in some pages.  I will probably never use SY in
   printf(3).

-  I found an inconsistent break point:

   Type=E2=80=90generic macros
     int a2i(TYPE, TYPE *restrict n, const char *s,
             char **_Nullable restrict endp, int base, TYPE min, TYPE max);

     int a2s(TYPE, TYPE *restrict n, const char *s, char **_Nullable re=E2=
=80=90
             strict endp, int base, TYPE min, TYPE max);
     int a2u(TYPE, TYPE *restrict n, const char *s, char **_Nullable re=E2=
=80=90
             strict endp, int base, TYPE min, TYPE max);

   Why is 'restrict' hyphenated in two cases, but not in the first one?!
   The source is:

alx@debian:~/tmp/groff/SY$ cat restrict.3=20
=2ETH a s d f
=2ESH Name
restrict \- gets broken
=2ESH Type-generic macros
=2EB int
=2ESY a2i (
=2EB TYPE,
=2EBI TYPE\~*restrict\~ n ,
=2EBI const\~char\~* s ,
=2EBI char\~**_Nullable\~restrict\~ endp ,
=2EBI int\~ base ,
=2EBI TYPE\~ min ,
=2EBI TYPE\~ max );
=2EYS .
=2EP
=2EB int
=2ESY a2s (
=2EB TYPE,
=2EBI TYPE\~*restrict\~ n ,
=2EBI const\~char\~* s ,
=2EBI char\~**_Nullable\~restrict\~ endp ,
=2EBI int\~ base ,
=2EBI TYPE\~ min ,
=2EBI TYPE\~ max );
=2EYS .
=2EB int
=2ESY a2u (
=2EB TYPE,
=2EBI TYPE\~*restrict\~ n ,
=2EBI const\~char\~* s ,
=2EBI char\~**_Nullable\~restrict\~ endp ,
=2EBI int\~ base ,
=2EBI TYPE\~ min ,
=2EBI TYPE\~ max );
=2EYS
alx@debian:~/tmp/groff/SY$ man ./restrict.3 | cat
a(s)                                                                       =
a(s)

Name
     restrict - gets broken

Type=E2=80=90generic macros
     int a2i(TYPE, TYPE *restrict n, const char *s,
             char **_Nullable restrict endp, int base, TYPE min, TYPE max);

     int a2s(TYPE, TYPE *restrict n, const char *s, char **_Nullable re=E2=
=80=90
             strict endp, int base, TYPE min, TYPE max);
     int a2u(TYPE, TYPE *restrict n, const char *s, char **_Nullable re=E2=
=80=90
             strict endp, int base, TYPE min, TYPE max);

f                                      d                                   =
a(s)


I would suggest never breaking anything between SY/YS.  Or do you want
me to use \% where appropriate?  It's a bit of work that I'd prefer to
avoid.

Have a lovely day!
Alex

> Regards,
> Branden


--=20
<https://www.alejandro-colomar.es/>
A client is hiring kernel driver, mm, and/or crypto developers;
contact me if interested.

--uuGLxDRd5cujxQmo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmY3fogACgkQnowa+77/
2zLtVBAApBDejGb/XlPFX+SQpRtOKSqCBG5xox9ePXcGadfFVCfSRDMeKt9nRwx/
uOz8hfxgfk0i0K+SAe+dEOoN3TL/ES+OfJrkRoR8ldRNmD6kvEKQmE181UWABNE5
PkFOQy8WTzF92CwqLzaSBt8fDW5HLUlWAW3TJoIzpxR0AHvISXWLD2p6etegnn+L
Tdcy8t5OECmqwTk8Cf9KE3UdnHZm9fNAwRIznuck/3MmAXQellflXdvFSXUN24oI
qV7dD6YCJtWDiNTU56LOlpquPcUE4NTUKhBNhPJxhvMhdAGTwkO+G3+ba45f3u2Q
DWmO9YgLfiqxzN0Vc3YViMD7KaeEyeW4udXgB4TqaNXIyv7OiGPi8GxzYXk9Ddmy
VyhQsSBYnyActdNc+vzsov9ITYj/rpm2W0BSQv6pg/grTeMgcYNep96PE2FvkMpn
H+/81ZsKy+Ia8p4NEUVgaygDFOb+85UBs+48VzO4x2QLwXxqpt9AXuUW4HUuOECX
54zXWiwXdADoPJdce5bPeQwZVjEkiwZz+4tNv03mwlKBJ563RTe4spxkYglKwEDH
MtvgxtV5PHJtNyR+EdIlVNzKnvZB4h19G9fE8cs461HJz0UGdKuaWqR7XxuJCfFx
bIwTKSR1k4URVtMcOITlIF3KldGm8Z9aqicaakgH2BiYylrwaS8=
=7o8N
-----END PGP SIGNATURE-----

--uuGLxDRd5cujxQmo--

