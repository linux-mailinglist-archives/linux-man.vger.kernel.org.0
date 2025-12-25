Return-Path: <linux-man+bounces-4555-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D4888CDDD5E
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:51:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D7813010282
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:51:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B4F82D0617;
	Thu, 25 Dec 2025 13:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwSuK2vG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF852222A0
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766670687; cv=none; b=gsgi6ltNJoJ324WE2ujBKu3Yz6ZDdX+0Fpdf0cX5BrRs2+nxa9iEL0+PEOYyUkaAsaJV/pUOx0L8GSAJGVlstDeWC1duxZNMa4FOD1W6fonviMbp49RRZyX45YLsQ+bsjyuuARJPnaJ0HAFC1y+GZfLH0EZD9DEL6pTLGEJyqRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766670687; c=relaxed/simple;
	bh=A2VhzNihtk8tJbZ8zGZyb4thGFskE3pjc8FhGruvgPw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mLw+W4dhYybne42OFVYsO0Xt5X9rReWRoidk1G7nQmhrkt4susuGbjhqwYRLYWyWDyIBTfMjzQ7+bpbJpmebBdCSitkFlHauF1BTk1uVj0lKgePGD005xZW3MxUHLDFyENXDjohX/l2pmJCXsWo47IVfjPWEX9uXpfTZ1g2NsgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwSuK2vG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9170FC4CEF1;
	Thu, 25 Dec 2025 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766670686;
	bh=A2VhzNihtk8tJbZ8zGZyb4thGFskE3pjc8FhGruvgPw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gwSuK2vGj6h4NwjdPJbjibUlgS4OzBbHkVKx5xG0er2isVR1IPrdZyc4TOEOO7k8p
	 Gy17ZC2k7XQklhPzGA/3Nu7+qj6jIttwrq0MX59F+19or7Pfol3VM9igL6rpv7szj3
	 ykErgql+EL78befwguZ97HlOZotiVUraU/Xklv1UvdDsazLuQi0amKF3+WZkchDtzo
	 G2hef/6iCpxex3w/oJLBWPHbzg6ZskTGZy47OEOB4JGUOBIXe7Rrq7rNxFqzDzzpxq
	 TO8OuCOfrc3lWwK9cfW8J2i8YTKPLr3kOQVyD/M7gmuMHaNJVRIm9YVbnFy5UNNZzu
	 Gk7YPiuCxqEpA==
Date: Thu, 25 Dec 2025 14:51:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_FPEXC.2const
Message-ID: <aU1A9yr6p1oCvV0B@devuan>
References: <aUv63nEitTChFk_g@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vj3t6cgbubkp6ieb"
Content-Disposition: inline
In-Reply-To: <aUv63nEitTChFk_g@meinfjell.helgefjelltest.de>


--vj3t6cgbubkp6ieb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_FPEXC.2const
Message-ID: <aU1A9yr6p1oCvV0B@devuan>
References: <aUv63nEitTChFk_g@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63nEitTChFk_g@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:22PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     Colon instead of fullstop?
>=20
> "Set floating-point exception mode to I<mode>.  I<mode> can be one of the=
 "
> "following values."

Thanks!  I've reworded, to make it easier:

	diff --git i/man/man2const/PR_SET_FPEXC.2const w/man/man2const/PR_SET_FPEX=
C.2const
	index b43a6f888..f4ed61b8f 100644
	--- i/man/man2const/PR_SET_FPEXC.2const
	+++ w/man/man2const/PR_SET_FPEXC.2const
	@@ -19,9 +19,8 @@ .SH SYNOPSIS
	 .fi
	 .SH DESCRIPTION
	 Set floating-point exception mode to
	-.IR mode .
	-.I mode
	-can be one of the following values.
	+.IR mode ,
	+which can be one of the following values.
	 .TP
	 .B PR_FP_EXC_SW_ENABLE
	 Use FPEXC for


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--vj3t6cgbubkp6ieb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNQVsACgkQ64mZXMKQ
wqml9A//RGAj7+H7WjE43Qd1lw3UIPKkfJPd9dXUdFiZnT1s4VvR4hQ/R+rq8++u
NjAtViQfG5p+yw2+hnOZP7pu4Lx2ScPP95IGIi1ObiXMHkZy8y7mgATByzBXswEr
wtP7SYybdQz5myVM9oWP0FXNnymt4Sp9eAWHqf0hVMab/+z0o8VJakzKE75A/lLt
1gbDgDNU4EwByKCCkUoq9D8NivlbsXZnBHXTWJ7cYAb6pN/dNtrzZkj40XRMGBr/
VPxYgatdDa3Bt/imDJ9m2kY8Aou+jEs4b6IIoJ1rA8tUPgTkY3dWcfLZbJrrU+aJ
kSUpFX1Qx7ANIh6ooNh8we11OOt9+NWXnfXC4P/JF6DpUDNni48Gbdhpj+EQRuWy
zPilSCPWy9sGtfI2CTkle9Si6hV4SsAXESamx5XFCtFK9PAIEDXpy2lvJW2SM4gR
PzQw0iENgF6ncJKmpetuuEOHWBVlmwVcOFuGpnzyl6c/aH6RlM/EurCR0vQbhZ27
7MfEwp/lslrdJ1bDJDTq+FrDxtdWdl8jju3DOqsnVOOj+hsxAiaWNAZhVNtjGO2p
U3E9U7A6OszxBIWIx4wIiwl3ARE7PVCQwjXaLEWaNXpWAFptVQ5G60N/zLyqa0bt
O62VLIlLPdvO5OykFHtTWNKYOPECNKrfrXkcDVPmnTkIK8skkHE=
=x2rm
-----END PGP SIGNATURE-----

--vj3t6cgbubkp6ieb--

