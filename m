Return-Path: <linux-man+bounces-3230-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BA4AECAD1
	for <lists+linux-man@lfdr.de>; Sun, 29 Jun 2025 02:10:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E598189838E
	for <lists+linux-man@lfdr.de>; Sun, 29 Jun 2025 00:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C8DC801;
	Sun, 29 Jun 2025 00:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awuXJOz+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5167017E
	for <linux-man@vger.kernel.org>; Sun, 29 Jun 2025 00:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751155850; cv=none; b=szi4FGcc5EZ5/22/feNMcCRt3UuKWnuaQdbUDMWOb6heZMpP7DWh6sNsy5/b0t6os4U/FY9PcmfM89FEXYHd7QaOEseVPqHrpr3+bkgcSFrvySZvGRJbI67dvpe6IeDoV7C93Ss0HE7AqtvueL+bs+CBhhm7acfYZK0OX28sMEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751155850; c=relaxed/simple;
	bh=Djo4CunTPXHUWRytrlo41s0j761ieYF5VWcJSrubsUg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g7QVqJkGRAOcbw91mNd1LhIks1bdmZi18XykVd9YG3OrzzXv6F1FBKw3J2yUnpHt8O9cM836MU5AQONyxA8ces5hS0n2vbaxgFpuMx2sejZHfevIjWUdJ/qO5toIeMwks0JOCn3ljn4YgF1ul0M4gJVwsCCBFDLE3oyxtMP8Pyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awuXJOz+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6FCDC4CEEA;
	Sun, 29 Jun 2025 00:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751155849;
	bh=Djo4CunTPXHUWRytrlo41s0j761ieYF5VWcJSrubsUg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=awuXJOz+vrnS0HOJKGAJm5ACkQUHXPWTbUmM2rqbNutaDLswJTiWcbbBCOJTBVgns
	 BGnQw+vTqOjmYpywBxH0iLkdXGKD8vQe+DMaGYfI40yafKWSNLTURY3WbvEbqxo2Sz
	 xUQ48Vj+2ysXTqakXHerYqZBAETKvv5kQpYjd9M3q9dVODPz+/fEylsAGh5E46A2Us
	 cO42dLhpAEcH+VRzeiIMlp0lMA0GyINCw6a6q2pT/iPMS/mw8Nd8vfbSrBxRdO4bHP
	 GmAFIMKA8PR/jyZSIuUdII8WrvnQuCJ3SYeZVNFW0koZWLFtjFStUk284W9GUlvHR5
	 4Y233Opc33fJQ==
Date: Sun, 29 Jun 2025 02:10:48 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Mark Naughton <mnaughto@redhat.com>, linux-man@vger.kernel.org, 
	Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
Message-ID: <bbkjrttmhtvrlcvnhghshca6425nirnkais4dhottmtaqa2pyt@fojrpplhruc5>
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
 <6pl7yzeeeecjl6oifcynye5gkhc4hr3vnvt4xtqasgvjx2sndv@64rgybogzm3d>
 <y3yu5sod6yietgrfyjiypid57ljoafrhfhhz4evqfxuwbyhvvx@g6oqdjarywgo>
 <CAMdZqKF7NeUfRCxW2rj4KuJXGOx-cRqXsk9qTcrcWKdKnoY_UA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="juswhx5w7shyt5ok"
Content-Disposition: inline
In-Reply-To: <CAMdZqKF7NeUfRCxW2rj4KuJXGOx-cRqXsk9qTcrcWKdKnoY_UA@mail.gmail.com>


--juswhx5w7shyt5ok
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Mark Naughton <mnaughto@redhat.com>, linux-man@vger.kernel.org, 
	Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
 <6pl7yzeeeecjl6oifcynye5gkhc4hr3vnvt4xtqasgvjx2sndv@64rgybogzm3d>
 <y3yu5sod6yietgrfyjiypid57ljoafrhfhhz4evqfxuwbyhvvx@g6oqdjarywgo>
 <CAMdZqKF7NeUfRCxW2rj4KuJXGOx-cRqXsk9qTcrcWKdKnoY_UA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdZqKF7NeUfRCxW2rj4KuJXGOx-cRqXsk9qTcrcWKdKnoY_UA@mail.gmail.com>

