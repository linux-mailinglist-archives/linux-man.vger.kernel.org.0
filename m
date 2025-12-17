Return-Path: <linux-man+bounces-4441-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C5ACC9821
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 21:40:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51F6D3008EB2
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 20:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08B8530B514;
	Wed, 17 Dec 2025 20:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzcSdrnU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8DEB30AD1D
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 20:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766004020; cv=none; b=lkdLcjnrrrlvteWG60ebNBklCLhvtqMjSO6lBepEzNvKK29lHy+SbU5+ORt0+iRp/bRz//U45SteUlc0spbwmOdQaC/nl9yX5QCpcYis9zExHBX7/zflDBdwhih+xkhg9WJonAH4tLnJs10k1CogoElKOK+4z0kJeLNVOeddcTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766004020; c=relaxed/simple;
	bh=Kgsj0m7K9SbTRviuJzfcba/oat2uI/iJZeCcAI4ChWc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ojNhE3G/BGxyUGid2WwWnkKUVo2vN/5bNbB4fyBrZII0QdKQM6IMaCb7z1ZlSNLGKnXDhU0kVfr+CcwwQujf1IaeLzyGK4bA5usnMRDzEIEh8PyG5dqeJS57QoSc91YKwrRqV3G2vXOFANJfRfxMT/Pbxu84oXGxjC7UPsdvAC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzcSdrnU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CE3FC4CEF5;
	Wed, 17 Dec 2025 20:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766004020;
	bh=Kgsj0m7K9SbTRviuJzfcba/oat2uI/iJZeCcAI4ChWc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qzcSdrnUlfy4BCu21xUSlkvg+yaJZ/B9Hgov09Hf9crTg+iasVfTqpZUsGZIaLX7P
	 J+mU0K75VFILU/JtnLl959alBpwIU4sCEX5QsbgwFdEzr/T2OabFuRzLzISgitMAMX
	 vRRKYhHXWDvWKlYqaUdMV2I6WXj5GNIfw8sqA7BGoV0vNFLibXYw4rx7Y0rWk/lCML
	 zS3GBGZIY/Th3pi8nO2AaPjxQ8cf+GlwVMt2nWeQkKWBBvj67DjLO0NYX3/5mUvWIy
	 tpIpqokERiOt0fO1LkrO3NOSMu42/x/LyIuI+nWk3XMmL42iQgWRHCmwa1yH/vgdO1
	 mLK94qSmvHkRA==
Date: Wed, 17 Dec 2025 21:40:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, Paul Floyd <pjfloyd@wanadoo.fr>, 
	John Scott <jscott@posteo.net>, misc@openbsd.org, Martin Sebor <msebor@gmail.com>
