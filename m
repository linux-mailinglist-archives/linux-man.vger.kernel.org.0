Return-Path: <linux-man+bounces-47-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 486A07E8F99
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 12:26:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0368280A99
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 11:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C9B279F1;
	Sun, 12 Nov 2023 11:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akTIHwTZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0059379FD
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 11:26:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ED8EC433C8;
	Sun, 12 Nov 2023 11:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699788409;
	bh=NvsLuhuzUB/V8+oiw9HqjyEG6qGrqTx6Grd0CLznoAk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=akTIHwTZChgXg2/JaCZ5nQz6pmbRpta9hyYmD3IP3w7yVmZ+PSWKqKZ6dfRGci6uV
	 3QY5lEDDBUgW0uo3GZhXHrHirwkPrE/MKu29LFMP+p34MiW3LdublA5OTXTPdti81e
	 doHZ3tkOJVAMdfCz8XSmVy83VbFO44HYb2ptmycWrzDb+46ZMKH7hQFcPmY7pnw71k
	 FnBygAYU3vV5pr1tG3JGRf5yRu2ZcxpuzDY7PiM3XDybEBzHnJ8Tb7f8mGR/7N4U5D
	 h8de410Tzlbq28z+xv/IKKod/AdG5NlW8O6oyx4aeyogBXlYP1tu3AfHTdKK0gjqi3
	 c2QsSWx1ls+NA==
Date: Sun, 12 Nov 2023 12:26:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
	Guillem Jover <guillem@hadrons.org>,
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
Subject: [PATCH v2 1/3] string_copying.7: BUGS: *cat(3) functions aren't
 always bad
Message-ID: <20231112112629.13827-3-alx@kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MSrEpmYhcYlVQu3a"
Content-Disposition: inline
In-Reply-To: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
X-Mailer: git-send-email 2.42.0


--MSrEpmYhcYlVQu3a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Nov 2023 12:26:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
	Guillem Jover <guillem@hadrons.org>,
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
Subject: [PATCH v2 1/3] string_copying.7: BUGS: *cat(3) functions aren't
 always bad

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


--MSrEpmYhcYlVQu3a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVQtnQACgkQnowa+77/
2zLHrA//VR85yIgSsC30pSEdhlywA1PAQMrhLT/foL2aQKEy9W0T/4ffTTaGqGtZ
CAsf/Yxo6tcs6r0NL5w7/6qiFSzMPyhTmjiCdwQ5NoXghnBQao0Uwv4LEclUmi3I
gyaNh7LASBfto2Ir+AHNF+yNk144Mnk3m3WutUAoSAFC50zLJuKPJUMwAwRPeFoE
R2Xs/WfCQcO3RAKk7B/9ZVeVy014aubYBVFDbBD0GmDgUaD0gcO5RNq+yLKzicWU
rCvTA2D4cX1wFJ4UWUa1K/S7H0wdQGroXlBJ7YKoy/rw9Uiazb9FDe4IlxA4c4mH
0lbMSHNaNzUXt2y7shiDbTiApcpxtugSyT7xqCtMQmTdc0e/q+vNHqNwdQUEsAXB
mIaFeTeaS8l5cq0KDrHO7/ZGftjhhbdaSX/rk0UPwJr9VNc8UFllXRHNi2G+U9O2
YTa00I5R6rwqVCzWeTBIs+E4OWm5Pcf1ZGQkR9S3yYTRhNwYC0jFjY+RHMblYOrK
T2Urli1cXGAZLuxuB8nk2GiMDYuc89mNeD5acD6cBU01np3Hderi+FtLjzeGYz14
Fqs7EvP11fldI2icNhzjk6JIC4iYgHMoypXg/St3RD/T3W0RKXDmMsPvSnuf58cD
fkB0HGNfKn6MvYWXRCnY4YmLJ8tbgwg92UnOT3Osw/hnyGZdoKU=
=kInm
-----END PGP SIGNATURE-----

--MSrEpmYhcYlVQu3a--

