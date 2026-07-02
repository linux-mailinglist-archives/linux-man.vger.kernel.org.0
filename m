Return-Path: <linux-man+bounces-5688-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oXQsBkhdRmojRwsAu9opvQ
	(envelope-from <linux-man+bounces-5688-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 02 Jul 2026 14:44:56 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE43A6F7D16
	for <lists+linux-man@lfdr.de>; Thu, 02 Jul 2026 14:44:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LRgPPRx4;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5688-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5688-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3B6C3031803
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2026 12:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA66C47DFB6;
	Thu,  2 Jul 2026 12:33:36 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C4F355F46
	for <linux-man@vger.kernel.org>; Thu,  2 Jul 2026 12:33:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782995616; cv=none; b=q75s38GVO8ClKOUG960PbGkup7DuNBHHbkC9UqsGT1ZnslXdu+R0eCyiKdNwhSGJ7zkWn42wufPxBhXXQQfohlazV9hco1hgU9Sud5fsZgPPMij2GpsN3cSnvk8mMXF/2CYCiBOsazycqKfM5whSy+aR19zzvh4Ov+a3w0Zn8Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782995616; c=relaxed/simple;
	bh=R2UaCacPnY5TiT20RKFZmxKyCGhoVL30cggilqDfp2g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g+uzRMIOfXmWEmb/64A2G+VAl7i9+Lv+95aFVuU6j+/suvcB0MwU3H2lg5zk8QNo72RbBODJk5/zuwmY/ms8pkm+mNKUmBTYCjz+EnESwVoz3A5VmW5m2lql2lLctuiVCrivz5/KqL0lYqAUSkh3msOfCNjl1GHiWDU5yKkztRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRgPPRx4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A49E1F000E9;
	Thu,  2 Jul 2026 12:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782995615;
	bh=Y8198vwyQd8MI5KNkoFDiI9qyBlr3m0fzoqEwxVywwI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LRgPPRx465JBFv84DJ4v6JHOm2En0V1CVThYEmYP5LZ090sK775uroEbGYULIMHo2
	 I0qf2xCPsCaFsyocXdh31s6uXfrhY33I/RuAWRBpGJQEq3qvqBonmwdKJ7lpJ87m7H
	 p1IJenU5gSP/XPdxS+W2tDRNRO7TZzit7D7qg4bsJ6vm0PsJaNOROE6539tihg0VIm
	 uTFbEsjXWBOgj4Pf5y7cR0CVu+9kI77vd4DxtpRdRh90N29ms8rxbYczZKm9WdV2v5
	 pNsqBxqs3augCWRVhkQqWlq1W+TxiJ8a0vQQYdlTIrKZPUuc1nZMrD8C4Reknm3l8x
	 Af7VE1G33KigQ==
Date: Thu, 2 Jul 2026 14:33:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>
Subject: [PATCH v1 2/2] man/man3/strpbrk.3: BUGS: Clarify the NAME
Message-ID: <039a84a097f0a29a43ea017277615bd6bdb32073.1782995502.git.alx@kernel.org>
X-Mailer: git-send-email 2.53.0
References: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="baowu64mmv33vcai"
Content-Disposition: inline
In-Reply-To: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5688-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:linux-man@vger.kernel.org,m:alx@kernel.org,m:serge@hallyn.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE43A6F7D16


--baowu64mmv33vcai
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>
Subject: [PATCH v1 2/2] man/man3/strpbrk.3: BUGS: Clarify the NAME
Message-ID: <039a84a097f0a29a43ea017277615bd6bdb32073.1782995502.git.alx@kernel.org>
References: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>

Cc: "Serge E. Hallyn" <serge@hallyn.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/strpbrk.3 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man/man3/strpbrk.3 b/man/man3/strpbrk.3
index 6e5b79a48bbe..ee7a84f1a944 100644
--- a/man/man3/strpbrk.3
+++ b/man/man3/strpbrk.3
@@ -51,6 +51,10 @@ .SH STANDARDS
 C11, POSIX.1-2008.
 .SH HISTORY
 POSIX.1-2001, C89, SVr4, 4.3BSD.
+.SH BUGS
+The name of this function is bad.
+It should have been named strchrs().
+The NAME section above reflects this.
 .SH SEE ALSO
 .BR memchr (3),
 .BR strchr (3),
--=20
2.53.0


--baowu64mmv33vcai
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpGWpwACgkQ64mZXMKQ
wqktWg/+JTxtYBiQpgcHTFcbpRbwJAbyBEGp5/zCfAtGio76jpNRgYzJ7YugNRJT
LyQT1P5t5Y2EBXI4pdqyk6bpMyFXzeBfwS1uNCfj5p4ceK+t3VjAaEPIJyaFsd2s
gyZe8xb4nDFRSsESPx8cNQ1UbKydiSHyecsDcQwTVIZGTCt9NalYplaHuYYBeJBP
0R7Jd/bvpHKSie6dwjQ/x95X80LuB4B77eQHlFL6h3vxmYz1VfVVhX7PK5sZ4Xa8
431XHprc/pFobVWu4MnAZp8mPQMfzPV2hbsB8Zq0wlArWApfUTPUSh0ZvBpz6pKQ
jK6KdP4cMmDnYdYbG7JoEPUuFuRRDiIK3wztNCq+VsWMuzEOdynhwo7ZPuZXBGDT
mAENujW/KDqpvr9ePSRZbUfFB3vOiu6P/QY7WoHAV3Mzx/HPl6hxQ0vDoJKQF/UI
STsuNXEgvq77h21gEppRO1WL7TSv0/v4cUuaDSnSyB16xFdN8xQBHb/yJtDaq7aF
cRL4fi71RGSdrwA2IYZ3zV2AaSaI2/JppSksJh9tuHrWGSLeYXmbBPG0BWoRZHek
wWZJblh80oksyeuCxEtlVDKr2/bjbpW5Kr9NyKH56Iiq16BoCcxkANfS/WykXG4S
wRncsZCLz9n9dqIGlNiWDwM5VJNufMbc3R0dNvtI6EhTmxGGJ70=
=EpLW
-----END PGP SIGNATURE-----

--baowu64mmv33vcai--

