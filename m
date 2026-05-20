Return-Path: <linux-man+bounces-5561-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDb/MIZCDmrV9QUAu9opvQ
	(envelope-from <linux-man+bounces-5561-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 21 May 2026 01:23:50 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5602B59CB5C
	for <lists+linux-man@lfdr.de>; Thu, 21 May 2026 01:23:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E292130DB336
	for <lists+linux-man@lfdr.de>; Wed, 20 May 2026 21:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 883183793B0;
	Wed, 20 May 2026 21:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SP4/B/Lv"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E824934AB00
	for <linux-man@vger.kernel.org>; Wed, 20 May 2026 21:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779312818; cv=none; b=R1x7xB9PDFOA8PZRjM7BAMVMfvz6ldmqdhm2ePFVnlud3udGBsgmLJKT0H+46bqydb2Be9dF1kw2CJIom7lTeCaaz+RvFsQNZXQPHSGdm+iRuNPs+8FQqee2keJ5KQsfXpDrQP8wCM4Wzf1w8ks+hzAdPmhmbiV9E+VSo4sM758=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779312818; c=relaxed/simple;
	bh=nP5j8C5jBGgmRXCys3/deKj1VWfU5x3qwFwOGNA8K/c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LMrWH8A0j0x/4hMTGCGEJDsDb89ClhQTf1fkxKqy2470jFwZNSha7xyzPpwRVGHePcaZFkNWBGieL97mbzCBTB2WVl8HtCkBs2P6GfBnnrah2goXabWMQiMY8kBAuZEz3nnllfiskhuyapcL7CWUKW1+PnRKLkCu4EumeB7wd3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SP4/B/Lv; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5751b7d147aso2011324e0c.2
        for <linux-man@vger.kernel.org>; Wed, 20 May 2026 14:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779312816; x=1779917616; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5m+hZbguZZOxDZWQNEdR5PjQCLAz0T3aWSVDLZO25ps=;
        b=SP4/B/Lvak4Lkg7K/lhE6tfjXBpazopE3yNUwLprQVNPHXWJadOIKsuvpoyxKej07q
         pw91yyeNUEUwmNTeWdDwEOzCDnqinMvGexsmJNpsYLObG0/i9Wb17wzBLqWC8p3qPPh8
         wbaIsLvQAmpQXF7RNqmav4o/Gu6F0irL9TZWzAMAKohnPWqESM7NB4VfCxzj9yGUUfNe
         umSeFDLBAMgucGTP1ZPNtY2NF0nPjTqVM/SLsD1PW6bGooP183zOUEq0zL2egibgLD8O
         /Lwg5LokS79gSyn/gw8ekix16Z3jTCahx7LjezmL+H9jGJME4m0lMMLgXRYlqFB4eTK3
         Ah+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779312816; x=1779917616;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5m+hZbguZZOxDZWQNEdR5PjQCLAz0T3aWSVDLZO25ps=;
        b=rsu4c7rmjwp/0TfjfnoZ49JYH31a4njp+8hmT9GTU9Arpy6iNmbs6Mmu99n0TLD5G1
         mnjGv9iM9b1sPm/qQIH+0d403D38hFZGZP9zNhnLh8CWHywJXSHV2qmBipJaIECMDUD4
         2vAlbVBtX5oZdhYCndgrncGW0YPtgQnghJk0zTBgVklE1Yq14XIeX3TCbTzqoEJq3Fmw
         tdUtCNstLfUmXqWgHNIHCcj12MIE98kEI3SP4HKkljygq20gWQPyKYihaBXqSLTU1AHy
         2h8vVc0JawczVY+chNmmjvug0REk+9WOCrOneMr0x58Uj0o8ZsqNKRYzsDAe3haThyE8
         mBlQ==
X-Gm-Message-State: AOJu0YzAnISI9B0btyKu8qvIF4RX8XTH4w1fe1MgIQB3quMs8s/WjTDA
	uDo06TaVo24XXtgWhBr1B6whEUaTgaGp6s8cmwQzRyhAlNHFcRkwRoDH
X-Gm-Gg: Acq92OHTXo7hLjTtQ+KCVuuU4UCQEf/Lj4meCr6Y5Bc/gHS1M8CHeB/iQZBh0sr9/Bo
	atGHIodCz0Wst1JkBZm6CNQbeeUhtFtOCYJPmYOxv0qdftKhWeJRKulMaSk48gYzZDZGSZSo1Ii
	9N18z8xSbosvUPPStJ13Nuk7qZM9GiZ0cWiMuWUBJBo1VNMBjFpI5FwTi9vDOGyEg51HibZotD9
	0bCQPjl4NEx/GBYnRb30HFhHYHZIFz0ThIc0tUXOt20265D2+JLEzKtoOVLQbLD/kVCUVbYr3jf
	7OlDWxRsijkhEimaK6bjNvPtHvCf/iwdchbjHMGsKAxjO3/j9yNGLC8/k9NbTAIXvBWF0ewhE11
	f3IDmcsxIGkSJea33dhZYn83D4EKcw0bjNCtn7u3ClS1hIVVQ7MPPCeTz8n/pYD6r/SMfRz+Ir0
	TysXs1ZLS/+4O4P38wMg==
X-Received: by 2002:a05:6123:82:b0:575:de67:74c5 with SMTP id 71dfb90a1353d-584251e95e2mr49140e0c.8.1779312815882;
        Wed, 20 May 2026 14:33:35 -0700 (PDT)
Received: from tux ([98.97.166.138])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-95fc2f8aed0sm10270864241.8.2026.05.20.14.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 14:33:35 -0700 (PDT)
From: ChaseKnowlden <haroldknowlden@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	ChaseKnowlden <haroldknowlden@gmail.com>
Subject: [PATCH] man/man2/seccomp.2: Fix signal.h type conflict with glibc in seccomp.2
Date: Wed, 20 May 2026 17:32:58 -0400
Message-ID: <20260520213258.23500-1-haroldknowlden@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5561-lists,linux-man=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[haroldknowlden@gmail.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 5602B59CB5C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Signed-off-by: ChaseKnowlden <haroldknowlden@gmail.com>
---
 man/man2/seccomp.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/seccomp.2 b/man/man2/seccomp.2
index e469f3997..8b8f2fc61 100644
--- a/man/man2/seccomp.2
+++ b/man/man2/seccomp.2
@@ -16,7 +16,7 @@ Standard C library
 .BR "#include <linux/seccomp.h>" "  /* Definition of " SECCOMP_* " constants */"
 .BR "#include <linux/filter.h>" "   /* Definition of " "struct sock_fprog" " */"
 .BR "#include <linux/audit.h>" "    /* Definition of " AUDIT_* " constants */"
-.BR "#include <linux/signal.h>" "   /* Definition of " SIG* " constants */"
+.BR "#include <signal.h>" "   /* Definition of " SIG* " constants */"
 .BR "#include <sys/ptrace.h>" "     /* Definition of " PTRACE_* " constants */"
 .\" Kees Cook noted: Anything that uses SECCOMP_RET_TRACE returns will
 .\"                  need <sys/ptrace.h>
-- 
2.54.0


