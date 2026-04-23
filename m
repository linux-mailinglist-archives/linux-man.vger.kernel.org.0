Return-Path: <linux-man+bounces-5391-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OC6lCCxO6mkhxgIAu9opvQ
	(envelope-from <linux-man+bounces-5391-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 18:51:56 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3574551E5
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 18:51:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0858930A7D5C
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 16:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B507537D137;
	Thu, 23 Apr 2026 16:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b="LHZIzXK9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BAD2566E9
	for <linux-man@vger.kernel.org>; Thu, 23 Apr 2026 16:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776962659; cv=none; b=olW8KqRQ9jMwMhFM9JEnbzhKj/ofMmzWfrcYWIsQNUch8HdXB+VI24g9XHidNhvgCeAQ1PVBi5fq1N+fokZ2UEA6HOfxCfG8xssTwHDx3lumJB/UVmv5D2cYGmRjoraFLDq14dJyhyd3khQftMt/zeG8DxPtGOOtD5spiPumiY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776962659; c=relaxed/simple;
	bh=pjBQHKxVpR1a0E5Gdd6suoj9LVz7aCG1aVO9QOMe0Gk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rQyRyGz0AoZCCKhHg9MKT4dFOpqDlVJcLl5pK0MX8xckwZSKtOcxt4deBn0OVmR0XXx9xLdYDKZQ2xLhKtkLAxq691afwhEm9IQC9wiQnHeK5udQKyy/mlFbQbz0twoVckNby+piU9+QeHhi/n6WhxbPf3v9+4p6B+zvq8oVSNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu; spf=pass smtp.mailfrom=dartmouth.edu; dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b=LHZIzXK9; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dartmouth.edu
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-50fc496c8baso20588571cf.3
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2026 09:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dartmouth.edu; s=google1; t=1776962657; x=1777567457; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hMQF2Qiw2GzUJbOXH73g1EftLMT9CErk63qUkm44Tik=;
        b=LHZIzXK9zjKeGwDCnn2HZHqXbd8atSwHQvOGlaADr2S5vxQ/QX2daSjcu5MaCQciPU
         q2Uhhw/39LJFD5CySjFD7bmzstpB8LcclY1XouczGTY2mZeglkJHpTpTsDHXyhNLhNI7
         RbbxfEs9oDvAjkRz0oZjtNmDEqcBzsmMOympTiazmB1b+oyPzZLU59AIJhXZTqc1jdL6
         /J2iNaQB+P2HLyk8zPvKnVnAoFW8F6+zV7ZYfKr0q2jwwI7L5gD9z2vLD49ybQEV1XfB
         q7hs4MTJmMTLRFsg5nvlrCwjDdqc2YL7Rp/6EmlgY/CTRBXhPXRrrBEhSoomuXlRpxZv
         LjXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776962657; x=1777567457;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hMQF2Qiw2GzUJbOXH73g1EftLMT9CErk63qUkm44Tik=;
        b=MIdMRuXNGmwm2O1PbQwHRp2QV17FZ2HnxhjahOrZJNT/2TQU+wuIfuz0pUFUbOcOPF
         BOLYOBmbokCtU2q12KGEwgvYDj9rH/R5GYyLEshFnt8SSQ832Y7/B/yGDaDa/LNtMrlr
         Npfjgo/nJR3I8u8/3/0tqmD+Ou+zTsQrQPlyIaJWx+nCRefx/YYQDPTSFOthne/CZy56
         tWDnlZLY0GzW14LSFzqjFd0eUteAiSr91sLmE3gv1Q1eECceXdeItgOHqARvFZiw3VXy
         xvpjRGCr5suG0bd4AujYFtA9NIC5OwErk8syX2XfqZZOw34+h7GBo4EVvM/jkNz6o911
         Qr1Q==
X-Gm-Message-State: AOJu0YwGHdHYwI+nZuWh0X55VHHV6DDW5UAELq2yiuHc79/cq/fw1b6l
	if5LghWdElCqcmfacVUVzJPHIsKDuooiIeZlTH/r9LBkxOxx1nUB7+5T7FjFU82xya4OoJAjWNg
	iHvInMYg=
X-Gm-Gg: AeBDievGkfggGQTeDQ4igE9qdXXiEFgyW64a4F+chICBu4rXbxkEKo+HgL10aIe8guz
	zMI7q7QExS/xxi5TrwQU7fjnH03Wwe6IjJ6lwmA8OVxpWKfAIk+5NML6h7+ohqjN17tnop4Wk64
	415LVL7fhh2vmOMFHMrLIBi00xWHKyI5HYCwxDnH6eQvf/iJ0+9fVIbkstFfjY1FJPh570nLg/n
	XFSK9gnGGzfsUSwdEjUG8LbeqOaQMoi3PrFoyNnR5zRk9d8z+jfR2X5YRhFC/BgLjkJlU0eEqM2
	jLHOfGUn0aZKKmnNgDRvgoDnjr4JIK5R8dMy8XW5CZ9c+1t712cojlDQWGkiL3/rTVeCy65jeFl
	buzZyX2KpYrxeHmWVemrE7MU1KWM8wKf1+AYfcE1xlcTmWVmGbn3DVTXj3V2FhHF0jYlREmLuMU
	EFNqbS4wZNAOHjSaVITmR1tC4Z6mRxfVraqf/GCMz1ObV03g9xXjDedXTYsrwIdHT0jkuEF+1x2
	SlvRWEK35cjZgOKg29/9oOGHMV2NwMu3SWkz59Ym8GA2HiL4ASSxrh+a5BgmPAom8U4bxMcPehE
	zajgCSM+TStkQacZZQgPGEWa4dd0APSaGQ4mqSw80z0z4/bqHtsLce5aMeYq8bmDuRwNzfRmYL4
	TzMh0yeSB1yPWAX3yUHOOLRiGhkO0patTN+sNRyVAmypJXK9/QwAOhzrSKiOBn65JHNo05NWeZQ
	MXbd0H6YBQq9yOVlckOwuSaIg=
X-Received: by 2002:a05:622a:2517:b0:501:17a9:5ff5 with SMTP id d75a77b69052e-50e36b42a52mr411019971cf.21.1776962656905;
        Thu, 23 Apr 2026 09:44:16 -0700 (PDT)
Received: from localhost ([129.170.196.71])
        by smtp.gmail.com with UTF8SMTPSA id d75a77b69052e-50e393ff941sm167047051cf.19.2026.04.23.09.44.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2026 09:44:16 -0700 (PDT)
From: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Subject: [PATCH] man/man2/mmap.2: Document when MAP_GROWSDOWN does/doesn't trigger growth
Date: Thu, 23 Apr 2026 12:44:14 -0400
Message-ID: <20260423164414.1952395-1-benjamin.p.kallus.gr@dartmouth.edu>
X-Mailer: git-send-email 2.54.0
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
	DMARC_POLICY_ALLOW(-0.50)[dartmouth.edu,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[dartmouth.edu:s=google1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5391-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benjamin.p.kallus.gr@dartmouth.edu,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[dartmouth.edu:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,dartmouth.edu:email,dartmouth.edu:dkim,dartmouth.edu:mid]
X-Rspamd-Queue-Id: 8F3574551E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The man page states that MAP_GROWSDOWN can only cause a mapping to
grow by a single page.  This is incorrect; mappings can grow by many
pages at a time, until reaching either the stack size limit or growing
too close to another mapping.

To observe that mappings can grow by more than one page, and that they
are limited by the stack size limit, run the following C program with a
stack size limit of 0x800000 bytes, and then again with a stack size limit
of 0x801000 bytes, and observe that it segfaults as the comments describe.

> struct page {
>     char data[4096];
> };
> static_assert(sizeof(struct page) == 4096);
>
> void *const BASE_ADDRESS = (void *)0xabcdef000;
>
> int main(int const argc, char const * const * const argv) {
>     volatile struct page *p = mmap(
>         BASE_ADDRESS,
>         1,
>         PROT_READ | PROT_WRITE,
>         MAP_ANONYMOUS | MAP_PRIVATE | MAP_GROWSDOWN | MAP_FIXED_NOREPLACE,
>         -1,
>         0
>     );
>                              // stack_limit=0x800000 // stack_limit=0x801000
>     (p - 2047)->data[0] = 0; // no segfault          // no segfault
>     (p - 2048)->data[0] = 0; // segfault             // no segfault
>     (p - 2049)->data[0] = 0; // segfault             // segfault
> }

To observe that mappings stop growing when they get within 256 pages of
the next lower mapping (instead of a single page, as the man page
currently states), run the following program, and observe that it
segfaults as the comments describe.

> struct page {
>     char data[4096];
> };
> static_assert(sizeof(struct page) == 4096);
>
> struct page *const BASE_ADDRESS = (void *)0xabcdef000;
>
> int main(int const argc, char const * const * const argv) {
>     volatile struct page *p = mmap(
>         BASE_ADDRESS,
>         1,
>         PROT_READ | PROT_WRITE,
>         MAP_ANONYMOUS | MAP_PRIVATE | MAP_GROWSDOWN | MAP_FIXED_NOREPLACE,
>         -1,
>         0
>     );
>
>     struct page *p2 = mmap(
>         BASE_ADDRESS - 258,
>         1,
>         PROT_READ | PROT_WRITE,
>         MAP_ANONYMOUS | MAP_PRIVATE | MAP_FIXED_NOREPLACE,
>         -1,
>         0
>     );
>
>     // no segfault (causes p to grow by a page)
>     (p - 1)->data[0] = 0;
>
>     // unmap the test page
>     munmap(p2, 1);
>
>     // unmap the new page from p growing
>     munmap((struct page *)p - 1, 1);
>
>     struct page *p3 = mmap(
>         BASE_ADDRESS - 257,
>         1,
>         PROT_READ | PROT_WRITE,
>         MAP_ANONYMOUS | MAP_PRIVATE | MAP_FIXED_NOREPLACE,
>         -1,
>         0
>     );
>
>     // segfault because p can't grow due to proximity to p3
>     (p - 1)->data[0] = 0;
> }

Fixes: 176b1a76 (2016-11-21; "mmap.2: Add (much) more detail on MAP_GROWSDOWN")
Signed-off-by: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
---
 man/man2/mmap.2 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
index 20b94c243..925b18ffc 100644
--- a/man/man2/mmap.2
+++ b/man/man2/mmap.2
@@ -276,11 +276,11 @@ should check the returned address against the requested address.
 This flag is used for stacks.
 It indicates to the kernel virtual memory system that the mapping
 should extend downward in memory.
-Touching an address in the "guard" page below the mapping will cause
-the mapping to grow by a page.
-This growth can be repeated until the mapping grows to within a
-page of the high end of the next lower mapping,
-at which point touching the "guard" page will result in a
+Touching an address below the mapping will cause the mapping to grow to
+accommodate the access.
+This growth can be repeated until the mapping crosses the stack size limit,
+or grows to within 256 pages of the high end of the next lower mapping,
+at which point accessing below the mapping will result in a
 .B SIGSEGV
 signal.
 .TP
-- 
2.54.0


