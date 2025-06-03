Return-Path: <linux-man+bounces-3091-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4557AACC77E
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 15:17:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F8001659F1
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 13:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87C7013C8E8;
	Tue,  3 Jun 2025 13:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+oEyNoK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474A172617
	for <linux-man@vger.kernel.org>; Tue,  3 Jun 2025 13:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748956662; cv=none; b=mq7jj7JzYKYOZf2iQylEa2ahPkD/LdechTLvoVYURkgIr/i8JHHs/F4FzX6MApaXsriPKlqaAVHl2ipY5J9jv0e9AJBIzaGBS9BBCCRlyWKXUI7scGnFm9nZ/MuQ4P4h8ex/wOsVZEcRrQymTU0PaXT4nQqsVkLUEL13PDunrwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748956662; c=relaxed/simple;
	bh=7SsASnWpotWu+idqdUiyPXnc/m6Z117nEa3jYRm145E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e95CUoNPP4+XzAUznTqHGIZ/QiDYbZ57NYKJo15ypmz5P8u03ZFtGLIQmNoi5ZaHEgGKWA9+F7EvVMsDz6DTdBM4IbeMR63B+CU4FWPV1wGsMIQmvRsCk/OnOQ/R6+nL2ZZfSYNGwGb6pWU++mfju3ZbRiM/5pM7Gl51WbGo81k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+oEyNoK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB9E0C4CEED;
	Tue,  3 Jun 2025 13:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748956660;
	bh=7SsASnWpotWu+idqdUiyPXnc/m6Z117nEa3jYRm145E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T+oEyNoK4NHJbC0oMbF+ctHjBWZymbHo0WMQggFacF4pgs7bdyYSsEajGZq5eSN5H
	 qjsnB/l3USFoclAuKMGWUP0NzplaWEPxSwA8YSivfGA1yULoT6qv0AZAifk64oQJaU
	 IFgb7yrdRdNjreyp0Rm9yxj1IIPLE4ADZTxBwljLqxxyxm9VHnijRDZMJ/+zB15VU8
	 zWBcDQJJEoRS8essnpRodPejRqSLqPfvB7+O3M+a2G96RPnkuG6CgLdL3nEbib2Sdg
	 NOcSAYzJ0k8RJca1f1fLZsRq0rEXekq2AOwFaY7Jzy34IRb5+C0VRh4pAuqmqm61Cg
	 k6IeUfGkSmBug==
Date: Tue, 3 Jun 2025 15:17:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Naughton <mnaughto@redhat.com>
Cc: linux-man@vger.kernel.org, Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
Message-ID: <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ui3pyh3uasweziok"
Content-Disposition: inline
In-Reply-To: <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>


--ui3pyh3uasweziok
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Naughton <mnaughto@redhat.com>
Cc: linux-man@vger.kernel.org, Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>

Hi Mark,

On Tue, Jun 03, 2025 at 01:21:47PM +0100, Mark Naughton wrote:
> The [.identifier] notation is fine, it serves a purpose. I don't know
> what value adding the forward declarations does,

Hmmm, ironically enough, the argument for changing from [.identifier] to
forward declarations was using standard syntax.

I agree that all else being equal, I prefer the [.identifier] notation
in the manual pages; it is more readable.  And I defended it for some
time.  However, having forward declarations at the edge of being
standard, and having been a GNU extension for a very long time, there
was a strong argument for using it.

> they are more for the
> compiler, not the programmer.
> When I first got the updated man pages, I thought the forward
> declarations were the first arguments to the function.
>=20
> I suspect new C programmers would find the forward declaration
> prototypes quite confusing also since they are not even part of the
> language.

I tend to disagree with that.  ISO C is only a dialect.  GNU C is an
equally valid dialect of the same language.  It is indeed the dialect
that most programmers use on Linux systems, ISO C being a minority
dialect that only some pedantic programmers use.

> When I open a man page I want to see "what arguments do I pass and in
> what order". With this change you have to parse the prototype for the
> semi-colon
> to see the start of the args.

I tried to use a style that makes the ';' stand out more, by breaking
the line after it.  But I agree that the first times you look at it, it
can be a bit confusing and hard to distinguish.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ui3pyh3uasweziok
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg+9eoACgkQ64mZXMKQ
wqmnwxAAmWHWNEUQ+rpD0THTqeDWMurg48nCMWbw4kqGaVCdYvCsiF1jCO3akRo2
DO4r69AxrW9BsDSkzXkZFgfhxjAyFY7dx/yjkF11IbH5dJ1EQeBIllX9wvsQEXOB
G1XYyGt7KZuPtP2SXuo+VGhnJ00OJ7skEoZBgQYlN5ywld1ZE4rnfLZcqGnjf0zk
0xjRgDVWlN8uYROOr15ielZ/+GxV37AMEq0FKHC3+QRpwRA5gT36wd9nGkVYJ46f
P6Ql81y/WnmaBtj3sPfWaFcd4nFdWXTKvglCYXdELopzICNw/7GLC9Z1X7YjN81x
0FimJAOAMmijSEQ7yeXtZ4q6F2qISLOEDU5hJr+Ig+7AIHDRagIbYpIwK2g6Gh9I
y1hmcGrn5VDFMPP/gMau7vPzwbmQhpC0qWeVfDKTqSKazDOl+eT9HOXpq15sHeiq
VLooAm0j75G6TOUi2fvstimDdv+Kyo+vdgOxKBaRPL1F+sVeYpKOTatncVtGRDGO
FhhALCDauPCw7i1hJzb089/Yv3YsP9cSlxVUYF5mvPns/3Gp2jygfaZjyyCTBCUJ
iowWzC7EzXYLhCqhdfz0Q/PZSpABsjPO7dWnLrUXdx5Tsd4rlHG+UOjbJgi4UVPl
06yBkn4wG85WebmFyAfp/P0dwCB2D4nzJDC8XQKIZ/Tc8dv2kIY=
=QDjG
-----END PGP SIGNATURE-----

--ui3pyh3uasweziok--

