Return-Path: <linux-man+bounces-5718-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3zxAHcVpTmraMAIAu9opvQ
	(envelope-from <linux-man+bounces-5718-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 17:16:21 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 11046727DB4
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 17:16:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Qbh5eJuZ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5718-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="linux-man+bounces-5718-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3439D301F6C1
	for <lists+linux-man@lfdr.de>; Wed,  8 Jul 2026 15:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21AE13F12F3;
	Wed,  8 Jul 2026 15:09:22 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0507439320
	for <linux-man@vger.kernel.org>; Wed,  8 Jul 2026 15:09:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783523361; cv=none; b=SEgiSj09XT7yG7hMfNQI8PMRIwrUOVBk0AxIO90Vmv5WEMkvcVH/gQ8iMLn96JTaDpFc89uVwI6xmFQe+CO0NnVCWGEfB3VvSteGgVhMBJm0T/ARJibcnB8n0vD0knC6JtHwp5h6IZyE+b8s30LYmiO7MMITW5zis4FGy7saUNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783523361; c=relaxed/simple;
	bh=u2cVPthqjldgWSblXMUXBHOpmyp7138c1OOp8IfQJvo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZJm8oUEPcwWmEQOObsuuyR6n7r5tZEaCIn+BLZdjza+xtkL7sG6tVL/3JKNSLX59xfFnFxoybaWzjvKVnqdLy/W53JyHDm6HR/x/SHOdnCqaf3s8ucX+ShDueC0A4QLhEydQo10djW+m77noU9xjw9e6Su2Vu0xAbiAW2WEUVi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qbh5eJuZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3773E1F000E9;
	Wed,  8 Jul 2026 15:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783523360;
	bh=Drasmxfmrvjj7+y8jAeUmJ0aDKZhee+qaQqwL+LtSl0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Qbh5eJuZQyZa6lg9jaf7UuLL9NakcEV0baPjITQWTFjpFceHV6Tuca/CG81eh4W70
	 Xxqd1XldI+z5u9EOVQZZZ3l0I5J6hPkRdQrRa2I1IPErpeiLk2Dg/cAdRTL/E9fFjm
	 kt0pPrsl/ZJFIgDdfxqmir38/+ny0qpLFXZlUxfZoWUs9Tq0V8Ss0yH6BfBzROqDAc
	 eIf73zpKZrhXkchDCaB1LLaBMeI+jLtuWjRsvsz+iAa9u6ZQMk5MiViMFMvkthdR10
	 Bdq4GJ/f1gim6BEzb9+D9QPJWQAnKmGN+IL+jWo8IrJyQBKfSVuLcG80x2n0sReBF0
	 BxlC1mvPtsvDA==
Date: Wed, 8 Jul 2026 17:09:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Mark Harris <mark.hsj@gmail.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Subject: [PATCH v2 3/4] man/man3/mem*.3: NAME: Explain the names
Message-ID: <dcc7a485cbe0f7fcef3bd16bd419a744d8c6e04b.1783523064.git.alx@kernel.org>
X-Mailer: git-send-email 2.53.0
References: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
 <cover.1783523064.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wqvmhp2hepasq532"
Content-Disposition: inline
In-Reply-To: <cover.1783523064.git.alx@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-man@vger.kernel.org,m:alx@kernel.org,m:serge@hallyn.com,m:mark.hsj@gmail.com,m:g.branden.robinson@gmail.com,m:douglas.mcilroy@dartmouth.edu,m:markhsj@gmail.com,m:gbrandenrobinson@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5718-lists,linux-man=lfdr.de];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,hallyn.com,gmail.com,dartmouth.edu];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dartmouth.edu:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,hallyn.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 11046727DB4


--wqvmhp2hepasq532
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Mark Harris <mark.hsj@gmail.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Subject: [PATCH v2 3/4] man/man3/mem*.3: NAME: Explain the names
Message-ID: <dcc7a485cbe0f7fcef3bd16bd419a744d8c6e04b.1783523064.git.alx@kernel.org>
References: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
 <cover.1783523064.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <cover.1783523064.git.alx@kernel.org>

Reported-by: "Serge E. Hallyn" <serge@hallyn.com>
Cc: Mark Harris <mark.hsj@gmail.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/memalign.3 | 4 +---
 man/man3/memccpy.3  | 2 +-
 man/man3/memchr.3   | 2 +-
 man/man3/memcmp.3   | 2 +-
 man/man3/memcpy.3   | 2 +-
 man/man3/memfrob.3  | 2 +-
 man/man3/memmem.3   | 2 +-
 man/man3/memmove.3  | 2 +-
 man/man3/mempcpy.3  | 2 +-
 man/man3/memset.3   | 2 +-
 10 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/man/man3/memalign.3 b/man/man3/memalign.3
index 12e8a5bb0c33..5954693e3d30 100644
--- a/man/man3/memalign.3
+++ b/man/man3/memalign.3
@@ -5,9 +5,7 @@
 .\"
 .TH memalign 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-memalign
