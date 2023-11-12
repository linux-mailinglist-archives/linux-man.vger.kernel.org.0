Return-Path: <linux-man+bounces-48-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B435B7E8F9A
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 12:26:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 503A1280BF5
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 11:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B1B68468;
	Sun, 12 Nov 2023 11:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHL3h+b/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F1B79FB
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 11:26:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9969BC433C8;
	Sun, 12 Nov 2023 11:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699788414;
	bh=yVi+lj8581Tb4erLHGRME+3JfFenz0cB6Qb5TPUiCpc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XHL3h+b/m4vxZFM0PzK5C12Sa114RT5x09m5zVtsjJdhX6pZHfGr+GW3GNd7ug2sx
	 L8Ku93y00nC3UkczrQRd1IAz2Yf+Ip/5TQ3pLNzRIWbz+b/dHQUiZgrhI38IM8l1Fe
	 qcQeYxL1sSG0/3y1D461VirnOkZk1x0HMITxKb2WUYqcmynUK9lF4KAAiK2gwWRere
	 P748DHiIkvAk0PNaE3d31k67OqFC2kwovuZduwBlRA7kiei4KxdvTr5twDhIKAi5TD
	 RZyN+EBtSM7qaTA2K3g0CvORV28//K/M4DY2NKQlBIXLwlzJWcG5+ffXrBJb36zotk
	 uo2mg4MCT76rQ==
Date: Sun, 12 Nov 2023 12:26:49 +0100
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
Subject: [PATCH v2 2/3] string_copying.7: BUGS: Document strl{cpy,cat}(3)'s
 performance problems
Message-ID: <20231112112629.13827-4-alx@kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="byXg1X/MIfRix6AF"
Content-Disposition: inline
In-Reply-To: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
X-Mailer: git-send-email 2.42.0


--byXg1X/MIfRix6AF
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Nov 2023 12:26:49 +0100
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
Subject: [PATCH v2 2/3] string_copying.7: BUGS: Document strl{cpy,cat}(3)'s
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
Cc: Guillem Jover <guillem@hadrons.org>
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


--byXg1X/MIfRix6AF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVQtnkACgkQnowa+77/
2zLCJQ/9EvHSFR0BYXPmeVhS4unziJfnwBczKoZC5SZoYpMHQOGt0NV5bS7I6vR8
FAurtW6hE5jWRVoAOknk7J4gmwcRBSMdCK5qYehwaSIY+YhM3PtdCJ+L6yYO9wxj
ysfHaY5/W4+rlwRa54F85znzSAALxxjOrbQOPhrwV8wvE3DTF4fmSuwqO3vYCZiz
dLgHw3eCwibDIBQs/N6asEQoMdMiGlADPIq9wZmAtYArpE7NaLWIlo6Qmd7y69Qy
pSVDZk4jLExzQy4vDsLqORJAUGcbS8me8SvM7E81W+xdoskQBJUeQP2z2Mh3/GSQ
saW6eFaKCz8+jfOtVV602Y40d29MlsXZCS9gcBXctDasEGOCY53pI8FqzbWGtnQb
czHU5WJzqyuj1NICt/+GLw+FAxZs+POsvoXajZ3+ggC6Kti2t2rZzaCiKFfAmRF4
X8sN6KEcilmKQkvjyxQuuAJEekUVu/NQnSq3pvKM6EHX6g6PuTKXa2X8PgGbnJwB
RQwnlbDC49fpmM75XoX4ipa+AA52XjaryZu+fJXMsDJdfBLTYFydQ0aRBvIBZI+W
v95SxRXIzoM3MZ4B6JD9flWbTh5+jgdnRPQx+dPBQjnMCjLrI3cPnlwdy3IebNoO
F1JZ5hkwdqcrMZ8LPH2mC5FoUJMQKYYYmcAfkzQB1NmicCD4c7A=
=4Fr0
-----END PGP SIGNATURE-----

--byXg1X/MIfRix6AF--

