Return-Path: <linux-man+bounces-5021-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILPlGX5RgmkgSQMAu9opvQ
	(envelope-from <linux-man+bounces-5021-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 03 Feb 2026 20:50:22 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECB8DE44D
	for <lists+linux-man@lfdr.de>; Tue, 03 Feb 2026 20:50:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C57DC305DA5C
	for <lists+linux-man@lfdr.de>; Tue,  3 Feb 2026 19:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31EC42E7F07;
	Tue,  3 Feb 2026 19:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alyssa.is header.i=@alyssa.is header.b="F8pSpMX3";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="sbziUiSI"
X-Original-To: linux-man@vger.kernel.org
Received: from flow-a3-smtp.messagingengine.com (flow-a3-smtp.messagingengine.com [103.168.172.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1462B2C11D9;
	Tue,  3 Feb 2026 19:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770148218; cv=none; b=ZoF5NXkOdNCeJ43IKzRP8jOoPtFXSbAHe/SKOA+RcLp3k2ELHnuTYr9tiA6871Z1hOV09oAZubHuYHtALUvrZik2foZefK1pnB+Y7JoQIDZeXt1ZozD2K8Wd4ST07YZMRK0V8g281ktcshPHsp6C1nwcDGhBgC8lCurfUmDBsSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770148218; c=relaxed/simple;
	bh=eGko9mS7egKLhJiB0UadAYERcNJiBFm4xIeLdBxqm34=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mD+hc4NwIDgknTx8sqJHkkf+zy1hWTNziKT4g1hLgWGNNidI5tRmjxK4Syy73YNrKIOTf9Mkt/zPzVhPbIkPFhpvjUuI/qELlMhvURC9m966S7jU2s00I7Ux/TFFAPX33pvboMrZ2YHGGD/qrmiE52MvlhmErDRbMolYlZVQHAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=alyssa.is; spf=pass smtp.mailfrom=alyssa.is; dkim=pass (2048-bit key) header.d=alyssa.is header.i=@alyssa.is header.b=F8pSpMX3; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=sbziUiSI; arc=none smtp.client-ip=103.168.172.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=alyssa.is
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alyssa.is
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailflow.phl.internal (Postfix) with ESMTP id E92FA138090D;
	Tue,  3 Feb 2026 14:50:14 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-01.internal (MEProxy); Tue, 03 Feb 2026 14:50:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alyssa.is; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm2; t=1770148214; x=1770155414; bh=OeUmx0c9ng8PXqaU6K6Uj
	+x5nksv/NbdLA92DLTk/JA=; b=F8pSpMX3JXgHFcgit7D50FYepCtrUbjSMNm/3
	3p9Ak3cZii2dQPMr0tE61/uxATpg+y8wWLLKPn5qxzhoZtqjQ1dB1T2gK1TL0q0L
	46xLThwqKKSG+V7htLGLV8Byg9z1bViAfvebYsAAWV35PPKXEDttoLS8RBFPJI8S
	lfJnQzZUIkSnROn1UcXKOSEgVL3XVKtIHqtg/BoI/1cdgqEaecHd8sqvP2uWG2sD
	ylOBCVJXqQcShS9Zv4qUlu5p/t12AEKpY443RhZXX0nf8k2m+Hv8/ULO2pAmSOAd
	7zsYMYTThMVXu85qUOEfnUSE4/152weF11vxviPlktk3+gB7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1770148214; x=1770155414; bh=OeUmx0c9ng8PXqaU6K6Uj+x5nksv/NbdLA9
	2DLTk/JA=; b=sbziUiSIvVUVU6NnaHveiu9oPLimyHdLnqMo8KwB/+BUngYRT56
	YPJDfsW+J182cqQlM490pZ5Bd3s0pmhc69hH1BK9A2C78p1Rntt0TBvS19z8D5tP
	1QAJGWr+KMOyoNEbzLAv3xcfD7EoeplppCDNB3TrbJyGTnIF65HKydBAKfcbCRf0
	nxXtPS+sk+j2VzTWq/PDkgeHlGTG5OYT3OticU/C79qWS+Mv5bg+RiL41VSpDT7y
	ROdtxSELclYQl+L5mgezLKN++DUKPiOLwTvPle2ooBXdS9UCXAMvc8pW6zfKHMet
	XS+lRAiJHexEhKLVQuvZ1Ja85wyhnWzLSMQ==
X-ME-Sender: <xms:dlGCaZE9pRvXpdiztaJnFpKlXnEav4VtkKdPpoHDXFmLZDWsOxffsQ>
    <xme:dlGCadZ3wEibhHtBPeH5fEHTn4owOnrNdC3YNdZx4BcCXDBia1xONg0TIcEIvx7cw
    hSmQPGmm-FxmVsM_hBHWnUy90_42ZW3d-JnhM0Msai_CBF3GeGf14g>
X-ME-Received: <xmr:dlGCaRUIcoakxTmjt9hnHtksoBJSlC8d_1DFNHfFdi3vjaA6UGwe_B_Wd0uUp2WZ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddukedtledvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomheptehlhihsshgrucft
    ohhsshcuoehhihesrghlhihsshgrrdhisheqnecuggftrfgrthhtvghrnhepfefhtedtke
    ejhfetuedtjeevtdejjeffheefveetueevudeuuedvgeevieehtdetnecuffhomhgrihhn
    pegrrhgthhhlihhnuhigrdhorhhgpdhkvghrnhgvlhdrohhrghenucevlhhushhtvghruf
    hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehhihesrghlhihsshgrrdhishdp
    nhgspghrtghpthhtohepjedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepgiihph
    hrohhnrdhglhhpkhesghhmgidruggvpdhrtghpthhtohepgihiuhhjihgrnhhfvghnghes
    hhhurgifvghirdgtohhmpdhrtghpthhtoheprghlgieskhgvrhhnvghlrdhorhhgpdhrtg
    hpthhtohepnhhitgholhgrshdrsghouhgthhhinhgvthesohhsshdrtgihsggvrhdrghho
    uhhvrdhfrhdprhgtphhtthhopeguhhhofigvlhhlshesrhgvughhrghtrdgtohhmpdhrtg
    hpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphht
    thhopehlihhnuhigqdhsvggtuhhrihhthidqmhhoughulhgvsehvghgvrhdrkhgvrhhnvg
    hlrdhorhhg
X-ME-Proxy: <xmx:dlGCablsFdAraZJk1bBL8MWa8Vy_-rECT7UIZhXR1wOmBjCfBqgFJw>
    <xmx:dlGCaUAPmKlBit06OLurhYfCKiwhrbwpt-Zv5O6ZRs03Y_4hrNUzNA>
    <xmx:dlGCaSj8KUMF9ewsyFCWMXMEjFDtS9lDKVft_xrsaxvj2a2ELm79zg>
    <xmx:dlGCaZydD_mzJd9wLrjCa5nT-cct6CL7lHflIewPpQfirwVPvqYwyQ>
    <xmx:dlGCafnxrbmjiXrTh_uCdKxRIcYS1FqwBOcV-xY2iQnGMD24dCp_7Jfr>
Feedback-ID: i12284293:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 3 Feb 2026 14:50:14 -0500 (EST)
Received: by mbp.qyliss.net (Postfix, from userid 1000)
	id E1D1773D9989; Tue, 03 Feb 2026 20:50:10 +0100 (CET)
From: Alyssa Ross <hi@alyssa.is>
To: Alejandro Colomar <alx@kernel.org>
Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>,
	David Howells <dhowells@redhat.com>,
	Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>,
	Xiu Jianfeng <xiujianfeng@huawei.com>,
	linux-security-module@vger.kernel.org,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
Date: Tue,  3 Feb 2026 20:50:01 +0100
Message-ID: <20260203195001.20131-1-hi@alyssa.is>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[alyssa.is:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5021-lists,linux-man=lfdr.de];
	FREEMAIL_CC(0.00)[gmx.de,redhat.com,oss.cyber.gouv.fr,huawei.com,vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DMARC_NA(0.00)[alyssa.is];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[alyssa.is:+,messagingengine.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NEQ_ENVFROM(0.00)[hi@alyssa.is,linux-man@vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8ECB8DE44D
X-Rspamd-Action: no action

This is true for Fedora, where this page was sourced from, but I don't
believe it has ever been true for the mainline kernel, because Linus
rejected it.

Link: https://bbs.archlinux.org/viewtopic.php?pid=2088704#p2088704
Link: https://lore.kernel.org/lkml/CA+55aFzYbpRAdma0PvqE+9ygySuKzNKByqOzzMufBoovXVnfPw@mail.gmail.com/
Fixes: bb509e6fc ("kernel_lockdown.7: New page documenting the Kernel Lockdown feature")
Signed-off-by: Alyssa Ross <hi@alyssa.is>
---
 man/man7/kernel_lockdown.7 | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/man/man7/kernel_lockdown.7 b/man/man7/kernel_lockdown.7
index 5090484ea..5986c8f01 100644
--- a/man/man7/kernel_lockdown.7
+++ b/man/man7/kernel_lockdown.7
@@ -23,9 +23,6 @@ Lockdown: X: Y is restricted, see man kernel_lockdown.7
 .in
 .P
 where X indicates the process name and Y indicates what is restricted.
-.P
-On an EFI-enabled x86 or arm64 machine, lockdown will be automatically enabled
-if the system boots in EFI Secure Boot mode.
 .\"
 .SS Coverage
 When lockdown is in effect, a number of features are disabled or have their
-- 
2.52.0


