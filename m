Return-Path: <linux-man+bounces-140-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBCF7F4815
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 14:48:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85A54281405
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 13:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04ABE4C3D1;
	Wed, 22 Nov 2023 13:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkaE6IHB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD53219E2
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 13:48:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43098C433C8;
	Wed, 22 Nov 2023 13:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700660881;
	bh=DqIXPMbz7CNYVrqI/rN/QwwfK2SAi1s7GQeg1rM4eZU=;
	h=Date:From:To:Cc:Subject:From;
	b=gkaE6IHB8t2RhlKxdnmEivUx+W6yvM6IYwyOuqNmtTxRZUGgsrbSYsfex+fdQjPoG
	 IUIqclIZG/tUGg5J+cnW+bNxVRYLDj3Iu20HMevt7c7TDMf8OkC6UUhMneqFQNvHlH
	 xHbFu6j3KpPODCvvYtajW4OWiIBPBZzGoXC2AxPwjPku9y4iBa5bUlYIdTTjeSlI8j
	 igU2oLBUCuKauxS2EMdhDalvNsUnDxyvhguPawU15ggrlWSmuXNHFHQLbVrY+8bzvF
	 WknDEKDhE96d7YE6LyUQAJ+L7qkTqVIKcRRHNj0eXum4sy708QZed/FFFWWNXeLTL+
	 OMp0PIdbXHEug==
Date: Wed, 22 Nov 2023 14:47:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	Matthew House <mattlloydhouse@gmail.com>
Subject: [PATCH v2] CONTRIBUTING: Please sign your emails with PGP
Message-ID: <20231122134716.73658-2-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="S4vMajTvoptHfgSt"
Content-Disposition: inline
X-Mailer: git-send-email 2.42.0


--S4vMajTvoptHfgSt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 22 Nov 2023 14:47:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	Matthew House <mattlloydhouse@gmail.com>
Subject: [PATCH v2] CONTRIBUTING: Please sign your emails with PGP

Cc: Matthew House <mattlloydhouse@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 CONTRIBUTING | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/CONTRIBUTING b/CONTRIBUTING
index 475244c13..7b85e7375 100644
--- a/CONTRIBUTING
+++ b/CONTRIBUTING
@@ -56,6 +56,29 @@ Description
=20
                  help
=20
+   Sign your emails with PGP
+        It is strongly encouraged that you sign all of your emails sent
+        to the mailing list, (especially) including the ones containing
+        patches, with your PGP key.  This helps establish trust between
+        you and other contributors of this project, and prevent others
+        impersonating you.  If you don't have a key, it's not mandatory
+        to sign your email, but you're encouraged to create and start
+        using a PGP key.
+
+        There are many ways you can sign your patches, and it depends on
+        your preferred tools.  You can use git-send-email(1) in
+        combination with mutt(1).  For that, do the following.
+
+        In <~/.gitconfig>, add the following section:
+
+            [sendemail]
+                sendmailcmd =3D mutt -H - && true
+
+        And then, patch mutt(1) to enable encryption in batch and mailx
+        modes, which is disabled in upstream mutt(1).  You can find a
+        patch here:
+        <https://gitlab.com/muttmua/mutt/-/merge_requests/173>.
+
    Patches
        If you know how to fix a problem in a manual page (if not, see
        "Reporting bugs" below), then send a patch in an email.
--=20
2.42.0


--S4vMajTvoptHfgSt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVeBo4ACgkQnowa+77/
2zIOpw//f8yL7s8QKTaDuriynqd/5fRV5CoDxnRPBj+qt3ueQwYZBXmgGfLjQ45N
C8Sr+gNwjMvEy7cP4NHnVYkQKKFbq9JJn5lq0k8Upw1aqBYz0mikihyv394nLLi1
WMGTnlpY8G38+c+/6dYrWKy90Oe3qpk8gzvFFxeVf5q+Xo8Wjc0IIwDfD5KweeaB
1jOpnINQFC7qyjvr84TUhSTA17oj7bdY4fPgVGo7wSDbtqfu9aJ5x7e4ux/F5kZd
rU0KqZDRAWJGDXpJVqqOmbUXYK3l48cpfGnTf/JiGFaBzSWOj6qANMD6RU51Lhqo
iTzxjZsDaVAqUJqfQ4wUGtfjWlp8F9kXvlFXr2szWLEOwwCdXwdFA7YkBjeyfkXF
UEG3Wco87rrVboEJ4D48101QidJU6WN7mFbRjMPxh+8oj7/Wn9e6GqJJ2bpGNTB/
o4wgPQReGiM9eQvOjmZJLTyzyePPXmPiXw6rfn1D28tquFwLW7JqAgiHvUJxfvfB
AzkbXLWy9u3sivGlKiMYq+g2WI1/pK7sEDE5c9Q77qhXe04g2oXDvOE7qNIcXbl3
k7N1iBWHSZN21FBRlAmANjPU+msM+kPrbCGhLItBf9U4vous0B/Gt6eQK0u/z41Q
mrrkdW0gQf82jzmtHGGaAex0GO5AqyBfk1tLKJELup9qBfAaYJQ=
=0dTP
-----END PGP SIGNATURE-----

--S4vMajTvoptHfgSt--