Hi Mark,

On Sat, Jun 28, 2025 at 04:38:31PM -0700, Mark Harris wrote:
> Alejandro Colomar wrote:
> >
> > Hi Mark & Mark,
> >
> > On Fri, Jun 06, 2025 at 03:05:20PM +0200, Alejandro Colomar wrote:
> > > I'm not going to release these changes soon, though.  They cause some
> > > minor temporary regressions, so I'm considering when I should do it.
> > > But eventually, these changes will be released.
> >
> > I found a way to do this without a regression.  I've pushed the change
> > already to master.  Please check that you like the pages now.  I find
> > them much nicer.  I'll try to have a release soon.
>=20
> This does look better than the bolded forward declarations; thanks for
> doing this.

You're welcome!

> Honestly, though, I think it would be even better without the forward
> declarations at all, which are just repeating information that is
> already present shortly afterwards.  It may not follow the proposed C
> declaration syntax, but the Synopsis section already does not match
> what you would write in C.  That is, you wouldn't write:
>=20
>        #include <stdio.h>
>=20
>        size_t fread(size_t size, size_t n;
>                     void ptr[restrict size * n],
>                     size_t size, size_t n,
>                     FILE *restrict stream);
>=20
> as stated in the Synopsis section.  Not only is an array of void
> invalid, but at best that would declare the function twice.
>=20
> What the reader needs to know is how to call the function, not how to
> declare it.  In fact, users are discouraged from declaring the
> function, which is already taken care of by the header file.  It's
> just that the C function call syntax doesn't include the types, so the
> types are added using the same syntax that is used in declarations,
> even though the reader has no need for another function declaration.
> The syntax without the forward declarations is closer to the function
> call syntax that is needed, while also providing the necessary type
> information.

I've had people complain in the opposite direction too, so I guess we
can say the current way is a compromise that works for both.

About arrays of void, I'm not as worried as I'd be if we used the
parameters without a forward declaration.  If programmers try to declare
their functions using arrays of void, their compiler will tell them they
can't.  However, if someone tries the same thing with undeclared
parameters, it might "work", which would be rather dangerous.

So, I'll keep the standard syntax in that regard.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--juswhx5w7shyt5ok
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhghIEACgkQ64mZXMKQ
wqkkXA/9HMWZT88rzji+GzmxcXoW/F+Drj3il8bD9IuXzSw4qiKzPR6dISh78EY3
er7zsBCieWCS2+X9A8M13E/LWsXj56K8vpjO/4n6GcxfcjVjVkFyYfwaRyLfrcxU
GlS/nVW3Dhi1iFfyCjfIX7QBMn1oMud64DXCBHpPJRcZ6Ctg3ivIHMqw2f9qvizU
B+MDIc9Ai4ujMaZERs3BzLuKkmG8sSAAAXCVIetiasLte2gpYnNB3IEtD8b4TZ9p
2TnUYmalKcLmhjEKqKmhJBX8Iimp1Sr5NCUee+5BosoKLpLfAbeXz4HLeV3fVJ0N
dgwmpPWyjadJIKYZgVac5m+WSwCiYsVbBZ66ulvSy79Tw2iJSa8zCSKF0m3F0ACm
LfRd8ZreonkWHwvsAIBG4m9AOcVC7DT2V6yZ+H+48lHxTEYAnidMLWjUuMJNVs7O
n272WVD4dKt0YJC77OmveUnaSnvi5UYKxaPg11vZ606WVj3Z/dF0yFRJkRk5FFkz
YrCampx50bPQiKymsEUkETuiQSV92J0ReeV6My0Ad4rENIlSOObW0ZD7nGQONmza
A0Rg63FSaDVN9EQ3eyaJPuhJaAQi6BO2mQfmjnq/CcCbEUOFIX4OIeuMy1l/VkKt
RA2cMdxomeg4/sOCmOnCamhgXpfno8jZSOnowtB29LWMpg7stkE=
=KG3T
-----END PGP SIGNATURE-----

--juswhx5w7shyt5ok--

