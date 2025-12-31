Return-Path: <linux-man+bounces-4598-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A07EBCEC09D
	for <lists+linux-man@lfdr.de>; Wed, 31 Dec 2025 14:48:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D5F533001622
	for <lists+linux-man@lfdr.de>; Wed, 31 Dec 2025 13:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A3D43246EC;
	Wed, 31 Dec 2025 13:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpGI/yLH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B7C3233E8
	for <linux-man@vger.kernel.org>; Wed, 31 Dec 2025 13:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767188877; cv=none; b=mJwXoKCeVKEryBuKrFh8m+EnSFLDBjLOJzcdQ25b42JqQy4HhAaTj2QqaNEZQ474wzXeGJNOovmWT/s4ZV2GoUAQ9sd24eQbrply12fb3IUXui/1JN+OrZ/OOQCvk368m8Y+NO8/mwH1Y/R9BN2t30dxZu98EzgawAl6xt8sqzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767188877; c=relaxed/simple;
	bh=lL/Wq8g+8ynp8A4ulB5ikivSWitP9R7BOIKKQOniBrk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MhOD76gJhsVWGkBi24pY4xOsN9KTHkiWJZ9UDrlkp5gDIpmJuzxAaO6/qJLD5exCEyOt1GvQn+CuWHcX/QBsyC4xGQtSAo67AEDwhww4QhElt8YZGjdWdY0561AAVEZe9vJqTY6/hgfNIWi/KuWZWfMDveWYGLUJgS+479Cy/4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpGI/yLH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBA3DC113D0;
	Wed, 31 Dec 2025 13:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767188876;
	bh=lL/Wq8g+8ynp8A4ulB5ikivSWitP9R7BOIKKQOniBrk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SpGI/yLHprPqKi0pRH3Q1oaYh4Ckg7BUrsV6+tq+f0f+bKCKbl3cZv7z6bn1Q6fVF
	 sevoxQphcw9wxNIZSonBfpmF4dvY+3IIwuQQpYMxK4KDIDhrB+MuMS/sHpkaSeOta5
	 CEfqCDKyapvP7WROQInENWQ98sOlW8TnHIjoyKN7vsw9jb6a4ZneboXqgjcXlCXtUb
	 9eiE3alzcyvrSUlZnf27Z0MW7TwfxPFmYVdglcMtA8IWZ48/pnDKO6BJuOlCl057Ge
	 OTI3HWUHx3OhoFt5HP+WiFafMCRtRUbrMOIaugVGV8hzfksaxt8rQjgMp2/Z6aOcnj
	 C//ZSaDOos9vg==
Date: Wed, 31 Dec 2025 14:47:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: seth.i.mcdonald@gmail.com
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 4/4] man/man2const/F_GETSIG.2const: HISTORY: tfix
Message-ID: <aVUpfZ2ot0w-7wkl@devuan>
References: <cover.1767072049.git.sethmcmail@pm.me>
 <2f33ba3b5bd29ebd931bd213fb8f9a7b19ed9ce6.1767072049.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uutapxbiagaooegi"
Content-Disposition: inline
In-Reply-To: <2f33ba3b5bd29ebd931bd213fb8f9a7b19ed9ce6.1767072049.git.sethmcmail@pm.me>


--uutapxbiagaooegi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: seth.i.mcdonald@gmail.com
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 4/4] man/man2const/F_GETSIG.2const: HISTORY: tfix
Message-ID: <aVUpfZ2ot0w-7wkl@devuan>
References: <cover.1767072049.git.sethmcmail@pm.me>
 <2f33ba3b5bd29ebd931bd213fb8f9a7b19ed9ce6.1767072049.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <2f33ba3b5bd29ebd931bd213fb8f9a7b19ed9ce6.1767072049.git.sethmcmail@pm.me>

On Tue, Dec 30, 2025 at 04:42:03PM +1000, seth.i.mcdonald@gmail.com wrote:
> From: Seth McDonald <sethmcmail@pm.me>
>=20
> The G and S do look surprisingly similar...
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> ---

Thanks!  Patch applied.


Cheers,
Alex

>  man/man2const/F_GETSIG.2const | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2const/F_GETSIG.2const b/man/man2const/F_GETSIG.2const
> index 3964cb7fd1..cd99611666 100644
> --- a/man/man2const/F_GETSIG.2const
> +++ b/man/man2const/F_GETSIG.2const
> @@ -458,13 +458,13 @@ .SH HISTORY
>  .TP
>  .B F_GETOWN_EX
>  .TQ
> -.B F_GETOWN_EX
> +.B F_SETOWN_EX
>  POSIX.1-2024.
>  Linux 2.6.32.
>  .TP
>  .B F_GETSIG
>  .TQ
> -.B F_GETSIG
> +.B F_SETSIG
>  Linux.
>  .SH BUGS
>  .SS F_GETOWN
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--uutapxbiagaooegi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlVKYkACgkQ64mZXMKQ
wqn6vhAAuqZlv0bxoCSP5rgtk4Cya0yFcQnGlBlxzdAwHRRlBFlTE0daw59n+pOr
bS36hHipKL1tsnNM7bFK5RMpxJ4upqnZ8xvHvMJ9O7VvU+LL6ylnaczdDfAirTDa
OfKHm3L4kReFbLdcKL6jAkWrisYHEajDMejbcxHNQ4UBRBkE2jxv3aNL1dFCCNSf
43jXGoxqgLJi35T/uImdnfMJ3dT0KiF+9ra1JnBp74VL7iIh8btRRtZmfVK2nIqN
+nDDClcqCDzHlVumN6kiGFPAmQBk6rRxghCtui+YY+Nxz37AVeY4KFeHYKuagesl
tpbZiiugN3LDHfh1f1RtNTvhkXVL2tm4bYCBROvCI4VR8V6qacKAAfyNlwH99RqE
lKSuNNmC3jR2KoafMOxx4Wn1Ojhrmc29tlcVSYhsgpGL3yQrYZALPYt85tWR+yKE
Vxhx6Tyrb/K+RnPArKDp7gxX6ki/lxgZCBZei4OHOHRvxbYpQYrDIC+eZn5hJwuH
Gjyk/UA5LZhURMRDFWRNSTjYhpuEoNdYL58UxjB7Jm3bEnIJ8FhcLagnT2Kfyap5
uibQtjctWFp9TzVNPwHJVWA+Gy34Vk7g8MFuJiZhPNPpGRy8uXoFvRL80EOvPGvR
/3M2yjy4xBFYz+LKl+bBHwr0g6eLMR096jkOjugl74ylCB2ngJ8=
=ZLAe
-----END PGP SIGNATURE-----

--uutapxbiagaooegi--

