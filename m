Return-Path: <linux-man+bounces-647-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F1E87DDBD
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 16:05:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CDDA31F21281
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 15:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D8231C2A3;
	Sun, 17 Mar 2024 15:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqqxoO9M"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26381C288
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 15:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710687933; cv=none; b=QfyPjbvp0hlaNgBnsyF0gssjFWPX9hIuS+nxC4gsrObb94v1qVbkG69u/Ek1gTtZUemU4o383fd4pJI6bIbz4m00HyCBQxOScWW4vYDV545+IhxTfE9OoOyJw1bFdswrWMORnOxCw0jEIP8iS/jZFPiKTCfiupfPC0OeGKWt57M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710687933; c=relaxed/simple;
	bh=Af+uMd90vCl/nJKMFQStS9DPhheUtn3d+O6Iepzi7TU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=smOV0rRN9igMleIRZbhpOq5rjAPEwb4GyyO0TX3ihJnpGiCPcAPXMtHXFqXjj/Rk/W6NG5XiTH4SlmGd7ghZAYAfkSCAEuKokLDQkSjQUF3FVC5Qc58OFgPeXMp3kCB5R5wgqDakFD8mljKgciTb20Z+sHZd08C+nuIfN6o7v84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqqxoO9M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAF1BC433C7;
	Sun, 17 Mar 2024 15:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710687932;
	bh=Af+uMd90vCl/nJKMFQStS9DPhheUtn3d+O6Iepzi7TU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dqqxoO9MKBIvmAk2q/C45768YL73bWqLBtcyAfBt7ZVGZL/l3wP8vVtzY+t9sGhT1
	 GZcVl8mKsGs9FOnM2QpdNpxD0qE35heYq5WFiWU4iw5ljkLUICBhpi/oqU7+mCsTI5
	 R480aMs4X2qoJskfy0wXt3NZyjjaizHCFu1PiFbALrGrkKlybAGD/FqaIe1nXsGm3+
	 nM37/9rP/2pe73VWtWH2XCBPsIkVY0Ba4JqUmhkDvpr3EfUOgliIcWQi7if+DKZJjM
	 Xt8wOn98Dc/pBLIC/ZwXVQ0wNu7VNv5jm6fwZlKKxYggeEVPyxJw3y/skeHwNYQv/S
	 YLkq+XDKWj2zQ==
Date: Sun, 17 Mar 2024 16:05:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 3/6] intro.1: Explain the meaning of a directory
Message-ID: <ZfcGub2EdBC20dCI@debian>
References: <20240317080850.28564-3-jtbx@disroot.org>
 <20240317080850.28564-6-jtbx@disroot.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fEc46VFtCOmbd7cB"
Content-Disposition: inline
In-Reply-To: <20240317080850.28564-6-jtbx@disroot.org>


--fEc46VFtCOmbd7cB
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 Mar 2024 16:05:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 3/6] intro.1: Explain the meaning of a directory

On Sun, Mar 17, 2024 at 09:08:31PM +1300, Jeremy Baxter wrote:
> ---
>  man1/intro.1 | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/man1/intro.1 b/man1/intro.1
> index 090678750..f0a8d98e0 100644
> --- a/man1/intro.1
> +++ b/man1/intro.1
> @@ -180,6 +180,9 @@ The command
>  In this example, we use it to find Maja's telephone number.
>  .SS Pathnames and the current directory
>  Files live in a large tree, called the file hierarchy.
> +In this hierarchy, there are many
> +.IR directories ;
> +a directory is simply a file that can hold other files as opposed to tex=
t.

This might confuse more than it helps.  What does "hold" mean?  Does the
directory hold the file data?  As in a .tar archive?  No.

In any case, this subsection doesn't seem to treat how directories are
represented in the filesystem, but rather how they are presented to the
user in path names.

>  Each file has a
>  .I "pathname"
>  describing the location of the file from the root of the tree
> --=20
> 2.44.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--fEc46VFtCOmbd7cB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX3BrkACgkQnowa+77/
2zIgEg/+OBJv5fJGBtd6QraEAOcFDhZxdiaSkSXSqOzX20aAsxudqgEQhOZgvPOr
pJjCTlo54iBrjkuZu0Jy2EkG73tIS7OAioWZIyQpTzCH8zdi2vqru/RjfybXkJVj
mzgdTOmtigrg5+U2wbp8Y15h7A3eW7vzoqMie1W7lVWcX9eg81DshCuA/5JDt+Mg
nA7v2T4eksTQpkbCxSM1tU6SqIIykMCl0iM6f9HQJELI34XV4dSosyf/k8+yeZqW
TWcwyMYtxNAII4qAvtGFNaDRgRsuCzdhZHDANLyItEhLbjZMHvwQ/AoIuM9edjAR
gZtpJQ/UEmSnUt6IOR7xa84TfTY5fmHseR/PTu2tQIgFg5uXd/JnxXSRP00PPOuq
ksqMG48BoF+s4/aMoIafKS48gUpmhBQDi9Sy0JtxHAps2NcppNjrXvPlUsJ0AHB8
d+zIi3eLP2MCexHE7R2hAStWnls+MTrH+elgVpAUvIz9DNdsvFHv8wKGCG0dlGcv
jcODXDe7bJ8lutDLD89KsWzvWd2+roGbXony5DTWvnpkRDSLWZsEg+YFU7A6Fv6h
/ZLiSJNDkRc6RO/j9TmxCfOZa2jMon1zXnaDjqoLs12iU3QKhAgsv+o9YW8t852/
qFGD5qtaq2ZMbIUPa/Vak33UPBkTwlrd5GjKml4QuP54tDfNQ/g=
=kIBJ
-----END PGP SIGNATURE-----

--fEc46VFtCOmbd7cB--

