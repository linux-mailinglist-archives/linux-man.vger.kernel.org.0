Return-Path: <linux-man+bounces-5179-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONApLbrWmmkYkwMAu9opvQ
	(envelope-from <linux-man+bounces-5179-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 11:13:14 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0193F16ED41
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 11:13:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 29B6D301224E
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 10:13:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AD0A223336;
	Sun, 22 Feb 2026 10:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sethm.id.au header.i=@sethm.id.au header.b="cPuClJ33";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="Iy/oiYpg"
X-Original-To: linux-man@vger.kernel.org
Received: from flow-b2-smtp.messagingengine.com (flow-b2-smtp.messagingengine.com [202.12.124.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D482147F9
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 10:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771755191; cv=none; b=iHcm9vXh7HsJC63/v+I7xd5aB+ePnQhhQ2QxZfvYyimNjzS5SQRJ0+233qCuK7AvyO+Hrxx7jXR9oLdbZISAUjMvnEGu8lVdBeKOrBASjMFChdnvBr/+0Cb8panBqh8v2h/W0ZRi0zQsDGRlpe/JbeQWG2BS3aXNbPR+rUlmruQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771755191; c=relaxed/simple;
	bh=JWvXEH6lDcButzBJXBekpoEr3Ruu8cO02palZfzsZ94=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NYPQcMUoZNiUitNCCMkEiDzb3BZDhH3+1kPutxBmcgiGW5Fkxz29devSgSVSmM5Uldy/5wjswjdFbAqLQ6dIadW1gXCnnfyb82Touo8o0lZWqE8FGwCyVWTZV45i4KEQamo+N5GydlR4QDW+dLDzjzjnyva2kYq013TXGMI2WO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sethm.id.au; spf=pass smtp.mailfrom=sethm.id.au; dkim=pass (2048-bit key) header.d=sethm.id.au header.i=@sethm.id.au header.b=cPuClJ33; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=Iy/oiYpg; arc=none smtp.client-ip=202.12.124.137
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sethm.id.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sethm.id.au
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailflow.stl.internal (Postfix) with ESMTP id 738731300D39;
	Sun, 22 Feb 2026 05:13:09 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Sun, 22 Feb 2026 05:13:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sethm.id.au; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1771755189; x=1771758789; bh=+2L1zlX0I5
	GR+C3FgJ9Mj9gyLikBnnGEftoUJbCHvBs=; b=cPuClJ33Ycbwxx+AxCEJFfRnqg
	7o4KLtRylhx2WuldJP4nxwhuzq9R+l7agLY9lEC6UZumKDfpdkk+4FtIv0IYDjal
	pJXPSnQeRl5VVZsY/DOCT6ku0MP7kYqIWo2JrK7LEgIIaW+VzvSTdIE1PMcwjEdw
	7GJAbLCTiuAyI/Q0WYYIjPTIfM5dmnrpy+VPMutkoxeOIB0uDdeTHxnDbWv16Ymk
	xEIpdCoRyYWxo3bwljPmBUvq7HNjUfxSVuqQ3o4D7kAMNWcYtYD5c5cYjmfngUKJ
	CSv4M31vckpn40FSvZ/l2SMHE1s+MLqdimuRhQRo6JyniZG4EvvqE/Zxf1dA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1771755189; x=1771758789; bh=+2L1zlX0I5GR+C3FgJ9Mj9gyLikBnnGEfto
	UJbCHvBs=; b=Iy/oiYpgxy7rc1irksBweECZ4dJxL1Dch+pH1Zsts4STXX2s0l6
	ERQ74eYORuOn3dlKG5kWIQosO58DmScRCpdOJ7Qafq6DFwub4yS0Tav2ayJD+M1O
	QuXihVhp0lvQ9NS9+UfOtMdNlFrDmEsg021rHIus/nTkn1CkaIq/wV1tOBBo8uWR
	Aaex1SFGrjP1BLR7FJ5tgIVRE0eT5eS7JqKZW6KJ21eOiDl+QcYo2i7eEdZ3oYUC
	5IfzghA0jOK9/3g2/JoffAzTm5xbktH3QztstLlYT+gMDEkCqQcbprCFhyS4JFVM
	Kxe22Ziz0+NCE69ZG1NMyU+u2/b/2GR82TQ==
X-ME-Sender: <xms:tdaaacl2xdJhtas9O_2vhcsywg3mQ4SN1h4jU_DwQOiQ_kq-b6agHw>
    <xme:tdaaaTmt4t47vT5476Hey52-VjJO0e1GoedCQkEVocBY8xqDYkl8mK6qgiqsR8MmG
    hzE-6HP1EKollPeFteQds-PXFvmDoVQlRC-tcKnK-P-afQTQ_XutDM>
X-ME-Received: <xmr:tdaaadtyEhcqFGnq6nDNyaaM-Krwz6FFMVnDXFogucUUjDR6PL-UQcjx2obX43w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvfeegtdefucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkfgjfhggtgesghdtreertd
    dttdenucfhrhhomhepufgvthhhucfotgffohhnrghlugcuoeguvghvsehsvghthhhmrdhi
    ugdrrghuqeenucggtffrrghtthgvrhhnpeeiueffgfethedtvdetueefhfejveeggeetje
    ektdetieduiedvheejtefhueefveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
    mhepmhgrihhlfhhrohhmpeguvghvsehsvghthhhmrdhiugdrrghupdhnsggprhgtphhtth
    hopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegrlhigsehkvghrnhgvlhdr
    ohhrghdprhgtphhtthhopeguvghvsehsvghthhhmrdhiugdrrghupdhrtghpthhtoheplh
    hinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:tdaaaWkqgTx64M5_8PNjXSv9GZWuHrmAcYO5don9RoYq6T644YJfMw>
    <xmx:tdaaaYtuuGPuZKuIY937zrAfu9FlFwFR08O5ykylq3tpjwbA3xqfMA>
    <xmx:tdaaacezKv7IIOgoM6kfwVHAq4F3BK1-4_h9E-_FXFDIDQmyr7nRsw>
    <xmx:tdaaaYxjEVFe3M5t6ptZCu2AdYYB9Jk-JRBwCykJObKnTXUWJfpp2Q>
    <xmx:tdaaaRvOCLXtaLFdAySK9CG_sVwojGSyCzJooOCNiMxD7FssZIDP8oN6>
Feedback-ID: i35064beb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 22 Feb 2026 05:13:06 -0500 (EST)
From: Seth McDonald <dev@sethm.id.au>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <dev@sethm.id.au>,
	linux-man@vger.kernel.org
Subject: [PATCH 1/5] man/man2/open_tree.2: HISTORY: ffix
Date: Sun, 22 Feb 2026 20:12:11 +1000
Message-ID: <3b27c0e095e33180f26181043f64f1a52a6066e8.1771750388.git.dev@sethm.id.au>
In-Reply-To: <cover.1771750388.git.dev@sethm.id.au>
References: <cover.1771750388.git.dev@sethm.id.au>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed;
	micalg="pgp-sha512";
	protocol="application/pgp-signature";
	boundary="thoushaltnotpass"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sethm.id.au,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sethm.id.au:s=fm1,messagingengine.com:s=fm3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5179-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sethm.id.au:+,messagingengine.com:+];
	HAS_ATTACHMENT(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@sethm.id.au,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sethm.id.au:mid,sethm.id.au:dkim,sethm.id.au:email]
X-Rspamd-Queue-Id: 0193F16ED41
X-Rspamd-Action: no action

--thoushaltnotpass
From: Seth McDonald <dev@sethm.id.au>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <dev@sethm.id.au>,
	linux-man@vger.kernel.org
Subject: [PATCH 1/5] man/man2/open_tree.2: HISTORY: ffix
Date: Sun, 22 Feb 2026 20:12:11 +1000
Message-ID: <3b27c0e095e33180f26181043f64f1a52a6066e8.1771750388.git.dev@sethm.id.au>
X-Mailer: git-send-email 2.53.0.1
In-Reply-To: <cover.1771750388.git.dev@sethm.id.au>
References: <cover.1771750388.git.dev@sethm.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Seth McDonald <dev@sethm.id.au>
---
 man/man2/open_tree.2 | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/man/man2/open_tree.2 b/man/man2/open_tree.2
index ad23caf15113..3e587f7be14b 100644
--- a/man/man2/open_tree.2
+++ b/man/man2/open_tree.2
@@ -491,12 +491,14 @@ .SH ERRORS
 .SH STANDARDS
 Linux.
 .SH HISTORY
-.SS open_tree()
-Linux 5.2.
+.TP
+.BR open_tree ()
+Linux 5.2,
 .\" commit a07b20004793d8926f78d63eb5980559f7813404
 .\" commit 400913252d09f9cfb8cce33daee43167921fc343
 glibc 2.36.
-.SS open_tree_attr()
+.TP
+.BR open_tree_attr ()
 Linux 6.15.
 .\" commit c4a16820d90199409c9bf01c4f794e1e9e8d8fd8
 .\" commit 7a54947e727b6df840780a66c970395ed9734ebe
--=20
2.53.0.1

--thoushaltnotpass
Content-Type: application/pgp-signature;
	name="signature.asc"
Content-Description: *PGP Signature
Content-Disposition: attachment;
	filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.4.7

iHUEARYKAB0WIQTp0Sal8NSd93krwuK0v0Uw05stUQUCaZrWpAAKCRC0v0Uw05st
UaMkAPwIAiHcc+KqIWmnWNqTzDvldnQeSXWe6X3dR4dgZAKm/gEA9ryEOlH60jqZ
v5Mjj9t00rW/BF0XL60TWXoUH3j7nws=
=SQxK
-----END PGP SIGNATURE-----

--thoushaltnotpass--

