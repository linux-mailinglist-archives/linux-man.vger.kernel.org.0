Return-Path: <linux-man+bounces-474-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB946862A23
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 12:53:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FB8D281B86
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 11:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7357E1078F;
	Sun, 25 Feb 2024 11:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mphwhh95"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3366D101F2
	for <linux-man@vger.kernel.org>; Sun, 25 Feb 2024 11:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708861999; cv=none; b=RuPKgxeGa8XGfbOZDylT1xKWZ41IzIBjyEADH3w241upUsU3GB4QCVjjcQmV/A5oMyf+Y8wrNxo4/3GWevU4NjAv3zgXAA4amtSSFIIpg88sWdw7MHVT2Zvvi4204HUdBPYhFTOU+CrDoSKz3wkjC/4Wkc/TBMjKB56ylkfRp/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708861999; c=relaxed/simple;
	bh=ij9gfnuZpBnODFq1nTX4UV4giLnKo19ebbQOCFuPA4s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZXH26ZZZdS8SEKnYoihlG1sPAMWLLNYNunmbKb9tbbL2RPEM1nbisZZks9HdyNAvyZb4xdubAn+hAsqreIOVt6wXWECyfgimn9iRLkE7qYR6Yij4Z4UnVL/3DhjQSLWROaq4ZGv0x2N9N45PYBN0UKwXJib8aGifUX7QIqCMMYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mphwhh95; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB20FC433F1;
	Sun, 25 Feb 2024 11:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708861998;
	bh=ij9gfnuZpBnODFq1nTX4UV4giLnKo19ebbQOCFuPA4s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mphwhh95+tLfuCQP7+mPagi8uVBVFT06khSFVC0JvD6sLMgla1h/34NYrSe8Goc3j
	 QCLjhFLmt5pWYrVfJpKMVLLtuoohBF1o5JPJ2f4945cInYydn588dvVnSX0cTSIrH2
	 hJ0Ij5bBk4q2qCxy//tQ+Oy4my3/3EvFt0t87IYWotjqPrctucL8K7C+z2eaHyw3cW
	 jmYTp90PShah3zWr6E+SgXtZcBt2AZZtDawn0/8/L36GFaniA/vGzY2snlbc05qpcV
	 NhOJlSW89GOmIvwz7dMJalCors/GLg5y61/mjg3X1RVExIk+VfBpvMHd2qCdxfra1j
	 cO+3jDOO82V+A==
Date: Sun, 25 Feb 2024 12:53:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Thomas Orgis <thomas@orgis.org>, 
	Eric Blake <eblake@redhat.com>
Subject: [PATCH 1/2] sigaction.2: HISTORY: SA_NOCLDSTOP wasn't added in
 POSIX.1-2001
Message-ID: <20240225115307.438556-2-alx@kernel.org>
X-Mailer: git-send-email 2.43.0
References: <20240214095707.1824c25c@plasteblaster>
 <20240225115307.438556-1-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4fx2x6cdpr7qzmvo"
Content-Disposition: inline
In-Reply-To: <20240225115307.438556-1-alx@kernel.org>


--4fx2x6cdpr7qzmvo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 1/2] sigaction.2: HISTORY: SA_NOCLDSTOP wasn't added in
 POSIX.1-2001
MIME-Version: 1.0

It already existed in POSIX.1-1996, according to just a few lines above.

Cc: Thomas Orgis <thomas@orgis.org>
Cc: Eric Blake <eblake@redhat.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man2/sigaction.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/sigaction.2 b/man2/sigaction.2
index 0bbc44bd5..b64dcaf2b 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -1020,7 +1020,6 @@ .SH HISTORY
 POSIX.1-1990 specified only
 .BR SA_NOCLDSTOP .
 POSIX.1-2001 added
-.BR SA_NOCLDSTOP ,
 .BR SA_NOCLDWAIT ,
 .BR SA_NODEFER ,
 .BR SA_ONSTACK ,
--=20
2.43.0


--4fx2x6cdpr7qzmvo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXbKisACgkQnowa+77/
2zK2KQ//fN5p7uZjexP8OMF2Z14RwMu1mEwdEHt9sDtCCma0KssLzg03QrQPh7FI
B+Tdq0b/7dmbHgyN9d/p0fhccDjOSI7UZphPs1PPU2VXtAqKbqT0G+dATVmIsiVy
rIk/x8zEmLz8FSgcl6Sm6jKeMxpPaNoRK4igoLi9EJkHAik6+e0yAMUtGBkGipJo
dqW/ikNgazp3JBd3PPG5gqWHs4jKUmM3f2AiMI/VRrXD6YO0r7zj0IWiMb+6diiu
hf9JpftwhpiOWw/sfLZ6wVRyTNmR/tB7zLFoLGRU46o8ZM6Jo0bw61HWp7TvD9Y/
YU52YfvpTAY6ujF2AxXIQUV9HOjRcWw+PoLZmME1A7QYKxH1KceEU9JASRbS4xmn
06s7JC4CJfc6aYHdDDqWemVA9GrnD6qvXyyYN4OoMp/8ocWYOWIEak6MgyEQe7E7
I4JUG5RkBp3DS/VjKVdFPCI3dsXVdRwA3JafQ0SAbTuIrvJCWRMzRplx512ynP2t
o83MFyepasczMrbV5IW1vXflDwG1W7OlI2nJIKI/UrPI5q/ACNH1uPnSb5xiGkYX
f/M7yOI3P+vUcajxFSJvg5jOYrns7rePi+/QaaDsxP5v3X20HNnaj9NSSmU5Dj9P
UA55ri+kZJOUhc6i/flbFJ2U3DFczn8gPmWhlQjyBbDJ7EEW1Q4=
=coVE
-----END PGP SIGNATURE-----

--4fx2x6cdpr7qzmvo--

