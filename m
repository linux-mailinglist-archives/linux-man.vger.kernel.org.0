Return-Path: <linux-man+bounces-5051-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAkWLxaQh2mCZwQAu9opvQ
	(envelope-from <linux-man+bounces-5051-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 07 Feb 2026 20:18:46 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25522106F50
	for <lists+linux-man@lfdr.de>; Sat, 07 Feb 2026 20:18:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F163300B9A8
	for <lists+linux-man@lfdr.de>; Sat,  7 Feb 2026 19:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4541D2D47EF;
	Sat,  7 Feb 2026 19:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="W6HfsmLK"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FAB231C91
	for <linux-man@vger.kernel.org>; Sat,  7 Feb 2026 19:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770491921; cv=none; b=L5ba0T2/JEsdkKof8c2s1GbRzuJGMwyZcjg5aAK2DP/8I2PfurRlooGxMIaHQa2xmrGyNM0FhBRGHJO9pVf6EK/yXz8dswjodgARZtydjv+6xnNGgvOEttvodrYusxXxI/UkRDnzRg6Fyd4s0Pt3TCSQNMeTnk9bcjr4IJ5WgDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770491921; c=relaxed/simple;
	bh=CD0Nrj3Fw5EWQwWDF0PsNSUteh5+57w4eQHvusikpeM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Uq8ULMybqsJ1w2fEYznFNUXdlLuAWizeMB2itPIpOWXczX/XXuzg8uiscK1/aYxS1AgTbRyeE5TiJ44+6iEWXYCtKuqWClchHsu5Okb9vmLiKBaj+EbsmNVxNwEQgjTUxwkS/bzB6dEt82uC5oUwG8tb9KPUmQu830JQHvStGWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=W6HfsmLK; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1770491918;
	bh=CD0Nrj3Fw5EWQwWDF0PsNSUteh5+57w4eQHvusikpeM=;
	h=Date:From:To:Cc:Subject:From;
	b=W6HfsmLKX07NfUZLByI1aTF+xUTVN+/O9gqyhREinxqXCHUv6hhIfda9L4RPcescP
	 h9AOiRLdjJk+ekCxRfwutZoR5QONJPamki6gpgG9SjJsWqy0/GnH51JOcJv9KdNXZa
	 U0ZLKmXqOyDziuRCb1hk6CTd5lE0JovPirj72hO2qIKfrPu+LvsTgXz6nJM7odnHe0
	 Zb68IkukgfZSmkzbDyzMasKuG5VxXEPyGca+cgYRQMcYeYk/rZD6H7KojA5xBLVRk4
	 NzB9O0eWGg8+ZaeGPE49kQnhvZrp+1VjBZKD+J/fHpY7lDSgeYpE+oUJpgFsnmhSez
	 HGw4zRduZLPCg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 7CE671CD8;
	Sat,  7 Feb 2026 20:18:38 +0100 (CET)
Date: Sat, 7 Feb 2026 20:18:38 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] FUTEX_WAIT.2const, FUTEX_WAIT_BITSET.2const,
 FUTEX_WAIT_REQUEUE_PI.2const: wfix
Message-ID: <2ekfzlznhv7yld7dghj5rt7uvenp6uji5jrmfm6xoije6ycyny@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qt3z7zvsv6iubzu7"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabijaczleweli.xyz,none];
	R_DKIM_ALLOW(-0.20)[nabijaczleweli.xyz:s=202505];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5051-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[nabijaczleweli.xyz:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nabijaczleweli@nabijaczleweli.xyz,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tarta.nabijaczleweli.xyz:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nabijaczleweli.xyz:email,nabijaczleweli.xyz:dkim]
X-Rspamd-Queue-Id: 25522106F50
X-Rspamd-Action: no action


--qt3z7zvsv6iubzu7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man2const/FUTEX_WAIT.2const            | 10 +---------
 man/man2const/FUTEX_WAIT_BITSET.2const     | 10 +---------
 man/man2const/FUTEX_WAIT_REQUEUE_PI.2const | 10 +---------
 3 files changed, 3 insertions(+), 27 deletions(-)

diff --git man/man2const/FUTEX_WAIT.2const man/man2const/FUTEX_WAIT.2const
index 7d6681c1c..94cf4a997 100644
--- man/man2const/FUTEX_WAIT.2const
+++ man/man2const/FUTEX_WAIT.2const
@@ -102,20 +102,12 @@ .SH ERRORS
 See
 .BR futex (2).
 .TP
