Return-Path: <linux-man+bounces-284-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF3981C8CA
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 12:10:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5501C1F2259F
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 11:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 704EF14F97;
	Fri, 22 Dec 2023 11:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCFa6rKn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D272156C6
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 11:10:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC7A3C433C7;
	Fri, 22 Dec 2023 11:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703243438;
	bh=ddzWf6fay1U8E/xIxAv8dOQvyond/BCv4jQOtGXFA24=;
	h=Date:From:To:Cc:Subject:From;
	b=NCFa6rKn9DNYCqyJR7/0CvPRoyHTio8RrctIx4kbvEcbJ3NNbYH+AnOqA0MmcFlZn
	 RFmP4ylEC3sQsRjbEuHG4Sus8niIxH8YY2zzuYNycFriyqIOPJkrZfuPGsymyz6nB8
	 +oRTdHxEj4kfEF/f2G8O7xcp4RTydBnwGMJw9wdRzsOL/bIgpcmS0ywgMUWECxT8Q1
	 d7FR/FQMNW8QpMiWVaUK0a4MApBEd/1EYE3uEHosENHsLU+qzdm/9iW+zZstFAepGD
	 7WUpxewAMzffHqtP5lgL5OUNx+3KoDdHycrQIfZ5Ng48EKUGGpvVEcnrVblEExy6hu
	 O84YZJCA7kxog==
Date: Fri, 22 Dec 2023 12:10:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH] CONTRIBUTING: Accept patches in attachments
Message-ID: <20231222111014.9663-2-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2Me44KqTLZoisEVS"
Content-Disposition: inline
X-Mailer: git-send-email 2.43.0


--2Me44KqTLZoisEVS
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Dec 2023 12:10:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH] CONTRIBUTING: Accept patches in attachments

I use mutt(1), which works fine with patches as attachments, and the
mailing list archives also work fine with attachments.  Let's accept
attachments.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Any objections?

 CONTRIBUTING | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/CONTRIBUTING b/CONTRIBUTING
index ef531231d..b1374fe10 100644
--- a/CONTRIBUTING
+++ b/CONTRIBUTING
@@ -128,9 +128,7 @@ Description
           -  from a mailing list or online forum?  Please provide a URL
              if possible.
=20
-       -  Send patches in diff -u format, inline inside the email
-          message.  If you're worried about your mailer breaking the
-          patch, the send it both inline and as an attachment.  You may
+       -  Send patches in diff -u format in an email patch.  You may
           find it useful to employ git-send-email(1) and
           git-format-patch(1).
=20
--=20
2.43.0


--2Me44KqTLZoisEVS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWFbqwACgkQnowa+77/
2zJ+GxAAklDJAXun2FnnV2BqjG8qUA9ywYS/EuMYB0f971FGNzd7x7bbK2XoREPp
3ULqlvCOHoPxiBHCR+CRZsl1/iGJ1h/ijOhxTdhPgzIAaLmTZRVUuTk9vekjtlsY
gHeGOJ2bx7b4QQX9n8jL3Idl+qmDF37JZ2k3ZXbWPT9QQBEmsdffYUgeEw/xI8AK
hx/Bb4nCmhj6bQl4J6DY7gl7cQUbOgvJQEwryOY+N9QwKYJSN2BA5EAIC/1ABhzi
CEGs0sSfX1qiWexs8E6sIvdVerf9TkQr2uUkv/2R+2svT3CzvqWvfOclS3nxGbSE
+Uwzt/cqXIAcqOAPzicj2gdZ+b7bSScXlwlxUrwWMVNiy4wIrgQeWYPmJKvcVmKy
smhZrT0DgdN75i4+dnQGUR7sVPWXotaQZhOeJPrNeqGMEdoCXlLqCM462QdkgL1N
5OBtVrzbGhgy/40HvgeDA2CXlgAQQf1lCA543L+L48gdTxIPVf0yVlPvSatdaCJB
9pBs7Q8O3gjbwB09esA/QgIpOphjwxhqhCLPkbEGsBv485nxRhnqMr1d6ZD7/214
bdictL7Ex1vltGPJIDhJyRFYixKFeuTxivDeEhpHoYeWH87PZ/we3Yj+hjLtA4MH
RXZYRSdH7nS8vrIE0O1nEG8BwSrdyR1CxlO/HmaXffyormPFygo=
=9t3F
-----END PGP SIGNATURE-----

--2Me44KqTLZoisEVS--

