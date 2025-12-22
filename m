Return-Path: <linux-man+bounces-4468-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2ADCD7353
	for <lists+linux-man@lfdr.de>; Mon, 22 Dec 2025 22:36:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D16630142DF
	for <lists+linux-man@lfdr.de>; Mon, 22 Dec 2025 21:36:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 428742FF664;
	Mon, 22 Dec 2025 21:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKN3EFrG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000E526E706
	for <linux-man@vger.kernel.org>; Mon, 22 Dec 2025 21:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766439367; cv=none; b=MuxlE4LfEGEouiEpsLEh26jZ/R/g6j/yXJErB41q+ebznLmwkn2OkLdX08lx/dhZhbHwsaqNK64Y1Ucnl3kXE0NUBguBz+NJdsv0xeTsnj42XqbhwljLuoaSs8PMFn5DNLzpc3jE+CZN6TPGPzxbqS2SOwS1VYhHblKOP3++7OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766439367; c=relaxed/simple;
	bh=chFNtgtgOaRZg/8VOENgkca9/anaM6jpdPd4wraXlOY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a1/na5SyEq2L4puxqZaTwa4Vzo5QxIfmmXuY7FagBhMg2gQyBBUUsGin+Vr/fZ1RbzIuuv6gbLaJ3Dj0a2BH+I7Q1D8C4B6dW/ZYNOo+vSE2HNbasSts/8QB+2pshZtb60dTRWvE2iTg3xqozZz1DzWGvO93Z3sGpcR58+oGV60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKN3EFrG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1004C4CEF1;
	Mon, 22 Dec 2025 21:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766439364;
	bh=chFNtgtgOaRZg/8VOENgkca9/anaM6jpdPd4wraXlOY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nKN3EFrGuLUMGBzdKsvWKeOufhgzq2burxm+klz4L9GMy0dg7JidFQGHvoXS0Ncmh
	 5bPpMop9w8dm99015dgUVqD6Udl5ZpVMsq4fsV9naroI/SzPpers6xh2lJ/Z5mHagB
	 5Kr3ZwSi7bh71QNM8lBanTRFwYZM+qwb7qJtybsbcuI8KW1MYWUX12oGESH10KGVaL
	 dhwRslbTLdAP3KGS08VgiRqJEvAshk3dk0WYLbxG16fHaK5lZyzXjeMnY5wC08+llS
	 yik43xgIfmIVlSgaM52iwMyCAmqXpbHLLvl7mYasNFzMzo4zuFlDxwer/xZ+Q/nVrT
	 YzTLo6QAinPug==
Date: Mon, 22 Dec 2025 22:36:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: Re: [PATCH v4 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <aUm5o1hd1pLy7QOH@devuan>
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1766439016.git.alx@kernel.org>
 <f19bb100f31e5c5b9f0edaf1807ef66d99627316.1766439016.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ccnjslikpb7o2dei"
Content-Disposition: inline
In-Reply-To: <f19bb100f31e5c5b9f0edaf1807ef66d99627316.1766439016.git.alx@kernel.org>


--ccnjslikpb7o2dei
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: Re: [PATCH v4 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <aUm5o1hd1pLy7QOH@devuan>
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1766439016.git.alx@kernel.org>
 <f19bb100f31e5c5b9f0edaf1807ef66d99627316.1766439016.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <f19bb100f31e5c5b9f0edaf1807ef66d99627316.1766439016.git.alx@kernel.org>

Here's how it looks:

$ MANWIDTH=3D72 diffman-git f19bb100f31e
--- f19bb100f31e^:man/man3/aligned_alloc.3
+++ f19bb100f31e:man/man3/aligned_alloc.3
@@ -52,6 +52,41 @@ STANDARDS
 HISTORY
      glibc 2.16.  C11, POSIX.1=E2=80=902024.
=20
+   C11
+     In C11, the specification of this function had several issues.
+
+     =E2=80=A2  size had to be a multiple of alignment.  Otherwise, the be=
hav=E2=80=90
+        ior was undefined.
+
+     =E2=80=A2  If alignment was not a power of two, the behavior was unde=
=E2=80=90
+        fined.
+
+     DR460 reported both cases of UB as unnecessarily dangerous, and
+     fixed them with a Technical Corrigendum that transformed them into
+     errors.
+
+     N2072 reported that the requirement that size is a multiple of
+     alignment is superfluous, and removed it with a Technical Corri=E2=80=
=90
+     gendum.
+
+     C17 incorporates both technical corrigenda.  The API has been sta=E2=
=80=90
+     ble since C17.
+
+     glibc originally implemented it as silently aligning as
+     stdc_bit_ceil(alignment) instead of alignment.  Since glibc 2.38,
+     it implements the C17 specification.
+
+     Some implementations, such as FreeBSD/jemalloc, implement the C17
+     specification, even though their documentation claims the C11
+     specification.
+
+     Some implementations, such as OpenBSD, implement C11 amended with
+     DR460, even though their documentation claims having undefined be=E2=
=80=90
+     havior.
+
+     No known implementations have exploited the undefined behavior in
+     a more dangerous way.  This function should be safe to use.
+
 NOTES
      On many systems there are alignment restrictions, for example, on
      buffers used for direct block device I/O.  POSIX specifies the


--=20
<https://www.alejandro-colomar.es>

--ccnjslikpb7o2dei
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlJucAACgkQ64mZXMKQ
wqkzpg//U8vmeiRag2SuVPWaZnC/F9l77nm970i4mouThuK+NrA7xAAFAdIvQdnV
IqCxqu4Xej39/a8V86wnrk18S2vZFhsJS9TgPdC5qa99c2TN38Zm++pbWiTBZFqC
hPegCieclIkfkSfjAV+Ke8C2XO/2qHWUXHCcBEj78moMhZnoiP9pzrJUZHaeOPTM
RO/Fw3sSYtcZ1x6DvOQ3lviDXrfQR+IF3fiUO8aW1z4JNCsFY2g0Lvb+BzbfA/H2
xzSVAKbWxec6W/ZlkR4ssQ5foCmwfwkiCV9IcfdgBTp1Zhp2mMeEjOwyYN5rKQPC
cPX2zLlbOTt95sGbZrQRgp0rCpcjrxNxRrjVV3/mystBTzkIdp/d3FemJYmTusMu
n9HdHcct+08+A6iPFMr3GgzOrqcfitLe1AIPatSHhBHJi7Jmacbs/l6WBC6hQ4nQ
MhuHu5Avq9koRiTWv66GDwD64ZGODKKTIfGWjgYPz0OngzdHY8AFkq2ON/NgYbyT
+wI1+ptneGRFRkfudZmzPjt0GU55QjrelrFlJ9NEI8d2yClrCRHu0x31yhCCrUZO
2Ef7exhWZ8aF99zXPfi/n36VAb3Pq6Uns1fNKxJ+s5/nMHxdJg9Ul7Vzcds4TtCn
7E/EkXEpynA6gLI1Yhj+DMn66PtpMAIc8czXIF9bacwhcgXH5Ig=
=gWBX
-----END PGP SIGNATURE-----

--ccnjslikpb7o2dei--

