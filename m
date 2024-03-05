Return-Path: <linux-man+bounces-533-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DFF871255
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 02:26:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E073E1F21FFF
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 01:26:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54EB212B6C;
	Tue,  5 Mar 2024 01:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJHAQWGC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C4763A5
	for <linux-man@vger.kernel.org>; Tue,  5 Mar 2024 01:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709601979; cv=none; b=HgTvs0P4AW67HXARp5dfV8P8sQ5QlAeaD1Sc/u9kvQYsmVI/umXXjsurWZPIYoYLbhiN2mgR7DHCkvj1p/XWsakOLqhemMs6Ftin2p4fXwZMJrer4LWC+az3RotqBzow4xhCwR7cWcGsBpuYFpNQt7QrE5w5xHMZSCtdMPiRarQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709601979; c=relaxed/simple;
	bh=SeSb/hoQJ59usdHuWwfnRd+MnrczE+IaysKUSHbBzNM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V7Kodr+pbj3Qny50k73ivDwjQFDGQh/MU6g78H5mQMOA4nj2ra+kMlCut1iik0zXZQu+rTUXuO/0b3euzK25o+z3I+8LlncK66Btxf7iSAu59h5XrN6MNXXyjkUL3q7gMyVx7ORLNJkNnGKdzPxhuPU9uSutS/MgmrWoc4ZaIYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJHAQWGC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25811C433C7;
	Tue,  5 Mar 2024 01:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709601978;
	bh=SeSb/hoQJ59usdHuWwfnRd+MnrczE+IaysKUSHbBzNM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DJHAQWGC56bcKcwCJhn/EXDiKC9I5Cq7LWBZUw6oEb8cufC8PSwJDbk0Le9ye9xir
	 CCNCau/TJCY+KS936rnzjs6Tn0wQLW5JnmJ0GE66/FRMkn89dqv2eG6myR9cYjqWwQ
	 YJuR1dOnvEOJT++PL3lsapSk1kAfe74NYVkMfpmSH24hfTQRXgP3j4Yb9pHMlZQfdl
	 MPEyn9w9zmeDhHEr1SqPSKKK1elN8+RcdQpoX/wmg/+fXWyAGi3RFJQ7Qz1GBMnUex
	 Px7vxmnSqaXMnTQ5lB3ERWgWzWd7TXHEgTxAB1ExgCosrUY7z3Ry41rLZFGibn1b58
	 +Z4a/yAm3B0hQ==
Date: Tue, 5 Mar 2024 02:26:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, enh <enh@google.com>, 
	Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>, 
	Stefan Puiu <stefan.puiu@gmail.com>, GNU C Library <libc-alpha@sourceware.org>
Subject: [PATCH v3 3/3] clock_nanosleep.2: Use 't' rather than 'request'
Message-ID: <20240305012507.9316-2-alx@kernel.org>
X-Mailer: git-send-email 2.43.0
References: <ZeZxSydsfskaQ5Vw@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jo2jwbor4lk7zfyj"
Content-Disposition: inline
In-Reply-To: <ZeZxSydsfskaQ5Vw@debian>


--jo2jwbor4lk7zfyj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH v3 3/3] clock_nanosleep.2: Use 't' rather than 'request'
MIME-Version: 1.0

It seems much more clear.

Cc: Elliott Hughes <enh@google.com>
Cc: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Bruno Haible <bruno@clisp.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

v3:

-  Add new patch for clock_nanosleep(2).

-  Patches 1 and 2 are still the same as in older revisions; not
   resending.

 man2/clock_nanosleep.2 | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
index 5bda50e18..7715ec385 100644
--- a/man2/clock_nanosleep.2
+++ b/man2/clock_nanosleep.2
@@ -19,7 +19,7 @@ .SH SYNOPSIS
 .nf
 .P
 .BI "int clock_nanosleep(clockid_t " clockid ", int " flags ,
-.BI "                    const struct timespec *" request ,
+.BI "                    const struct timespec *" t ,
 .BI "                    struct timespec *_Nullable " remain );
 .fi
 .P
@@ -94,7 +94,7 @@ .SH DESCRIPTION
 If
 .I flags
 is 0, then the value specified in
-.I request
+.I t
 is interpreted as an interval relative to the current
 value of the clock specified by
 .IR clockid .
@@ -104,11 +104,11 @@ .SH DESCRIPTION
 is
 .BR TIMER_ABSTIME ,
 then
-.I request
+.I t
 is interpreted as an absolute time as measured by the clock,
 .IR clockid .
 If
-.I request
+.I t
 is less than or equal to the current value of the clock,
 then
 .BR clock_nanosleep ()
@@ -117,7 +117,7 @@ .SH DESCRIPTION
 .BR clock_nanosleep ()
 suspends the execution of the calling thread
 until either at least the time specified by
-.I request
+.I t
 has elapsed,
 or a signal is delivered that causes a signal handler to be called or
 that terminates the process.
@@ -146,7 +146,7 @@ .SH RETURN VALUE
 .SH ERRORS
 .TP
 .B EFAULT
-.I request
+.I t
 or
 .I remain
 specified an invalid address.
@@ -180,7 +180,7 @@ .SH HISTORY
 glibc 2.1.
 .SH NOTES
 If the interval specified in
-.I request
+.I t
 is not an exact multiple of the granularity underlying clock (see
 .BR time (7)),
 then the interval will be rounded up to the next multiple.
@@ -216,7 +216,7 @@ .SH NOTES
 is
 .BR TIMER_ABSTIME .
 (An absolute sleep can be restarted using the same
-.I request
+.I t
 argument.)
 .P
 POSIX.1 specifies that
--=20
2.43.0


--jo2jwbor4lk7zfyj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXmdLcACgkQnowa+77/
2zK06BAAjMU/BbU5eY2XCEwwW34YT/d+m15HWe3KKHKPe2lodmXKvpK4M/AKFAmD
UYcTdKKE8B3UOPBtCA+SsenlbhA3YQU2jdZ9OkQb5fewc+3ZJCdnVnvVcxH2hPlI
hSfSlk4rRXbfY+qKEApbAG8TMljg2IsJCndoJx15VRjK3hK+48zo5SXaKoAgiHzC
oZLf5LX524iC+ujsqxE6CwE3vt/Uaj2kzhYLmS/zGV0LWPZgYZ7PvdGV/Emat+Gm
Pl2HydJbymeQoPbc5Oxhpw06Ryqi57h+P3pyL+mFsgNUWexm73vaYqncxH4EAU2r
D55CKHYLwJpOiIXyZuzvDkkLnU+dvZFKk3pI8EBPlOEbH0j6wK/t9v/K+TFKvDw3
FgEn3y9qXOOidQTStJzgXkaPISDp8eS+CFw4wda9R5wBXlERYbCcxHh23EZMl97c
d4JznVSjZbgHoT8t19yzv80wGycusqdpUEbUmLs9J+2C1WoW0r1DR7ms3ZARWdYY
J8TVMGKeKS/yD/2IBgqIzAIvt0JgQmQItOZj8mtl+Lj5UvQshWrh+7EEH+2hEt9Y
1e2hdK/XUWLrMBFGvbhiHirrzs2PtGr5YjRvINfk5BfE7BstYxcVL36BBAy0Vd+K
x8dlhs+I2qJAwdGLgyp3IZQlQcBfFJ7Gsm6SCaoncPTwnl36+bg=
=lQvo
-----END PGP SIGNATURE-----

--jo2jwbor4lk7zfyj--

