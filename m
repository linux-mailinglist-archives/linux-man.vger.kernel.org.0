Return-Path: <linux-man+bounces-2875-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD17AB1436
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 14:59:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF922174C17
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 12:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E071B290DBC;
	Fri,  9 May 2025 12:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tu5HUi95"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BCD01E50B;
	Fri,  9 May 2025 12:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746795480; cv=none; b=dMRa0+dLv4SDFn+uBB06PRVbjRn2tFOce5BCBpI1ya2ruFLQy+FDkKnXl1L+21elNoyEHy6OyzVST408z2in5nDtWcpnHVAcGFyy3V1tuQ6CuUbVUaA/UUNLc5gwmt7D4uZdkoiUPizx02pGI82E7L3Ra5kJEBIJKUR/0ELkdd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746795480; c=relaxed/simple;
	bh=ndAnXW6bg2EJMnwzBHjA708HhulGxBdlHjwhnFr1MuA=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Meiy9RrcCt0b4CNUm109B0yLmRIHcUIOP1P7L52HHhkRitpjRpMMmX6ovaPQhjJ30Dvo1qVk90bAHFf2d5nsoS+RsNUqQc7ZuyHjGSMw4N6Sy3utXWRnvf51ewOhvQWtHAsU0tO/Zb7lWw7fuXnp4Js9oLMSoLTb4gtXQARn3GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tu5HUi95; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E94CC4CEE4;
	Fri,  9 May 2025 12:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746795480;
	bh=ndAnXW6bg2EJMnwzBHjA708HhulGxBdlHjwhnFr1MuA=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=Tu5HUi95QreCXvpPlAYU8neJYudjSRRYZTrscpC2yvQsWNyI6fscahqk+tUi2huL8
	 y1uJIGBmLwSR2P98LgzVVOlcA5FfyZqB8nzqB7gWKmTzdp2ujFKrQx+SBwjdAJzQW8
	 UGkbR3TFAB/Ck2Zv0UXpOGdmWoFA3gEvRWreHWFQFHwBUQ8rYCsPrbeNgeallzNwKH
	 p3TqMv7yL8Vbcug2Fujyh34I8h87Hx1wt7fTXUepBdjgK/Cb+sKrmrS4pZhmVEKNs2
	 VGmDzbxZalxMtFd6EyBxA0tDft8tJlfM7X+kMyJKfYjmGBjhgWUHxKDOw5ZMB6Rwn8
	 tpWIZGwiipMIg==
Date: Fri, 9 May 2025 14:57:56 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>, 
	"Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	libc-alpha@sourceware.org, "G. Branden Robinson" <branden@debian.org>, 
	Carlos O'Donell <carlos@redhat.com>, Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: man-pages-6.14 released
Message-ID: <ib7p6mx6sltp2bu6vxw7n2urxuaq2lk4a6efsgnjym43svpvy3@wbgmnm6sy23o>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <qghsrpxzxccbcuuctx56oq5xe7mtpkgljis7ovopr6ojmiz3js@vw5p5w7om4f4>
 <20250509124829.GD3017@cventin.lip.ens-lyon.fr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h76monlxzyenakhr"
Content-Disposition: inline
In-Reply-To: <20250509124829.GD3017@cventin.lip.ens-lyon.fr>


--h76monlxzyenakhr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>, 
	"Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	libc-alpha@sourceware.org, "G. Branden Robinson" <branden@debian.org>, 
	Carlos O'Donell <carlos@redhat.com>, Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: man-pages-6.14 released
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <qghsrpxzxccbcuuctx56oq5xe7mtpkgljis7ovopr6ojmiz3js@vw5p5w7om4f4>
 <20250509124829.GD3017@cventin.lip.ens-lyon.fr>
MIME-Version: 1.0
In-Reply-To: <20250509124829.GD3017@cventin.lip.ens-lyon.fr>

Hi Vincent,

