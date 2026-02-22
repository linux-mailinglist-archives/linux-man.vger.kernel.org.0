Return-Path: <linux-man+bounces-5183-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNYbEQDXmmkYkwMAu9opvQ
	(envelope-from <linux-man+bounces-5183-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 11:14:24 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5E016ED60
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 11:14:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 510923012254
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 10:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21DBA223336;
	Sun, 22 Feb 2026 10:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sethm.id.au header.i=@sethm.id.au header.b="VOs0Qkob";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="QFZy9Rrk"
X-Original-To: linux-man@vger.kernel.org
Received: from flow-b2-smtp.messagingengine.com (flow-b2-smtp.messagingengine.com [202.12.124.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D462147F9
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 10:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771755259; cv=none; b=LrqYISXbXQUlBmR7kKr7IPbyEzT/1j7K2fotiGL0roUHpLplYLYuPPtWZAGsAcMtLBWm9iCDtwU0ng4dxrmhpo5AKsFGuYzRouG61ssutgmiHlAwcUXfJAlyUcdJkcX0ilj3xnGUiLdSitBfqDFwZvZn7IbFwAkh5beLIlfu3Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771755259; c=relaxed/simple;
	bh=WPHeUXqEPe1OrYUCf3nxPBXzGOzIG+ebgIF0VqbQn0U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=czXZkrs3cJk9CrpFnSv2VfxphaFjOB4JZPx/GvaKPD/QPMc+3d3GaE+s65fbmoxuz2/m3+TbvwQQFp0DTH40lXlZa+8+Ab6XNBnGs/djqiZIhRRN9JZAOBGxS7cTBUJDpgigtKeCE02Q0/RWM31/61a7GFlPs9FF0A/153QcfOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sethm.id.au; spf=pass smtp.mailfrom=sethm.id.au; dkim=pass (2048-bit key) header.d=sethm.id.au header.i=@sethm.id.au header.b=VOs0Qkob; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=QFZy9Rrk; arc=none smtp.client-ip=202.12.124.137
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sethm.id.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sethm.id.au
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailflow.stl.internal (Postfix) with ESMTP id D21161300D3B;
	Sun, 22 Feb 2026 05:14:17 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Sun, 22 Feb 2026 05:14:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sethm.id.au; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1771755257; x=1771758857; bh=rkz6UC5nPX
	ia+5xLZMWRLI5pyr2BZ85ac4nDyAbLeTQ=; b=VOs0QkobXhfzSC45BXba5AxuVo
	4R7fRfaUF6GD2y5kf6CgKefiUzYKda90gsRHIrSe0dOsuxOtYWWTp37qTGzSRLeh
	fXg/ahdiqdDB3n70Lvco9DHN0YWlkFIB5a6P9W+brpcvItsMJJH7QxZX8Op+TT0h
	aqewpSZUOb8wnPzd8WHwLCDfnetnJfr1iJmfSdMVccTqpwkX8YxnRhMFr8QXqrwT
	5GasKwFu6yzBNVXCQYDwLvAmYZJmBE/ndKF3pCVCgzxcBw7r7s/nUVKN2HncQ9A4
	yvF0TF7kdasyFqrTyIByG+bJlnniF03YS5OGR9uowspbnQcaN8Ns4L5n91Ow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1771755257; x=1771758857; bh=rkz6UC5nPXia+5xLZMWRLI5pyr2BZ85ac4n
	DyAbLeTQ=; b=QFZy9RrkgJhh3fpPKFzpyfBOZqH65q6xZJqhbKdIEtnXKkfLLgv
	+C7i9HEcgIS/eWSH/Fs+8cU18VQtBunGMTG8DXQVR3rvd88HWomjEHYc+i0t6sLX
	V6PZjBP5cWJH6K/fpxqZKKGM1q2GvvmLqQz2qKSn+UL3n+J8+KV9iI+lP8Cx7Opq
	xKLDsEUc+nbA9zBDpZCaFeJkd/+reFd6lA1hdjJaXonUu/l3m9NA2mFM4ds02dAy
	aquLkVvZ45nwtmW4lDwh7p0hZQPakqbzcbng7dgMjM5F3gqnvRauDuiqkJk9/q2i
	uVB1xeYtw0rnuxoA4LBOzFeNSuolzCLELGw==
X-ME-Sender: <xms:-daaaRd65ZgSsXUucfp7LRMFPv-CSpVho16r7XeLoZht0kVlcCgH7g>
    <xme:-daaaWEh-y5BdKYoNla88PbLWWlHON-e5lqRGJdu3Ul2Uf7umZyuemLJkfglduEgq
    YE_duu1qZe9DBw1IevWnsWY-TDrC28nsozYKISPKQLUUYXVw-C_mQ>
X-ME-Received: <xmr:-daaaXfd547FF1N12VyI7uRHJNzB4JqM5wiCMVTcLOZ-69v4X9I8mB8Wo1gkz-s>
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
X-ME-Proxy: <xmx:-daaaYE_OfOSyV_FBow5GgyVDmcYJSa1liBmXc9adMqgb8IKFzVYPQ>
    <xmx:-daaaYWwiMpa-kUqMlRXsgGGt6pZQV_TaKqN0sZ04sXTKS6lC1HVCQ>
    <xmx:-daaaXK0UIkhJhkDZ1_KSgvAnbfhmPCuGvpGfcwWdMDl14bu5uq9-A>
    <xmx:-daaaY9OswcGxImIadHEhqZ6cTUPz2zXXMIShAtE3eoa2MZmAS-b9g>
    <xmx:-daaafPHOH39Um47X7oHzF20i7zaHPNWL5k9iRlnKFmpGULX_MTMNe9m>
Feedback-ID: i35064beb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 22 Feb 2026 05:14:15 -0500 (EST)
From: Seth McDonald <dev@sethm.id.au>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <dev@sethm.id.au>,
	linux-man@vger.kernel.org
Subject: [PATCH 5/5] man/man2/s390_guarded_storage.2: HISTORY: ffix
Date: Sun, 22 Feb 2026 20:12:15 +1000
Message-ID: <464d2acd9d6246ae40849738f6b5ff6151ae9e97.1771750388.git.dev@sethm.id.au>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[sethm.id.au:s=fm1,messagingengine.com:s=fm3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5183-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sethm.id.au:+,messagingengine.com:+];
	HAS_ATTACHMENT(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 9C5E016ED60
X-Rspamd-Action: no action

--thoushaltnotpass
From: Seth McDonald <dev@sethm.id.au>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <dev@sethm.id.au>,
	linux-man@vger.kernel.org
Subject: [PATCH 5/5] man/man2/s390_guarded_storage.2: HISTORY: ffix
Date: Sun, 22 Feb 2026 20:12:15 +1000
Message-ID: <464d2acd9d6246ae40849738f6b5ff6151ae9e97.1771750388.git.dev@sethm.id.au>
X-Mailer: git-send-email 2.53.0.1
In-Reply-To: <cover.1771750388.git.dev@sethm.id.au>
References: <cover.1771750388.git.dev@sethm.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Seth McDonald <dev@sethm.id.au>
---
 man/man2/s390_guarded_storage.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/s390_guarded_storage.2 b/man/man2/s390_guarded_storag=
e.2
index 1a2e8a30cf99..2f17385050ca 100644
--- a/man/man2/s390_guarded_storage.2
+++ b/man/man2/s390_guarded_storage.2
@@ -133,7 +133,7 @@ .SH STANDARDS
 Linux on s390.
 .SH HISTORY
 .\" 916cda1aa1b412d7cf2991c3af7479544942d121, v4.12-rc1~139^2~56^2
-Linux 4.12.
+Linux 4.12,
 System z14.
 .SH NOTES
 The description of the guarded storage facility along with related
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

iHUEARYKAB0WIQTp0Sal8NSd93krwuK0v0Uw05stUQUCaZrW6gAKCRC0v0Uw05st
UXdZAQC0Hugp1eGBr6UasviFMsJuEXmElm1aUevebbON1/zlIwEA3APcJ0ZFm7by
1BquG7epW2dOqLY4UyAb0sfbeKqZcQc=
=KgF9
-----END PGP SIGNATURE-----

--thoushaltnotpass--

