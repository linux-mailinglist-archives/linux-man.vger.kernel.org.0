Return-Path: <linux-man+bounces-5180-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHHjD83WmmkYkwMAu9opvQ
	(envelope-from <linux-man+bounces-5180-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 11:13:33 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B477A16ED49
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 11:13:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 72E6A3012251
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 10:13:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DE41223336;
	Sun, 22 Feb 2026 10:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sethm.id.au header.i=@sethm.id.au header.b="yl5CTESY";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="KzZE5PE3"
X-Original-To: linux-man@vger.kernel.org
Received: from flow-b2-smtp.messagingengine.com (flow-b2-smtp.messagingengine.com [202.12.124.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32EA2147F9
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 10:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771755210; cv=none; b=r4OxTu+PRsobzDp9KuWtKaZLmm1d7/Z+bDMPK/F7/V4meQ7qEH0S2rCGT3m17djwQW5XAm3kQPN477E4/X1ey8+ooGv/6t2FzW4GBdHxY2w2QOo69XlovaJPSmDUWL/WqDxfuZA+UW06l7mTERl5Ie5asc8jw2frZEFqjdH8l8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771755210; c=relaxed/simple;
	bh=7rLMvI5AVzNrOzJGfOy7IbKXhyojNAWoeaI/YsJBiH4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tjDEQDPeSa4BXVAW7YUbQQuCTEsWgysEnN6VSyp3WNm8bLiCEOSo4G3VH1TQ6aGrlTj2CsLwLOrpwLCG69VQXFHTMwfntL1RVkWsgTc6+4gr9n+LP1H2l5nyRQVSp3YyfZS3nSf2rf8emD24dsLz91lInJKKrh+bx14q09esQT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sethm.id.au; spf=pass smtp.mailfrom=sethm.id.au; dkim=pass (2048-bit key) header.d=sethm.id.au header.i=@sethm.id.au header.b=yl5CTESY; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=KzZE5PE3; arc=none smtp.client-ip=202.12.124.137
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sethm.id.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sethm.id.au
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailflow.stl.internal (Postfix) with ESMTP id 3D1471300D39;
	Sun, 22 Feb 2026 05:13:28 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Sun, 22 Feb 2026 05:13:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sethm.id.au; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1771755208; x=1771758808; bh=rlqrFGB1Ly
	kf9URcQ/E8fQ5V2oWfAuPOxx1JABdlkPA=; b=yl5CTESY5BLYUh0lW8e/fmXMbK
	J4O6IsZI+XYND6Lic9+3DBH2dflBnPPlZOqcgYJnj3x7d7JRap7PvVXWrUale2t5
	JNa9HO7QdgJVuVe/+fF7HR1CXS8SOYfeDJifIAuD9MRVVVLBnC0LB5CIF+Udz5Bs
	4n5uoAKrF7OHEvxwIHcw7cFmBZkENYxiodXSdaBbXWxYzI5ZvptGmbGz+QGoxdul
	VtC+XsLlSmCDu5DWIC4rOiNkNCd2Ls/NTHFqGEHcH8/c3VfhVSmEp/FxM75fMewZ
	WV6Xb2lsyrPZDPXTCI2Q/FWtaJ4SfbwwGDGHvRRx5BfyZzxrUVSpjLr4wS1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1771755208; x=1771758808; bh=rlqrFGB1Lykf9URcQ/E8fQ5V2oWfAuPOxx1
	JABdlkPA=; b=KzZE5PE3VPKzzG7fUlkR0wq21OYUmG9909WcEcYu81qAUwEAJ9D
	voOEb9xJwnx3PE/ocIepMO3uR5BFsbKOAjPm8+/T5U0CwOA7erIMAGyefNfl6bx1
	Aktl4YyF+6heB0ipUbu1ScMJGre3jPB7l2df5prf6Hiq/jO5ss7XQ1apF35lkHaB
	aIVzAsvw4DASmAjTVS8hW1OqQI23Q9It6n/2Z5CtBU7GsUDIyo7jfNKCuGhQ3R8s
	jCG60C60nmahR1RCjPf80CM5Y500/U/zfpILfsZQxXcV9/JwLDXciKOpR2hPrljC
	rstmN5JZ5qU0Jd5uBCq5PySSSHQ9p7VQKrg==
X-ME-Sender: <xms:x9aaaXSfCZvHuc8cJ6EyqX-bSM5XfQaJGm8_Cfsde7W_cT2dsVbgOw>
    <xme:x9aaaQigFShNpz9rmHfbJbutj8XIWCvEMKzdYTuSTdLPvYAAuKf4FVBVj2zpy6d56
    L9KfLEpUHRjJD7UoRB9LgXBe2R-UDioHMqzxFTuVFXCXvdMaWYS3PU>
X-ME-Received: <xmr:x9aaaf7OvWCir8eWk6I9WH47ABncpKV2E_OB5ucgTICinxte3L7uAmuG4GsK8kk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvfeegtdefucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkfgjfhggtgesghdtreertd
    dttdenucfhrhhomhepufgvthhhucfotgffohhnrghlugcuoeguvghvsehsvghthhhmrdhi
    ugdrrghuqeenucggtffrrghtthgvrhhnpeeiueffgfethedtvdetueefhfejveeggeetje
    ektdetieduiedvheejtefhueefveenucevlhhushhtvghrufhiiigvpedunecurfgrrhgr
    mhepmhgrihhlfhhrohhmpeguvghvsehsvghthhhmrdhiugdrrghupdhnsggprhgtphhtth
    hopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegrlhigsehkvghrnhgvlhdr
    ohhrghdprhgtphhtthhopeguvghvsehsvghthhhmrdhiugdrrghupdhrtghpthhtoheplh
    hinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:x9aaaVDXgtkWbmGgMyka7SRcLKa9ulIaFJLM0Pm6mt4QCiQrd6fA2Q>
    <xmx:x9aaaeaWunXDX7tF0pBkN-zldQgryg3UTuhbKAPl31ZdalLJtE6NNg>
    <xmx:x9aaaYakO7dWKM_8ve8fCeuk9rRZ-9EbM4xzA-DmqUDQX4izILB6oA>
    <xmx:x9aaad9-p-fqYXxZw3qiOUnNtXzgyD7ogoX3HWYdveYQ-Exhwpswrw>
    <xmx:yNaaaX6m9UKwILbxfYd8W8Y4O5uaTVX0rUJrHfJ_unsAIAI78Dl17mLI>
Feedback-ID: i35064beb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 22 Feb 2026 05:13:26 -0500 (EST)
From: Seth McDonald <dev@sethm.id.au>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <dev@sethm.id.au>,
	linux-man@vger.kernel.org
Subject: [PATCH 2/5] man/man2/perfmonctl.2: HISTORY: wfix
Date: Sun, 22 Feb 2026 20:12:12 +1000
Message-ID: <5be05e964e1443e036e18acbb8c497052d524259.1771750388.git.dev@sethm.id.au>
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
	TAGGED_FROM(0.00)[bounces-5180-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: B477A16ED49
X-Rspamd-Action: no action

--thoushaltnotpass
From: Seth McDonald <dev@sethm.id.au>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <dev@sethm.id.au>,
	linux-man@vger.kernel.org
Subject: [PATCH 2/5] man/man2/perfmonctl.2: HISTORY: wfix
Date: Sun, 22 Feb 2026 20:12:12 +1000
Message-ID: <5be05e964e1443e036e18acbb8c497052d524259.1771750388.git.dev@sethm.id.au>
X-Mailer: git-send-email 2.53.0.1
In-Reply-To: <cover.1771750388.git.dev@sethm.id.au>
References: <cover.1771750388.git.dev@sethm.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Seth McDonald <dev@sethm.id.au>
---
 man/man2/perfmonctl.2 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man/man2/perfmonctl.2 b/man/man2/perfmonctl.2
index 08d052cd3eaa..b84aac5e97e0 100644
--- a/man/man2/perfmonctl.2
+++ b/man/man2/perfmonctl.2
@@ -181,12 +181,12 @@ .SH RETURN VALUE
 .SH STANDARDS
 Linux on IA-64.
 .SH HISTORY
-Added in Linux 2.4;
+Linux 2.4.
 .\" commit ecf5b72d5f66af843f189dfe9ce31598c3e48ad7
-removed in Linux 5.10.
+Removed in Linux 5.10.
 .P
 This system call was broken for many years,
-and ultimately removed in Linux 5.10.
+and was ultimately removed in Linux 5.10.
 .P
 glibc does not provide a wrapper for this system call;
 on kernels where it exists, call it using
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

iHUEARYKAB0WIQTp0Sal8NSd93krwuK0v0Uw05stUQUCaZrWtgAKCRC0v0Uw05st
UagtAP95Kth95NEspcX1u3qGDYTfzusHSkR6+AHgW9fjABXnwQEAgmLhqPQyd26M
ryVPZ8Q60TLYfmAQBEqbU+tnvcg5QAM=
=cZ9a
-----END PGP SIGNATURE-----

--thoushaltnotpass--

