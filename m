Return-Path: <linux-man+bounces-5301-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPo3C+x702koigcAu9opvQ
	(envelope-from <linux-man+bounces-5301-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 06 Apr 2026 11:25:00 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2B03A29C9
	for <lists+linux-man@lfdr.de>; Mon, 06 Apr 2026 11:24:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 271ED3066473
	for <lists+linux-man@lfdr.de>; Mon,  6 Apr 2026 09:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 564FD314A60;
	Mon,  6 Apr 2026 09:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=vursc.org header.i=@vursc.org header.b="mnqNPRqF"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574073218BA
	for <linux-man@vger.kernel.org>; Mon,  6 Apr 2026 09:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775467316; cv=none; b=YKmRlZrn90Jp33XjqzJM3w6e9PfURYvEf+r20Uhbc/kgrfRIF1O3pu0l+BpWCgfB09lUfyJSvvxqv/DRtj6HSCvC58hFJIXPozte+j0udAtB5MabR2JHMzpP2NWKR8ljEnqG2HkwXrV6fS/Ix945oBepwt/7Lgvx4lYkMtiFkHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775467316; c=relaxed/simple;
	bh=VprCy3hMczrj50c+vcK9WqOGaubUrtPHg+SQ7tVCrEY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cQcITdU5QWhRSXTWHEt8NDrORPebAG2p9Q8ysfQadp8xQZ90+p9KvE3//iKY4xqhKH6ki/qhRI7gkCA54r03DALm3hl0pWaCund+LjpvltOe6eIPCg99hJp2GvyF0kruHD/LChauSTO60gkU4pRG+4KQkf2FMb7BnmxROUzGlt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vursc.org; spf=pass smtp.mailfrom=vursc.org; dkim=pass (2048-bit key) header.d=vursc.org header.i=@vursc.org header.b=mnqNPRqF; arc=none smtp.client-ip=80.241.56.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vursc.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vursc.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4fq3k45DcNz9tcZ;
	Mon,  6 Apr 2026 11:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vursc.org; s=MBO0001;
	t=1775467308;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xR5y8A6HAitnJqjCtsSWLxs5F7ncYS7YOdGdfjfgggc=;
	b=mnqNPRqFlpfF6B3CzE0QXUVL4KKAdiaqr2+r0pB+C9eOMTAaxgPyqSw5cnmFytcKdmD9oi
	9ubQXzX3W3vK4IlB4+MhFRv9yiu8zQTpO4Lzek9K0m9eCuBsQkf5ogvRg1EApXJqxGh2ce
	i7O+jsZfO4XfVBXBC+MG6a1krMAniXUn4aVH/O5V18FWFn905ny0/DV6T1Gsn4kEzlK3bQ
	mVVVpRb55aWBKjZowcN1c+kCmIfXOI5poObNUIMyGEuyOf3Y5kQWICbOm8nVFcFlOBbiXC
	OCxSLk1jEpQoktoDb1HLLtGUubfyUelhiEfcRMMpoU1lGZDsZ23XQSYQbWpDVw==
From: vursc <vursc@vursc.org>
To: linux-man@vger.kernel.org
Cc: vursc <vursc@vursc.org>
Subject: [PATCH v3] man/man2/getdents.2: Document system call interface of getdents64
Date: Mon,  6 Apr 2026 09:21:14 +0000
Message-ID: <20260406092113.184487-2-vursc@vursc.org>
In-Reply-To: <20260406053554.150929-1-vursc@vursc.org>
References: <20260406053554.150929-1-vursc@vursc.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[vursc.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[vursc.org:s=MBO0001];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5301-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vursc@vursc.org,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[vursc.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vursc.org:dkim,vursc.org:email,vursc.org:mid]
X-Rspamd-Queue-Id: 2F2B03A29C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The count argument of the getdents64 system call is assumed to not exceed
INT_MAX. The glibc function accepts a size_t and passes INT_MAX to the kernel
if count exceeds INT_MAX.

Also document the dirent64 structure in glibc.

Signed-off-by: vursc <vursc@vursc.org>
---
 man/man2/getdents.2 | 26 +++++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/man/man2/getdents.2 b/man/man2/getdents.2
index 8c5bbebbc..de91f3800 100644
--- a/man/man2/getdents.2
+++ b/man/man2/getdents.2
@@ -42,7 +42,6 @@ These are not the interfaces you are interested in.
 Look at
 .BR readdir (3)
 for the POSIX-conforming C library interface.
-This page documents the bare kernel system call interfaces.
 .SS getdents()
 The system call
 .BR getdents ()
@@ -216,10 +215,31 @@ using
 .BR syscall (2).
 In that case you will need to define the
 .I linux_dirent
-or
-.I linux_dirent64
 structure yourself.
 .P
+The
+.B getdents64
+system call accepts an
+.B unsigned int
+argument
+.I count
+and assumes that
+.I count
+does not exceed
+.BR INT_MAX .
+The glibc wrapper function sets
+.I count
+to
+.B INT_MAX
+if it exceeds
+.BR INT_MAX .
+glibc defines a
+.I dirent64 
+structure, which is similar to
+.I linux_dirent64
+but with a 256-byte
+.IR d_name .
+.P
 Probably, you want to use
 .BR readdir (3)
 instead of these system calls.
-- 
2.53.0


