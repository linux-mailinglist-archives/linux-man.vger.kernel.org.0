Return-Path: <linux-man+bounces-3167-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A88CAE02F8
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 12:55:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A15713AFE1F
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 10:54:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B13D5224B04;
	Thu, 19 Jun 2025 10:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AksxJDwT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDF818EFD4
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 10:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750330504; cv=none; b=GjEej0XsXcMsdRqu5GILyQS/Losh4VNmiU/xUwQjiDcX1LgUeYjSFh6oxusaZbh2FgOuHNGMOvFxGb2Euh+Wlz5hyhTj6CGrDK7kYAD2o69hayJnSqJE+tsDyHWMxmeNAlpwLVMjaXtZEJPkPu9Efm3Uf0ahRpeuoyV30VOQQRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750330504; c=relaxed/simple;
	bh=Hsr0gPfh3yZLdcQjQZ6s14FRHfnDbtDiu6XkagdZ6ZA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kRMIn8+kwlVLM9FcebiRon2OHdg8d5iNsy7TZdU6Dd6n2P/mXigcnxKO/pq1sJ7PP8gRK+tE29qGnPhUg2pyi7DJivMJzY57BokDImPGschrzhCnPJt5qE6R+9tjKgenlmtkblZjTf9Jzf1GZheE7wMKe9XM3BaKRCMTKJ6soDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AksxJDwT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BEE1C4CEEA;
	Thu, 19 Jun 2025 10:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750330504;
	bh=Hsr0gPfh3yZLdcQjQZ6s14FRHfnDbtDiu6XkagdZ6ZA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AksxJDwTwQcoi4766qIHLdj/QOzvUjuYsMvC+stTHJd9si/Jhh3niYti1jwo8mUkv
	 8YMLROrqTwTxWw5rS8ULoyVLf935j5vHPdcWO96KSsIOHhpvWKt3DY+B8Vf9Jot0B7
	 X9uF+T7yogxYCqbXm68GMS2zpPBJxrlLhB8nQBO/AQ4j8YndgXRq590IHjbApFSmj2
	 Y+XWwAaxpFwV4xcwzATgACGYJ0ajZ9T7wtfCSoTvSdxXvWPD4cwA4RPTNKsWY+3dkS
	 FLz8k1hKefR1C51Z9rJ2WtZLzn3XKYzj06EUbrrmKbMdgHpb6hJqKKEuGeiqM9iGkX
	 29HLeyR5lRtyw==
Date: Thu, 19 Jun 2025 12:54:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Rich Felker <dalias@libc.org>
Cc: linux-man@vger.kernel.org, musl@lists.openwall.com, 
	libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, 
	bug-gnulib@gnu.org
Subject: Re: [musl] malloc.3: Clarify realloc(3) standards conformance
Message-ID: <rn4grpehjs2z6ntam7dze32gugdfokwani2v7tuuc6camjdzy3@btjl3c4ff5i3>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <20250619021510.GD1827@brightrain.aerifal.cx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7te6hvioaj5su4n2"
Content-Disposition: inline
In-Reply-To: <20250619021510.GD1827@brightrain.aerifal.cx>


--7te6hvioaj5su4n2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Rich Felker <dalias@libc.org>
Cc: linux-man@vger.kernel.org, musl@lists.openwall.com, 
	libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, 
	bug-gnulib@gnu.org
Subject: Re: [musl] malloc.3: Clarify realloc(3) standards conformance
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <20250619021510.GD1827@brightrain.aerifal.cx>
MIME-Version: 1.0
In-Reply-To: <20250619021510.GD1827@brightrain.aerifal.cx>

Hi Rich,

On Wed, Jun 18, 2025 at 10:15:10PM -0400, Rich Felker wrote:
> > $ MANWIDTH=3D72 diffman-git HEAD
> > --- HEAD^:man/man3/malloc.3
> > +++ HEAD:man/man3/malloc.3
> > @@ -126,15 +126,34 @@
> >         =E2=94=82 realloc()                          =E2=94=82         =
      =E2=94=82         =E2=94=82
> >         =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98
> > =20
> > +VERSIONS
> > +       The behavior of realloc(p, 0) in glibc doesn=E2=80=99t conform =
to any of
> > +       C99, C11, POSIX.1=E2=80=902001, POSIX.1=E2=80=902008, POSIX.1=
=E2=80=902017, or
> > +       POSIX.1=E2=80=902024.  The C17 specification was changed to mak=
e it con=E2=80=90
> > +       forming, but that specification was broken =E2=80=94it is impos=
sible to
> > +       write code that works portably=E2=80=94, and C23 changed it aga=
in to
> > +       make this undefined behavior, acknowledging that the C17 speci=
=E2=80=90
> > +       fication was broad enough that undefined behavior wasn=E2=80=99=
t worse
> > +       than that.  The POSIX.1=E2=80=902024 specification is good, and=
 ideally
