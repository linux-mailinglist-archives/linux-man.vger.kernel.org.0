Return-Path: <linux-man+bounces-2626-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7677BA6C5D0
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 23:19:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3FC0F162822
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 22:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 231AD1E493C;
	Fri, 21 Mar 2025 22:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyveJSs4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D530F28E7
	for <linux-man@vger.kernel.org>; Fri, 21 Mar 2025 22:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742595512; cv=none; b=Dk7z4zkXfFOmFKvWJlqWCUahV10tV1UrHMq/7LLfvheSuY2/6SA6FB/Pd8diycGOo85ev1u4pvGYSbKwnCy2NHZTj6YCXzjHiOekxn0QYXbOJz3nat77tlGjJmPGp3hkuxx+jjtObjlY5VH4qHGTHJqL31NG5iRrpleoR+ASjzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742595512; c=relaxed/simple;
	bh=L8x0x/VBcPqw1CaU9qBck4xjC7WOMlBXAlFuv+3k9JE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eopKsTaiZ7xmJ7YBmfDF8QadZX5B2k4y4Y0QMR5lS8rhEzUOnTWT67l2HXhwlaZg9txn8k/BMbF40VzpMlbsapc/VtRpX+XmLHE8yRRxjMjyeEsHCeP5kztOXNaYc+9F0mW6Aw9P1N/qp8o6S+m0993KoOIdJjJ6POWNs+bLWMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyveJSs4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B777C4CEE3;
	Fri, 21 Mar 2025 22:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742595511;
	bh=L8x0x/VBcPqw1CaU9qBck4xjC7WOMlBXAlFuv+3k9JE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CyveJSs47KKrU9+2wzhOu8I+ihZmFxsnKAS4ccAoIxJcIXajz5tVPHSAnokSXmD+K
	 KDw46sCTjRJftDlF8++ZV86qoo7AqeCpjpnqWrLxNPWCp3jM5uLcLVeOx9jJPHpnu7
	 Y2x+0ABBlAr99P1kjGyhmG2fU8tHlbVHLTBznAjozxUzRaKYlYy4ONna4n4aP4DHnk
	 Jxup6+5ht9IgT4Fmaru2KU1xoC/BNoNxuapGwNVly5HCGMd+7HGk4hcQJQ+2pobNi3
	 15H1s82ayjjyGcm5Ifxt7fOwTqxIPOOxmTc1D3pox+51akLsnonBTLzjdgEf02hr1a
	 ifD15QetIpopQ==
Date: Fri, 21 Mar 2025 23:18:28 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v2 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and white
 space are not rejected
Message-ID: <8faa6a809858ba2c3d458f3038190eb5d3f8625f.1742595341.git.alx@kernel.org>
X-Mailer: git-send-email 2.47.2
References: <cover.1742595341.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m3vcwuprmcycm4y5"
Content-Disposition: inline
In-Reply-To: <cover.1742595341.git.alx@kernel.org>


--m3vcwuprmcycm4y5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v2 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and white
 space are not rejected
References: <cover.1742595341.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <cover.1742595341.git.alx@kernel.org>

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
index 9eb260dae..1832f9d73 100644
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
+Negative values
+are considered valid input and
+are silently converted to
+.IR "\%unsigned\ long" .
+.SS White space
+These functions silently accept leading whitespace.
+.SS isxdigit(3)
+One should call
+.BR isxdigit (3)
+before
+.BR strtoul ()
+to reject white space and/or a sign.
 .SH EXAMPLES
 See the example on the
 .BR strtol (3)
--=20
2.47.2


--m3vcwuprmcycm4y5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfd5bQACgkQ64mZXMKQ
wqlcyhAApvAZIIlhMxG/KNX3Z0F5epnCEY8zGqv8Vwuv3KNsw8YcS3cOwxj/gybZ
DmBSo83Mlr9vAUGvDxO+bH0J7Sb5iKzpK585Tm+x/2Iwqm6WJElvB0m4XTkgqEQJ
fnaO55BgyeDPubJc9NinfaWEwcAXQSio8Lpako6qwgtBqZli9F3uZvWGKybCsHUE
xzQzVtVQQk7nuXfbAq6fiSsgtZSp+Qxks9y5Ry77TKa8xXTrpixw2SLP6OoBh8pe
wKCrn/S6sWjSGKsV3Hsjan9GCNS2PmXlp/BeS2Us9fvhFKRNuTFYmDUjybJV3+gW
a9dqDe+i5yEwCawsPn1Ln6Qtlr0p0GEY7v1NKZBtddpVDnKHgP6cGZ+d6qB0ez8i
s/DxDSp1U1qnmG4rSUp1d2pCWIZr1THDfyYYmhXxTBw8e3cmI/MdcXEL8MSVcwsf
nnroEEPlmne/DkIWPa6qmG+XVYd+0o4y8GVeNdhwSX8OPMxU2pdMHml+WwfF8mg9
sx7PIY3HePOKdwYXPq6qHMNmUWvgXAGZUZbVRkrrNkDwBqn44zJZ+VcASsLrBEZ4
ZTX+zoGJUYGLEWqCHQWqwwMf+Jao18LUIzugjhIvlGIf+5UVUiPnc+SVWTXujNj3
YjYys54/iCWi6a95exJ6dZ+DS4yii7HRsovCkObtvttbLbvWEqY=
=S/wk
-----END PGP SIGNATURE-----

--m3vcwuprmcycm4y5--