-.B EAGAIN
+.BR EAGAIN " or " EWOULDBLOCK
 The value pointed to by
 .I uaddr
 was not equal to the expected value
 .I val
 at the time of the call.
-.IP
-.BR Note :
-on Linux, the symbolic names
-.B EAGAIN
-and
-.B EWOULDBLOCK
-(both of which appear in different parts of the kernel futex code)
-have the same value.
 .TP
 .B EFAULT
 .I timeout
diff --git man/man2const/FUTEX_WAIT_BITSET.2const man/man2const/FUTEX_WAIT_=
BITSET.2const
index be40d57c6..5f165adb4 100644
--- man/man2const/FUTEX_WAIT_BITSET.2const
+++ man/man2const/FUTEX_WAIT_BITSET.2const
@@ -147,21 +147,13 @@ .SH ERRORS
 See
 .BR futex (2).
 .TP
-.B EAGAIN
+.BR EAGAIN " or " EWOULDBLOCK
 .RB ( FUTEX_WAIT_BITSET )
 The value pointed to by
 .I uaddr
 was not equal to the expected value
 .I val
 at the time of the call.
-.IP
-.BR Note :
-on Linux, the symbolic names
-.B EAGAIN
-and
-.B EWOULDBLOCK
-(both of which appear in different parts of the kernel futex code)
-have the same value.
 .TP
 .B EFAULT
 .I timeout
diff --git man/man2const/FUTEX_WAIT_REQUEUE_PI.2const man/man2const/FUTEX_W=
AIT_REQUEUE_PI.2const
index 0ac1cebe5..4fa1520f6 100644
--- man/man2const/FUTEX_WAIT_REQUEUE_PI.2const
+++ man/man2const/FUTEX_WAIT_REQUEUE_PI.2const
@@ -72,20 +72,12 @@ .SH ERRORS
 See
 .BR futex (2).
 .TP
-.B EAGAIN
+.BR EAGAIN " or " EWOULDBLOCK
 The value pointed to by
 .I uaddr
 was not equal to the expected value
 .I val
 at the time of the call.
-.IP
-.BR Note :
-on Linux, the symbolic names
-.B EAGAIN
-and
-.B EWOULDBLOCK
-(both of which appear in different parts of the kernel futex code)
-have the same value.
 .TP
 .B EFAULT
 .I uaddr2
--=20
2.39.5

--qt3z7zvsv6iubzu7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmmHkA0ACgkQvP0LAY0m
WPEztRAAuKWW79Z4dpW3A7WljFlKaxiIPIT9jV5GItCoPAdGqv8FgGnHf8OLp969
lfMggnyYa14zqy4/2u3v+5ExRB66ZZgsOVcvTLU+xv2mhdB+k4CJovr/naKt2rj5
K4fj0LLGPkVBQFC8wiLUDpEl+CvwVJ6CZBHGME6aU8/I2F6QWqUqcdli6kl2BgRS
0C2y0O9qZl9spXWf3IL4J7YTgbAYsQ3SEIRR3XbJqWKiPv5dadyc0e7aOUqGasNf
G8lce/kR5gIm9PAA6chizI+cgEvjUISz8iB6CIvwAGKIGbY/3r9noF8HkYI1HFqL
X9Us7D6tOuFEkUHZ3Tp79b/M7jynzofO+n/UPRdGpDWJHaRbc8J2xgp5Vj2eGXVK
lYdwU2TuJ6bNzJZANgUZ/PfnS7+WYs9rIkbdji6B5ZN5/5vbfD0Aox+YiuUbx96S
9VSlUSbf91ucKIjqUb3WZxggxIhUy9RL0NcGD6sRs1pAhal/2amHstzX+greN44p
l/sC1wMKJ+OxTQP1niEuY/fVi0MzKSpxKCcoPDLXfNT14TafoKO9q+o34bYHb/0H
5cFGv2Zo3h2BmmrVJiv4Z2PWtTul1aOBP6x1xJjQTPUa0zHNdYcmpYw6/sz4mk1l
W2R2VxB9omqp6joSbfJOeIYqAW1/vgEDUnSJDm4+clSeokAVGAc=
=laeK
-----END PGP SIGNATURE-----

--qt3z7zvsv6iubzu7--

