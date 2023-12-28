Return-Path: <linux-man+bounces-312-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C5081FB24
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 21:12:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9DFA2864E1
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 20:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0356101F3;
	Thu, 28 Dec 2023 20:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0bbzzHn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B200012B95
	for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 20:10:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86B8AC433C7;
	Thu, 28 Dec 2023 20:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703794218;
	bh=NFDpneE9OficjyWqbz4IZOBlc9FUH4sPSv0tPJSh/mA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O0bbzzHnM4NRkbZfwPf/+SWBVWXa0EgUivTbEHYlWoPvR5cotqAbKY+Du+j6Kqoli
	 oltP0XbW6b0hGmJoNGgJI4E2dPIwA+mcK++SI2Lg/55NTurdxhYWp7nA/5bZLTv2VA
	 Q9AGl9Tvn7PJrEec6MZTe3GhIieB9MdZGrRbrrA3jz79CJV0X72Wo+LvDEjIXyGoDz
	 PkboMrFgxJ7DyKiruo8boYBTc2tlLXYkREoTbvY0dPk0qgSsNNmVKMiSmHT8kVMLJ1
	 mb2ttEjdPBVJKBVZlDltY9zrQbcgA4celVteNmAEiqRtFCP62/Lnh02jo7+R4VGcx3
	 h5sZRFf2FQSOQ==
Date: Thu, 28 Dec 2023 21:10:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] stdio.3: note down fmemopen(3), fopencookie(3), and
 open_[w]memstream(3)
Message-ID: <ZY3WJ0UOM4nPEsQZ@debian>
References: <owwpm3vgvq3sme3ev4poriwqcokscunppxu4rj2t5lmxzrc7vn@tarta.nabijaczleweli.xyz>
 <nn6xod4zdcimrh2pbhng4n7ff4x6g3pfjyb6u24swkno7thzx4@tarta.nabijaczleweli.xyz>
 <ZY3HJ6w-rfG4MpgJ@debian>
 <sbwbc5fmppc77kqnzjmvxl57ke76lqoagn4c3o7chezt5b4rzd@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hkPg3bG3FwPyVSGo"
Content-Disposition: inline
In-Reply-To: <sbwbc5fmppc77kqnzjmvxl57ke76lqoagn4c3o7chezt5b4rzd@tarta.nabijaczleweli.xyz>


--hkPg3bG3FwPyVSGo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 Dec 2023 21:10:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] stdio.3: note down fmemopen(3), fopencookie(3), and
 open_[w]memstream(3)

On Thu, Dec 28, 2023 at 08:28:22PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> On Thu, Dec 28, 2023 at 08:06:14PM +0100, Alejandro Colomar wrote:
> > On Tue, Dec 26, 2023 at 05:03:37PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > Why use opening here, but open everywhere else?
> These are the NAMEs verbatim, like the fopen entry:

Makes sense.  Would you mind fixing the NAMEs too in another patch?  :-)

Cheers,
Alex

>   $ grep -A1 NAME man3/{fopen,fopencookie,fmemopen,open_memstream}.3
>   man3/fopen.3:.SH NAME
>   man3/fopen.3-fopen, fdopen, freopen \- stream open functions
>   --
>   man3/fopencookie.3:.SH NAME
>   man3/fopencookie.3-fopencookie \- opening a custom stream
>   --
>   man3/fmemopen.3:.SH NAME
>   man3/fmemopen.3-fmemopen \-  open memory as stream
>   --
>   man3/open_memstream.3:.SH NAME
>   man3/open_memstream.3-open_memstream, open_wmemstream \- open a dynamic=
 memory buffer stream



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--hkPg3bG3FwPyVSGo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWN1icACgkQnowa+77/
2zKK2BAAks93AyjGrF9lZ22/9AXkdtRt5XQVYQsQQOpqV0OlgDQutA1GM7S+IfrF
6o67f3X/1FpsmiAbPUznqfbYAPnlDmKIQy16pUE7HzD0C8sxM5n1+EZkTKusUKbo
+ut4+uX1l5kW/HlXVq9yIGgtkF75uAO1vfbIAVKix4rfDB/aUkdfbp2BUCZIV5Jb
/7BgWt1J5oo18Cacu8LzjJprcjHxmULM7fV903q32RBm8edVTHFV0q37WR+Qmlsr
FxhvAZ6HQVG3tHNIMfDBNIzPYDa/g0KCPuRl6Eow/oX3l74WWdQH8H5Cis06kxWB
HuNACI2LqiJh2SDU0rp8DKMNzr+wsFpCq/IhNS8sKto+w7E+4Ov8nYu30NjyoZ6s
Ks53v+ztcKZjhFp/erHAvCJeoUOcHqqJQ8N9q9aKfqHDqK1BLaEj6EH6wje0fX98
PZvNamnYmyiacRB2jMf5V0xQ/8cmGOJIWy2DWnlRbxS5vqmobnMiBJBwnrIBDna8
cdHqajH9XKd44w1E/m1zn+aqniTDmeARIR+fKbVsZPasowzsTOpjWo/8sdlzxZDH
W6nYT+9zxAFE9jyigfKLhGaayaBJrPVDLUi1DA+ofrdmtfa41LFRc3PmlRHSU3mO
X4SrwFnMRzRXD0b6NDhrehojWQuIKIGV2cqadGTyvrCFwN5njV8=
=MAYg
-----END PGP SIGNATURE-----

--hkPg3bG3FwPyVSGo--

