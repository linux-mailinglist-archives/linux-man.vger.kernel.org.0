Return-Path: <linux-man+bounces-789-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE3F8ABB7F
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 14:06:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A12F1F2130F
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 12:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4F4C2746A;
	Sat, 20 Apr 2024 12:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+8nRNzg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BD5205E3A
	for <linux-man@vger.kernel.org>; Sat, 20 Apr 2024 12:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713614771; cv=none; b=cgJWRggm+2Jr7KmsflTzpK1KM5LhwwwOR2O3NHOL/mDzQLfoTU4fjx3xhDgUMASpzqGnlP/JCsM9ozA0MEaWnjhC0yl4C1hG8PsLwc7TdNx9UKDeF5Y+SvkQUbuiKxsUmdP3QQQwGGBywbgMWC446O2yFQn5DUexm7fkVPCnzUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713614771; c=relaxed/simple;
	bh=XbiPQmtlJ4XtpTL4F4rqWuMCKaECapEIYhX+0jwQXjo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ocZT8ovwAPBLPjxjwfiBy2s+C95Bxem0sgcjSgPKkjx562XI/LH6eg9ds8TNAezLK9c24APd05Guds3pBoBc/VYPZR99P41STG6OArjyxpHvfrVZiBxmZSwv+L+KnOlsycXBvm7bN0TgJ21nu6UnOJcl4QV9ML0yKXgNorojyRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+8nRNzg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59CA3C072AA;
	Sat, 20 Apr 2024 12:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713614771;
	bh=XbiPQmtlJ4XtpTL4F4rqWuMCKaECapEIYhX+0jwQXjo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q+8nRNzgrFVxdYYo9OPa1PiFEDailiYBCt7gVByCdQimDfczIVv2hVokoDn4eq/tZ
	 MpGnN5f5jmNvl2U1ybs+sSx/YYxTeaLAYzTKAEYdYIEV1OzgB61ofABRyNWEoj8BUm
	 MeNFTwxGUZAP/26dbKMACF6zvDpqEiuzAmbWZXt4OhkXBWk6MnacLFfc6Tqeb0NXrM
	 4TMdHxu70gbK335jhcdbgwHHe8xMM7lZXS1ImX75WrIz5jHzYn//B1HUuau4MqPyD3
	 JOUdNSEFNuDV52nUUQqPF/4CKizvu3gQsJtUr+EYfyI+DDJDcaqq0Yyh6mDE0LNRZS
	 KifFOJizftrUw==
Date: Sat, 20 Apr 2024 14:06:07 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: branden@debian.org, deri@chuzzlewit.myzen.co.uk
Subject: Re: man-pages PDF book: fonts
Message-ID: <ZiOvsLhqU2IxibuH@debian>
References: <20240325041954.fofjtgghwhe4znm6@illithid>
 <47bb0480-0d74-4509-b55a-b460c460e843@SystematicSW.ab.ca>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Z4CU6PJIFmySI4gZ"
Content-Disposition: inline
In-Reply-To: <47bb0480-0d74-4509-b55a-b460c460e843@SystematicSW.ab.ca>


--Z4CU6PJIFmySI4gZ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 20 Apr 2024 14:06:07 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: branden@debian.org, deri@chuzzlewit.myzen.co.uk
Subject: Re: man-pages PDF book: fonts

Hi Brian,

On Tue, Mar 26, 2024 at 12:10:00PM -0600, Brian Inglis wrote:
> On Sun, Mar 24, 2024 at 11:19:54PM -0500, G. Branden Robinson wrote:
> > At 2024-03-22T18:35:02+0100, Alejandro Colomar wrote:
>=20
> Hi Branden, Alex,

Sorry for answering so late.  I've been very frustrated by not
understanding most of what I was being told.  Now that I have something
working with the Tinos, and that I understand how it works, I feel able
to understand this email of yours.

