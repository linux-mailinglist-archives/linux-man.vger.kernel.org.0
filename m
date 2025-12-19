Return-Path: <linux-man+bounces-4456-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C1347CD0E31
	for <lists+linux-man@lfdr.de>; Fri, 19 Dec 2025 17:34:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D3717305BEC5
	for <lists+linux-man@lfdr.de>; Fri, 19 Dec 2025 16:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 679C911CAF;
	Fri, 19 Dec 2025 16:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="asLANkR2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A205C4C92
	for <linux-man@vger.kernel.org>; Fri, 19 Dec 2025 16:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766161911; cv=none; b=XucSvLcTR6BU4Zb3yosPVD0Zv1bFKrQUuJZkfw/gu5gSTF9KYDxXQUvT5V9SQ/IX9ICLnLVA8/n5Ti+TEYiieYi5VLy+M1VtMR5KWt8gl/+q9MI9X1c6XLfDaPJ30/LitB/Gdu522HEbWkpw9lBTLlvCOes7x4OsaDH4OBrp19o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766161911; c=relaxed/simple;
	bh=8LEz1PI02NvjzlHhfjgkNkL8gznzc1I2AKDiAAZpCek=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Rp9oRDgFzdY8GAfRicCp7DjbNHiusDiFP3X0C+re+trHZO6qQE6E9PHE1uzWuoIQ1JfLvndsI9m17LjpM8Xl26gtgnHhDlgA2QOxdYWnBEIQgSi/s42u2bzPHvCFxHijJxotV9lmgFYUhDWD1qjLj9clLdYRRRqFW76XDL06Lpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=asLANkR2; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-78c64370309so15645497b3.2
        for <linux-man@vger.kernel.org>; Fri, 19 Dec 2025 08:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766161907; x=1766766707; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8LEz1PI02NvjzlHhfjgkNkL8gznzc1I2AKDiAAZpCek=;
        b=asLANkR2ut/amrnPqrmnV1aAjwLL9OoHY9idwDfP5nfAqHOT8m+RhM3WhPb8mvyH9b
         p0ozktiltSP6diLDKa82YZSbJQ5n0DdfzfgRpzdmlIVQCFjzGYyzxrrtMKcRijIOxSTP
         fKF079mLFXIMZLc0r6MoP+5ZJ+32+Ps8CrEI+p5NBVNRY0HzR7mr0CHZDSDgl40PYqA0
         6sfexQFRCiHx4iVc3BcctFWtbhwnu6JqcqNbdAf38ZWFYp9d3rC4lhP3wjjLa38skIG0
         ctq9IYRT878zf/Sls3vBB3Qw+YW0IIEJzU5n6WBS8JDzvGpT4iUUa9Ymv6GcVcqnnKEr
         Jnig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766161907; x=1766766707;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8LEz1PI02NvjzlHhfjgkNkL8gznzc1I2AKDiAAZpCek=;
        b=dTOePvKz+bD2rmtGJD6ybo8xmAO5xFmPX6VKxDm0Bme8QmQH9YjLpfhXxeLt3zu/c2
         ENBPVCctTw0aY5dIWunuNzLiSGQOgbiO8FLrfaK+1IRqkqwLB+rs1bD0ijPdH7U0KQ2/
         CVVX6vrwPsP+g7hq+r85949XESC3Ki9PAorwGTrbOx4qA/BHXEpzj3qIOzXKQv8UZOr1
         md2hy99hshRHFflPwhlKgHa/nBzyxYrMd59D/q25/5oS87gAKGjULUtPtejuJpiV0EWM
         QtjNHZ7yFEll3fbpMET6TyLJ/oLdrKlEe3AGsT6jMIcdiBAeSDHvBVeIzVKuzQGyN5cz
         elyQ==
X-Gm-Message-State: AOJu0YzmcOUlKaDm81IUOcCArDToOadMnHNMDRS06xW3CT0iB44l0mG8
	G1UqPnB01LGCz82wsYbbYCVvLgaJMALQU12nBIunUhQaw/og8LZSWhM0
X-Gm-Gg: AY/fxX7N1NjuEZrhO7wqio/yfUxeqT84BS8kOGOMQlUuWwKQFs4xk1DhTjOhG0O1xAy
	v5nDnucCaowDgIdnTjf5msqi6+LUVx3l2ppnN6rdkVFmaQwAFCaj3BbltMFxNpsuRlVCrESvdXe
	uhe1gXAFwLjsNFaEmWk9WdZOctlhf5jOnP60Y8JCB8Dk3F+th9wHbx7EnMICEWBA2Pr5PQHrtL7
	FD0hpJWJDVITE8U39fiZF7eSnSmiBH88eaNZWwNwLTH19N4Mc0z1QH7lsyhUYIku7jhImNSoW3/
	pMfKU3WWREiN4wNhxv946rjaFHmwTFjOrGgtIlvbqBocjpy4DikvNDjclCgcbpYCUMR4QZjXkRb
	7xs8HoouWKbEjslpzd8ukUbvjwLuxYXL1cdBTqznSl8sGJaM4CfDYtaxBEERNtW+KIw+UvjHpfI
	acUg7qlOmuB5E=
X-Google-Smtp-Source: AGHT+IGEZ7ExFVc95TBedJOVyNc/+P81xhpdY/97qC9lyEoBFQpz5WFD4fDgRTztZgmOGG+7FBNoqA==
X-Received: by 2002:a05:690c:6311:b0:78c:5c75:c4a4 with SMTP id 00721157ae682-78fb400f4abmr30984687b3.4.1766161907251;
        Fri, 19 Dec 2025 08:31:47 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78fb437380esm11635767b3.4.2025.12.19.08.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 08:31:46 -0800 (PST)
