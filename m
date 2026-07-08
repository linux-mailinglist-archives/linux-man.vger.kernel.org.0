Return-Path: <linux-man+bounces-5715-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +/9POGlpTmq7MAIAu9opvQ
	(envelope-from <linux-man+bounces-5715-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 17:14:49 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D736727D72
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 17:14:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZwkEIMVG;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5715-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="linux-man+bounces-5715-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 15DEC30B1FD7
	for <lists+linux-man@lfdr.de>; Wed,  8 Jul 2026 15:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2B0343933E;
	Wed,  8 Jul 2026 15:09:10 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7D12439341
	for <linux-man@vger.kernel.org>; Wed,  8 Jul 2026 15:09:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783523350; cv=none; b=lSrLdNVH2rDdGIjBonsUOM2tr5pV0sJxc74QI1XCknqJL/ET3hs6BuykHPbxh0lD+Te70yxG7Szw6cUAiqPBbgFlFtmM9jx+mgxhtBo93v6MoaixbNy0uTGzpIm5IhAU0ZKqiF2U4ZeY7F/WUA7pYU4fGB15oT8fGamDTEdCsYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783523350; c=relaxed/simple;
	bh=r6FHR/jy85QHhyFAFZlCekTnNQ42ZaSN3XsROPc8VE8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QdfEqVpfoqi04QjC5eN34VEv+EbkZjPnolzpyRsEWt5RELy/T/5EzK33uCizJlph9WZkoDmAZrRec8zdsrqU2oI6lrI4W4W80Nil49VYrSQaE/eIuwXPiLkAwYw2qHW94wStxeISzXpy9k/Wv41/HmnJIZJHCYPgkuiaFbca6Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwkEIMVG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAFE81F000E9;
	Wed,  8 Jul 2026 15:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783523349;
	bh=j7QoWn5I2N/+B7APZh3FvHIiDHifGPR5xegHKKLd4Nw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZwkEIMVGpUMqcQ7wVgdpJcyAuCdb3EPITro+XNrRekYRPNFChd/Bsmqkthjh4DPyG
	 q1fvQKKcCGlKT2Z4Ua2a6hTicdwpqK0jGo/DpKyJT+OAYlnr2rj5NcJuIakiHIf+Xb
	 sexFdgwBURA8x5Y3brHXBmaVY0f/6G+h8CY94GsEGNLKQnljh5i5FW1WXyaBqfs6QJ
	 yyHicmt/WKMtQ3V/0VcwXRh7MepW+4U+uuheJLmGw5l7S7yqImF+ggKO8kv5sJBiKg
	 YmM0P0Tpc/rwlG0L6nTxp5xGQrDs9s+TnNkg6DHuf6RHiAwWTk6QGmm47XCUq54wfb
	 TLZ/4vcbeBJxA==
Date: Wed, 8 Jul 2026 17:09:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v2 0/4] str*.3, mem*.3: NAME: Explain the names
Message-ID: <cover.1783523064.git.alx@kernel.org>
X-Mailer: git-send-email 2.53.0
References: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="htw75t5ugkcdhvno"
Content-Disposition: inline
In-Reply-To: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-man@vger.kernel.org,m:alx@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5715-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,dartmouth.edu:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7D736727D72


--htw75t5ugkcdhvno
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v2 0/4] str*.3, mem*.3: NAME: Explain the names
Message-ID: <cover.1783523064.git.alx@kernel.org>
References: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>

Hi!

Here's v2 of this patch set.  Changes:

-  Use a better description of strcoll(3), as suggested by Serge.
-  Rewrite string(3).
-  Make bstring(3) a link page linking to string(3).
-  Also cover mem*() functions in this patch set.

See range-diff below.


Have a lovely day!
Alex

