Return-Path: <linux-man+bounces-1924-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 749B89CFA48
	for <lists+linux-man@lfdr.de>; Fri, 15 Nov 2024 23:44:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71F7AB3FF4D
	for <lists+linux-man@lfdr.de>; Fri, 15 Nov 2024 22:18:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE78C18C345;
	Fri, 15 Nov 2024 22:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gnu.org header.i=@gnu.org header.b="ODKtxbZn"
X-Original-To: linux-man@vger.kernel.org
Received: from eggs.gnu.org (eggs.gnu.org [209.51.188.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B542433997
	for <linux-man@vger.kernel.org>; Fri, 15 Nov 2024 22:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.51.188.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731708673; cv=none; b=D3Yghl4XFr0HLSIfBTfLkRIwrq1XTL6ZO/90T2jtIbiMaXNN3ChPyIK3ouSDWjLgkFXeFpDi02kaLbG+xv08l9/OVCUhkGYRHJM6JBe9gU31ybrDhu9TWn510vmO6wlhnS1GWvgSNHI3MACYdpaFNx6iWxcuVeCi/nYWrSDZGQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731708673; c=relaxed/simple;
	bh=XMnayzwx47P3ND8MBntFQmivsYjb+Sv8GMWoVNNkUDE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=Z4FCU+bCUB51MizHy+aBx7kUPwXbf/7BdIz8B8OKC46NPOozyTj61tvgPz+WMgz6dc7uLhIGYv+/jvjFiP66EdWL0UOW4FCASdZSeWTxm++c041V2QAleYXh1PGAgULFWW+zLuphxuaM/hYkrHTJZoo2+Q0izPpdV97RSi0F0eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gnu.org; spf=pass smtp.mailfrom=gnu.org; dkim=pass (2048-bit key) header.d=gnu.org header.i=@gnu.org header.b=ODKtxbZn; arc=none smtp.client-ip=209.51.188.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gnu.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gnu.org
Received: from fencepost.gnu.org ([2001:470:142:3::e])
	by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.90_1)
	(envelope-from <ken@gnu.org>)
	id 1tC4Wy-0006w9-MX; Fri, 15 Nov 2024 17:11:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
	s=fencepost-gnu-org; h=In-Reply-To:MIME-Version:Subject:To:From:Date:
	references; bh=sXlzeTvTwV+dpieA29xXKhQuTOMmVjiB2yXfw5HMHaE=; b=ODKtxbZnMpgs2+
	Cohe8mbCrcw37nW0ETsVuGY7gc3DP47S33wb2jm3jjmFGqVMMc32V3bkChyxMhuyU2osDA5gQFExH
	hnSJGaOexvFwXvZtHR52LOcEyoblA4n/czOqiF5Z7+E8Dea7Z8m1ebIaJ9Y3aZ2e+Fa90fHKX595D
	lu93Xb+oOYryWNAJAP4oBWlPQyrlaAvYHeEsKLJ1Pb8P0oO1OOoCzrRIQPFlpAi2eg67JxT2CSpqT
	l+ewGImlzLzn4mYFfHt4Lcf95hlWAgxMJzUsfSj/pjvt4BTll/fAZfvs17x76WOISOXwrXyBqN13Y
	KCtMm4JxQMxQNcKa0zIw==;
Date: Fri, 15 Nov 2024 14:11:04 -0800
From: Ken Pizzini <ken@gnu.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v3] printf(3): improve description of %a format
Message-ID: <b932f13642502e063ef139d57b8f3c496023bf4a.1731707666.git.ken@gnu.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lM+tKXP1ix4Fx09s"
Content-Disposition: inline
In-Reply-To: <63799ebb-bcc4-45a6-82eb-27520d760191@vagg4fs7.msa.explicate.org>


--lM+tKXP1ix4Fx09s
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[I've incorporated wording fixes from Alex.  Part 1/2 of the previous
patch set was accepted; this patch assumes that part 2/2 was not
applied (i.e, this submission is not incremental relative to the
earlier one).  I'm not sure if this is the preferred way of doing
things, but hopefully good enough?]


The description of the %a/%A specifiers in the printf(3) man page
could stand some improvement.  In particular, it is not clear from the
current document what base is used for the "p=B1d" part of the format.

It can be inferred from the nature of %a that the base should be
a power of two. and it can be further inferred from the nature of
hexadecimal floating-point literals in C (as specified by C99 and
later) that the base must exactly be the number two, but it would be
helpful for the printf(3) man page to state this explicitly.  My first
expectation when reading the man page was that the exponent would be
taken in base 16; after experimentation my second thought is that it
is base FLT_RADIX (which is 2 on IEEE 754 floating-point systems, but
16 on S/390).  Only by going back to the standard [1] could I determine
that the exponent in p-notation must always be taken from a base of 2.

[1] POSIX.1-2024
    <https://pubs.opengroup.org/onlinepubs/9799919799/functions/printf.html>

Signed-off-by: Ken Pizzini <ken@gnu.org>
---
 man/man3/printf.3 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/man/man3/printf.3 b/man/man3/printf.3
index 7a96ec9c7..2129e26dc 100644
--- a/man/man3/printf.3
+++ b/man/man3/printf.3
@@ -767,8 +767,11 @@ .SS Conversion specifiers
 .IR double .
 The digit before the radix point is unspecified for nonnormalized
 numbers, and nonzero but otherwise unspecified for normalized numbers.
-The exponent always contains at least one
-digit; if the value is zero, the exponent is 0.
+The exponent,
+.IR d ,
+is the appropriate exponent of 2 expressed as a decimal integer;
+it always contains at least one digit;
+if the value is zero, the exponent is 0.
 .TP
 .B c
 If no
--=20
2.47.0


--lM+tKXP1ix4Fx09s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEMltU5GU/k1olzzK9oYYnjUJqOOkFAmc3xvQACgkQoYYnjUJq
OOkFTAf+P1stlTPP6PUawt4psHTqiqEbA+oYXnC9SaG+TWdC/OQC63JUXpzNlqAe
udLGo4FU2DDJDYfIa7S/UDOqesvRVIsksGjARklqT2kbc7wUsUFbxe+QKl+rpts7
k3Ywt3ZFl0DRGfuFGKDfoYnhNKFRW+w38akD/468WuePxJUuDXDh2TAtdAicvEDW
KCaoZLjRFxdnO9fJEqqQIHj1g0c51it3Wjq1uOwyUatiNgMTWXueJYD9Q2ysiXcV
r8cYb5QDM6e04RIMWg5INHzE20iyvG0vknYQQmYD4n0IYQ9U0Z674VWXM+LorT1S
NACouQtk4MVFJDDXKvfAmnTKVfOknQ==
=DusL
-----END PGP SIGNATURE-----

--lM+tKXP1ix4Fx09s--

