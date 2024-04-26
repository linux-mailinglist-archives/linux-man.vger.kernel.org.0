Return-Path: <linux-man+bounces-817-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE038B39EF
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 16:28:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B2C1BB238DB
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 14:28:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD57B1494B8;
	Fri, 26 Apr 2024 14:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8DTvS3t"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D1621494B2
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 14:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714141589; cv=none; b=qSINvJWdioVhs0EdEyVmSMVQZyqFT65hA1jKErLfHo4X9LU/mwQN8vRixu3PNRNrXispG0DxVyJ45x/bIcCJk6q+bB3J+RAHjmlPyS7C9hyX8QjLkee/5M5Hhsvni1ZUeig6fPt+rOkRLx4DfaMy4TNqbCcu4z6vTO/Kteq8/Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714141589; c=relaxed/simple;
	bh=El9/MsDkuX2gb7sY7Q6uubcLJPzIGQ2q4LiBALEkuho=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=QI23EmwCwXfjJpCORESC+dPKfgpAEB3SXZSOf5+sT8NrZCO22o9kCo23HbAvZ3bssn44lfLpUBa9SNJxvu9su9L5ESiDqXTug3tvf1R1540rlts6dftxPpglAeroPxqVeHh5fqw/3uuw63LXWApr/z97S6iyyWNReUuEALCb150=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8DTvS3t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6380AC113CD;
	Fri, 26 Apr 2024 14:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714141589;
	bh=El9/MsDkuX2gb7sY7Q6uubcLJPzIGQ2q4LiBALEkuho=;
	h=Date:From:To:Cc:Subject:From;
	b=r8DTvS3tsT9u/SL1u7MnJ9BQ1RRwvtKlgAVWtWux4RGqs8kjLu7+cCojYLcAQpxY9
	 8mQetVelfEE0foN6oZxNQoSC980DPpddV/tFyOPJ8YatdYxGpM2OxyxxgWxWe1zKsa
	 tx8yytB8MwO9jpfnwaKD0JQ4HGiURQaqNJW3kM6xNt/jl2Qa5UH1W0FvCOfMeB2LJl
	 bdQsc+3TDclgFLiF9eZr/lAM9/mzOAJ0TMd8T7uhcDBwlEDzc58cPQceDOxF+WYF4C
	 XPcjKqk3lwyUEqxo3+1nM70VjvCOXY5nSoPixR/ubh050BjZnfzDEsT+27AiLzVn2I
	 fHR3Y/B/DvuEQ==
Date: Fri, 26 Apr 2024 16:26:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Simon Barth <simon.barth@gmx.de>
Subject: [PATCH] CONTRIBUTING.d/: Clarify how to send patches with
 git-send-email(1)
Message-ID: <20240426142623.24922-1-alx@kernel.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6z7j5vl4u55mwpit"
Content-Disposition: inline


--6z7j5vl4u55mwpit
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH] CONTRIBUTING.d/: Clarify how to send patches with
 git-send-email(1)
MIME-Version: 1.0

Cc: Simon Barth <simon.barth@gmx.de>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 CONTRIBUTING.d/mail    |  8 --------
 CONTRIBUTING.d/patches | 27 ++++++++++++++++++++++++++-
 2 files changed, 26 insertions(+), 9 deletions(-)

diff --git a/CONTRIBUTING.d/mail b/CONTRIBUTING.d/mail
index 48e5b9a93..fc75b9eee 100644
--- a/CONTRIBUTING.d/mail
+++ b/CONTRIBUTING.d/mail
@@ -51,14 +51,6 @@ Description
         using a PGP key.  See also:
         <https://www.gnupg.org/faq/gnupg-faq.html#use_pgpmime>
