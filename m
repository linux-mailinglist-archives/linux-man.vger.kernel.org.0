Return-Path: <linux-man+bounces-70-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B987EA729
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 00:46:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31E6F1F2351E
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 23:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB6283E468;
	Mon, 13 Nov 2023 23:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJyIXV3E"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F11C3D988
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 23:46:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52E3EC433C7
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 23:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699919166;
	bh=XvMBGhHpVRmWwT36X4o2ZeZ3XeAaXNocRuahnV7JE1A=;
	h=Date:From:To:Subject:From;
	b=kJyIXV3EwZoPUit4gmtPM5QpvZ9CUxdskm+KxHXch+Madq11wzKikr8cRReTFfAmJ
	 7PX0PjRUCzAGKFQDIqAj9B28bUf6cYE+ycAOW+RqNzUURqie5wUEqYfyx1UJcpn46W
	 FZfxyr9ZlUcAshaPuya+80gZYTpY+L98I1lVDO+UvuKcE7h9+yGxMceUIHz+ZFJYIT
	 RKYBzY0Ne0QadGQ790bQQT1VjyYVTwPj+SYRP49GyXKYKRgPAcuBY7Ll5XeNGCZQL7
	 a9skXWIoLZGqOUCI+Ox5vc8TfJfCrhrShMCAeOjtmV+vtnFQ4qLTZGF7LDVEsKhtOc
	 9Cr4uiKqipB1Q==
Date: Tue, 14 Nov 2023 00:46:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: Signing all patches and email to this list
Message-ID: <ZVK1POLjAID434nL@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q155bocdEhIYcywP"
Content-Disposition: inline


--q155bocdEhIYcywP
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Nov 2023 00:46:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: Signing all patches and email to this list

Hi,

I'd like to ask contributors to sign their emails to this list with a
PGP key; especially for mails that include patches, but ideally all of
them.  Of course, it's a suggestion, and there wouldn't be any
enforcement other than asking.  What do you think of that?

I've prepared some text for ./CONTRIBUTING; please review.  It also
depends on mutt(1) maintainers, if they want to patch mutt(1) to allow
crypto operations in batch and mailx modes.

Thanks,
Alex

---

commit f7ba049d975a4b323c8086b2fc859687e4fc1d4e (HEAD -> sign)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Fri Nov 10 01:10:00 2023 +0100

    CONTRIBUTING: Please sign your emails with PGP
   =20
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/CONTRIBUTING b/CONTRIBUTING
index 475244c13..204e04fb3 100644
--- a/CONTRIBUTING
+++ b/CONTRIBUTING
@@ -56,6 +56,29 @@ Description
=20
                  help
=20
+       Sign your emails with PGP
+             Please sign all of your emails sent to the mailing list,
+             including your emails containing patches, with your PGP
+             key.  This helps establish trust between you and other
+             contributors of this project, and prevent others
+             impersonating you.
+
+             There are many ways you can sign your patches, and it
+             depends on your preferred tools.  You can use
+             git-send-email(1) in combination with mutt(1).  For that,
+             do the following.
+
+             In <~/.gitconfig>, add the following section:
+
+                 [sendemail]
+                     sendmailcmd =3D mutt -H - && true
+
+             And then, patched mutt(1) to enable encryption in batch and
+             mailx modes, which is disabled in upstream mutt(1).
+             Hopefully, mutt(1) will merge the patch, so it'd be easier
+             to do this.  You can find the patch here:
+             <https://gitlab.com/muttmua/mutt/-/merge_requests/173>.
+
    Patches
        If you know how to fix a problem in a manual page (if not, see
        "Reporting bugs" below), then send a patch in an email.

--=20
<https://www.alejandro-colomar.es/>

--q155bocdEhIYcywP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVStTsACgkQnowa+77/
2zLg8A/8CUfMLtxTZz5v9ck0D+PuXIeXP3kCU5PqzdVhhgNQwQPvxUr5C01qAaAn
2MrGxpqJb/b55GGOYdtQ2cBkY+ivDE2pmaMj+hoHsLPdmJBu9RROVUFZOmA5zZS8
xXaUObrpYf79ip/Oc9mCXAaAkiU4wT2S8I2PDy5jTI/8zsiafxHtdh+xqh/kvkSi
+xjUJP7HShDd+cAH/gNzF27howZa8+UWSTnYFJGGllhzGBhNf7Cc//dQTms0ONIK
1eh4SzXusQkRq6CC8+SSNfR9C37YWpv7lYtvs0TIwLbXZAzgKl7XlHjR0eMZ4SpF
4sH5KvJnNmMufYSGx4QTgvMwcCGkPkLpRrA/cEinwZOofxx8GH25dkWwMF05XXZ+
CSUlYtKfXaOE8zE0wVG+w3te9+oYb8KcXTbm81rfYnRjOFJSnOA5x/Yi3xgVIlZq
9/MVvOdJsa3p8InOq1SLB02X0TgPYWR53hDvmyA5Dcha3+Dt0nnkObrakqVSz5TA
tPEN0sKzqj2nL7Z7iodJ6LUkUkmgZHDNJOO0Ub05els6Y8JvA5utRZVdgJ11PmdY
d2mlB2MjLYGM0+vI7OI8DMqZZ3sSjPNIdo8fRNg7dY5GasvJx61LEQmFCyq79rHc
WSpsbz49twZd4Mv/C/xIx4/cZM/iStDDMjJHwRQPe/O3Jg74f4Y=
=qFrT
-----END PGP SIGNATURE-----

--q155bocdEhIYcywP--