On Fri, May 09, 2025 at 02:48:29PM +0200, Vincent Lefevre wrote:
> Hi,
>=20
> On 2025-05-09 14:28:23 +0200, Alejandro Colomar wrote:
> > On Fri, May 09, 2025 at 02:14:54PM +0200, Andries E. Brouwer wrote:
> > > Hi Alejandro,
> > >=20
> > > > > I wonder about the legal status of such a change.
> > > > > There is ownership of the pages, and a license that allows
> > > > > others to do certain things.
> > > >=20
> > > > I also wonder about it.  We discussed it for several (~3) months, a=
nd I
> > > > documented links to the discussion in the commit message:
> > > >=20
> > > > commit 9f2986c34166085225bb5606ebfd4952054e1657
> > > > Author: Alejandro Colomar <alx@kernel.org>
> > > > Date:   Fri Apr 11 02:19:48 2025 +0200
> > > >=20
> > > >     *, CREDITS: Unify copyright notices
> > > >    =20
> > > >     Link: <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmv=
kamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p/T/#u>
> > > >     Link: <https://www.linuxfoundation.org/blog/blog/copyright-noti=
ces-in-open-source-software-projects>
> > >=20
> > > So I read this last link, and see
> > >=20
> > > "Don=E2=80=99t change someone else=E2=80=99s copyright notice without=
 their permission
> > > You should not change or remove someone else=E2=80=99s copyright noti=
ce unless
> > > they have expressly (in writing) permitted you to do so. This includes
> > > third parties=E2=80=99 notices in pre-existing code."
> >=20
> > I understood that paragraph as not changing copyright notices from
> > people unrelated to the project.
>=20
> I don't think so. But IMHO, it would be OK to provide the old copyright
> notices in an indirect way: put them in a different file and just give
> a reference to this file, as long as this file is distributed together
> with the man pages and can be found easily.

Hmmm, I considered that the copyright attributed to the contributors
and then a CREDITS file that lists the contributors is an indirect way
of keeping the notices.  The CREDITS file is distributed together with
the manual pages, and can be found easily (root of the repo).  It
doesn't keep the original notice text verbatim, though.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--h76monlxzyenakhr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgd+9QACgkQ64mZXMKQ
wqlyxg//ft55E7NDQrIFXNtXYJMwA+2PqRn71LYd/vE/95VNz0wqV2DMPJzoQzsZ
HUSkXdfoXjMLMg2usvltLaV/l3uwAlTlKTe3CHy1YAe4A0nj1NmfaXFynUj8M9zJ
PfWBKl6uio4WBrMAfwTmhepR8E8HcwuUjIJNpaAJxi1BQgKrQedKTtsf5kVu4Xta
Og15VqEZlUmPM4FMNmQq2/jUlSWDNXkZvKXp4n/MCYG1MdR9SxbS5vZUzvUH9JMo
ffR6s6xwIzC2wrLe0a8QEg8FW+hZHGF9IxLvt8TCR6WHzBzbSZYYnetjDEvyZmb5
qn9YcSL/zo3kwkJ0lnW8sfH/EOSBHHmbfwcwJKC47CNDU6ppBl4vwVXLuUBg5/Gh
rvsXEkmS9O6F7mL0b1UHxhzivD167TBujNAhn/Baj9ECU2Pvs29U1T+sUg4yAvaF
nWLzLN9vZ7mupfbdmAGvf4RpkUdcmjq0q29EPvmEuASzvW+JPhh9+jDwNitQ+q7e
/A5IfL7CrFPJpGeESZDkaS7sM079F1VsP0wmUWzZw2ive3j1iSeeT7RvfVJx1qnS
4upNypru8aRdxCpwS9o0Fw8XmdrhgyjberJp6ppSNstbjgdMPzUQlPnTNsytewU9
h7yLi0upRxsodxSBurHqaSIqGgMIGgRp75cgAcy7+mhSoIrwB1M=
=pHO/
-----END PGP SIGNATURE-----

--h76monlxzyenakhr--