=20
-        There are many ways you can sign your patches, and it depends on
-        your preferred tools.  You can use neomutt(1) (>=3D 20240201) as a
-        driver for git-send-email(1).  In <~/.gitconfig>, add the
-        following section:
-
-            [sendemail]
-                sendmailcmd =3D neomutt -C -H - && true
-
 See also
        CONTRIBUTING
        CONTRIBUTING.d/*
diff --git a/CONTRIBUTING.d/patches b/CONTRIBUTING.d/patches
index 96550ce0e..b4de1cf9f 100644
--- a/CONTRIBUTING.d/patches
+++ b/CONTRIBUTING.d/patches
@@ -6,7 +6,8 @@ Description
        <CONTRIBUTING.d/bugs>), then send a patch in an email.
=20
        -  Follow the instructions for sending mail to the mailing list
-          from <CONTRIBUTING.d/mail>.
+          from <CONTRIBUTING.d/mail>.  See also "Send the patches"
+          below.
=20
        -  The subject of the email should contain "[patch]" in the
           subject line.
@@ -87,8 +88,32 @@ Description
        -  Make patches against the latest version of the manual page.
           Use git(1) for getting the latest version.
=20
+
+   Send the patches
+       We recommend using git-send-email(1) to send the patches to the
+       mailing list.  For instructions on how to configure and use it,
+       see <https://git-send-email.io/>.  It can also be configured to
+       use mutt(1), which only requires the following section in
+       <~/.gitconfig> (assuming mutt(1) is already configured for
+       sending mail):
+
+           [sendemail]
+               sendmailcmd =3D mutt -H - && true
+
+   Sign the patches with PGP
+       See <CONTRIBUTING.d/mail> for more details on signing your mail
+       to the list.  git-send-email(1) can be configured to use a recent
+       version of neomutt(1) (>=3D 20240201) with the -C flag, to sign
+       patches with PGP (assuming neomutt(1) is already configured for
+       sending signed mail):
+
+           [sendemail]
+               sendmailcmd =3D neomutt -C -H - && true
+
 See also
        CONTRIBUTING
        CONTRIBUTING.d/*
=20
        <https://www.kernel.org/doc/Documentation/process/submitting-patche=
s.rst>
+       <https://git-send-email.io/>
+       <https://neomutt.org/feature/cli-crypto>
--=20
2.43.0


--6z7j5vl4u55mwpit
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYruZIACgkQnowa+77/
2zJG6xAApIpoHo49Ygkp02gldcG63kGK7GhmQP8tbbUCOtEv0afZVMTQchqEKkW5
a6o+poGajm1NabG3lzx0VfmsOhYh5m8ZRe6QCiG1upVH53LNKgtPdT6kHJwvGENc
FF3G+qflPazS2bDFfjgH2cBHec3LSXUPGps+Q7naYm2JIX1UbTAZ6Ep6khr4EksC
dENjqf9x+6hbc6IgF5T20//nr2kowQvRmPzjkafm3PfKKzROSyHJv7TX5TRVLfIF
bQAADQwnazCtgVVmNFoLViGyFgLI2i2IHeKfFIygzjJ2RFrkNSHCYVsyqc0BKkNa
28FdeShcdRMUohQ3/XkX11T9cuyU53AGxlJDLnS0t208I2eW7nqoxyQ0Rl5QpoB0
m2AaqH0HMU1o+C3ZMaUuRXEQq7dn3kKzxvWxB/35TKYxzHq2R0OtfEy9QSjOUWCl
xb5D2V+IDqxdgFk26xcQsy9cQe4KFIiqr170xqH6Q42up6PvOCXVn4SyFtqCt7MB
awyp6qc2iGUiOmgtwn+qDv3fJccDI2w1Y+cBnd0s7pQs5c17+LRm4nJaeEPGNQoh
WdE4gCbsvWa8EnUQjqWY6M5hxtq/eose+nrQ3Y8krv58pwmN28PE7qic94rvRjXz
rFzcpYMHdhdp1jjaWtjXFmw8Qk7oLPBNQp8fKTLPzfa8gFrxXNA=
=/p2G
-----END PGP SIGNATURE-----

--6z7j5vl4u55mwpit--