Date: Fri, 19 Dec 2025 10:31:44 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man3/getopt.3: ffix
Message-ID: <20251219163144.hrycalv44yxxzevq@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wc63nezgcfwz4cg2"
Content-Disposition: inline


--wc63nezgcfwz4cg2
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH] man/man3/getopt.3: ffix
MIME-Version: 1.0

Protect literals from hyphenation.

Such explicit protection of man page cross references will be
unnecessary when the Linux man-pages migrate to the `MR` macro of groff
1.23.0 man(7); that macro disables hyphenation of its first argument.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man3/getopt.3 | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
index e7518192d..2ed7c7080 100644
--- a/man/man3/getopt.3
+++ b/man/man3/getopt.3
@@ -91,7 +91,7 @@ .SH DESCRIPTION
 A legitimate option character is any visible one byte
 .BR ascii (7)
 character (for which
-.BR isgraph (3)
+.BR \%isgraph (3)
 would return nonzero) that is not \[aq]\-\[aq], \[aq]:\[aq], or \[aq];\[aq=
].
 If such a
 character is followed by a colon, the option requires an argument, so
@@ -137,14 +137,14 @@ .SH DESCRIPTION
 If the first character of
 .I optstring
 is \[aq]+\[aq] or the environment variable
-.B POSIXLY_CORRECT
+.B \%POSIXLY_CORRECT
 is set, then option processing stops as soon as a nonoption argument is
 encountered.
 If \[aq]+\[aq] is not the first character of
 .IR optstring ,
 it is treated as a normal option.
 If
-.B POSIXLY_CORRECT
+.B \%POSIXLY_CORRECT
 behaviour is required in this case
 .I optstring
 will contain two \[aq]+\[aq] symbols.
@@ -221,7 +221,7 @@ .SH RETURN VALUE
 otherwise \[aq]?\[aq] is returned.
 .SH ENVIRONMENT
 .TP
-.B POSIXLY_CORRECT
+.B \%POSIXLY_CORRECT
 If this is set, then option processing stops as soon as a nonoption
 argument is encountered.
 .SH ATTRIBUTES
@@ -249,7 +249,7 @@ .SH VERSIONS
 .IR const ,
 but these functions permute its elements
 unless the environment variable
-.B POSIXLY_CORRECT
+.B \%POSIXLY_CORRECT
 is set.
 .I const
 is used in the actual prototype to be compatible with other systems;
@@ -284,7 +284,7 @@ .SH HISTORY
 .P
 Very old versions of glibc were affected by a
 .UR https://\:sourceware.org/\:git/\:?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf0=
79e19f50d64aa5e05
-.BI _ PID _GNU_nonoption_argv_flags_
+.BI \%_ PID _GNU_nonoption_argv_flags_
 environment variable
 .UE .
 .SH NOTES
@@ -294,7 +294,7 @@ .SH NOTES
 and \[aq]\-\[aq] at the start of
 .IR optstring ,
 or changes the value of
-.B POSIXLY_CORRECT
+.B \%POSIXLY_CORRECT
 between scans,
 must reinitialize
 .BR getopt ()
@@ -303,7 +303,7 @@ .SH NOTES
 to 0, rather than the traditional value of 1.
 (Resetting to 0 forces the invocation of an internal initialization
 routine that rechecks
-.B POSIXLY_CORRECT
+.B \%POSIXLY_CORRECT
 and checks for GNU extensions in
 .IR optstring .)
 .P
--=20
2.30.2

--wc63nezgcfwz4cg2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlFffAACgkQ0Z6cfXEm
bc6Bog/6AtFw7gfvQ59kBLrm6CM+UyLPcFPzK868TLSAsA4cjfoMMwMvHwHcRVsV
eXKKUHGLMC57a0s+XPKkEuzoqFvHLXq9FM+psmj45UhzMY4ZwEuifyzvr6Chtedr
+PevyMF+vfB+vRtP4fGk3MAAIKReMODTrIySCGeAF304jwO/Yy7Wft1L5R/g95RF
V4bXHNP4F+nxxka6vKqLAVG83D9VEj9kMAewPjbce3+BgwbUjnfqTKFx/iqkJCO/
/P88iiOqIl5thS3KbRbA6oANBjO5eNqa7oIshWSTzx1SsW2r5r6wtRljnfc3ezHl
LzASUZ4qc+tVnPGr7LpAHeR5e4F0m1QNcfMvPwwoNh32Ad/abeUlPer9Vn67DTsI
t4mxQR+PueKQ2wcZ5BdUo0KdjRTvk3QM3ym1izD9sU6xqhnAovCNjlMWw0FrC49j
/GNTJtNuiBty1NTFdwxopllDQm+78H5EEj08EuPmQll2K/FmUQTQ7bOVFyhn4ykj
zCn7BVQVqAESpZJGz1a4hJsz9M2zrP7bDjFNY5/Nth15Z5qHEbD/lZrJkWLLAb8i
EkmBQcZEjOwhUx/3kBnoEkA279+1buaaM39HpGvP8+BGr7pjXkiaO69lLgMqkpD6
KSQ1Dqd54HgYyaciFof4dcbL5d+ioTBpVl+w3GLEsiHN73M9l18=
=BnA0
-----END PGP SIGNATURE-----

--wc63nezgcfwz4cg2--

