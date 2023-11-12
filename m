Return-Path: <linux-man+bounces-42-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B90DE7E8F4B
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 10:18:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A605E280CD3
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 09:18:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2664524C;
	Sun, 12 Nov 2023 09:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7U32jJf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A13775235
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 09:18:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DA06C433C8;
	Sun, 12 Nov 2023 09:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699780685;
	bh=4OZ5pjlZcOR5C1mMy/ZMLW5UGIj/eQsxRwe+fNCiBwQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K7U32jJf3Ol59lo24w9UxsPoZbVkqZLuCB2kHDLSXt6uTUhFGY+FlipEmmKNzVgO2
	 vviuui4yAkODSHm7yeaupebbs3/ThSjJMsDJO7TvGhaDvK9Rc1qoPCY0vW8sKz51Gx
	 A1p3ad6EOaKsCInNWcvPxn9qEZmsPgvuoBTgZgnynDLJFh0I8iohptXlW0Hc8gR6oI
	 qlUyaHxf7gg9SrNwU8uS5tojo1ueumRMaEyNAypLKOGh+yqT4DxWi7G/52/sNXNMvj
	 hRWQz+IsAYqUlHIoO+fnkIWhswcGThq2q53pki2e3EkeyW1SfqvJQ26YWvv0AaJzPt
	 8nHrUD7i1IL+Q==
Date: Sun, 12 Nov 2023 10:18:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
	Paul Eggert <eggert@cs.ucla.edu>, Jonny Grant <jg@jguk.org>,
	DJ Delorie <dj@redhat.com>,
	Matthew House <mattlloydhouse@gmail.com>,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
	Thorsten Kukuk <kukuk@suse.com>,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	Zack Weinberg <zack@owlfolio.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Carlos O'Donell <carlos@redhat.com>, Xi Ruoyao <xry111@xry111.site>,
	Stefan Puiu <stefan.puiu@gmail.com>,
	Andreas Schwab <schwab@linux-m68k.org>
Subject: [PATCH 1/2] string_copying.7: BUGS: *cat(3) functions aren't always
 bad
Message-ID: <20231112091748.6906-3-alx@kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DfMLUrktnfbmmkbw"
Content-Disposition: inline
In-Reply-To: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
X-Mailer: git-send-email 2.42.0


--DfMLUrktnfbmmkbw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Nov 2023 10:18:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
	Paul Eggert <eggert@cs.ucla.edu>, Jonny Grant <jg@jguk.org>,
	DJ Delorie <dj@redhat.com>,
	Matthew House <mattlloydhouse@gmail.com>,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
	Thorsten Kukuk <kukuk@suse.com>,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	Zack Weinberg <zack@owlfolio.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Carlos O'Donell <carlos@redhat.com>, Xi Ruoyao <xry111@xry111.site>,
	Stefan Puiu <stefan.puiu@gmail.com>,
	Andreas Schwab <schwab@linux-m68k.org>
Subject: [PATCH 1/2] string_copying.7: BUGS: *cat(3) functions aren't always
 bad

The compiler will sometimes optimize them to normal *cpy(3) functions,
since the length of dst is usually known, if the previous *cpy(3) is
visible to the compiler.  And they provide for cleaner code.  If you
know that they'll get optimized, you could use them.

Cc: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>
Cc: DJ Delorie <dj@redhat.com>
Cc: Matthew House <mattlloydhouse@gmail.com>
Cc: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Cc: Thorsten Kukuk <kukuk@suse.com>
Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: Zack Weinberg <zack@owlfolio.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Carlos O'Donell <carlos@redhat.com>
Cc: Xi Ruoyao <xry111@xry111.site>
Cc: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Andreas Schwab <schwab@linux-m68k.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man7/string_copying.7 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man7/string_copying.7 b/man7/string_copying.7
index 1637ebc91..0254fbba6 100644
--- a/man7/string_copying.7
+++ b/man7/string_copying.7
@@ -592,8 +592,14 @@ .SH BUGS
 All catenation functions share the same performance problem:
 .UR https://www.joelonsoftware.com/\:2001/12/11/\:back\-to\-basics/
 Shlemiel the painter
 .UE .
+As a mitigation,
+compilers are able to transform some calls to catenation functions
+into normal copy functions,
+since
+.I strlen(dst)
+is usually a byproduct of the previous copy.
 .\" ----- EXAMPLES :: -------------------------------------------------/
 .SH EXAMPLES
 The following are examples of correct use of each of these functions.
 .\" ----- EXAMPLES :: stpcpy(3) ---------------------------------------/
--=20
2.42.0


--DfMLUrktnfbmmkbw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVQmEgACgkQnowa+77/
2zJN6g/9FN3se87VRWESy6dfZGg/AgsFLmgLT/Dnd2P1OJj46zhQy7tE8lldC7Tm
EaZzOo9ZUVMMmvNLJyUlBoD9IoijnvzG7mC5plHkF8uA2/xmtqcU3qUcI3hV7DPL
RYD8itDJRm27oBrcmSYhdxb6h2i5NBuGLGtqiGlVWAkmaoFDUu3d+0581LAQrXkc
nrd35nzxk6U9q24wYFXcYeJgCbtjojUjONo6OXqAV62b3tK2C/SxXjXru+C4wj3J
i06Ip3i8VN+vEYmati5LroUACEcpvQaU7bWDP3ncoTHo5i/UThaSwihmBr6VYoTw
U7egtAh1US76SMI06Eo2oE5erffjcifPOBzTq+LSHCzgIYXyAK6Tg1zsMWhigNpu
fJEFUZn3T3GxmAthtTl8Xbmb5mn1JZwWwzjgMMg6Ka3R8wUZNDOKabR94XJaOQod
Iz2bp20dOATElMsRzSd6AqFvtuz+g8lRsyHTL+eNhKrQlL0owiYKSoAIgqzAiWse
nOlJTCmYp4BiK3d3Hz4MwgAB4YntVItlzAdYYzwckle1sQo6MxNEkX+iyLvZBB3s
qx4Ub9WXOLjiT8+r4hqu89WMFoXdw9agW0uSIo8acLYNfah2b7teOuOH73b2zha9
303JRIbmS4SE+7Ss1hrnF+5KbsrfNmw9u5j0QFH4g/oo2OG2Y+s=
=dooF
-----END PGP SIGNATURE-----

--DfMLUrktnfbmmkbw--

