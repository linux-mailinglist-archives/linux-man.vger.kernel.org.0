Return-Path: <linux-man+bounces-118-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 826087F2180
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 00:39:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 337942826E6
	for <lists+linux-man@lfdr.de>; Mon, 20 Nov 2023 23:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 828FD3B2A7;
	Mon, 20 Nov 2023 23:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/8GlR8C"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434CA3B29C
	for <linux-man@vger.kernel.org>; Mon, 20 Nov 2023 23:39:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8ADCC433C7;
	Mon, 20 Nov 2023 23:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700523563;
	bh=/kj0NNW0xVOR5KrLzcgPE1xJ50lUA/vhKdrD5A5uK70=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X/8GlR8C33O+E72Yi/vbDt01AvupWv/gN6YGWlrB/uAHgQYakWPBDFwEIhsrPcBdp
	 ziOT7TS3p9DLBVsQnjzZp12Mt/8kktJ36Hz+agc69at4yYbP4jZKBhrS6sNe93/Zib
	 zktnbnFbDrMP4N/LV5kZlg9T/N1jerLSSNMb5IqJV9bw7HJ8gAI36yE93CfgPbeHkX
	 D0tX91v6BqUtqGoCsF9Znf40Jy0oCC4uzAGTzraUwBcQ1W2KNJVBeHENk4oJ0R98qA
	 f9wQd+0xfY59dKwYReI8oxiGFYdHFbsiC+TFe++m+UcrAh5uTaNMdQbZnKSE6yBX72
	 yhtAjzdh1iG0g==
Date: Tue, 21 Nov 2023 00:42:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>,
	Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZVvu_L_OtG_wp-aY@devuan>
References: <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu>
 <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
 <ebccf5c0-f125-4eb9-8820-e71e77f4f7ed@jguk.org>
 <ZU4s6Vm-jBjFCcJ2@debian>
 <66296bd3-9918-4dd1-8570-bccfbfd85239@jguk.org>
 <317576b1-a2cd-4f23-84d7-830c242d7e86@jguk.org>
 <ZVt3U_muGCT4mk5v@devuan>
 <24ade47a-a9b5-4be6-a322-babc0543f4bd@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FWkUdlhtiod43To0"
Content-Disposition: inline
In-Reply-To: <24ade47a-a9b5-4be6-a322-babc0543f4bd@jguk.org>


--FWkUdlhtiod43To0
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 21 Nov 2023 00:42:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>,
	Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Jonny,

On Mon, Nov 20, 2023 at 11:08:58PM +0000, Jonny Grant wrote:
> > I discussed with Martin about this, IIRC, and he told me they had to
> > decide which use of strncpy(3) to support, with the side effect that
> > other uses would be warned about, and they chose the one that I think is
> > bogus.
>=20
> Fair enough.

To be fair with Martin and GCC, the uses of strncpy(3) that I consider
correct are so trivial that those warnings are unnecessary, since one
should always use sizeof(dst) in the call, which can be done by a
wrapper macro

	#define STRNCPY(dst, src)  strncpy(dst, src, nitems(dst))

which is precisely what I did in shadow-utils.  With this, the chances
of getting the size wrong are 0, so I'd just turn off those warnings.

Since strncpy(3) should always be used for writing to a fixed-size
array, it's likely to be an actual array, of which you can take the
size with nitems().  At least in shadow-utils, all calls have been
replaced by that macro.  I'm curious if all uses are similarly trivial
in tar(1).

So if this warning helps those who misuse strncpy(3) to at least misuse
it safely, then it's a partially-good thing.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--FWkUdlhtiod43To0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVb7vwACgkQnowa+77/
2zKl6A//WbnTVgjlY+DyRgL1bU78v+2AjQRJjHZ/yllP5tfHR84cHo6TTFqvH5bS
iqxq8PXx+K30rIDCoZALmHofL4+2EUdwvh0F1L9L18YQjenSkmZIzc39eq3P+InR
drG9IIbZ1MYNeb32WW/5KUzbvx6cjJHbUZy3uAf5Pf8DSIzC0hrl8Kh3qBa2UwDf
jV2tcFNMEPsukx21GhELLEpA5UNCJzd662OtEL41WpJxUDhmh1bAsXR5FFJisnOF
mMfRaWIvS9MiHmhdlWEZIrFNPo/zfh0dsSOKL0OJ2p6NC+5GsKBwLua/Laeih59L
Ccgmv3ERUEk5+K6j+JEocko3/HbkQ8pcP4GhMjCqWi0UV0aoF+s9CbVHK3BvCCxh
3n5fO00hIvBEIAKvytUArHtkEXgoFhWFRY4ibQ+b9PKZ44HOcNFrVcDgpfAwoT0/
yZcWOtEFdOQDVFMlOrBekqPaDTjbSToWYSfIGHvO3zj+J2fmZcogkyUvpozOKWbg
zJHn/Qjn2TgkdT7WIb653/EFHnB2hMqpt4CXyDVMlAOh0tpC54ZSuXUSODl8+8C/
k3mgzY8ZW1e9wTM0suqGkizb5g3TDZyRory155hyfns4bpeSNiVoE2M0Rp/pU/CH
PgNhdwkzKSXXEdkIJpDivFuy1Xq6dIFLF+nn2+EmyRJqHZ1zx3k=
=0Wuf
-----END PGP SIGNATURE-----

--FWkUdlhtiod43To0--

