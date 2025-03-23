Return-Path: <linux-man+bounces-2637-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA0FA6CEFC
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 12:43:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22C6C1898AF1
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 11:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B24D204C2E;
	Sun, 23 Mar 2025 11:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MB+vP9Jo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACDB204C1A
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 11:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742730193; cv=none; b=Gb8kb38jmAyegfRjuvOs1Af1P0RcTXG5InYepts9SZY3Jg8JdxqKv2Ms77nIamgPEK9yVZL+27yRzIyfqMiF68bIr5pxBermMtWCXEbuJoyXDtMkKDh7bKdyms11hXCWykRUo0RaIkZb5qkWyY010WeKOgFX9S+qvw34hqkyZFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742730193; c=relaxed/simple;
	bh=te9tmxRXBeavDkJFDXy5kF2+o7r1qtAj1BLvwaJdBlE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LhymKPlQAt9GlVjKpp35f5c9wUiU7PtyHPGCqEGHuim8N1K59vwpeCe6vrMHAf4uET3rc3zUrtl0CtiKPRlcBMaMr5TItQs5PpOv0zPBmZ1trB/EiX8tzNzEwUI9lJZXMApIcHhVu/EqI4PPeYxW+DH1I4aTCQY1bXcUi6oyPXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MB+vP9Jo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D085CC4CEE2;
	Sun, 23 Mar 2025 11:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742730192;
	bh=te9tmxRXBeavDkJFDXy5kF2+o7r1qtAj1BLvwaJdBlE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MB+vP9Jol5IrPQbsWx7G16XDl3ajd6Av15K06ESiqKbfAT+QtyDnOCpHWBrGX6ocO
	 vy4gYqiwcrRn2hQYVLWzS8jCy0PnoB3EdpHGp61Cpd4zBdOQ+q48eut/nvirIYtnmG
	 hwO0oRfAfbuxCBDfvy9QwXrk8NQExtEbsOBAkEep+KtTh8jgPMFG1mLF0AJBMjqHwh
	 GE/Lye55oCWnw7/53y52AwneQIWcTErDiR21khVhXJLjtoNoFznlGm3rYxuYjMnshQ
	 5EQmKhFYA846wrB4+GcztHcWIN5x9Z40wMl8/VkI4etAOAIy0R6g8eq5/mr8dDGpR/
	 1zSxrzpoZjHlw==
Date: Sun, 23 Mar 2025 12:43:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and white
 space are not rejected
Message-ID: <4a1de398dce8303ce6a3d729f8afcf73fb487e5f.1742730109.git.alx@kernel.org>
X-Mailer: git-send-email 2.47.2
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <cover.1742730109.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4jcpwqal652p2cpk"
Content-Disposition: inline
In-Reply-To: <cover.1742730109.git.alx@kernel.org>


--4jcpwqal652p2cpk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and white
 space are not rejected
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <cover.1742730109.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <cover.1742730109.git.alx@kernel.org>

Link: <https://stackoverflow.com/questions/60955490/strtoul-what-is-the-cor=
rect-return-value-for-very-negative-strings>
Reported-by: Bruno Haible <bruno@clisp.org>
Co-authored-by: Bruno Haible <bruno@clisp.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/strtol.3  |  7 +++++++
 man/man3/strtoul.3 | 18 +++++++++++++-----
 2 files changed, 20 insertions(+), 5 deletions(-)

diff --git a/man/man3/strtol.3 b/man/man3/strtol.3
index 9323873a9..f9c9af4bc 100644
--- a/man/man3/strtol.3
+++ b/man/man3/strtol.3
@@ -224,6 +224,13 @@ .SH CAVEATS
     goto unsupported_base;
 .EE
 .in
+.SH BUGS
+.SS White space
+These functions silently accept leading white space.
+To reject white space, call
+.BR isspace (3)
+before
+.BR strtol ().
 .SH EXAMPLES
 The program shown below demonstrates the use of
 .BR strtol ().
diff --git a/man/man3/strtoul.3 b/man/man3/strtoul.3
index 9eb260dae..c4f8961a4 100644
--- a/man/man3/strtoul.3
+++ b/man/man3/strtoul.3
@@ -204,11 +204,19 @@ .SH CAVEATS
 and then determine if an error occurred by checking whether
 .I errno
 has a nonzero value after the call.
-.P
-Negative values are considered valid input and are
-silently converted to the equivalent
-.I "unsigned long"
-value.
+.SH BUGS
+.SS Signed numbers
+Some negative values
+are considered valid input and
+are silently converted to
+.IR "\%unsigned\ long" .
+.SS White space
+These functions silently accept leading whitespace.
+.SS isalnum(3)
+To reject white space and/or a sign, call
+.BR isalnum (3)
+before
+.BR strtoul ().
 .SH EXAMPLES
 See the example on the
 .BR strtol (3)
--=20
2.47.2


--4jcpwqal652p2cpk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmff880ACgkQ64mZXMKQ
wqm9ABAAlLOE/egstClhov/sdPE/4flylfLDt9k1EzXXkFI7+ARcry64+PLqmvxH
OccvBR8Ex+e4D/7eifXIhWHCOliFe0g73NANhAgJBKop1G8UjIUopgnwAZjwMZXF
edxGLuUytLSYFJ0UKtofpwD7I6wmwMwkPe++7DkyD79PyqnKyi6d9+v4XNFeHjhI
VcW3hSUo2u6662N9dWzibkwpQi7vve1JRRhHN1vU1tGf7YnhLa6yHZVJwAy5QwVQ
3wRV0MSH/n8GBIm8bh857kzQQxDDgH9/ffRotH4Y8aH6kmDwzxzJ3wgQ1gsxicij
uhZwsm8HGhAi0AtnIPn0k8HIWy6UgTSCXAVMpMm8IjH93iDyUvFYzOk96+4czRoQ
hsnJmy/k9uhLXEw3XmI1BDR8VVVG+37DYiPNU6HllWQYW04qLh6/QwPBYzwx8wRo
km3o2LdVbUbBlbNaYN9NYL/GtDKFvQF1GNPsFjO4aJO+6/8rUcWSS2MOm3u3I1dz
PVkIfWgFqXKthgJnUgir39f+EQuWoxTZx/2hLbkv87ksXDexLIOtyPAazxhqqMkL
KXH1pPCmWDGbszDHEH4t/4DonlMOmLQZ6ewIWkvmpCwT5JyCu9D1DXkfDvcl6vva
y5o8l+fcs1IH3Tu/im48DLWE5gLXDh6RDzVRAoZm4qYx5xL8lLc=
=aKWU
-----END PGP SIGNATURE-----

--4jcpwqal652p2cpk--

