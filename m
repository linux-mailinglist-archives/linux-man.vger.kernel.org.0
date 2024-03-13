Return-Path: <linux-man+bounces-580-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 103A087A969
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 15:27:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41C671C20E5C
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 14:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD0D946447;
	Wed, 13 Mar 2024 14:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="FauAzi29"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F6544369
	for <linux-man@vger.kernel.org>; Wed, 13 Mar 2024 14:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710340018; cv=none; b=u/cKL40paGWqQO/UQjdJeGJs8MX0isY2UqAaCaAO2g9Yqo2l5Kl2AnINuO30slzOlO96ALmYFoZvVwam37I6m2UkLnK5FiEJdl0449r2pT7iusUEY5JwCzCry2Kka0ItEtuJh9T9p2DK76qDZHw8Pzr9XX4ZWMKH+I7yRHi8Wh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710340018; c=relaxed/simple;
	bh=kbtC6vIPG/ADNkucl0Rezmwu2GQNEGcP7k0zoAidT2o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nj08HAdPxx1s5z1wTGs1nSvhsK8KXHIvlosMjcpMgQUpTnqaLqyveBpBQtKcW1DjsmtYMXAqfecQCmQcNSYnqWdIruNle8o/7akhzFxsQ+bC974I2csGzO/0K/kA+143NC0e+iiWdMNU6AMYUIZCQAdFSsEFOQ9haFkGIvDvlMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=FauAzi29; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1710340014;
	bh=kbtC6vIPG/ADNkucl0Rezmwu2GQNEGcP7k0zoAidT2o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FauAzi29dcwrWfh1idoyOJp+D8xG5InmlfteVrkvphXnmAsVIVV8K2XJoUdmRrX2L
	 13YpGgDZtfRQGgMQFu4un2Q2wLWGKCO+Rncm+LBsIr78kLzYmOZtDQQNyfGHIkd6zj
	 EUVLUzbT2I1qoO5E4NlQsxgRI1McVN2ehUdtYTE8kbe7/Wga2RNczi5InrHJePSYNU
	 X8a+AtvvcwXK8x8/zJJJon3+XEmJgPP1SeIUInHW8A9x2q1mG+7wV7k1lYSKqU+Lin
	 BDAyt9m3dOb580zHfy3BULdIKvfBO+y7pAWeucY1kiivqzXBuvRhWB50SPO85UfD3S
	 QHCRrxB9StEnQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8F9C11016;
	Wed, 13 Mar 2024 15:26:54 +0100 (CET)
Date: Wed, 13 Mar 2024 15:26:54 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 6/6] getrusage.2, proc_pid_io.5: crosslink
Message-ID: <9a382ec3d10bc896e818bd1a932ea9c95756d048.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rf7yxebtzxr2235e"
Content-Disposition: inline
In-Reply-To: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--rf7yxebtzxr2235e
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

These serve the same purpose from different perspectives

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/getrusage.2   | 3 ++-
 man5/proc_pid_io.5 | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/man2/getrusage.2 b/man2/getrusage.2
index 8baff09c4..2ae9dafa4 100644
--- a/man2/getrusage.2
+++ b/man2/getrusage.2
@@ -246,4 +246,5 @@ .SH SEE ALSO
 .BR wait (2),
 .BR wait4 (2),
 .BR clock (3),
-.BR proc_pid_stat (5)
+.BR proc_pid_stat (5),
+.BR proc_pid_io (5)
diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
index 181717192..d0116ba13 100644
--- a/man5/proc_pid_io.5
+++ b/man5/proc_pid_io.5
@@ -92,4 +92,5 @@ .SH DESCRIPTION
 access mode
 .BR PTRACE_MODE_READ_FSCREDS .
 .SH SEE ALSO
+.BR getrusage (2),
 .BR proc (5)
--=20
2.39.2

--rf7yxebtzxr2235e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmXxt64ACgkQvP0LAY0m
WPF92A//Vi1xB14OvEdmXOgFafgAOxIay0GsukQwojItTntGxQ3P5v8OHsClln4V
fiDa8TIDBuWcOttkq+QJjTX74DsUZc57ydyQtepAE+J0ct+c7SeRHvJyh5bZn5TL
PFIYevfXaQ5jCx3DCMT3DyE4QxrvJ5e1oc+Kid8D/goNcBgkJ6Az17O2a4zHL2zv
Zgqvu7FZagfseghxfrhZ5aNdTyCRMTqtK6evvCqQL5u1ee+unZjbrW9VyKkjwrwJ
Jdfv8UrRjPY1dUiRx4B2WkD3k3zfMN9rMmJMDwnMy17ROC6Kz2N2YYHaZxfRUBWW
0EWfBWV3GlYa5TGi1cgr/CjV3kl9+lRfCNsojqxl34H3z2MWiPZVE/XA7saZ3DN3
eIeanhxcdaoc3CFRb5BeJK+RO2PNNr4GdPzsYCMSHfGMRrkJzbWrdYgZFSx6MyVY
qLxG2EHKlIq/V+a6crxgWLs8GZJhyVeHSsrOf6Jbbk9yMBxb0Y9eeGb9mU5gvR5/
XjQSMTvTlkfzXLWuuW9rALVEg9jb7R3rAivpTnk8VimfdG1jlOd9M+LdxdLUeSPq
uhI2EgEokpFQyxWaMpwAB2IohvQ+bVfdb6anBD8bRdS/qEplkj9jGkLuNrhIg1te
DRso58Ca+SEGmhlXPPmCs5kxcNx4o/kSk7e3m414Qak2SJx8e2g=
=x6Je
-----END PGP SIGNATURE-----

--rf7yxebtzxr2235e--

