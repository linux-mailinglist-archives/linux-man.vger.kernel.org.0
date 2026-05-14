Return-Path: <linux-man+bounces-5498-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBzaLvSJBWrGYAIAu9opvQ
	(envelope-from <linux-man+bounces-5498-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 10:38:12 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B450B53F63D
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 10:38:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B6C8A30091DB
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 08:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A7C13ABD8D;
	Thu, 14 May 2026 08:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OAK5+Drf"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B473B6C01
	for <linux-man@vger.kernel.org>; Thu, 14 May 2026 08:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778747886; cv=none; b=DUd3oYIcZJD5ewfugeFyym5fMey0zJ2NSUgIGGZgOaG3QlkMwIHEN7jexR3t18CgHIc6c9BVVidNPplLHmcH4C+N5xNKOX4Gp229jFlQqEh1eByoj5+j1Q+jgCPX/Pzb55veAaZzB3yRc0xbfLgapTFSrfcvKO4OsSJAJb8YewA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778747886; c=relaxed/simple;
	bh=7KjWpV2b9CK/01JEi+KbNPjRG4Hej/P5RAi0qfsFMww=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pljNG3xNrrJBoWDzgXm8CXPUWGci82kno6MUSKHySx4d5ZPT21oTj4hEZCVvbxjZ26hylMYKylIPrRAbvEIl2Qo2D7qdi7FjxQKtiFecHZwzosFsQn/g/guCLQ/LOtFRIIAe1m7a8JHuI7HufqJODHWW8xa9Bnyz8YRyVHkEYdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OAK5+Drf; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-43d76dd4ee8so7141427f8f.2
        for <linux-man@vger.kernel.org>; Thu, 14 May 2026 01:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778747883; x=1779352683; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=icFod8sYo0Mq7jYIaSNOfqIC4oHdPKxVTY42TAhdDgU=;
        b=OAK5+DrfJZPvBBwBLvEcFQWpL+7Jt1Jrik9iMAqZoMZq7UEzmIugDzUe+GUEyyP3PN
         pFROWezMBFobrdytRE/YJNwQIh8sqwvwQxZB+/7Z39HYPuGeXDNa230YqsN/0rlj20pH
         bwML8grwi9J9u6E7JTcnO136H03uzNQWU9KnW1GcT+suZ+65XGbZrr2UsCJSn5bFc8Zj
         RrZHtacZhvBiOP2Rdi1JgPXJGcD8CPpucLIPo64QRiZ+Hjv7NgtRuc5INpXtHq+dRbW3
         PopaotwFcBdQbWEPTWOGXgQEVD3Y7Z5OW/wOq0RbSdr4gV8svRmRpnGOMV5/U+YjIi4R
         LmSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778747883; x=1779352683;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=icFod8sYo0Mq7jYIaSNOfqIC4oHdPKxVTY42TAhdDgU=;
        b=qhggRegRKDx8gduBpFafpbJvliPUyjXog3AYDvGLRfnuebRZwhrueNFICVjD06XXqc
         aVzuWopXzUXSDd1rJw0ZE1A4OmUZl3sNa5xIDncQjptrZNWxvHwZODms/hNm/48yylON
         0RYwwGG+iTo3pHXoQnZP6NQGtklV+ZBjHIv4cAU6/DOE5hCsbXGoqdmQX59SxIs6oCOC
         kJ7oR4qUa3iIh2b1/PJUtcsLU4SzbKF/JXaeVnYJvK1Z8+6lqrA+udvrjYxXWP8f8+Uo
         +Yu1wmdZ20U5ES5MMNxwno0WSAp9/WDs6VLbI4xuOomhQHmztW0xh5uKVkUcs1X929/D
         7tmg==
X-Gm-Message-State: AOJu0Ywb6w5dg1CEfFffShaQu5Q6hUKmcP8yXs+W9Nt6fncfXCfcGqxx
	AXTqwqbO6w6d8VpqRTDjtEVFZnvNxyP1BOWPZJnoUydUVVbnnwTmQMcu
X-Gm-Gg: Acq92OF1Hvd/zFydxxoHdHq9J+g9pirfhoxK2iD3gcA9SmqyNFZ/5IgHfDD4fpVfzFi
	FuCP/g2gv0ibinsjPZvX4GHDneu4uH47sl9z/2cuLqGstcF0JF+x+LhMbhzyWi0TaQImQCkWYrk
	lIXJ8Q1WeTVMdHSq+3PYNC5tO2314aXfsi62C5Us/pfCsGdWfW0ROxDXNVqNeIvWIKHcRRM3H2m
	Sc0vC77GWVKQvNEraac/WY2A80DL2MXkl0RK+W3oYoWrv6wxqIpIyHHVSaukaQWtyk2NWdmmgQE
	4zoe0Dqc85UfcZCCdG2ZLBKeswEQZm68hgkqiIyT+AHLLjP+K9OJ99Ur5e4t06N0nTylwiuQgQB
	Zay5ecHVoLivXJY8YfjSIjHbLSS+oLDvMUAOknwWur5Ucqi4FnQrd2s4BtQEKTxdzJENBuMlgdm
	29fxk9iY+LytEewGiremGPuPBjTxVW3jHt6FQ=
X-Received: by 2002:a05:6000:2310:b0:456:f186:7af8 with SMTP id ffacd0b85a97d-45c57ededb1mr10498500f8f.4.1778747883164;
        Thu, 14 May 2026 01:38:03 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8308:b093:bb00::6033])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0fe13b4sm5041126f8f.28.2026.05.14.01.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 May 2026 01:38:02 -0700 (PDT)
