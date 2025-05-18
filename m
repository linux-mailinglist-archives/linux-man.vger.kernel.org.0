Return-Path: <linux-man+bounces-2977-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3B4ABB287
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 01:45:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 013261714D7
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 23:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF1181B4223;
	Sun, 18 May 2025 23:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b="E3lLKNic"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 811721519BF
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 23:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747611916; cv=none; b=W6A7Ew1SiKLcIYXzoNf7u1eLDnOUVJQaowg9EFqtc/W+U1GyJiv8wI7T1OBpzr+H2BZtY9l9xMw0uZtWMhttlPcebLb0WEsK8nRdmI/Zn8g8Qc4237HNESSd3EAOTN9nb5LV5pJTT8AJltXYI8IEzfZktGZ8C9TURihW+PbDUm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747611916; c=relaxed/simple;
	bh=uS7NWKRK/HgzLbbZs1e1jjOgFpGcmSx7lku1Hox+MNg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cZ/oA/6GwliK+cqOYVDCwxl9ACu8y8WYrMeAJAa/1BzxZ37uSM5/7drL9iG7CSRSo/vGus6fNfkY+FKw8YoSkmCNP2ZvrRI0O0DTBWGaFaXzD91v4LCgnsU5jxXG+Wg94BDY92n0CWV87dUNwL/TlxBWrjduct/HL1bx3H3H0KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu; spf=pass smtp.mailfrom=dartmouth.edu; dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b=E3lLKNic; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dartmouth.edu
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7c5e39d1db2so236657685a.3
        for <linux-man@vger.kernel.org>; Sun, 18 May 2025 16:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dartmouth.edu; s=google1; t=1747611913; x=1748216713; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RnoxYDBJYpucUfV+v7cPcU1rdqjUjAgcUKA9/N4GjU8=;
        b=E3lLKNicLamtVMQpUixfh9JI1zJviTWRURdZ440clli7pWDsA+rnWMz3WASolk+GqO
         2itU2N54mIejgNKxyz7UCjDdEAYUM6izMlrweZZ9QPbU1IS+tmq2YHwxYEEhWt0Bwwvh
         PZ5RWFIJbd1hs9EOF8TLf3PL3a0GoBgfTuGO3KZZGRjwmv64dd/WrWqIT6zo7RI/bApp
         dL/sKTw6ap1dThnBij8CBcv5K1ZTJNc0N5kUJbj8cdlPDD9s/bO3vfUG356TlUdaOnP9
         IdPPBh+EkdXa/0NiX+5eVoJPrPfWke5/h+RFvXK3Z2GyKSPyHKSuLhBvs5O88fnawwxw
         zEIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747611913; x=1748216713;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RnoxYDBJYpucUfV+v7cPcU1rdqjUjAgcUKA9/N4GjU8=;
        b=krGh+0Ho+kzUAjBkdj7gFqIa8+K5s8SNvsTgp9FBbq/isJIEo0Otczh4P7J2xwoM6h
         HwsVnRU1ghkKbALAxydX0v69nmF5pB6YxoCmw7j2zQdm88R+R+w+z9hQ/Cf2AKj8AFty
         pUAXjDeiUWd0nK1YhqVLyFX2Y7TA6I0cnkI2jgtBclxmzg16ItvlT02fpXs1uejRGYuS
         y7ahRhvq4+sKjIlwpWjBbCnEU76wytWjoENoCSf8IEwV45zBuSj6N1G6xKwBrWAMahMG
         qvTxOAenHMJY9XEtD5JpnQjye5Kf9kpJPJX7ouuOj665JkXExuzCndhJheuQdpOcmQuW
         jOhw==
X-Gm-Message-State: AOJu0YwHu/bh0j/9Jf0XgTI6KhZGogXlm6x8Tan5NS3he2Zye+7FQPFq
	zRn+JcBRg8r5hI7jM070Q2Y0SR4loIUfb5YsOiF3Ud7aRXmHVfp/J2AzUzDe/ixGh8Q=
X-Gm-Gg: ASbGncv0nXpIsg6VzGQ0vFeaCKVIJrDCR9qvH8sCcTbJrJQxzMz4h+g/nlsYxNVgjS2
	vTuz1YAH3jhei1B9U9J10ivb7QY/YR7LIFoE3vFRW81jt+9u6Ew1CkYn70h7bEym+bBVKM1dr5F
	KVPMSX9NfySRA7KOLVppDW1VIp173QYvHrMBIEgMK3+W3cgOgJHj2O8FEnGMf/lv2hQ4XP2lnsQ
	dS7SimVTTiVgp1D9bzJdON/D1r7YPeA8+YibM6rLQleO42/Tr6f7noMOtHKkAm+a416w/kBsDt0
	Cj3gG0VJ4UUbVY3Ph+KtCzr7j6Sukf09wLOggC+IUBlCSkbemDIRqV/srcRF8TP8hDYrcU2cSX0
	zEoEFSQ5TdbwQlMVq
X-Google-Smtp-Source: AGHT+IFTE+nDP9M52odN6rj9UU0j00J6dIUeePhEL1VxX4Ujwly/o+SWd3JYiXC6NPKHZVivXJQ0xQ==
X-Received: by 2002:a05:620a:4620:b0:7cd:92:9f48 with SMTP id af79cd13be357-7cd467aedc0mr1591804285a.52.1747611913294;
        Sun, 18 May 2025 16:45:13 -0700 (PDT)
Received: from localhost ([129.170.197.122])
        by smtp.gmail.com with UTF8SMTPSA id af79cd13be357-7cd467bec16sm490346585a.9.2025.05.18.16.45.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 May 2025 16:45:12 -0700 (PDT)
From: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Subject: [PATCH] man/man2/syscall.2: x86-64 + x32 syscall numbers go in eax
Date: Sun, 18 May 2025 19:45:07 -0400
Message-ID: <20250518234507.404608-1-benjamin.p.kallus.gr@dartmouth.edu>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The kernel sign-extends eax before dispatching syscalls.
From arch/x86/entry/entry_64.S:
>	movslq	%eax, %rsi
>	IBRS_ENTER
>	UNTRAIN_RET
>	CLEAR_BRANCH_HISTORY
>
>	call	do_syscall_64		/* returns with IRQs disabled */

This patch updates syscall.2 to document this. ARM64 exhibits a
similar behavior (w8 is extended), which is already documented.

Signed-off-by: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
---
 man/man2/syscall.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/syscall.2 b/man/man2/syscall.2
index a6b93699c..b946dcc41 100644
--- a/man/man2/syscall.2
+++ b/man/man2/syscall.2
@@ -190,8 +190,8 @@ superh	trapa #31	r3	r0	r1	-	4, 6
 sparc/32	t 0x10	g1	o0	o1	psr/csr	1, 6
 sparc/64	t 0x6d	g1	o0	o1	psr/csr	1, 6
 tile	swint1	R10	R00	-	R01	1
-x86-64	syscall	rax	rax	rdx	-	5
-x32	syscall	rax	rax	rdx	-	5
+x86-64	syscall	eax	rax	rdx	-	5
+x32	syscall	eax	rax	rdx	-	5
 xtensa	syscall	a2	a2	-	-
 .TE
 .P
-- 
2.49.0


