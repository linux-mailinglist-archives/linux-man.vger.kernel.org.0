Return-Path: <linux-man+bounces-4681-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 341F2CF89F4
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 14:56:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1128A30178E7
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 13:56:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B83A5346FAA;
	Tue,  6 Jan 2026 13:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4U1ajVB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E4D3469FD
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 13:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767707788; cv=none; b=InsjmXm2XQOlTWkMSidyGPLLtaVw45SZuIxL41wPbzftT3Guqo0aWovbwW0qQnISbgZ7fF3hpGgFRZIIuwsiE4c0dpgtVDQPvb640Fcc/nqDnhgAaUy3VSYgJAMExIqktIfBDTdUmpvqthReuaaBU1EfJ/jrCA7nLGJNc1wCFco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767707788; c=relaxed/simple;
	bh=2RPRDziLlH8tOHFVCYxBJ23fdgFCF5D6z41+3Vwwhs8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fsck4oJN3ndRJx3fwidA713f+vbkZ0ouPNN8f6LlcBAJVtGAPl233a5XOFHeq2XKxOmSWwDGmKmGUOlu7kfeaecfj+MfQ/qLKkA1lUCVOBYQg3UCsySVnDjznoN21PgvOtbi+cCL1EQB6Y0rV39FGjlMfNj9Q8yGmdEJ8kYNf4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4U1ajVB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 620DCC116C6;
	Tue,  6 Jan 2026 13:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767707788;
	bh=2RPRDziLlH8tOHFVCYxBJ23fdgFCF5D6z41+3Vwwhs8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U4U1ajVBwkEdRFEuOZ0DqUSjjb2zFk01d00B291KmTok+nSy0jFUkuvrfETDBi746
	 oQv/g7AcmLVJCvrx0HN+7c18zmPxRYhc3va1LqDu2aIorJ4DON0R24G8fFj6VxfiJj
	 osyWqxkQ8qz1qlai/L9hHfsy/JR1vKNO+ZnYqoDN3/urzBZMXgRwLK5WwvOUeVg/mH
	 ksflInJX2og1Ehtlj073QnysRc6rTO2Kp88v5z4uUM7nPXPQl7Nh92H+WsOp99DMBl
	 DA26dVR9T5Xp7vXV6qxFNETgE0xdQFEKRzgI35DDoGpRsE3aYRFAGNLH+EUayIloUi
	 FxeIQ5GCRAPGw==
Date: Tue, 6 Jan 2026 14:56:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 01/15] man/man3type/aiocb.3type: HISTORY: Update first
 POSIX appearance of aiocb(3type)
Message-ID: <aV0UZkhx24O57c0U@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <9d24531969247a5b763e1bf3de701a8b7614b39d.1767675322.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ynlghcrdxy3quxr6"
Content-Disposition: inline
In-Reply-To: <9d24531969247a5b763e1bf3de701a8b7614b39d.1767675322.git.sethmcmail@pm.me>


--ynlghcrdxy3quxr6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 01/15] man/man3type/aiocb.3type: HISTORY: Update first
 POSIX appearance of aiocb(3type)
Message-ID: <aV0UZkhx24O57c0U@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <9d24531969247a5b763e1bf3de701a8b7614b39d.1767675322.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <9d24531969247a5b763e1bf3de701a8b7614b39d.1767675322.git.sethmcmail@pm.me>

Hi Seth,

On Tue, Jan 06, 2026 at 05:07:50PM +1000, Seth McDonald wrote:
> aiocb(3type) first appeared in POSIX.1-1996.[1]
>=20
> [1] ISO/IEC 9945-1:1996, Section 6.7.1.1 "Asynchronous I/O Control
> Block".
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> ---
>  man/man3type/aiocb.3type | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3type/aiocb.3type b/man/man3type/aiocb.3type
> index d81f425fce28..68cefbd0450a 100644
> --- a/man/man3type/aiocb.3type
> +++ b/man/man3type/aiocb.3type
> @@ -28,7 +28,7 @@ .SH DESCRIPTION
>  .SH STANDARDS
>  POSIX.1-2024.
>  .SH HISTORY
> -POSIX.1-2001.
> +POSIX.1-1996.

I've applied this patch, as it doesn't have any ordering issues.


Cheers,
Alex

>  .SH SEE ALSO
>  .BR aio_cancel (3),
>  .BR aio_error (3),
> --=20
> 2.47.3
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--ynlghcrdxy3quxr6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldFIgACgkQ64mZXMKQ
wql2mRAAqpXZY86Y9LMxLBXx08EcH9+iiSJfhmcvIR5sOk8HgawYmeTueLEtbmow
fv+iAKac4zNqWnxZQ5O84amdwMwFFzZL5l8DV8HBXWbF0JGAbjpjggt1eumWO1An
TBjknVnCYVwc/0J78fPvDefnsfjMQ8TnZfgQyDBLlvl2CMlnPLZjmEdRhHD4V7aW
exveu/6U/hZOuzlabbVmPxcsukOxvMskUfIkIq4oFsYIK0/1gli5eteYlcGUSeyx
IC9l36TFppkSCqXw0505xZqRgCOScWoR8Ty2gNwtOS41DNHMgADfJi97vMKXvhwP
zZfNDPt1N66g2WHYy/pcPBWmmP3gaE7y6w+Mhp0E/Ly/B7fBPW1p2Ju6sFvCtDWF
gKiJ7iEIPCNk+u2QtxUjLcCGXM3yZFhbdRTUMxQWbOflIp9VpqR126erknggFofd
EIMnX2AruZnZ4THDG/80UlH0IkjBCJQCdc38dE8VAlR+NdwcdXXHOyuYzJaGbRTT
lPVTcS2wi5pO+lMmj4AcL2WcrihHCWWvAMGd3F/dykcyoxhJlDff+ocl6J34nyJu
CzqiDwwI8MG0xOty+Jr5JMbFaJF0y0MJlpvxpNLz2NEUCS1E1xdqGnIXPowgay6a
fTgtfFvQYmu6iuFLn48LUCqRXCNmiXFt8FosMeAHqudXhFtWQYk=
=yNnB
-----END PGP SIGNATURE-----

--ynlghcrdxy3quxr6--