Alejandro Colomar (4):
  man/man3/str*.3: NAME: Explain the names
  man/man3/strpbrk.3: BUGS: Clarify the NAME
  man/man3/mem*.3: NAME: Explain the names
  man/man3/[b]string.3: Rewrite and merge

 man/man3/bstring.3    |  81 +-------------
 man/man3/memalign.3   |   4 +-
 man/man3/memccpy.3    |   2 +-
 man/man3/memchr.3     |   2 +-
 man/man3/memcmp.3     |   2 +-
 man/man3/memcpy.3     |   2 +-
 man/man3/memfrob.3    |   2 +-
 man/man3/memmem.3     |   2 +-
 man/man3/memmove.3    |   2 +-
 man/man3/mempcpy.3    |   2 +-
 man/man3/memset.3     |   2 +-
 man/man3/strcasecmp.3 |   2 +-
 man/man3/strchr.3     |   2 +-
 man/man3/strcmp.3     |   2 +-
 man/man3/strcoll.3    |   2 +-
 man/man3/strcpy.3     |   2 +-
 man/man3/strdup.3     |   2 +-
 man/man3/strerror.3   |   5 +-
 man/man3/strfmon.3    |   2 +-
 man/man3/strfromd.3   |   3 +-
 man/man3/strfry.3     |   2 +-
 man/man3/strftime.3   |   2 +-
 man/man3/string.3     | 241 ++++++++++++++++++++++++------------------
 man/man3/strlen.3     |   2 +-
 man/man3/strncat.3    |   5 +-
 man/man3/strnlen.3    |   2 +-
 man/man3/strpbrk.3    |   6 +-
 man/man3/strptime.3   |   2 +-
 man/man3/strsep.3     |   2 +-
 man/man3/strsignal.3  |   2 +-
 man/man3/strspn.3     |   2 +-
 man/man3/strtod.3     |   2 +-
 man/man3/strtoimax.3  |   2 +-
 man/man3/strtok.3     |   2 +-
 man/man3/strtol.3     |   2 +-
 man/man3/strtoul.3    |   2 +-
 man/man3/strverscmp.3 |   2 +-
 man/man3/strxfrm.3    |   2 +-
 38 files changed, 179 insertions(+), 228 deletions(-)

Range-diff against v1:
1:  e1446fbce9d7 ! 1:  b17a1548f3ab man/man3/str*.3: NAME: Explain the names
    @@ Commit message
         man/man3/str*.3: NAME: Explain the names
    =20
         Reported-by: "Serge E. Hallyn" <serge@hallyn.com>
    +    Cc: Mark Harris <mark.hsj@gmail.com>
    +    Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
    +    Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
         Signed-off-by: Alejandro Colomar <alx@kernel.org>
    =20
      ## man/man3/strcasecmp.3 ##
    @@ man/man3/strcoll.3
      .TH strcoll 3 (date) "Linux man-pages (unreleased)"
      .SH NAME
     -strcoll \- compare two strings using the current locale
    -+strcoll \- strings collate
    ++strcoll \- strings LC_COLLATE compare
      .SH LIBRARY
      Standard C library
      .RI ( libc ,\~ \-lc )
2:  a1c4e794224f ! 2:  a7508ac0f477 man/man3/strpbrk.3: BUGS: Clarify the N=
AME
    @@ Metadata
      ## Commit message ##
         man/man3/strpbrk.3: BUGS: Clarify the NAME
    =20
    +    Cc: "Serge E. Hallyn" <serge@hallyn.com>
    +    Cc: Mark Harris <mark.hsj@gmail.com>
    +    Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
    +    Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
         Signed-off-by: Alejandro Colomar <alx@kernel.org>
    =20
      ## man/man3/strfry.3 ##
-:  ------------ > 3:  dcc7a485cbe0 man/man3/mem*.3: NAME: Explain the names
-:  ------------ > 4:  89d3fbe27c06 man/man3/[b]string.3: Rewrite and merge
--=20
2.53.0


--htw75t5ugkcdhvno
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpOaBIACgkQ64mZXMKQ
wqmqYA/7BWPWDXDvhFGLwNV8WahOp4l5VoaBjXy3P7gXV4KPFMECzKP838CmpW+t
yNoW+kayujaIrk/3ZWh1hJTFBkT0vZHneVn+JUWUjKSNo94RPH73vrFashALo5Pd
R/uqeU2Syt9v1f4Ok7QrE10yKKlEUYCY2b4TdvsQ0BdWErEaN1Emn3tn74ZW/nFv
hlVQlkURT2K1bMgJhzKhneC36jiIWKtKctK7qBK+1h85BXykGzgV3LEAI7w7+oT9
I7UgFkyAGC51f2e7WJu/FPORI/rO4y2qfkKp0b4mtMv80xHAXXBfr/oZMe55juEQ
qIQja0BhuGQMNa+htNPB0z6K6ZJt6Ebs3x1wP1TzaYUH4FCy8U3Mq35LxtakCYTY
LJHzFRgsBRLdGkYW9i7rnsz6W6Bu14F8V33DSpq8HUly1vNKU/Ce2/0+jm04kSMc
0Grj/AUXHGfgNVZw2YpxGrKdS+4SVw2Q1GkyJr31KHn1VgpHjlmn7stEqIVd/Uge
ihJKk1z3iuW+MeMVULgD/vWhjrnO41F/HNFu7a7koeQXMPcrHy8zIWDiqIu+1WYc
xg3+w0z+Tz7b34XeLQydQrE0QqlXxE5atx8PmHL3bdAJDLKgkjsc0jMSSKsqYyYe
AkvXs4ZPMu2DCd8XW/6WAdaiziZhsBgjgIc7ZJK7Yi1pgNNYqyY=
=U2Xq
-----END PGP SIGNATURE-----

--htw75t5ugkcdhvno--