Sender: Alban Crequy <muadda@gmail.com>
From: Alban Crequy <alban.crequy@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	David Hildenbrand <david@kernel.org>,
	Alban Crequy <alban.crequy@gmail.com>,
	Alban Crequy <albancrequy@microsoft.com>
Subject: [PATCH] process_vm_readv.2: correct partial transfer granularity
Date: Thu, 14 May 2026 10:36:59 +0200
Message-ID: <20260514083659.139971-1-alban.crequy@gmail.com>
X-Mailer: git-send-email 2.45.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B450B53F63D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com,microsoft.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5498-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[albancrequy@gmail.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

From: Alban Crequy <albancrequy@microsoft.com>

The man page claimed that partial transfers apply at the granularity
of iovec elements and that these system calls won't split a single
iovec element. This is correct for local iovecs (which are validated
upfront) but incorrect for remote iovecs: the kernel processes remote
memory at page granularity via pin_user_pages_remote(), so a partial
transfer can occur within a single remote iovec element at a page
boundary.

For example, if a remote iovec spans two pages and the second page is
unmapped, the syscall returns the number of bytes from the first page
(a partial transfer within one iovec element), not -1/EFAULT.

I verified this by testing process_vm_readv() and process_vm_writev()
with a 2-page remote iovec where the second page was unmapped via
munmap(). Both returned one page worth of bytes (a short read/write),
confirming page-granularity partial transfers.

I was prompted to check the current behaviour by the LKML review on
my patch (not merged yet) on process_vm_readv adding new flags:
https://lore.kernel.org/lkml/8b29da5b-e260-4b77-a640-8abb447291d1@kernel.org/

The inaccurate text was introduced in commit 0b01869b0a59
("process_vm_readv.2: Cleanups after comments from Mike Frysinger
and Christopher Yeoh", 2012-04-14), based on a misinterpretation of
a review comment. The original man page text by Christopher Yeoh
correctly described partial transfers without claiming iovec-element
granularity.

Note: process_vm_writev.2 is a .so redirect to process_vm_readv.2,
so this fix applies to both pages.

Fixes: 0b01869b0a59 ("process_vm_readv.2: Cleanups after comments from Mike Frysinger and Christopher Yeoh")
Signed-off-by: Alban Crequy <albancrequy@microsoft.com>
---
 man/man2/process_vm_readv.2 | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/man/man2/process_vm_readv.2 b/man/man2/process_vm_readv.2
index 66554a2cf..2ccfe60d0 100644
--- a/man/man2/process_vm_readv.2
+++ b/man/man2/process_vm_readv.2
@@ -192,10 +192,13 @@ returns the number of bytes read and
 returns the number of bytes written.
 This return value may be less than the total number of requested bytes,
 if a partial read/write occurred.
-(Partial transfers apply at the granularity of
+(Partial transfers apply at the granularity of pages in the remote process.
+If a remote
 .I iovec
-elements.
-These system calls won't perform a partial transfer that splits a single
+element spans multiple pages and one of those pages is invalid
+or not resident,
+data may be transferred from/to the pages preceding the failing page,
+resulting in a partial transfer that splits a single
 .I iovec
 element.)
 The caller should check the return value to determine whether
-- 
2.45.0


