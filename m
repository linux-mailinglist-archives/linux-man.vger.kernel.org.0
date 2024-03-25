Return-Path: <linux-man+bounces-689-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E33088A5A5
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 16:02:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E6AA1C3C319
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 15:02:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8281C1494B8;
	Mon, 25 Mar 2024 12:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ku0hEYIQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EB0142E62
	for <linux-man@vger.kernel.org>; Mon, 25 Mar 2024 12:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711368462; cv=none; b=T4VN6dZkzkTjtYL1Gv3dJzPjgbJpqi4NErJS3UysY8/aDyof5IOjVX8W0LVFoSU62odGgZUtLexMbY46G3h2KnIg8+jITiYaqlduKfRA4pXAvTqPVmT/czfsRiVyOg1PGbTCgMlisqLwzG3bM3aUFWUTPMikeAdE8BNLlm6yFhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711368462; c=relaxed/simple;
	bh=rEyPunnM/LOgaIMlBpAi99z/qEXokmxjdUybiUFS16U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E0pkKEolf9gyn1nZKjQVRagXgGga/31AWvwiLdCfBjoKl60Tkfs4lide6q8Ex4Hx2vq4XcCLI93pDoovAvkRvYho5APrDrWaUJXAcj/JDfeVfOe5HtfehMHFUS3ysCBwXdhIIXC8naU9Se4/oNonlK9/Kr+/xpDRYPmZ7BJdpNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ku0hEYIQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFD57C433F1;
	Mon, 25 Mar 2024 12:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711368461;
	bh=rEyPunnM/LOgaIMlBpAi99z/qEXokmxjdUybiUFS16U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ku0hEYIQ7gMJs2JIr/j+TujdN3aqYQclSscJRuxCEd5EA1Ates9a1IicQJUgPaxOj
	 9QY7z2MHbF7D+99xOaCRgbYkFP9kBYdEM9y8C1mAZlIHSune9ETDJa1/A/acyu0T/K
	 oOgzzdMNQYJlczer293XkFaizrQ89bX6fMQRUixS1EFcFuLnWGYCgYV5j1Q/PBBLFc
	 fohe196ZgTIESxhADf22lY8jlLOmRlvWfWcvPln4fYfy8hJlT1KAVB4Knz4YQDGH11
	 xafYGQo15214m/JxobtUlJ2lhb4X33Y/sPjk1bU3RrJ7zyZsiiFzUIRk8oUFrPnf9E
	 +5/0QcDABDX3g==
Date: Mon, 25 Mar 2024 13:07:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: Re: man-pages PDF book: fonts
Message-ID: <ZgFpCkCcwxMzsOcw@debian>
References: <Zf3BRmfTFvADOIBG@debian>
 <20240325041954.fofjtgghwhe4znm6@illithid>
 <ZgFioIO94vFupB53@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Guun+5XO5z9Ikef6"
Content-Disposition: inline
In-Reply-To: <ZgFioIO94vFupB53@debian>


--Guun+5XO5z9Ikef6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 Mar 2024 13:07:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: Re: man-pages PDF book: fonts

Hi Branden,

On Mon, Mar 25, 2024 at 12:40:07PM +0100, Alejandro Colomar wrote:
> > The grops(1) and gropdf(1) man pages in groff 1.23.0 discuss using this
> > tool to prepare fonts so that groff can read them.
>=20
> Hmmm, so I could add a Makefile target to produce this .pfa font from
> the packaged .pfb one, and then get gropdf(1) to use this one.  --Using
> a Makefile pays for itself.--  The process is fast, it seems.
>=20
> $ time pfbtops \
> 	/usr/share/texlive/texmf-dist/fonts/type1/google/tinos/Tinos.pfb \
> | wc -l
> 19570
>=20
> real	0m0.012s
> user	0m0.015s
> sys	0m0.001s
>=20
> I'll try it.  This should remove a gigantic file from the project
> repository.  Thanks!  =3D)

I'm a bit worried that with the font regenerated from the packaged one
and pfbtops(1) I get a lot more warnings.  The PDF still seems okay at
first glance, but I'm not sure if there's something wrong with what I'm
doing:


$ pfbtops \
	/usr/share/texlive/texmf-dist/fonts/type1/google/tinos/Tinos.pfb \
	>scripts/LinuxManBook/devpdf/Tinos.pfa ;
$ make build-man -j24 >/dev/null;
$ make build-pdf-book |& wc -l;
1349
$ git stash;
Saved working directory and index state WIP on contrib: 49e6388bb share/mk/=
: srcfix
$ rm .tmp/man-pages-*.pdf;
$ make build-pdf-book |& wc -l;
260


Maybe I also need to regenerate the TINOR file?  And how do I regenerate
that one, and what's its source?

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--Guun+5XO5z9Ikef6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYBaQoACgkQnowa+77/
2zJOcRAAnmbkMK88gCo8Vvn3WRjgnTAVJT2zf0AY/b30SnS54qw00vAQKIGXMyiv
WWtoIeP0h2vBUdrCOE6FiAFd+t6Xt5KGKbI7UqjBQHKzA/+tN3nJUckauqH0oN4I
qljtlaoTWRKnW2WrJhfD0WfK780i+hcM2ZCUqZWRQtWq/HkIp4KQ470TV4G7EauM
Ex8+em4k/YwlcR1AdGkyCuyKQf1TVtljFXCZDFYofM9mY2zAKL5ZaDQgBiq3jq22
5wOP+bqXD0K0cBnAQ1tKK9xO9GGpbrC5mMoa4egZkXPJoAhJ4uJoQFyPSmYfFcVM
L61EssmLfABNNj9Q15T7q32z3JlIaIlj84ZOpwVpqIQDJNMRXuyeGGZ6tEPmsm+N
xJMLzm7uKNGV2Ggzms84DBCNwZ2ycf8LNGMa3v2b4ttFbE5O3iNi8odeOP6nBRO6
bcRJ+J0z7rISQ02IrsCYBO/zxza/+XEoAdd9aDnfOcKQ5T4hRTIPvF618dYOD3YL
/1iQV9zhptNoh9bf5qNGi65fq0q+/4nWcjQgNDoM3kRh13k+HuxVsPe+U6UJ+gUK
sgzJ5M0qTZ5W4htQI85B63hO/Dr6Zf57+rRKKSQyrmqacoX4MrY7kX5RWWCJ1pMw
qHIKqi2E6LtVYTcuquitWFaZrTcN/kL/YAPEb36GQTlYNNRIszw=
=KvkZ
-----END PGP SIGNATURE-----

--Guun+5XO5z9Ikef6--

