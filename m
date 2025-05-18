Return-Path: <linux-man+bounces-2966-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 366E3ABAEBB
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 10:18:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D8C5E3BAE4E
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 08:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCBE7200127;
	Sun, 18 May 2025 08:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/LUc3cL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D1232D052;
	Sun, 18 May 2025 08:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747556317; cv=none; b=EU9G0/4UJmUUR1J+2oiiTXtHYWF79G2FVy58Qf4lBD4KbGo59pPiCb4gSsRsdVpwPZgbDjU3Jv1YRW9ZD2YrYyxYJDaMDAfXnjMWjMxWC44rkNWCVsleR3L2XKTMRvlJ5BNwQj+ry5hLG3auMMSfELO+wcOmnIhhxA0+rh2T58A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747556317; c=relaxed/simple;
	bh=WkoJYO/kFuyzqd6xD5zIc+bpw0cwLLyFN4qGKlHP+e8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pn892yhb+uHp8QyH+6Ekkl/xJxuJAzmPbvSq2SANH0tW/BVxsvd5PCGB+aST07LyMREzNR53Ofb/Wryw5NE0ialEkr4tBCnIvZGtUhRIml7yC2DBwrxQiACNEZ8mVqybfVHnk5/LqsJN2KydoC9aD6tHNOgpG/xR3tpnOOs5xGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/LUc3cL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3A55C4CEE7;
	Sun, 18 May 2025 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747556317;
	bh=WkoJYO/kFuyzqd6xD5zIc+bpw0cwLLyFN4qGKlHP+e8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p/LUc3cLQw3EIgqhxABjRQUVhhMLyyqxRDS4gbsqOHXIQ4h48irKl58DBTby7F04p
	 /3T82l8HA3Lr949j2xQOZ8s18UKmgmvpLHRUO8jBAcnvgf2CvfmHsxUCzT35hGWDJq
	 Z+Td2K3GeDmFNY+zCh+2U4SFM1txrLv+koaMz3QI3rHrn8rJ65+3ThSdsCagZXpoS+
	 4KJa00HG1O0pvlIMtTPvtO18UW/yxq7FrqiLdqC36AC6PBIJ7xm2fGI8dDeSOld6tR
	 nUPFMbmIXBsTeQXLbJTCVYhfTp5M4G83hWI0+ZTOc8ZNeENHYEA6eC66E58R51EFMr
	 IDdbVihMdn31A==
Date: Sun, 18 May 2025 10:18:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Peter Xu <peterx@redhat.com>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	linux-kernel@vger.kernel.org, Andrea Arcangeli <aarcange@redhat.com>, 
	Kyle Huey <me@kylehuey.com>, Robert O'Callahan <robert@ocallahan.org>, 
	Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, 
	Axel Rasmussen <axelrasmussen@google.com>, Kyle Huey <khuey@kylehuey.com>
Subject: Re: [PATCH v2 1/2] UFFDIO_API.2const: Update userfaultfd handshake
 and feature probe
Message-ID: <gwzis5sso3a5g4a7b5tplyfj473b35jzy2cmabs6lgtwa4bc4b@ez3rlmdxphea>
References: <20250514172630.569788-1-peterx@redhat.com>
 <20250514172630.569788-2-peterx@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4cxxifislilvffi3"
Content-Disposition: inline
In-Reply-To: <20250514172630.569788-2-peterx@redhat.com>


--4cxxifislilvffi3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Peter Xu <peterx@redhat.com>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	linux-kernel@vger.kernel.org, Andrea Arcangeli <aarcange@redhat.com>, 
	Kyle Huey <me@kylehuey.com>, Robert O'Callahan <robert@ocallahan.org>, 
	Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, 
	Axel Rasmussen <axelrasmussen@google.com>, Kyle Huey <khuey@kylehuey.com>
Subject: Re: [PATCH v2 1/2] UFFDIO_API.2const: Update userfaultfd handshake
 and feature probe
References: <20250514172630.569788-1-peterx@redhat.com>
 <20250514172630.569788-2-peterx@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250514172630.569788-2-peterx@redhat.com>

Hi Peter,

