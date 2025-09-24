Return-Path: <linux-man+bounces-3969-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE88B9AFE0
	for <lists+linux-man@lfdr.de>; Wed, 24 Sep 2025 19:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E45F919C4D30
	for <lists+linux-man@lfdr.de>; Wed, 24 Sep 2025 17:16:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3D031C7012;
	Wed, 24 Sep 2025 17:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pablofraile.net header.i=@pablofraile.net header.b="dHvqSlhV"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FF5FC8CE
	for <linux-man@vger.kernel.org>; Wed, 24 Sep 2025 17:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758734149; cv=none; b=JpUNSsVzLctZu2EKCTxn1PdYF5bIZc/3pjvge459+y5pZvLfWuUiEEUsSb5t3+oN4wpXXmJgIxSFV7wgFI+wlTpMqRjksZqyvkxmPw7e+E4Wqdror3jieGxvgbGOJxV5c/VEVzAgt1aTlay0CMVpFfb/NaGTbP/t5mUEY7iEzAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758734149; c=relaxed/simple;
	bh=y5z9KvTF/EKGLFOZfDhI3uHCeth8t+qO6w+94OshKec=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=fvA+y5ftrjz5UFw9RI4nm+bXa5mcy1E+FQOPPmO6SB/uCtACtEkWa+xMUCMB34ZXQgfMyV3U9gHoPCnvQd/pEV+PschbXta6gI+lVDeul9KwEVYgUX6GSln0NDcsov54uq8IcjiIsSKz2TxNCnHFyTkSUEt42Pe1KR0COLc2JGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pablofraile.net; spf=pass smtp.mailfrom=pablofraile.net; dkim=pass (2048-bit key) header.d=pablofraile.net header.i=@pablofraile.net header.b=dHvqSlhV; arc=none smtp.client-ip=80.241.56.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pablofraile.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pablofraile.net
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4cX3QJ1mrYz9sxm;
	Wed, 24 Sep 2025 19:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pablofraile.net;
	s=MBO0001; t=1758734136;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=y5z9KvTF/EKGLFOZfDhI3uHCeth8t+qO6w+94OshKec=;
	b=dHvqSlhV1fATxo2Mcz0JVGbLbV8zeeyGhJatvNkjKAI6Jq0LIja6x5JF+0gy3kwOhe2LrP
	KC4VuJ1nJ7H4dAiCTUqtQJYJpngShxP8NxmADcNJGIFL4afTRnKgDpVLHp/Mh6OQ+6Ulq7
	OGyO+/o3X7ezDlCMbpWee/cu1pL+u1WTQfZYr+OCaHBnren9BSC1sSaB2RD9UB0DLZ/ndD
	ZXmCvK5vEiwROb8EQDhS6pCoQiPhPvcGHPML+/5l1Fd6k929CwDVhzJOdbR4NgBnI32Gb9
	qzPVpW2c9EGlo+Xg8GP0x9Yt6lMKLCygeQO3ycJ5aIMIgO6lP9psaoTBq+4e4w==
Date: Wed, 24 Sep 2025 19:15:32 +0200
From: Pablo Fraile Alonso <pablo@pablofraile.net>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man7/vdso.7: remove broken link
Message-ID: <ursrhzx2i77qnhkk4o3bdhlkp2py46huwcyk57tn63kox5qzta@atmst5gr6x3p>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2d2n3ahfqcr3m6xg"
Content-Disposition: inline


--2d2n3ahfqcr3m6xg
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH] man7/vdso.7: remove broken link
MIME-Version: 1.0

There was a reference to: `http://www.trilithium.com/johan/2005/08/linux-ga=
te/`.

That URL is no longer accessible (even via Internet Archive / Wayback).
The only remaining copy of the content (that I could find) appears to be
in this GitHub Gist: <https://gist.github.com/Jake-Shadle/6bfef4d461f557672=
27e1514ca829c4c>
---
 man/man7/vdso.7 | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/man/man7/vdso.7 b/man/man7/vdso.7
index 0dc8bf6f2..35f4974ad 100644
--- a/man/man7/vdso.7
+++ b/man/man7/vdso.7
@@ -613,6 +613,3 @@ find arch/ \-iname \[aq]*vdso*\[aq] \-o \-iname \[aq]*g=
ate*\[aq]
 .P
 .UR http://www.linuxjournal.com/\:content/\:creating\-vdso\-colonels\-othe=
r\-chicken
 .UE
-.P
-.UR http://www.trilithium.com/\:johan/\:2005/\:08/\:linux\-gate/
-.UE
--=20
2.51.0



--2d2n3ahfqcr3m6xg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQ/+V8CID29o86XVvGsq3ce2qLaLAUCaNQnNAAKCRCsq3ce2qLa
LERYAQC6QS4ItL95Zq4fsgKIrNC+FQFMewxPrpCexkeTGAwLkgEAzP7CyUAj/f15
hyewlp6Z87eyMki2Q0oeCGTxN9SLYww=
=jveL
-----END PGP SIGNATURE-----

--2d2n3ahfqcr3m6xg--

