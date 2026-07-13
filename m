Return-Path: <linux-man+bounces-5745-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HD2SECHYVGrpfgAAu9opvQ
	(envelope-from <linux-man+bounces-5745-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 14:20:49 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4277B74ADEE
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 14:20:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=smrk.net header.s=20221002 header.b=ik+3Ocoi;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5745-lists+linux-man=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="linux-man+bounces-5745-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=smrk.net;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A5C69305B3FC
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 12:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F69E388E4D;
	Mon, 13 Jul 2026 12:11:41 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.smrk.net (mail.smrk.net [45.76.87.244])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABE11F3B8A
	for <linux-man@vger.kernel.org>; Mon, 13 Jul 2026 12:11:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783944701; cv=none; b=jhYXAgPa5/K1lC/I206/8ZGF/MwG0WfFk3psx6LGL6Ik4WF1mo9wsN0yy5qd/EHcfoSLps9pldHuA7wz8eSty9sL/oUVkT/9ePLdwBLE4Cvs7UwJOm3eBQzcyKbC1v1771teODo77zkRzEgJjLotkvG1j/I1QqrxLXJbyIdPVgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783944701; c=relaxed/simple;
	bh=TNY5vv91qAszBNO31H8m2ZVp5RKgMnHhuOA1jhb2LQA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dI72Rx7a4g2jvGytYNDw2LiO4yUKTVDIhNOwE0g5d7j6bq9TbKrIfkN6OoeGSHiq/smlJ6dkNi/PpA2kxPtjUdM52pst18f5Ytn/4SV3NzIG0S1SKaYb2Bh/ciDxtgnJuYNWMRqPYB2qZXpoT/meSSvUvY4YryqWUPBPLvnlCVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smrk.net; spf=pass smtp.mailfrom=smrk.net; dkim=pass (2048-bit key) header.d=smrk.net header.i=@smrk.net header.b=ik+3Ocoi; arc=none smtp.client-ip=45.76.87.244
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smrk.net; s=20221002;
	t=1783944696;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=a8QjduzcjkkB2swhLZnJAguEhDEe8OQDkhUVgPw388k=;
	b=ik+3Ocoii/YLptC+EpqsLXLtCNEwbz8cUD2aBi1+8WZzXwACJBIUUKZe5TD2T7VGisC0nn
	SNS4YTrJ2E5vubMR05hx3s5Qq4fIXh6cxnXdQUDYyisMcXWnAC/iWCa/9077iWrA7RTASj
	Gv+SeEPWR2nAOQ+PXVHYuI5DqNM4N5oK+yd+NPx3B2bEcNKogiayQRpDQVos1hvGOhQhC2
	bjSS9lUAeirn1Avd/m1anc3ILq0TJSD+hgMJVqanMLH9qnpDXZqqzyD8UBcfwmrrt2kkLP
	Ib7mxB2UYN6rR5LgohfJs00MmKX7escgIr79b6YvAsGOIaKyaS6DeMZ1UOFYKA==
Received: from localhost (<unknown> [192.168.5.2])
	by smrk (OpenSMTPD) with ESMTPSA id 2c91268d (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 13 Jul 2026 14:11:36 +0200 (CEST)
From: =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@smrk.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Mike Rapoport <rppt@linux.ibm.com>
Subject: [PATCH] man/man2/memfd_secret.2: tfix
Date: Mon, 13 Jul 2026 14:11:11 +0200
Message-ID: <20260713121111.372487-1-stepnem@smrk.net>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <alEfVXgJBmtlCtH0@devuan>
References: <20260709153422.210312-1-stepnem@smrk.net> <alEfVXgJBmtlCtH0@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.09 / 15.00];
	R_MIXED_CHARSET(1.25)[subject];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[smrk.net,none];
	R_DKIM_ALLOW(-0.20)[smrk.net:s=20221002];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5745-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,m:rppt@linux.ibm.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[stepnem@smrk.net,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stepnem@smrk.net,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[smrk.net:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4277B74ADEE

Fixes: ac5edfeb1dd6 (2021-08-27; "memfd_secret.2: New page describing memfd_secret() system call")
Cc: Mike Rapoport <rppt@linux.ibm.com>
Signed-off-by: Štěpán Němec <stepnem@smrk.net>
---
On Fri, 10 Jul 2026 18:44:19 +0200
Alejandro Colomar wrote:

> I think I'd fix this typo in a separate commit, since it's a meaningful
> typo (both EMFILE and ENFILE exist, and they have a slightly different
> meaning).
>
> In the fix, please include the following tags:
>
> 	Fixes: ac5edfeb1dd6 (2021-08-27; "memfd_secret.2: New page describing memfd_secret() system call")
> 	Cc: Mike Rapoport <rppt@linux.ibm.com>

Fair enough.

FWIW, out of abundance of caution (admittedly verging on paranoia), I
did verify that unprivileged memfd_secret distinguished EMFILE and
ENFILE as expected (brought about by setrlimit for the former and
limiting fs.file-max for the latter in a VM running a recent alpine-edge
image) before sending the original patch, but the hypothesis that this
was anything other than a typo or a copy-paste error seemed too
far-fetched to mention that.

 man/man2/memfd_secret.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/memfd_secret.2 b/man/man2/memfd_secret.2
index 0ea4b8e93c37..4033adc75772 100644
--- a/man/man2/memfd_secret.2
+++ b/man/man2/memfd_secret.2
@@ -119,7 +119,7 @@ .SH ERRORS
 .B EMFILE
 The per-process limit on the number of open file descriptors has been reached.
 .TP
-.B EMFILE
+.B ENFILE
 The system-wide limit on the total number of open files has been reached.
 .TP
 .B ENOMEM

-- 
2.55.0


