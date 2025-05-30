Return-Path: <linux-man+bounces-3060-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F093AC8BDF
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 12:07:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D0CC500BCF
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 10:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F316224AFE;
	Fri, 30 May 2025 10:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pR7yAkIN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DC322489A;
	Fri, 30 May 2025 10:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748599556; cv=none; b=cBHee4O/D0GltfezleLjX9HuM0T0NPgZux+RMaKPA7HjxLrUrq4MnFhSqQFLzwFx60IOIdLeNPdbnyZmkGdj0q0d/i1YtKIqQr8rNSKlvXr1bwUVYaLM47FrAG8nFefZrceSAw3aIhuEfVk/RvPOACs1EnZFlsSAhWbZXmuFoUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748599556; c=relaxed/simple;
	bh=D1WgvYUKW8ksaG5Pikj6zSs+drhugqX9qh4QXjNVoFU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lnRbu5i3zWagWJbrIsrpjFHeoenPxDvKN0KVi+c/P9BZE4MUyuE5gY59BNCPLBcxZZ6c2+xHQgrKhmWX3zgYAcAcKaEqQISbOFqm/cgyGPt/e7yRU+TrFvonHQ5A9P2fOIvt26AeQcGb+z3rVA7fX9Y6Bh9WgzSA4eDAf5G9Ft0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pR7yAkIN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66646C4CEE9;
	Fri, 30 May 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748599555;
	bh=D1WgvYUKW8ksaG5Pikj6zSs+drhugqX9qh4QXjNVoFU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pR7yAkIN7ZdmvG8Cv2p/pXio7xoNSW2GBm8hc5ehHlo4uEAXQDqIH4ttRnYDLEuv0
	 VePQrM0fU3vD+mx3nfbBJXbmH+BvskVWH1/ePIp8svO/yD0vEcmfe+orWnpM5fcxce
	 1S0sN2K4aSDh/VvgxJ7+AA4v3MKJ0tyG+IVrV3SQGOd0f6prjMoSSRwIbhAXVoU8i2
	 hRvtJrcBJjN11lceUr/6ztiMF8RhUgoWsr5sSsM1HjWZT8vgXE7p3XpUdyrZCecC8u
	 ha6Ln6CatOn46R1Jy9bg6iMoo70b9XXiwfbtNtPN5yG6wEsyERgosBPbFUQ8xnIGil
	 mrLyDulnaktJg==
Date: Fri, 30 May 2025 12:05:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [[PATCH v3] 4/4] man/man2/prctl.2,
 PR_FUTEX_HASH_GET_IMMUTABLE.2const: Document PR_FUTEX_HASH_GET_IMMUTABLE
Message-ID: <2fbxkgkyvvldnux3w7sjcfmkf5t5aaalx7yd2kuoyk36ptvs6g@75m75juu4nd7>
References: <20250526155523.1382465-1-bigeasy@linutronix.de>
 <20250526155523.1382465-5-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="im2srhjtfbbf4ziv"
Content-Disposition: inline
In-Reply-To: <20250526155523.1382465-5-bigeasy@linutronix.de>


--im2srhjtfbbf4ziv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [[PATCH v3] 4/4] man/man2/prctl.2,
 PR_FUTEX_HASH_GET_IMMUTABLE.2const: Document PR_FUTEX_HASH_GET_IMMUTABLE
References: <20250526155523.1382465-1-bigeasy@linutronix.de>
 <20250526155523.1382465-5-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250526155523.1382465-5-bigeasy@linutronix.de>

Hi Sebastian,

On Mon, May 26, 2025 at 05:55:23PM +0200, Sebastian Andrzej Siewior wrote:
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>  .../PR_FUTEX_HASH_GET_IMMUTABLE.2const        | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 man/man2const/PR_FUTEX_HASH_GET_IMMUTABLE.2const
>=20
> diff --git a/man/man2const/PR_FUTEX_HASH_GET_IMMUTABLE.2const b/man/man2c=
onst/PR_FUTEX_HASH_GET_IMMUTABLE.2const
> new file mode 100644
> index 0000000000000..be5f457f0dcb6
> --- /dev/null
> +++ b/man/man2const/PR_FUTEX_HASH_GET_IMMUTABLE.2const
> @@ -0,0 +1,37 @@
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH PR_FUTEX_HASH_GET_IMMUTABLE 2const (date) "Linux man-pages (unreleas=
ed)"
> +.SH NAME
> +PR_FUTEX_HASH_GET_IMMUTABLE
> +\-
> +check if the private hash is immutable.
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
> +.B #include <sys/prctl.h>
> +.P
> +.B int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_GET_IMMUTABLE);
> +.fi
> +.SH DESCRIPTION
> +Check if the private hash is immutable.
> +.SH RETURN VALUE
> +A value of 1 means that a the hash has been made immutable
> +and not be changed.
> +Otherwise 0.

I'd reword this paragraph:

	If the hash is immutable,
	it returns 1;
	otherwise,
	it returns 0.

And I'd put the following on a separate paragraph:

	.P

> +On error, \-1 is returned, and
> +.I errno
> +is set to indicate the error.
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +Linux 6.16.
> +.SH SEE ALSO
> +.BR prctl (2),
> +.BR PR_FUTEX_HASH (2const),
> +.BR PR_FUTEX_HASH_GET_SLOTS (2const),
> +.BR PR_FUTEX_HASH_SET_SLOTS (2const)
> --=20
> 2.49.0

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--im2srhjtfbbf4ziv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg5gv4ACgkQ64mZXMKQ
wql/fQ/+PAvfe1BFCs06Zt2PqfEVLywfFlmf+N72CJuySPMKBek2Kas2pFh2RCcr
FIpU8NmE0tuy4fvymgvRFdSIf1LYmm7PK/F928ThEZIU3jFUIOT8pgHf0IPlYcZ7
RUP2khOu2o/2qTCFedQkvLkrtUJBzVyIU8x9PCPGo4RlyYkwuTJB7BsNjXp0zRAm
SJ3e9OUyvQrxE3pxWaM7bZA4KY0qiNLaKhv2dRgL7WBNyc9mOBAPMZogejaNdc4N
2ZA8SxR8f6Y8SYtkmd2jmZtz6qew4QGH4gDiQdene6h+gx2CWHMYK2xw1mkAKPxT
0Lq0HArtgwxqLlTcrtVPm2mxl/MHdwyg++FcwWAM32sX3p2XfADpegYWt6jK5b1O
eWBahMTEiPNDQmZ3y0mEj9gf/oK1nts2tuxBEavn4TDK2VIZX/EH+MUTLrOgBoWm
l7FW01IhFe1Pu8V29z4PJWTjAPe5khyxdVQ5fPCpLXqkoZi+zOM5N08Lhe8PUz9Z
Sq9jvluaOd/oHD7Q/JUpywTaG/qio3Owqh54fSawmvvEK1Vz6QvvSBrGQ6SKv6sl
AhMs2lyovIKMSMXI1JbBMa5+UYc6QNQjZY+EC6k0Jby04v8/JcqAoF0pINRhgps/
HxCL5ej7JyW/E2KR0SCnc+5Qs5MWLzeKJsgaq4eNE+Te/ollA84=
=qlCe
-----END PGP SIGNATURE-----

--im2srhjtfbbf4ziv--