-\-
-allocate aligned memory
+memalign \- memory aligned allocate
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/memccpy.3 b/man/man3/memccpy.3
index d21e7d014af6..706f8152f58c 100644
--- a/man/man3/memccpy.3
+++ b/man/man3/memccpy.3
@@ -6,7 +6,7 @@
 .\"
 .TH memccpy 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-memccpy \- copy memory area
+memccpy \- memory until-and-including-character copy
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/memchr.3 b/man/man3/memchr.3
index 40ea45fdfb83..0a493ff4029d 100644
--- a/man/man3/memchr.3
+++ b/man/man3/memchr.3
@@ -6,7 +6,7 @@
 .\"
 .TH memchr 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-memchr \- scan memory for a character
+memchr \- memory search character
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/memcmp.3 b/man/man3/memcmp.3
index 815bd10252fe..9cecb282ba4f 100644
--- a/man/man3/memcmp.3
+++ b/man/man3/memcmp.3
@@ -6,7 +6,7 @@
 .\"
 .TH memcmp 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-memcmp \- compare memory areas
+memcmp \- memory compare
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/memcpy.3 b/man/man3/memcpy.3
index c94c501b0374..f8f049bf5c4c 100644
--- a/man/man3/memcpy.3
+++ b/man/man3/memcpy.3
@@ -7,7 +7,7 @@
 .\"
 .TH memcpy 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-memcpy \- copy memory area
+memcpy \- memory copy
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/memfrob.3 b/man/man3/memfrob.3
index 90534b749c4c..ee41da0ced7b 100644
--- a/man/man3/memfrob.3
+++ b/man/man3/memfrob.3
@@ -6,7 +6,7 @@
 .\"
 .TH memfrob 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-memfrob \- frobnicate (obfuscate) a memory area
+memfrob \- memory frobnicate (obfuscate)
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/memmem.3 b/man/man3/memmem.3
index 0224a130537e..13fd8b7cea7b 100644
--- a/man/man3/memmem.3
+++ b/man/man3/memmem.3
@@ -6,7 +6,7 @@
 .\"
 .TH memmem 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-memmem \- locate a substring
+memmem \- memory search submemory
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/memmove.3 b/man/man3/memmove.3
index c549c6145176..99f152412142 100644
--- a/man/man3/memmove.3
+++ b/man/man3/memmove.3
@@ -6,7 +6,7 @@
 .\"
 .TH memmove 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-memmove \- copy memory area
+memmove \- memory move
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/mempcpy.3 b/man/man3/mempcpy.3
index d5ae5812758e..012e6326dd00 100644
--- a/man/man3/mempcpy.3
+++ b/man/man3/mempcpy.3
@@ -7,7 +7,7 @@
 .\"
 .TH mempcpy 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-mempcpy, wmempcpy  \- copy memory area
+mempcpy, wmempcpy  \- memory return-offset-pointer copy
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/memset.3 b/man/man3/memset.3
index 370ac64fdf25..91b3b476abf9 100644
--- a/man/man3/memset.3
+++ b/man/man3/memset.3
@@ -6,7 +6,7 @@
 .\"
 .TH memset 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-memset \- fill memory with a constant byte
+memset \- memory set
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
--=20
2.53.0


--wqvmhp2hepasq532
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpOaB0ACgkQ64mZXMKQ
wqmk5w//Z718vjVdGO1rCTOi7Ab1IJEHcJ0fGgascqNooFYWimRn4UQeJbWS0aN2
dw7coZWpVuP3g3lk5MNmNCSaIg/sNFGbFSRQkgwAImg03FYOZqj5R8UbGNAekxC0
Hnk9DdMKMsoHRXv6zWa88rPqHllfgNRPz4Yc8df8aX3rB2sDgRsgaSTH4cWpdWGk
i0oWTgx3WFqYDn9ESO5KZgYsp88Z+MW2OaJy1Pbmexgv8w0+Y0z+iep2AhZ4Udcn
bwD1hL+mgojXUM9IWxytDD3sMgAijS9gbnGJ5T9hMD9DabF8aO+hFKRBxz2K2Wi3
mpePzj2YRka9aKEnwzTUvAt58b691kHqX6BYlFRTKQAJcwwfNQ2lU30MQGskkVr0
rdRTsMMZbihuH5u+qiDpFe6FB+cj0jBms77xTo6k3uaakX+M02ZRQHpqLp9Xqkym
/g/eQ6c/nnQDrn3ptzLPEFPmu+G6Cqrqj1DdbRO4cptuAUQuWPH7ZnyvYk41gwqP
Ca/FuXP0dAH1wD5DuNeDKvnCIXPjmbRLHp7X1n/UcBs19dvwv6ZEE0QzZ4copLoW
MlkBKYky+GtBqU1oW/mhmqDGlFv4NCXjMGOhwcIES9uS7HseRcC3j1eFy3C7m6zB
BYTMSpchpe52i86deelTiK3L4GEg2MbdsaixyT3fxNFom7qzPWo=
=w95/
-----END PGP SIGNATURE-----

--wqvmhp2hepasq532--