On Wed, May 14, 2025 at 01:26:29PM -0400, Peter Xu wrote:
> There's a confusing paragraph in the man page on two-steps handshake for
> userfaultfd UFFDIO_API ioctl.  In reality, after a successful UFFDIO_API
> ioctl, the userfaultfd will be locked up on the features and any further
> UFFDIO_API on top of an initialized userfaultfd would fail.
>=20
> Modify the UFFDIO_API(2const) man page to reflect the reality.  Instead,
> add a paragraph explaining the right way to probe userfaultfd features.
> Add that only after the "Before Linux 4.11" paragraph, as the old kernel
> doesn't support any feature anyway.
>=20
> Fixes: a252b3345 ("ioctl_userfaultfd.2: Describe two-step feature handsha=
ke")
> Reviewed-by: Kyle Huey <khuey@kylehuey.com>
> Signed-off-by: Peter Xu <peterx@redhat.com>

Thanks!  I've applied the patch.


Have a lovely day!
Alex

> ---
>  man/man2const/UFFDIO_API.2const | 44 +++++++++++++++++++--------------
>  1 file changed, 25 insertions(+), 19 deletions(-)
>=20
> diff --git a/man/man2const/UFFDIO_API.2const b/man/man2const/UFFDIO_API.2=
const
> index 54b34a1bc..aca27dc5c 100644
> --- a/man/man2const/UFFDIO_API.2const
> +++ b/man/man2const/UFFDIO_API.2const
> @@ -42,25 +42,6 @@ fields to bit masks representing all the available fea=
tures and the generic
>  .BR ioctl (2)
>  operations available.
>  .P
> -Since Linux 4.11,
> -applications should use the
> -.I features
> -field to perform a two-step handshake.
> -First,
> -.B UFFDIO_API
> -is called with the
> -.I features
> -field set to zero.
> -The kernel responds by setting all supported feature bits.
> -.P
> -Applications which do not require any specific features
> -can begin using the userfaultfd immediately.
> -Applications which do need specific features
> -should call
> -.B UFFDIO_API
> -again with a subset of the reported feature bits set
> -to enable those features.
> -.P
>  Before Linux 4.11, the
>  .I features
>  field must be initialized to zero before the call to
> @@ -70,6 +51,31 @@ and zero (i.e., no feature bits) is placed in the
>  field by the kernel upon return from
>  .BR ioctl (2).
>  .P
> +Since Linux 4.11,
> +userfaultfd supports features that need to be enabled explicitly.
> +To enable any of the features,
> +one needs to set the corresponding feature bits in
> +.I features
> +when issuing the
> +.B UFFDIO_API
> +ioctl.
> +.P
> +For historical reasons,
> +a temporary userfaultfd is needed to probe
> +what userfaultfd features the kernel supports.
> +The application needs to create a temporary userfaultfd,
> +issue an
> +.B UFFDIO_API
> +ioctl with
> +.I features
> +set to zero.
> +After the
> +.B UFFDIO_API
> +ioctl returns successfully,
> +.I features
> +should contain all the userfaultfd features that the kernel supports.
> +The temporary userfaultfd can be safely closed after the probe.
> +.P
>  If the application sets unsupported feature bits,
>  the kernel will zero out the returned
>  .I uffdio_api
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--4cxxifislilvffi3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgpl9YACgkQ64mZXMKQ
wqnk3Q//eDnIHs2yAZNv31E7QcNanklA5vLux0jF7JUBOBjuQQQzvRmk9H3zxSzj
VvTnecJleTpNXvDvq29wjvFPKFbMnI0siYL35nMMLIicU1Z4ilQrAIr/yQ5NiT25
6SMMOAnwRAiGsF7QQqE6Nv6IqTP8hBoSeXtpEZLF4A7dJkJm8UWfrA+HQjnurZgb
8TyuiBa0taT39qmM38QICFHtEWJDHAt/+lFsVDDuzjZLw9t8MEa0mZfVvni186eJ
bCNQT/Z5GbDgEoYIhB4OMq4WTuHQtkq2P1lrxUMjuHoAPJS9HrsC1LnitZkUpLZ5
Vkhb3BWhRjLPhp1Nbdu7ORZr1/ssqqPNG8A6AqWE50DOQcvWDV+ifabAHN8Yi/6L
VsJuh3ztErgI6VLNm4/5vWUAvBOD+7EXc82lp8F66POQxvQVamChFXnMLELzGloG
o0Zv43ANjek6f1C0yolfGieClX677lR4mDdKzEgOHO1RNT4QwsglFD9puZHvfg8q
oSJeh3MFpg/xkH/JfoKlJnmMnhnAILtiP6jkp8JvgbMcGH3bvPYPKuG74pmM2koQ
ktBMUVL09UK/3aHdHLxF7ps9pldwXm+czHpbSlLC8ht7TOUhKQd0ahu5JkfZG71G
GVpVyB39VHQVWehAJRgD7NbTLAOwKAfmG9C25IJbRiNXXrnhqxk=
=pFCu
-----END PGP SIGNATURE-----

--4cxxifislilvffi3--

