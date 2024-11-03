Return-Path: <linux-man+bounces-1856-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D141B9BA369
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 02:17:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E4BA1F22354
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 960A7AD31;
	Sun,  3 Nov 2024 01:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJcFH1IJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5301BA945
	for <linux-man@vger.kernel.org>; Sun,  3 Nov 2024 01:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730596643; cv=none; b=YOFJyOIJOCaBDFZQ7fkGVWd1z8fK8lsgvuRLl8xuCGIg6+Qy+djo8tocG9jVJCWugyZwab7FkXi+6bidG1tq/Gjr9bfdLyrj5bbeVi4ojV6q5HR6HtL3mXXZOi9MeXEaBhwovBctMrqd3jW+ptEN7N82CeWiyd6PTgVDjwfYoWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730596643; c=relaxed/simple;
	bh=I3BHEiL2WPaqxyJ50ZxmCpZS4q1COEeavtJrPcsLsRg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hc5ZfWqlX/zvQmHz2pUM6Ee18rQB5AvUkHzi57uR1elfriAVX8s9BSsSIRGzk7Wh1w5Bf2vmo4mk99NswFIT1WbGhx3OSw+bJxk5WLB+6oDL1LpR0E9kZt5LyZcun6lkZdc2ejHXVTIV/J73M85Q+hP6EHHKJQ+44bulO3CVWIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJcFH1IJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9ECCC4CEC3;
	Sun,  3 Nov 2024 01:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730596642;
	bh=I3BHEiL2WPaqxyJ50ZxmCpZS4q1COEeavtJrPcsLsRg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HJcFH1IJlIzSx37lgRG8PB1aLHYZGxezpP4hgUVVfMAaAkvuEGga11WEy9jw5YPTw
	 AVr9Uyu6d4g+539Du/zh0PcAxdQIqEbETmCZ1R8Nc88RvhZbb5VgkXwnIIm7Rr54kH
	 KxhxFP7SSmNaj1NKcN2mkal5Bn33CDcWgLRyUqAX3uX1iH4HJNlZNTTPDJFVsOTlgy
	 VGnSUpunsaLLJh/eg7XYAQzcZrr6ykUmjTgWAO/ArzM6V5AxqOE+qEmUPj2mv9HkBE
	 bzVWA2Hb9jwOPyCh2CyxJ5UvDV4OzkSicIIlsXfHjiMtwxg/q+9AsKFmlOTidhFVlq
	 P7gTPa6duJeHQ==
Date: Sun, 3 Nov 2024 02:17:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 3/3] src/bin/mansect: Preprocess with preconv(1)
Message-ID: <929d1df174d5656e3e14228d990db258e0405459.1730596445.git.alx@kernel.org>
References: <cover.1730596445.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="F3NkBm+LAwKP7GBP"
Content-Disposition: inline
In-Reply-To: <cover.1730596445.git.alx@kernel.org>
X-Mailer: git-send-email 2.39.5


--F3NkBm+LAwKP7GBP
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Nov 2024 02:17:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 3/3] src/bin/mansect: Preprocess with preconv(1)

This doesn't process the pages in a significant way, and has the benefit
that it writes the name of the pages in the output.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 src/bin/mansect | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/src/bin/mansect b/src/bin/mansect
index a13a6b534..e1e83a8d8 100755
--- a/src/bin/mansect
+++ b/src/bin/mansect
@@ -14,13 +14,14 @@ shift;
=20
=20
 if test $# -lt 1; then
-	cat;
+	preconv;
 else
 	find -L "$@" -not -type d \
 	| xargs grep -l '^\.TH ' \
-	| xargs cat;
+	| xargs preconv;
 fi \
 | sed -En \
+	-e '/^\.lf 1 /p' \
 	-e '/^\.TH /p' \
 	-e '/^\.SH '"$s"'$/p' \
 	-e '/^\.SH '"$s"'$/,/^\.(TH|SH)/{/^\.(TH|SH)/!p}';
--=20
2.39.5


--F3NkBm+LAwKP7GBP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmzx4ACgkQnowa+77/
2zIORRAAoxuFnwc715DwvXEgsUOAfiZ2s6xA2Sc5BlzODfEktzJYZIyk9bOLW3Fc
uUsS/NdougZvM7w8wyj5U+/YUzkKMYrADij8nyiZd9q31+8gqwFuRGAxDU/68zv9
2h08miRgihWoh5N+rXYHKsnhtsrmm+o9HdkrlTs6tqp4+407XFVsWukXeUgmpDeM
6VytgdbUCeZXTRo039BdflsMy+L8SZIHcJUrxZq49Dnv6gCw+43Ihwi+V0a1qK5+
1ea4FqOMaRvL7wJB60Ds7/wUGkS0Mrx4n0r9MeXtLbL7TFl9XhwnWqvOZhkryfGj
dX/QHlLHxqrFnBFmD4CjEiqo7QxjCCwQle/0FcJUJJkArVKHcciwWONHbpG4g/1p
7mRXgozUeM3Zkti0jbefOZi5+2iczVOpaz6g5PMYcNUga/8UVMq+V/3FA/WiEaXP
//UJSZD/kpxxQPvJxcnQNCBj8BpXg+a8GM5NPuOZ+9tTyTm+wsG9nN9jj1o+wrX2
1gMxWUWVlmGTMWrmzKKOogk/bBJV6glacO9efLDTQ8ItVZkjgyDftgvZor2w7WvK
HAvccn6N91D4Xr987Hnj+q0vjpAVoNFaz5yG/EFuQxDkP+PZxZgDpQ79aXVx8OSB
F3ncUo42k1kAJJcehZzzOK22yHP3eS87QqO7JT1yYHnOeyis8xg=
=KFp+
-----END PGP SIGNATURE-----

--F3NkBm+LAwKP7GBP--

