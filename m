Return-Path: <linux-man+bounces-5178-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 7nHILa3WmmkYkwMAu9opvQ
	(envelope-from <linux-man+bounces-5178-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 11:13:01 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B882116ED3A
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 11:12:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0599A300BC9C
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 10:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E77A223336;
	Sun, 22 Feb 2026 10:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sethm.id.au header.i=@sethm.id.au header.b="uADOAUvI";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="L5wwHRYE"
X-Original-To: linux-man@vger.kernel.org
Received: from flow-b2-smtp.messagingengine.com (flow-b2-smtp.messagingengine.com [202.12.124.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72BE2147F9
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 10:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771755174; cv=none; b=ZCVbcHODZXPnbet88Q9xA1aummBDRljbGadH+jDz16xkC6fv5mQ2mboRxIo2pKY7Jg2Td/H+CZTV4VZmTzypNbcpq4WM5RsCE0PjUKRAFQiF8RgC56cmVRZNeIZFWyQGSofRwmfm4IxSUd1ePBqLpkA0UjSK1JW3tedG2i7SPBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771755174; c=relaxed/simple;
	bh=N9Mn1fsTsMCCJs8NC6H6a/CMDC84p9J3k1wDWO5eUiI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=NVhYch+tT2ZmrkAG8KJreWZMqg+QdBYz66Q6osCBzCVO7mmwm00tLOX+S+xXk13s28GtXHowtK/2QhLD1acL9HcbdC0+kArLolXXyC+rYUkkK2mF87VwD8OESd93ACOttZOLl4bulp33xHVceJ4memRbx0uawR68J+OEq6KDLGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sethm.id.au; spf=pass smtp.mailfrom=sethm.id.au; dkim=pass (2048-bit key) header.d=sethm.id.au header.i=@sethm.id.au header.b=uADOAUvI; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=L5wwHRYE; arc=none smtp.client-ip=202.12.124.137
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sethm.id.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sethm.id.au
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
	by mailflow.stl.internal (Postfix) with ESMTP id D221F1300D39;
	Sun, 22 Feb 2026 05:12:50 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-12.internal (MEProxy); Sun, 22 Feb 2026 05:12:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sethm.id.au; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to:to; s=fm1;
	 t=1771755170; x=1771758770; bh=Mp5LMn8m1CYUmsgNFE78jhBZ1KmGtKCB
	eu3rpOe5A/w=; b=uADOAUvIk7VM4Qo8LwLXErQWYJTeWxamjyF8bPuihUJ1D3d1
	QuDqFfnOSSp+23Lb936fAfM4B7eEiIDeeUMXwfs4gdXhcWCznSNBZSmHA6KiWWNh
	8HfxC5iEAcR3qVfG4Ww8GvF1T2qt9EUecA+7vV5lCVCMpyc+IpztZG4zVSFeNsPe
	f+IfZPkV2qjXwyQP6zwCZoKbX58XZJqxUzYsedLV3VVcBXa9EVxdl4ipENKRndv8
	Z007RQcTieEp+OY3eDiB9jJEXrVrWfcW83elsxpJlTCvUWDXZqWFw7C4pwY7KvYs
	qtfMhBCm79weI61/TE6klUOMCMXj1GldP30Diw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1771755170; x=
	1771758770; bh=Mp5LMn8m1CYUmsgNFE78jhBZ1KmGtKCBeu3rpOe5A/w=; b=L
	5wwHRYEMJtg1/kvBN6Y7e2k5jQ3jNAz0gr7kJmWKsbHdnW+i8m8GBBotc/8QXnVC
	7CM9VybwoNseqpeQwp49fLS+ZWnZSpNWjVWNPswsiMR+eBuzyL03Ee4fF1+0A+Yh
	zZePzwaLtBxtqiFIy0sOZbGHTFHB2BZcclxzq0q3jNJ0hmeTdiafTDc4YjFZbb1j
	DwhufLU284Z8J5kgc+j8u43cK87UJA8qX2/XsruyLcUSgWzO7NlxCrvArh1rNIkr
	cMlijbUp/Zskcua6IG6npStLJLSypxZ3Y18R0Mz/ig9VtR9o6dH0NVHbB5oXD50s
	vPmyZcZdydVCnyUfkUplA==
X-ME-Sender: <xms:otaaaSj1yTy-I727IYIn72nPRdup24s62ifmb3ukgW8pC-KVvHrmyw>
    <xme:otaaaazV6e2qsMOtsdxXkgam7Hy81I1fQ5TQAdw-sPa9tkVUUUuJ1a1b05Cq2cPfV
    eKnL6q-P8YCyyCS_tYxgsT3BH3U9lNdscWNtPfFm5tg82vecPxgXk8>
X-ME-Received: <xmr:otaaadL9ee_3bHWE94Qdbp06u7o8JIatj5LYFXCF_bzQdSl6XxkPTKZu8MNiSTA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvfeegtdefucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkfggtgesghdtreertddttd
    enucfhrhhomhepufgvthhhucfotgffohhnrghlugcuoeguvghvsehsvghthhhmrdhiugdr
    rghuqeenucggtffrrghtthgvrhhnpeetvdfftdetgeeiueeljeeiheefuddvledvheeuhf
    ehuddvledugedtteevgfeiueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpeguvghvsehsvghthhhmrdhiugdrrghupdhnsggprhgtphhtthhope
    efpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegrlhigsehkvghrnhgvlhdrohhr
    ghdprhgtphhtthhopeguvghvsehsvghthhhmrdhiugdrrghupdhrtghpthhtoheplhhinh
    hugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:otaaaZQ_JbW_2BCMTUH_cM7BM5roBTgnKwfbL-7tZ4xTQc9DxUD1LA>
    <xmx:otaaadoTPvpvglOw3FMXwDz5uGqkZKpeHSxO0VTMQ6VElzzKKyJUgQ>
    <xmx:otaaaWoQaw6jwTG2Upe1FGOI5yWbZLMiVLtvQiIZn9JT9F-fKtWIEg>
    <xmx:otaaafNG989GOhQizTYn0-jtPErI5g-H5Twf7s8pIKYTjibucjBDew>
    <xmx:otaaaVKsIbZCAeMwHMgw6AMJNSBEILocnuxLqjPI2bxJUNyy7FOR26Mo>
Feedback-ID: i35064beb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 22 Feb 2026 05:12:47 -0500 (EST)
From: Seth McDonald <dev@sethm.id.au>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <dev@sethm.id.au>,
	linux-man@vger.kernel.org
Subject: [PATCH 0/5] man/man2/*: Miscellaneous fixes
Date: Sun, 22 Feb 2026 20:12:10 +1000
Message-ID: <cover.1771750388.git.dev@sethm.id.au>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[sethm.id.au:s=fm1,messagingengine.com:s=fm3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5178-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	DKIM_TRACE(0.00)[sethm.id.au:+,messagingengine.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,messagingengine.com:dkim]
X-Rspamd-Queue-Id: B882116ED3A
X-Rspamd-Action: no action

--thoushaltnotpass
From: Seth McDonald <dev@sethm.id.au>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <dev@sethm.id.au>,
	linux-man@vger.kernel.org
Subject: [PATCH 0/5] man/man2/*: Miscellaneous fixes
Date: Sun, 22 Feb 2026 20:12:10 +1000
Message-ID: <cover.1771750388.git.dev@sethm.id.au>
X-Mailer: git-send-email 2.53.0.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi Alex,

This is just a handful of minor fixes I came across, mainly for making
some formatting more consistent.

Btw, could you let me know if these patches' *PGP signatures are valid?
I've written a script to help with signing outgoing patches and want to
make sure it's working correctly.

Seth McDonald (5):
  man/man2/open_tree.2: HISTORY: ffix
  man/man2/perfmonctl.2: HISTORY: wfix
  man/man2/process_madvise.2: HISTORY: ffix
  man/man2/readv.2: HISTORY: ffix
  man/man2/s390_guarded_storage.2: HISTORY: ffix

 man/man2/open_tree.2            |  8 +++++---
 man/man2/perfmonctl.2           |  6 +++---
 man/man2/process_madvise.2      |  2 +-
 man/man2/readv.2                | 12 ++++++++----
 man/man2/s390_guarded_storage.2 |  2 +-
 5 files changed, 18 insertions(+), 12 deletions(-)

Range-diff:
-:  ------------ > 1:  3b27c0e095e3 man/man2/open_tree.2: HISTORY: ffix
-:  ------------ > 2:  5be05e964e14 man/man2/perfmonctl.2: HISTORY: wfix
-:  ------------ > 3:  e0ecd2307cf9 man/man2/process_madvise.2: HISTORY: ff=
ix
-:  ------------ > 4:  f336517a9084 man/man2/readv.2: HISTORY: ffix
-:  ------------ > 5:  464d2acd9d62 man/man2/s390_guarded_storage.2: HISTOR=
Y: ffix

base-commit: 8f299601fb600d305279acc03a92437a8378d0b6
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

iHUEARYKAB0WIQTp0Sal8NSd93krwuK0v0Uw05stUQUCaZrWgwAKCRC0v0Uw05st
UfTuAQCLrP35jGwoi/QX6nEoNtl/lBLvuUlk9fiCQP8yhWx/bwD+I2jl3vQHfhIB
bl/3QTsC2W5XzsnGjkWbZjoMi5vqbQw=
=7cfm
-----END PGP SIGNATURE-----

--thoushaltnotpass--