> > > I see that Debian provides the Tinos font in some package:
> ...
> > > Can we similarly get the Unifont for zh_CN PDFs?
>=20
> You can check what you have installed using fontconfig utilities e.g.
> `fc-list :lang=3Dzh` or Unicode points `fc-list :charset=3Dcode,beg-end,.=
=2E.` and
> disregarding other "complete" fallback fonts like Unifont,
> UnicodeBMPFallback, LastResort, I find I have DroidSansFallBack which I c=
an
> investigate further as shown below.
>=20
> A condensed list of code point ranges can be shown on a single line with
> `fc-list -f, --format 'FORMAT'` below, but include the file name, as
> sometimes the font configuration matches fonts other than requested or
> expected.
>=20
> Fontconfig `fc-query file` shows the same information for font files (whi=
ch
> need not be installed), as shown at bottom.
>=20
> The charset dump is in lines of 256 codes, 20 per word, in big-endian? or=
der.
>=20
> Using option `fc-query -b` and avoiding `fc-list -v` skip the charset dum=
p,
> or specifying the charset element shows all ranges on a single line!
>=20
> TeXlive otfinfo options allow selective dumping of info including -u,
> --unicode but appears only to handle the first 64K BMP U+0000..U+FFFF.
>=20
> Python package fonttools ttx can show info including cmap table as XML .t=
tx
> files, but defaults output to the font directory, so if using installed f=
ont
> paths, add `-d .` or `-o font.ttx` to avoid accidents if root!
>=20
> You can also view a font in the GUI `xfd -fa DroidSansFallback`: jump with
> the [+16] button, scroll with the [Next] button; these seem to skip missi=
ng
> code points, but the display shows boxes in missing positions in the
> displayed range.
>=20
> Tinos is a Google replacement for Windows Times New Roman, and seems to be
> part of the Google Noto collection of font packages, which includes
> "compatible" noto-cjk packages, and that/they should include those shown =
at:
>=20
> 	https://fonts.google.com/?query=3Dchinese
>=20
> where you can browse each individually to access the "Get Font" then
> "Download all" [weights/variants] buttons.
>=20
> As Tinos is a serif style, Noto [NO TOfu] Serif Simplified Chinese may ma=
tch
> the style and meet your needs.
>=20
> Of course, you then have to groff_font-ize the downloaded and installed f=
ont.

Hmmm, and that font comes in the same texlive-fonts-extra and
texlive-fonts-extra-links Debian packages, which is nice.  That'll make
it easier to get working than the Unifont, with which I'm having
problems at the moment.

I'll get the Noto font working in a moment.

I still think I may need the Unifont (or something else) for a few rare
characters that have been giving me warnings, but this will definitely
help.

I'll also later report the problems I get with Unifont, since I suppose
I'm doing something wrong.

>=20
> > As I understand it, GNU Unifont is a low-resolution bitmap font intended
> > for terminal emulators.[2] I expect it would look offensively bad when
> > typeset.
>=20
> Unifoundry.com GNU Unifont by Paul Hardy, Roman Czyborra, et.al. is an
> OpenType font, without combination form glyphs, redrawn based on bitmaps =
and
> not too bad, compared to e.g. DroidSansFallback which has a lot of tofu,
> especially for those of us who do not know what the glyphs should look li=
ke,
> and just want fallbacks to display everything without mojibake,
> UnicodeBMPFallback hex, LastResort range glyphs, or .notdef tofu.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--Z4CU6PJIFmySI4gZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYjr68ACgkQnowa+77/
2zIgag/5AVdC7tPeU5C/MvQWcTEV7Hzeeq63zxZPA7CNTslgf56msyesj73o1JKX
MChtRTfYNs+TM/TZFM3Oy0KfLuTmCrG9v9SUKaaITtEV2mHpLQ8X796fDn4xKK4j
qaFcJ7RFUbmxaLNS6hzjVwRfKP25rYBrG6W8fxverHwwa8oq8njEjrtD/jWdUCkZ
Po44jwoHHkr2AhxTOA6SOylAnQkjQaEppRYv1A8CACLLWnAINrSqdnHEnih0mhXs
sWeI8/GvcciPXWN8eE2hJU5NROX9gIBJXzQNsHd/YFOoEXlxIXF9zSZMVxgt6mkR
jZiVkD9wSPLZSIBgsPmsQLTlDVbeg/Ri7R1Ogu8MqKV4I9Pl8ZoEgGwMhpGt05oe
CY9vBpRQM+9rEecl9oPLDf19Lp/U5bZjX+yV8/Dzj6G4xMXWTDO4shQk8/yK7lY/
glQh2eHw62DJZ+LsQSKJcE3mibYSarfSLL2Z1+VflgxCow6I5EwOnOt1T+e/Kzcw
XMz1nz78noEt7TwnJdAgB/jI8XmJqLzOH2HETQemBDrYbCmX2j2ZCH2Dhj0fR8z3
ZUtKaDw1a+SJac985bbSUvvfZKbhNllGkseSL+KM0PR37N9Un7v3ueKQsKaSBaFf
tfM/C5N1pe5Bxr4jk0pC9G2Ynfj7Za4sK9FBgqt6e74a75ESIno=
=hhxa
-----END PGP SIGNATURE-----

--Z4CU6PJIFmySI4gZ--