Subject: Re: [PATCH v3 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <yezclqq2zweqf6tatvq7mrs7tuamoidfe6bakxmw7fi4ybqjis@jaby7xhfbyq7>
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1765979316.git.alx@kernel.org>
 <6ed874153c52cc3f44e37a7c42ba4c69555e04f4.1765979316.git.alx@kernel.org>
 <CACGkJdtOfDcJ=xLu==7FBav8o0TMgRNwNVx3CZQA7H5wgsaEjA@mail.gmail.com>
 <CACGkJdtg9GhOjkqKspKRscebpyAA87=zTJzcZEYYGW5pr-uLtQ@mail.gmail.com>
 <qn2fq7uklis5vwvcnsla5gfrariqcezeapfq5a7kd5kqfdcjkj@6cm3luja7oed>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y7cx7pl4gpuzhfg5"
Content-Disposition: inline
In-Reply-To: <qn2fq7uklis5vwvcnsla5gfrariqcezeapfq5a7kd5kqfdcjkj@6cm3luja7oed>


--y7cx7pl4gpuzhfg5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, Paul Floyd <pjfloyd@wanadoo.fr>, 
	John Scott <jscott@posteo.net>, misc@openbsd.org, Martin Sebor <msebor@gmail.com>
Subject: Re: [PATCH v3 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <yezclqq2zweqf6tatvq7mrs7tuamoidfe6bakxmw7fi4ybqjis@jaby7xhfbyq7>
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1765979316.git.alx@kernel.org>
 <6ed874153c52cc3f44e37a7c42ba4c69555e04f4.1765979316.git.alx@kernel.org>
 <CACGkJdtOfDcJ=xLu==7FBav8o0TMgRNwNVx3CZQA7H5wgsaEjA@mail.gmail.com>
 <CACGkJdtg9GhOjkqKspKRscebpyAA87=zTJzcZEYYGW5pr-uLtQ@mail.gmail.com>
 <qn2fq7uklis5vwvcnsla5gfrariqcezeapfq5a7kd5kqfdcjkj@6cm3luja7oed>
MIME-Version: 1.0
In-Reply-To: <qn2fq7uklis5vwvcnsla5gfrariqcezeapfq5a7kd5kqfdcjkj@6cm3luja7oed>

Hi Eugene,

On Wed, Dec 17, 2025 at 06:05:53PM +0100, Alejandro Colomar wrote:
> Let's see if I'm following:
>=20
> C11 (or at least, the draft that I know of, which is n1570) has two
> cases of UB for aligned_alloc(3):
>=20
> -  size is not multiple of alignment
> -  alignment is unsupported (often, this means not a power of two)
>=20
> <https://port70.net/~nsz/c/c11/n1570.html#7.22.3.1p2>
>=20
> DR460 (2014) reported both cases of UB, and fixed them with a TC.
>=20
> <https://www.open-std.org/jtc1/sc22/wg14/www/docs/summary.htm#dr_460>
>=20
> N2072 (2016) reported that the restriction that the size is not a
> multiple of alignment is superfluous, and fixed it with a TC.
>=20
> <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n2072.htm>
>=20
> C17 (or at least, the draft that I know of, which is n2176) is the first
> standard that incorporates both DR460 and N2076.
>=20
> While C17 is a different standard, it is actually a bugfix release, and
> both DR460 and N2072 are meant to retroactively affect C11, so all
> conforming implementations of C11 should in fact be conforming to C17
> and not C11.  However, OpenBSD conforms to C11+DR460, but not C17.
> From what you said, FreeBSD seems to conform to C17, but it claims to
> conform to C11.
>=20
> Please correct me if I'm wrong.

I've written the following draft for the next revision of this patch.
This time, I've included all of this information in the manual page.

	HISTORY
	     glibc 2.16.  C11, POSIX.1=E2=80=902024.

	   C11
	     In C11, the specification of this function had several is=E2=80=90
	     sues.

	     =E2=80=A2  size had to be a multiple of alignment.  Otherwise, the
		behavior was undefined.

		Some implementations still implement that  restriction,
		or claim to have it.

		OpenBSD
		       The  function  reports an error if this restric=E2=80=90
		       tion is violated.

		FreeBSD
		jemalloc
		       The documentation claims to have  this  restric=E2=80=90
		       tion,  but the implementation works correctly if
		       it is violated.

	     =E2=80=A2  If alignment was not a power of two, the  behavior  was
		undefined.

	     No  known implementations ever exploited these cases of UB
	     in a dangerous way.  They were only theoretical UB.   Pro=E2=80=90
	     grammers should expect unnecessary failures in some imple=E2=80=90
	     mentations, but nothing worrying.

	     In 2014, DR460 transformed both cases of UB into failures.

	     Later,  in  2016,  N2072 removed the restriction that size
	     had to be multiple of alignment.

	     The following revision of the standard, C17,  incorporated
	     both of these changes, resulting in the current specifica=E2=80=90
	     tion.

Does this sound good?


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--y7cx7pl4gpuzhfg5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlDFSEACgkQ64mZXMKQ
wqmPOxAAuADoD/fR1tqU8R/ZVTV+ZwnskWGfMpHEzC0/YUa9NcZ5vmnJZCblctVF
0Vfu+8sVrCPB4nwCauk9Pyy1qG/dfuhj6RvfRNZ5hKF2evoiLEcPIPORoo862f0l
xWUizVVuR+HAj9S9JJtYAKtmRGcRr/y76SoiE/YNjKHRtSQiSN3bnjq+As0mUJdg
lJyp4oz1ot08Gs0PJGUdkEhLV3K66/6d9GdJ0Uhn13ECTvJmeMSCoPFeYHGHlu5t
nAlzeHIbmj1CUxg6enTCBPm4YrwS8NhF7B3gAMDTnjcqECYJjdCQr1FTtbqPEX5H
C6vp7IdJlwNCPPwT4KNjIJVRtg8Hg+rh8WAbskskxG69gjfUYgu1/S9rk+4c+CHa
4cufkjinIJ2RzP/iQw4gArgPkIdOq/MMja+y392qOugqGokxXadYYLWuEf79sWFr
Sh7o49W/w/eiFyRB/zrAbDjrt8ZvKvyqF1/WWUmOr1S8PlrEmrlUAO8bwvrFM4/Y
DXxzuzVMeuHN123a/rmudnVNi8OWhc0yu/wWvbhZ+MzEHgRzW0VLYrH1m9uiXmK6
SKJjntI962PgnLZAmN7s6yiibYxRmoIcvugTklta/GugxE6jFgirv/2VsUpGbctu
p1KnrtN/Q5f+wjP/3x2u5nnGgON/w5PhqvNQ7OG9n68K9KPIDeI=
=8IfG
-----END PGP SIGNATURE-----

--y7cx7pl4gpuzhfg5--

