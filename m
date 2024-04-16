Return-Path: <linux-man+bounces-767-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C598A611B
	for <lists+linux-man@lfdr.de>; Tue, 16 Apr 2024 04:43:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA2F11F22732
	for <lists+linux-man@lfdr.de>; Tue, 16 Apr 2024 02:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B04A5D512;
	Tue, 16 Apr 2024 02:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2TPgkS3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716EA8485
	for <linux-man@vger.kernel.org>; Tue, 16 Apr 2024 02:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713235381; cv=none; b=QkFE1Pku25WWccjoAVwPfA9kORCUMHyQg5xSZvtC+M1eq9u5PNWi3US6VqGh+OcYRk6a9OezGnpnO3Jz7hAhAGpG8y5l4h+6GSZMkr+2FTw+rYyiZ72V+CaKmshWR050cWDqOP6ftfM0th98ekaKjLzzIy+OV/xB8bK5VhraahQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713235381; c=relaxed/simple;
	bh=XGOjrO564IxIaY9qoZOyn0dt69S2S+C0c4GzGt/+Drg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RiEmVAD20x/slaxX6efvodtu1/92AnQ4BxDMqOXuNu9RI4v7XlbuYuAyQLaNS8EmJSbXeLD01RSS7JHkbYJr3gQ9afT0sYSni5XIeS9Xyj1GWBWvqeOeX728cR0Z275E8AcKf7xa0PuvqlqEVgPkpxHb/c/n7bJzmuMR5u691DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2TPgkS3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D1F3C113CC;
	Tue, 16 Apr 2024 02:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713235381;
	bh=XGOjrO564IxIaY9qoZOyn0dt69S2S+C0c4GzGt/+Drg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V2TPgkS3KUzo6jjTFwvxpnnFRKubpWfxrdVrQjRcOJ149EQMfdhjbLFqIKBju6wOZ
	 v/WfVK4O8BRFhjUv0Z8qr/iWC/idshC61Vxx4y0i85f9cbW5NQOeGqcS+yK4q7er6D
	 HayByi4YTsScWyFsquTLf0FScLLMXdjf8QFpDI7gLt/KUrZ51ijsZ/lcQdvptuONBL
	 4fBgLR2/A3MZ0eM5GYIl+Ac2TFHqq+9ISSDIo2kh+HDMAloNMtIs2vFcrnNM0PQb5y
	 FHfTKRAfa4l3hup8J8iw+4CGuDAEu2TT9J/5hyeyFtEEq5ra8TmuJ8eP4SPadO6raI
	 H3uC8VSEtXorA==
Date: Tue, 16 Apr 2024 04:42:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <Zh3lryFtCbbnUvaV@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
 <20240414120145.xa5sryqprufsvhqi@illithid>
 <ZhvLPvqHzpw2Jl3o@debian>
 <3935722.768hzMJKAL@pip>
 <Zh3OKsBl0SyyR1f9@debian>
 <20240416020822.tsrgfu5dr2dlskbr@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wRfvreuAlWBPYa84"
Content-Disposition: inline
In-Reply-To: <20240416020822.tsrgfu5dr2dlskbr@illithid>


--wRfvreuAlWBPYa84
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Apr 2024 04:42:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

Hi Branden,

On Mon, Apr 15, 2024 at 09:08:22PM -0500, G. Branden Robinson wrote:
> At 2024-04-16T03:02:28+0200, Alejandro Colomar wrote:
> > > > troff:<standard input>:1649: error: cannot load font 'TINOR' to
> > > > mark it as special
> > >=20
> > > Your _FONTSDIR must point to a directory which has a subdirectory
> > > called 'devpdf' which holds TINOR and UnifontM and a suitable
> > > 'download' file which gives the location of the actual .pf[ab] files
> > > (i.e. within texlive - no need to copy it). The difference,
> > > with/without, is in the number of glyphs not found messages.
> >=20
> > I also need to understand what's that TINOR file, what type of file it
> > is, and how I can get it.
>=20
> This, I can answer.  It is a device-independent troff font description
> file.  It is a plain text file in a format documented by Brian Kernighan
> originally in CSTR #97 in about 1982, then in the 1992 revision of CSTR
> #54, and of course also in the groff_font(5) man page.
>=20
> The reason for the font description file is that traditionally digital
> fonts were (1) restrictively licensed and (2) programs that used fonts
> often didn't need the fonts themselves, but just descriptions of what
> glyphs they contained and the dimensions ("metrics") of each glyph.  It
> is a rendering device that uses a digital font.  A typesetter (or
> graphical display system[1]) needs only to know the metrics of the
> glyphs to that it can position them appropriately relative to each
> other.
>=20
> This is why when PDF renderers substitute fonts, the result is often so
> terribly ugly.  The glyphs of the substituted font are placed in
> positions appropriate to a font that may have different metrics.  So
> they are crowded or spaced out weirdly, the kerning is off, and so on.

Thanks.  Althoguh this doesn't answer how I can get it in Debian.  And
now I also wonder if I really need this file.  groff(1) is reporting
warnings that it's not able to use it, and it all still works.  Maybe I
don't need it at all?

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--wRfvreuAlWBPYa84
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYd5a8ACgkQnowa+77/
2zLk8Q/+Jx69Jjd5/MturtI13exA3ElXD2+D5crZtmWpJ9CX5n8egb2PNESPJdbT
Yshc/pgY5S1a4xHvNH8wYHBumu3BtnKSnkChwKGdypFX8Bcyodov1vaJeXWNqNIS
sjSoIthdhJGzoa3Pb4acSyJFJkw3hgbF1F2PZHt6PiRKBuJpD+O7hl6MLcpGEhyL
F5wUlSsSvoCUp0D1AsEoiCJtlgZ7uB2ukGJ+fnYu9RJlFOyO1hJfJWdcrTXG4xSq
/gpijzPvlCxt/mLhHRYWMRsEyTOjY3A/q82yHm8VfBWvu+WQFp6PFyC9jfnzLAnD
zY3vc9X19rRoufKauzqt6ZVolBXnU78R/UKyAjgxEQOfRBers9nGP7Q6eLdWs7LS
hRC+UFt2IxCmw1yqYkoiCptmwJ+TbPhJEICOS1PL9N8K8BDLmwGF17vE6+L6kHUZ
HSPZOsBpzCCuqADO+n7dhJzXx7QdhbVH8ilgCTPrAqiknp9rlU+mjxHXWerAheWQ
bKa/J3eqgjhitIx7qRwhF8DdUHsBJ5zEtoHivuSwfAeNz4X1otDPMZhD+PTzCNK9
Y67RJFy4f1f45qm54PkJosBsqITwzXTpc+BH/+narZy/rsYqjsSVAdTWgl5w9sGF
/7LiV+XmoSXxS8Ieh3iNfp169gg043vgsl/vrTtAlgzr0OsN0EE=
=MMSm
-----END PGP SIGNATURE-----

--wRfvreuAlWBPYa84--

