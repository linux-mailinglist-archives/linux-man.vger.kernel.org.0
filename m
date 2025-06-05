Return-Path: <linux-man+bounces-3110-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68857ACF31D
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 17:33:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE3C41894AE3
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 15:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA38018A6B0;
	Thu,  5 Jun 2025 15:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KM/H+PqS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FE7D2FB
	for <linux-man@vger.kernel.org>; Thu,  5 Jun 2025 15:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749137611; cv=none; b=i2KTOgShtqTGReUKoK1j3N9fWo34hjcyhXQGfU+9mHL7kO6pT6NYgekdinDreRlLORpGkMlJ9pB574X3Tk8zaLODyzcdbl9r9KPLwKSR4EPH0aebUm4+j0PnL2fnV0stPb+roqICbSX0eS8oSckXz7xIS+bDelnfa0tllFwyFw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749137611; c=relaxed/simple;
	bh=I0Wxvun3rpTSaRWPrw42xy/kSnMZ7xDYGItcD32YqVg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gdD6j/HPjNSFoggpSpUkVoe7AVurbaOaS+0dwRIxtkCx/rdko9kfqsgT+5l918PVfDW8qYD5TWTpX3keptZONsIxN4fwUUj3tTq0cHm6wIlljVa3AWS0q8zX81aDSNkEZf/M/rAxeESY1RWfEB3VgNkcoz1nqTphLkM4DDooc9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KM/H+PqS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6D45C4CEEB;
	Thu,  5 Jun 2025 15:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749137610;
	bh=I0Wxvun3rpTSaRWPrw42xy/kSnMZ7xDYGItcD32YqVg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KM/H+PqShVTrJs0/a/ocCzSwYSTmHIwsJ5AbIB++A+4wQVrEGHZmVM1MLvI4vXdZk
	 zDRdHzts7u3zWww6ZvwPiQwcfvltFaKePw9GGnEb0XA0zwpu3w8KM6e/297MJ9wLFY
	 X9PgDzTuO0QAE+bb4wvpxWm3b9HoWt7GoSu6khzYzn/8vugKbWQB7iycbHyhE9YguQ
	 TxKgurMCQLflQxIb2UJlho/19e6ZhO094YfJQsh2Igb480tDNf9ZMDgLR0kDxOyMzY
	 7r7ljckO/da80V7zmKYAjLvuyFiQW7BJft0i++F48wuqiGeKdsScTyBmfG2R3mc8D7
	 m6TYQIfOaIwiw==
Date: Thu, 5 Jun 2025 17:33:27 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Mark Naughton <mnaughto@redhat.com>, Mark Harris <mark.hsj@gmail.com>, 
	linux-man@vger.kernel.org, Joseph Myers <josmyers@redhat.com>
Subject: Re: strncmp(3) in the SYNOPSIS
Message-ID: <5mfvvwtthfzgjb3m7d4bzwcn3vc4jmpsktk43vjcfjg5vkeyug@7aqiiz5fwgfn>
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
 <movtjbigtmqu5qwwijxng7pc62bvfxhqf5fhf36rd5wq67c4yy@wnpjvmfuti2i>
 <87a56mxmsx.fsf@oldenburg.str.redhat.com>
 <hkyvvyqkhbseev7cyqkdjvknur6tghu6xt7ekjfhjsfyicwsm2@awrjajnvugz5>
 <874iwuxl60.fsf@oldenburg.str.redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="voyqvv4b7yocepey"
Content-Disposition: inline
In-Reply-To: <874iwuxl60.fsf@oldenburg.str.redhat.com>


--voyqvv4b7yocepey
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Mark Naughton <mnaughto@redhat.com>, Mark Harris <mark.hsj@gmail.com>, 
	linux-man@vger.kernel.org, Joseph Myers <josmyers@redhat.com>
Subject: Re: strncmp(3) in the SYNOPSIS
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
 <movtjbigtmqu5qwwijxng7pc62bvfxhqf5fhf36rd5wq67c4yy@wnpjvmfuti2i>
 <87a56mxmsx.fsf@oldenburg.str.redhat.com>
 <hkyvvyqkhbseev7cyqkdjvknur6tghu6xt7ekjfhjsfyicwsm2@awrjajnvugz5>
 <874iwuxl60.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
In-Reply-To: <874iwuxl60.fsf@oldenburg.str.redhat.com>

Hi Florian,

On Thu, Jun 05, 2025 at 05:28:23PM +0200, Florian Weimer wrote:
> My point is that *if* it is a string, it can be arbitrary long.  It does
> not have to contain at least five characters, it can be shorter.  These
> two choices are valid:
>=20
>   subject is a string
>   subject is an array that is at least six bytes long
>=20
> They overlap, but both options are needed.  For example, "?" is not an
> array that is at least six bytes long.

Yep, that's correct.  Hmmm, I don't know; maybe for consistency I could
remove those [n] and just use [].  We'll see.  Please remind me in a
month or so; possibly with a patch, if you want.


Cheers,
Alex

>=20
> Thanks,
> Florian
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--voyqvv4b7yocepey
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhBuMYACgkQ64mZXMKQ
wqlRmA/+NmQpegHapPHUJxAUTbpHMVHrd+prP4u1mbUJwCNU9ms0in3htLVUVjxV
rY3XRnpWZrUCsceRKdMVtKmFH41+SHz5ZnM0K5bOwzx9JgM5rm5mw1vk9lJopubk
Rt5wMacm8+EyQn260Npgwzvqm0SlnujgXuO0hUpQLGwULuEtKStaNQAdFbrHeah3
6Og4eAw2QWUYx7fxw8YE8mgh2KLOQoDyMWkwbRKbMTWdxkehd1NyRJMmCRQZN+tI
ih0TO4PPkahnlrlpRkMuxB6kHTQRfhL/RzK5OkvB0dGIagUW75Rjbspy76EmQQ7K
1BDQ3RZdCa3z8Cqz0V1lnL12F9j/NhNKXLvED0XHskDKsjxxO27+EAuESZ2DXL/d
DlAMeTptSMUm8uzBOQd/5A8oPn/urc5j5upEvPhg43xYVBXcNKsYn+sg9a6JQHA2
qbmb8Fn5GJ/E/nyuvE7ZQYr/UI4k927iVe+y/8VSvGdj64N3hNCmMELK9gPpvRb8
Zbd1Q5Quu8K9DaSkW5aB7KGzh1xqtR9hy8su6e7Nku6pNxJ4y/EsCSRuecXdUMlP
oORn6XefpxIqaEzHt66+apwomESINnLwsMuiNiNfgH9LffCwxm+45991RqJFJy2N
3LEnPDAo/sQ5fBVnH88ddgg3GI9ZnO6ibY0Pd43Qvy1qB4E5WTk=
=dWaZ
-----END PGP SIGNATURE-----

--voyqvv4b7yocepey--