> > +       the ISO C standard should embrace something similar, but glibc
> > +       does not conform to it.
> > +
> > +       musl libc conforms to all versions of ISO C and POSIX.1.
> > +
> > +       gnulib provides the realloc=E2=80=90posix module, which provide=
s a wrap=E2=80=90
> > +       per realloc() that conforms to POSIX.1=E2=80=902024.
> > +
> > +       reallocarray() suffers the same issues in glibc.
>=20
> I don't like this text, at least not the second half. Man pages are
> not supposed to be polemic. They should be documenting the interface
> and what standards the implementation does or doesn't conform to, not
> declaring changes to the standards good or bad,

Okay, I'll reword, and try to be more objective.  A new BUGS section
would be good for it:

$ MANWIDTH=3D72 diffman-git -U8
grotty:<standard input>:(<standard input>):9: warning: unrecognized X comma=
nd 'sgr 0' ignored
grotty:<standard input>:(<standard input>):9: warning: unrecognized X comma=
nd 'sgr 0' ignored
--- HEAD:man/man3/malloc.3
+++ ./man/man3/malloc.3
@@ -129,19 +129,17 @@
 VERSIONS
        The behavior of realloc(p, 0) in glibc doesn=E2=80=99t conform to a=
ny of
        C99, C11, POSIX.1=E2=80=902001, POSIX.1=E2=80=902008, POSIX.1=E2=80=
=902017, or
        POSIX.1=E2=80=902024.  The C17 specification was changed to make it=
 con=E2=80=90
        forming, but that specification was broken =E2=80=94it is impossibl=
e to
        write code that works portably=E2=80=94, and C23 changed it again to
        make this undefined behavior, acknowledging that the C17 speci=E2=
=80=90
        fication was broad enough that undefined behavior wasn=E2=80=99t wo=
rse
-       than that.  The POSIX.1=E2=80=902024 specification is good, and ide=
ally
-       the ISO C standard should embrace something similar, but glibc
-       does not conform to it.
+       than that.
=20
        musl libc conforms to all versions of ISO C and POSIX.1.
=20
        gnulib provides the realloc=E2=80=90posix module, which provides a =
wrap=E2=80=90
        per realloc() that conforms to POSIX.1=E2=80=902024.
=20
        reallocarray() suffers the same issues in glibc.
=20
@@ -228,16 +226,29 @@
        POSIX requires memory allocators to set errno upon failure.
        However, the C standard does not require this, and applications
        portable to non=E2=80=90POSIX platforms should not assume this.
=20
        Portable programs should not use private memory allocators, as
        POSIX and the C standard do not allow replacement of malloc(),
        free(), calloc(), and realloc().
=20
+BUGS
+       Programmers would naturally expect that realloc(p, n) is consis=E2=
=80=90
+       tent with free(p) and malloc(n).  This is not explicitly re=E2=80=90
+       quired by POSIX.1=E2=80=902024, but all conforming implementations =
are
+       consistent with that.
+
+       The glibc implementation of realloc() is not consistent with
+       that, and as a consequence, it is dangerous to call
+       realloc(p, 0) in glibc.
+
+       A trivial workaround for glibc is calling it as
+       realloc(p, n?:1).
+
 EXAMPLES
        #include <err.h>
        #include <stddef.h>
        #include <stdio.h>
        #include <stdlib.h>
        #include <string.h>
=20
        #define MALLOCARRAY(n, type)  ((type *) my_mallocarray(n, sizeof(ty=
pe)))

> nor stating as
> undisputed fact aspects of conformance that seem to be under
> disagreement.

You're welcome to ask the committee for a clarification of the wording.
I don't think it's open to interpretation.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--7te6hvioaj5su4n2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhT7HUACgkQ64mZXMKQ
wqkMNBAAp3Hx6PzJlUkh/JQoYzaMWsJp4u1gnkPxeZ+SbchZXrCY1/n2Xfhw5KJi
++beEco5o8vMpCxbZPC/HzWeojSuAaZ7edbr7NbpdJm/ItBgR1oc6lQnakrS9QL3
4OcNUgMCU/38OArbUlsbToNEQjtyrTrg8FOEUoyfjbBpQie/RwHUIEWz/2kprT33
7yiz2ZUNMRHPFnTJ7rUpbLS9xyBpjgsqDAfwJI2M4isdtRhi87RSHlCLqjOGPt5t
2b6ZykzZo6ec4CFssXQoJTPimJagMh2AMm9R5eypE5/u208ScfdW+RkOs9Fp85TF
1/qVWSzxen3un2OYasmNqNnud0sm+Vk3zDdhuvWah1lF4nMfhmceSQxsKPb6I3vh
5NhdwQOy8n1kQknT+uB3wre1rrxHhguW1ObFsymmB/QqQs05grLJpVw/LamDJ7Ln
1qUL/bdAyykN4PoXtNryluJEFy2dpDfmOyT9wT3Sfc90ORpoz4d0N1U9E907Dw5x
HOqopZQls9uBu2ypV+n2TgfvMwgdTlSufawyubDCWITAoU7OsvlRT3qwQqTp/Sa2
AH7vWIJFuKAprXMp8aeOtANMj0xMR/qeIhD0IA2s3ccFgKveMNz+CmUnM4a0H996
A1RDQa6Nt8aRHEGd6lA5zp1sfVyhpWgQTHSFSJ7KAOvhT8B8+lQ=
=Mzv8
-----END PGP SIGNATURE-----

--7te6hvioaj5su4n2--

