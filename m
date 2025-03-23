Return-Path: <linux-man+bounces-2631-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3053EA6CD92
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 01:30:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A8764189BC7B
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 00:30:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A5391DED72;
	Sun, 23 Mar 2025 00:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6UtZkwH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E841ADC86
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 00:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742689837; cv=none; b=Hi4wwtQMf9k9XqzOZrbYxTpNRcYwSHgm974dYAmwOFcLsY39I0toUR9hJlKY80wMiUulpIi4+s6U0ko6oFxYG5x7OTTe/bfzyYa1VJjEYHv82I0rszUVUv+40E5l+FSUVxxffRxUZbZ3MciOVYlVBoGOyLJ1CCOzUQHJqOT3hMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742689837; c=relaxed/simple;
	bh=daTHYsUkvCbCBO6uIQN0f5jcHJMmD2BoyqBYGM14WFQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tWsVrYE8JcO+Tiujh1OdMG087WGijgLrXXMyFMQnre6kbfZCpcV6PkFN1d36JDWUMcgvlIjgCJpzhnteuImwSAye3AwDH5VvogPmxsc9DAjmQ4vNPNorx3bAgDcFd8eRY0HP+elWiQCXrJP0IgFKyIJ0ogirx0pIv5PmDpmjBJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6UtZkwH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A19A6C4CEDD;
	Sun, 23 Mar 2025 00:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742689836;
	bh=daTHYsUkvCbCBO6uIQN0f5jcHJMmD2BoyqBYGM14WFQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R6UtZkwHcy6fe9jIgggd7d105t0jPAM0puPU4w6yd/5+iHldu6iqXeHKHWPQd0DLD
	 pnlqjjtlc4JqGbhhmDoBxNCMp9tPVdDnrkxX2ksRC9eg7Lzdax58xTLDGa9Mb+7Y4o
	 tbSxZPpJBnWcBzDy9EMEO0+rgKbGLsuqRXEw9ODabH1Ybj4EXrFr2fnoa7pmn1qhVt
	 lB/jLjKuUlP75d54g7/kLx0V9tI+ycK1XvgHH2eCwsN8bPFgcJ+7x3QgUjoFuZVxIo
	 QI/KKxXdSFkPGsbazZJu+T9gw8YpHzf+JqQ86JvdFAIQWUslkVppDblQy/e6JujmPZ
	 MyJYVF2rndEhw==
Date: Sun, 23 Mar 2025 01:30:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v3 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and white
 space are not rejected
Message-ID: <3c456a1a01d34385e7c92e5847fc8a22f4b48460.1742689797.git.alx@kernel.org>
X-Mailer: git-send-email 2.47.2
References: <cover.1742689797.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3x5s2phnbtnb2dv2"
Content-Disposition: inline
In-Reply-To: <cover.1742689797.git.alx@kernel.org>


--3x5s2phnbtnb2dv2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v3 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and white
 space are not rejected
References: <cover.1742689797.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <cover.1742689797.git.alx@kernel.org>

Link: <https://stackoverflow.com/questions/60955490/strtoul-what-is-the-cor=
rect-return-value-for-very-negative-strings>
Reported-by: Bruno Haible <bruno@clisp.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/strtol.3  |  8 ++++++++
 man/man3/strtoul.3 | 19 ++++++++++++++-----
 2 files changed, 22 insertions(+), 5 deletions(-)

diff --git a/man/man3/strtol.3 b/man/man3/strtol.3
index 9323873a9..03047f10a 100644
--- a/man/man3/strtol.3
+++ b/man/man3/strtol.3
@@ -224,6 +224,14 @@ .SH CAVEATS
     goto unsupported_base;
 .EE
 .in
+.SH BUGS
+.SS White space
+These functions silently accept leading white space.
+One should call
+.BR isspace (3)
+before
+.BR strtol ()
+to reject white space.
 .SH EXAMPLES
 The program shown below demonstrates the use of
 .BR strtol ().
diff --git a/man/man3/strtoul.3 b/man/man3/strtoul.3
index 9eb260dae..9e73190f5 100644
--- a/man/man3/strtoul.3
+++ b/man/man3/strtoul.3
@@ -204,11 +204,20 @@ .SH CAVEATS
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
+One should call
+.BR isalnum (3)
+before
+.BR strtoul ()
+to reject white space and/or a sign.
 .SH EXAMPLES
 See the example on the
 .BR strtol (3)
--=20
2.47.2


--3x5s2phnbtnb2dv2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmffVikACgkQ64mZXMKQ
wqllTw/8DZelh89ONoFrkG14xSsjjkq5Md/u5MarRPopPJPWfm6XDaAr4iMIDP2+
spamGd+APbR9N1ZaJExash/yqncXdZ95heggtwT1AN/OFq7w1zrw775cTAvJbVha
exl4AxA/68lFj963jqTZpZBoUGelPQEiqOXkEhCfdqtCxKWhbPE6WqLFWrupLXz8
kS4bFSDEyoh6aSQVDpLwMbULEmSdpgNxbLhj0YAwzMIXgRxo1/z+8kLoVOpXf6IQ
LJAeR/vQ1Cmhvh8CPZn908C8gy+jUBNe8DOO887wYxoatyYz4nDIs0QdRotoW0Ck
OeOCC3PRuhcUaknUIAugYwH4WJh7U/Uqt62658Uwqqo4Ylc9XPKBRxsXPCWQ9lXe
TsAcSrL/g4gJQSFGKrcSX/TP3kEiz6luXckIr/r2PkfXvOl5lX8NdIcZqep6ShJ0
lV0uJGkUceKlFozhAOW0hEQoEqyQnddOJsQw0gkjZ6T+SgwGY68IgjpRq/cdz7kK
OW8gyHuV2h4KdCvk3I0AO6u718vg5+NnafsRQjk0v9uBI+9cx6y6ScHInQ8Y3uWo
b49gNBT0eDxsHnR6X4izYpCD6DVoxldvDi21vVGbO7POjm0mHaVx9heY475L9NCS
iYDgRba5oBr39Mf5rcId+cTXxq2BlNtSXcEyimqdeyB4ZG84tgg=
=9Hk1
-----END PGP SIGNATURE-----

--3x5s2phnbtnb2dv2--

