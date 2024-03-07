Return-Path: <linux-man+bounces-554-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B82BF874615
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 03:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58F122832DF
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 02:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF93829B0;
	Thu,  7 Mar 2024 02:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwiE4kDm"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7105672
	for <linux-man@vger.kernel.org>; Thu,  7 Mar 2024 02:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709778304; cv=none; b=UVlIwg0850dYt52Z15oQCBb7CB9z5exqUEfWUK8rtu7XUJVVTTRdQISxbud9K9V54cwh5fxwGx2gmaKKtMf4FIqruMUvD0Q+Y18Gtl4ggI15essPXPF1vtanWv7PYgXjG2B4oTpgkj6rdh+e0XkTMj8Fp5mlCEKiJhHi9WmwvIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709778304; c=relaxed/simple;
	bh=yzWF0UhcbJv3ZKtgJIICq8wSG/VZZphqH/p7uyqidLc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=LWfwqoFHDEcf822qiv3ahGsq7dAkcbgIfu/9mWbpbNcoiBXToGt9VkEY/7xV55zukyfnFxlA9Krv5lB5q1qbAJeYxfAYqjTegdxOPmy3ZtGDKZSb6qG7knnmkW3EJ/mBZs/S8CqeKDU/+CCm9HfZFoQvxJZGhn/IMV9UhA0jwCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwiE4kDm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7E73C433C7;
	Thu,  7 Mar 2024 02:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709778303;
	bh=yzWF0UhcbJv3ZKtgJIICq8wSG/VZZphqH/p7uyqidLc=;
	h=Date:From:To:Cc:Subject:From;
	b=ZwiE4kDmFqezIw7QC8wdIa915WJh2BVoCrYYN0U7XRolNU5pBtT40OjFnsYr+0h+N
	 g4pQU4Nf3DuuQg9TPmjE8wqFbxL+K3FVqbN896UTYCo/HPTxwspQUYfrcIuPjM1kug
	 H1FrcEQd2g8i5ykXx9hmtuesasT12O3kO46lGB42Wz0W4Wea1yhZfR6W8w2iCvASrJ
	 x8qRG9U3wJezbrzEfLm7gvaj5HGY8fsJ+pebE/ot0/srSaC5TbwqNvVljQwAzhLmyf
	 ln4EtxQlWXbBwcL/5wcwJWiGSD78DayCqfj+a+P7Zmhe3I2ad7QwQeCKaixGEOPeO1
	 Gf9pBbPfdC7MQ==
Date: Thu, 7 Mar 2024 03:25:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Guillem Jover <guillem@hadrons.org>, Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Subject: [PATCH] TIMESPEC_TO_TIMEVAL.3, TIMEVAL_TO_TIMESPEC.3: Document these
 macros
Message-ID: <20240307022451.91077-1-alx@kernel.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n3kcox4o5ldhxeix"
Content-Disposition: inline


--n3kcox4o5ldhxeix
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH] TIMESPEC_TO_TIMEVAL.3, TIMEVAL_TO_TIMESPEC.3: Document these
 macros
MIME-Version: 1.0

Reported-by: Guillem Jover <guillem@hadrons.org>
Cc: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/TIMESPEC_TO_TIMEVAL.3 |  1 +
 man3/TIMEVAL_TO_TIMESPEC.3 | 32 ++++++++++++++++++++++++++++++++
 2 files changed, 33 insertions(+)
 create mode 100644 man3/TIMESPEC_TO_TIMEVAL.3
 create mode 100644 man3/TIMEVAL_TO_TIMESPEC.3

diff --git a/man3/TIMESPEC_TO_TIMEVAL.3 b/man3/TIMESPEC_TO_TIMEVAL.3
new file mode 100644
index 000000000..30ab755d2
--- /dev/null
+++ b/man3/TIMESPEC_TO_TIMEVAL.3
@@ -0,0 +1 @@
+.so man3/TIMEVAL_TO_TIMESPEC.3
diff --git a/man3/TIMEVAL_TO_TIMESPEC.3 b/man3/TIMEVAL_TO_TIMESPEC.3
new file mode 100644
index 000000000..6cdd72e3e
--- /dev/null
+++ b/man3/TIMEVAL_TO_TIMESPEC.3
@@ -0,0 +1,32 @@
+.\" Copyright (C) 2024 Alejandro Colomar <alx@kernel.org>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH TIMEVAL_TO_TIMESPEC 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+TIMEVAL_TO_TIMESPEC,
+TIMESPEC_TO_TIMEVAL
+\-
+convert between time structures
+.SH SYNOPSIS
+.nf
+.B #define _GNU_SOURCE
+.B #include <sys/time.h>
+.P
+.BI "void TIMEVAL_TO_TIMESPEC(const struct timeval *" tv ", struct timespe=
c *" ts );
+.BI "void TIMESPEC_TO_TIMEVAL(struct timeval *" tv ", const struct timespe=
c *" ts );
+.fi
+.SH DESCRIPTION
+These macros convert from a
+.BR timeval (3type)
+to a
+.BR timespec (3type)
+structure,
+and vice versa,
+respectively.
+.P
+This is especially useful for writing interfaces that receive a type,
+but are implemented with calls to functions that receive the other one.
+.SH STANDARDS
+GNU,
+BSD.
--=20
2.43.0


--n3kcox4o5ldhxeix
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXpJXwACgkQnowa+77/
2zJBkQ/+N9bLQTrqUaDZI+NeExe+xKqvR+lOOP/py5SwbvbvUykJQkc+FT0yDLQh
gafbVDKXpe1rOzl92sslPmnEoiojfKJpRE6GEPJ8+IgwysbygeN9k3cIeKzA0hsu
EZB58+0UDVYQ7mMuPPMYeiGgAJ3UekH7YFMkw6kVrmhtive1nXBskmHfGv+XcO4a
JZbbktBdX+yE1LJbi00L7eBVBvZqPpTkqPMm8sHSvSGwNrzgQ0NukWmhLfLePMWL
Vqft5TXDpnoRoBwnt83T2pKrW3r/k2N2GnG34Mjb4PZViPeZMs1zv/vYkWTK5kqk
qb3CIi/JNip0r3EojDcKsR9HXeHnLZ6YbejloUAf0u7PhSP0dcNQz/Xu1Uh2qIZT
sxIvUocaVcmVV34SFR6ZgzBXHaU/27SzuxdQf8baHHg6yrA0gW9Cd9waoQuayMbe
7YNFIW8fk+uQz1sdvO9/fDsWTVBOK6uZTKQXcu1saGMus7pAIsMi0TYtft3PRzEh
UjGOVlM0DPbsQHZ/ATor02G7HdL73pW0aSVNMVJWk5oUKydmSQ8giOUQx6cHWAYZ
cOBU13r3Gp3qPgedvzZTsR2Gc4AgfqInAlAUzL+b+3FcJcqhUgm10ikmZLFWMfoy
1Uj0lTtMvlIah5uy0h7kQORqNNkcF5ZA/vvmhUDxw69a6FuhsSo=
=+nP9
-----END PGP SIGNATURE-----

--n3kcox4o5ldhxeix--

