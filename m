Return-Path: <linux-man+bounces-43-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3603B7E8F4C
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 10:18:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C613D280C7D
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 09:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8970524C;
	Sun, 12 Nov 2023 09:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsIi/sSU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCA646BB
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 09:18:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 458FDC433C7;
	Sun, 12 Nov 2023 09:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699780690;
	bh=4hFvmgBEONg7cOZD8NWcY4fX/eld8CvY7FFyB612+wc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hsIi/sSU0g5qFCK5zpFu45JWRF98KMSDuG+k8Vt4J0hgnJaFU6SfjB2fue6ds8fv5
	 ymHp5ePuHoI2h7lpNLz2Mmn+7TQmQXPKJqAzAhEJbW9G99gs6HFOnwl1zjFgD8lrTL
	 2hKCfMVxW9bEN4THu8saTA0VSJ8dJQzx4ZON0pvfOY5dMUvfWt5J/pJfD4A39tnzyI
	 2jsJMmZx0S9vu62bkV+Ckn/QdFnfvqhzWixZtfFx2d9spmWd0nss4FsB20ubKre9Go
	 LjwnonlDi+B92ngv6Pg+k/VUwnUmnTzDMIZdIxfqZo+rwTDQ+cx30f5CqAErlSzEKs
	 wG6ZP5Xc3wjFA==
Date: Sun, 12 Nov 2023 10:18:05 +0100
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
Subject: [PATCH 2/2] string_copying.7: BUGS: Document strl{cpy,cat}(3)'s
 performance problems
Message-ID: <20231112091748.6906-4-alx@kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vfp+hU8I4gx7kkgi"
Content-Disposition: inline
In-Reply-To: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
X-Mailer: git-send-email 2.42.0


--vfp+hU8I4gx7kkgi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Nov 2023 10:18:05 +0100
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
Subject: [PATCH 2/2] string_copying.7: BUGS: Document strl{cpy,cat}(3)'s
 performance problems

Also point to BUGS from other sections that talk about these functions.

These functions are doomed due to the design decision of mirroring
snprintf(3)'s return value.  They must return strlen(src), which makes
them terribly slow, and vulnerable to DoS if an attacker can control
strlen(src).

A better design would have been to return -1 when truncating.

Reported-by: Paul Eggert <eggert@cs.ucla.edu>
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
 man7/string_copying.7 | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/man7/string_copying.7 b/man7/string_copying.7
index 0254fbba6..cb3910db0 100644
--- a/man7/string_copying.7
+++ b/man7/string_copying.7
@@ -226,9 +226,9 @@ .SS Truncate or not?
 .IP \[bu]
 .BR strlcpy (3bsd)
 and
 .BR strlcat (3bsd)
-are similar, but less efficient when chained.
+are similar, but have important performance problems; see BUGS.
 .IP \[bu]
 .BR stpncpy (3)
 and
 .BR strncpy (3)
@@ -417,8 +417,10 @@ .SS Functions
 the resulting string is truncated
 (but it is guaranteed to be null-terminated).
 They return the length of the total string they tried to create.
 .IP
+Check BUGS before using these functions.
+.IP
 .BR stpecpy (3)
 is a simpler alternative to these functions.
 .\" ----- DESCRIPTION :: Functions :: stpncpy(3) ----------------------/
 .TP
@@ -598,8 +600,22 @@ .SH BUGS
 into normal copy functions,
 since
 .I strlen(dst)
 is usually a byproduct of the previous copy.
+.P
+.BR strlcpy (3)
+and
+.BR strlcat (3)
+need to read the entire
+.I src
+string,
+even if the destination buffer is small.
+This makes them vulnerable to Denial of Service (DoS) attacks
+if an attacker can control the length of the
+.I src
+string.
+And if not,
+they're still unnecessarily slow.
 .\" ----- EXAMPLES :: -------------------------------------------------/
 .SH EXAMPLES
 The following are examples of correct use of each of these functions.
 .\" ----- EXAMPLES :: stpcpy(3) ---------------------------------------/
--=20
2.42.0


--vfp+hU8I4gx7kkgi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVQmE0ACgkQnowa+77/
2zLKcg//cACeNFvdkLH1mGvxiFEEh2u70WFUjM9sHeS1lJwgg1EoPGXDMaUtYjo2
FUMA6yhiMeHG+6kDwHU/Enls8h+fahILixznLPcQrFXFkWKTNwjTHF5kYfY8AAY2
35XJTYSWQsqD8Oapzp8kYJq87hsyu2ks8Vhf+r06TSTXhn5iZTtblGR66AugYdum
ievFmbIzei2L444Rz0w4mn+XY+xlDDDxWDurx/zEhJVHJ/zTg1GqIxcIN1w2/Fi6
N0VEmwy3XR6R8fXtRjoT6TLg0OTTRlHYbdeYRfJtFeyH6pEDbK+ErZrj3LPi792m
HaPG5wDpOMFl4rIhh9HajYAgLXJl2JJ4rg4rH+5HYqjosD7c4nW8SC8AU6+wEv6i
SUQC2v96QghUPkZjyIFuTMp+vmcg88xKlYxb2kBitAnWYSNpqPnOJ/Jn4hoxhrnL
K1gN0AtPZ5TX142gb4AGW/mkCM+5480CZ7nduhsWoop9KL5aZnlnNfKZGtHWb9jI
nRLLmaMCkf7dhsgYSZhBzG8I0vPHEZ6K1b2IpkWaLsoDU3XhveucmVy95W7zsB41
cVimiWlPszq7OeXvV9usy9oA7AiVRS/wut5miheD5aPubdgSAIF5HfNaIZa/y34K
D8XGv4WKIC2kKxIdDSLvS6TVF5N/m9XDIu0bi1Bvd3J+yzB7KTY=
=0usp
-----END PGP SIGNATURE-----

--vfp+hU8I4gx7kkgi--

