Return-Path: <linux-man+bounces-4048-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A572BB9CFB
	for <lists+linux-man@lfdr.de>; Sun, 05 Oct 2025 22:33:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 59B8F4E12DF
	for <lists+linux-man@lfdr.de>; Sun,  5 Oct 2025 20:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B41818EFD1;
	Sun,  5 Oct 2025 20:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYRblOOH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DA8F510
	for <linux-man@vger.kernel.org>; Sun,  5 Oct 2025 20:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759696403; cv=none; b=h9Zknkz5+m60dGytH7KP/Zq4pDlnxDWbYowE3AWWidCJZo/Ugm/zZyMVizh4168SKTP1O/2pmMLHUYUrKWW9XOHBPzMMplOD/cN/i1S4CKvJWAAKYryWqwVMWvRNfZfRu0n13beUNGWe7+v68bwFit+LAAtP1atRHJhMpqLwWfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759696403; c=relaxed/simple;
	bh=tiOlRTNW4TdWrfgBqGQ8s8+Y3dPnRM/srbRg7U6xDJw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pWlQIO6kquzLuBF91hOqNMCX/397gH9Fq82eHbFZcK0sw9y+snoY96sIRx0Vi9u2r+lHawbneoyy6gYl7mVcwP6L7xHjluueo7bC/NH49O2JAO0jBW9tK6h9byeExP0pVmroEH6QiO/kt3L5UO50lIzsegGFARq3bIIusgW+ZCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYRblOOH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EC76C4CEF4;
	Sun,  5 Oct 2025 20:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759696402;
	bh=tiOlRTNW4TdWrfgBqGQ8s8+Y3dPnRM/srbRg7U6xDJw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qYRblOOHMpuCgBSZLG15I56voMC79+JaDscQIBfgVc/M1YIK/dUfD+V9zD6+05TKE
	 jdX+i925fMYVoOAo1aWef/FB+/8WQFNzQpxgOMtDx4yg0ZmLDqd7DqrBbjWc5iY6EH
	 L8BIt7U66biqz4AUAA6sYg00eV8si4pNd2ffBWCbCopx+2TvSzfB9EE8GpQ+gl7/8O
	 x1KrzMc31JT3P7zWittzdx7jzPyaO3ZBwqVIqXGyeA0A5X3r0DOns5mg7TCq7pS7I9
	 iIGeG6NGg8M51Exmi4+omCGCrhnWFq4zuK/7l+8glZ19mRpRyvVPt+IrGD9A2ZL47O
	 NshbcoJLn0rAg==
Date: Sun, 5 Oct 2025 22:33:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kele Huang <kele@cs.columbia.edu>
Cc: g.branden.robinson@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 6/6] man/man2/fanotify_mark.2: grfix
Message-ID: <njkqx2zdmmhchxz7dcgbvswctbkami3engboefcu6tedkmrfc3@fplcivkm7grb>
References: <20250922035934.446271-7-kele@cs.columbia.edu>
 <20250925135215.1648059-1-kele@cs.columbia.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ypmey6p2k4nmbyo5"
Content-Disposition: inline
In-Reply-To: <20250925135215.1648059-1-kele@cs.columbia.edu>


--ypmey6p2k4nmbyo5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kele Huang <kele@cs.columbia.edu>
Cc: g.branden.robinson@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 6/6] man/man2/fanotify_mark.2: grfix
Message-ID: <njkqx2zdmmhchxz7dcgbvswctbkami3engboefcu6tedkmrfc3@fplcivkm7grb>
References: <20250922035934.446271-7-kele@cs.columbia.edu>
 <20250925135215.1648059-1-kele@cs.columbia.edu>
MIME-Version: 1.0
In-Reply-To: <20250925135215.1648059-1-kele@cs.columbia.edu>

On Thu, Sep 25, 2025 at 09:52:15AM -0400, Kele Huang wrote:
> ---
> changes since v1:
> - revert "a fanotify" to "an fanotify" as suggested by G. Branden Robinson
>=20
> Signed-off-by: Kele Huang <kele@cs.columbia.edu>

Hi Kele,

I've applied the patch.  Thanks!


Have a lovely night!
Alex

> ---
>  man/man2/fanotify_mark.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
> index 6d191dfaa..e561ffd21 100644
> --- a/man/man2/fanotify_mark.2
> +++ b/man/man2/fanotify_mark.2
> @@ -727,7 +727,7 @@ and
>  .I path
>  does not exist.
>  This error also occurs when trying to remove a mark from an object
> -which is not marked.
> +that is not marked.
>  .TP
>  .B ENOMEM
>  The necessary memory could not be allocated.
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ypmey6p2k4nmbyo5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmji1gYACgkQ64mZXMKQ
wqmiKg//Z4V6gJe5ZXLreq1wdSl8IIWhcDel1aVNV7IKmZ7IF1xWc2LJzwLO8A4Q
Se6sZ3MT9yyX+C9s4kJHQG/78OiMSFZOSI6dspJzmGaxVtqtUnyD093qn8epWV8p
dpewqktnPPVbUZvskMsd/sVAVFAoAlOUL7uc/MMIK7547gdr+C4B8KKCctEvPGP3
U6M9L9eyMEz5bo8WfjhgzGezxfRaLnkiBCqUXrWUfNrLMDb5vdZ7dZ3VjAGcEA7M
AFZNf5EZ1WXbxm8GRF0l/OD3ONJ+4r40cIey+il3AhxRUEduMpi4Va4VAkbFkTZQ
k0vnUVPfCJo5VMA1CesN2OGL5izoStREJG7PCa2zylPdpcX8eIDcIqlqYlpOEu0H
PgnJDgF9AjjCUEi047mRy58ECWyNMNyYS6tMe2lZo/e0nVaj/aUX9b2w0qI2QuWH
nxjpensuiBO1Uy80y3f/k5eVxlUEBwjD8Spro5CeuBOPrXW4RuAR1vNB1f4iyWit
jNzTb0gt7HRjCEsFyVn2Nf1uwx8I5lJ8CmvozegdSG61yLBOwKO8M/DXs18CH1MR
PKdtJawzPQ7axNsWtuOfv2bMQrzgBTKmm/e3DgA5IjU5VQdBT+Ek/6EC1qyJvMWN
iWLXPZmPfWrUdeAWQchTrSkZ1wGWEnWRagGYgleWtwzSXv9yX2I=
=QY/u
-----END PGP SIGNATURE-----

--ypmey6p2k4nmbyo5--

