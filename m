Return-Path: <linux-man+bounces-4435-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D200ECC804D
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 14:58:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CCE430BF83A
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 13:54:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 746ED382D35;
	Wed, 17 Dec 2025 13:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9kNu7LL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3377E382D31
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 13:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765979641; cv=none; b=B5TKTvWUQqSNK5way2iYYgIhboY6M82Afu0BZ3wTF1Xz4LK6KSmph7QfodBXPp11uSx96hWM4iei8ZfUvEzK3bBUiKpmPUPQItY5K0cXIDnHsENhInc1v5HkCO/EqXu6L8bJy7gVj4qaHISOFfKH//gxcgfOHXFCrVP7tW9fQVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765979641; c=relaxed/simple;
	bh=95BYeCamCo8RGE3h3REzFL22JW1VUh+jmiauXDXbS6o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZsXxeFbAnMPaxPwsgRYcL9LwInp9FPgk7p+m1D6l4sqGOYcVyJbBRzjGuwc7bfcEhinsZsuSfavxoKa1w/As4LL4Vf0I8+Dc2uFe3hK8HtEcmobNGxwCP/KG18vSlpad1gCRrtUM+MEDfD41K0BJjjnPa3HkQEX7iFWUjGllzFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9kNu7LL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C961C4CEF5;
	Wed, 17 Dec 2025 13:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765979639;
	bh=95BYeCamCo8RGE3h3REzFL22JW1VUh+jmiauXDXbS6o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c9kNu7LL5NEw21JV64pIG187hH/ViGBl/VwQ9dSmoK0bfuKOFUvqhuex1vHZSlzN5
	 XRQaL6lm5sCra0Adc+3r72fBwGdc26ZJTuP5qY50BhupcPZUaz0A+SX+u5SFFx4gbE
	 At12PNfv3vebrMqyVfDf7Amfkxzvp+eOVEXMk8Ma+mzgX6MWeJTxbfNTUjp1NsdPhl
	 SyIaNU0LYS6NLxV2leSEpLhJyUVaxVRdN3N2DssoseqCGdHitLtLqkSALzzNdGmGHq
	 imEvtWSjV10h/6VDEGlGiwY99cRbp849cPYfELn/dVTnHgiC+hIwz/Kwh+5mdL/qdx
	 wtj3/Pqv0RUhQ==
Date: Wed, 17 Dec 2025 14:53:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: Re: [PATCH v3 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <u2652qyf3dbfmg6kswfb3brmztz7fa654nvrix7zqcrhbixxzq@exp7y32mu72v>
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1765979316.git.alx@kernel.org>
 <6ed874153c52cc3f44e37a7c42ba4c69555e04f4.1765979316.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lm62or43fijqikp5"
Content-Disposition: inline
In-Reply-To: <6ed874153c52cc3f44e37a7c42ba4c69555e04f4.1765979316.git.alx@kernel.org>


--lm62or43fijqikp5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: Re: [PATCH v3 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <u2652qyf3dbfmg6kswfb3brmztz7fa654nvrix7zqcrhbixxzq@exp7y32mu72v>
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1765979316.git.alx@kernel.org>
 <6ed874153c52cc3f44e37a7c42ba4c69555e04f4.1765979316.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <6ed874153c52cc3f44e37a7c42ba4c69555e04f4.1765979316.git.alx@kernel.org>

Here's how this patch looks like when reading the manual page:

	$ MANWIDTH=3D64 diffman-git HEAD^=20
	--- HEAD^^:man/man3/aligned_alloc.3
	+++ HEAD^:man/man3/aligned_alloc.3
	@@ -52,6 +52,39 @@ STANDARDS
	 HISTORY
	      glibc 2.16.  C11, POSIX.1=E2=80=902024.
	=20
	+   C11
	+     In C11, the specification of this function had several is=E2=80=90
	+     sues.
	+
	+     =E2=80=A2  size had to be a multiple of alignment.  Otherwise, the
	+        behavior was undefined.
	+
	+        Some implementations still implement that restriction,
	+        or claim to have it.
	+
	+        OpenBSD
	+               The function reports an error if this restric=E2=80=90
	+               tion is violated, without exploiting the UB.
	+
	+        FreeBSD
	+        jemalloc
	+               The documentation claims to have this restric=E2=80=90
	+               tion, but the implementation works correctly if
	+               it is violated.
	+
	+        It was only a theoretical UB.  No known implementation
	+        has ever exploited this UB.
	+
	+        This restriction was removed in C17.
	+
	+     =E2=80=A2  If alignment was not a power of two, the behavior was
	+        undefined.
	+
	+        No implementations ever exploited this UB.  It was only
	+        a theoretical UB.
	+
	+        This UB was removed in C17.
	+
	 NOTES
	      On many systems there are alignment restrictions, for ex=E2=80=90
	      ample, on buffers used for direct block device I/O.  POSIX


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--lm62or43fijqikp5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlCtfMACgkQ64mZXMKQ
wqkPvQ/5AeqoZG9ZjRo1vIXPScQhBVN4Yzv810COa+Ak8a/+ontII7Ef21sSblug
4g2WlBv1PsF6QKqvIVZuFuNXtsIs0ww79qJIkJDV67lQHCCiYhac65KrAigUWB/j
wz5YMZ7uSdNyQuMsNCzF7lHvca5Db2SUfv8Ah95Hbe1BwlD47uqVzZErhj0jZOZx
sYSa7+P+O0HDqqnRDKegIIMO8sNs/t6cM4WX4IDNEnsKiA36d1BaBK7d9oW99KJx
m/BMU5alNeeqUOFPPOqOYKCxeojcMSoravbOkvbwhlaxhtmQiGvsN1qd0M/3UxG4
oaZHZQAAaWqVMRSzNPxbwGbEBsZrS5m0XWVj3jGW/bOsh4MrBA/aJG+CAS8br7J2
1SctRieH5Zr3R79/jE7ywya2832XvH2YImeyYxPpZu19qXZoXIJtnJBMg6uhbFo8
RwyEG6FrtS+tJEXtphwM5XYu8wRfSodZB+VYmfrjI3NQ1pwln6+gSepTTVEzjR+2
1IlbfH+ikeiY4zLd9ecKseGn2VMvvoF0osCziHd6B3uh809nURup/CAB5k6X+CdA
3QDs6srozu1ikVuwCaEZOp7bo4MrJy+QVP8yROwGAQcNvFgeDwoIqCVRJ6pF2Zug
P7I7+ZSI/2VHVGCqX9T4qnHxvZQNRMbTGWjy9dP07CVr+RQSGHQ=
=gdXD
-----END PGP SIGNATURE-----

--lm62or43fijqikp5--

