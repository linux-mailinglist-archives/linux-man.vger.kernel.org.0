Return-Path: <linux-man+bounces-2999-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F088DAC15D9
	for <lists+linux-man@lfdr.de>; Thu, 22 May 2025 23:22:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28534A22E02
	for <lists+linux-man@lfdr.de>; Thu, 22 May 2025 21:21:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32525254B13;
	Thu, 22 May 2025 21:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aP79uLif"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D94B241697
	for <linux-man@vger.kernel.org>; Thu, 22 May 2025 21:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747948924; cv=none; b=htkj24f1qukgbMTeEB59fU0ZuKKxD2itQsPRTHk4SkXcWpi1Vg8ZFGmov8FloWIKhu3l1xVhXbf+qPuHflCPRrBdyCDkjYhVe8c6AGzY0Uhaz3mj1hlm32Z4bynVVSUhUzn/Cmdvg//XyL1uzm4KcQ78DBrkIMbUZ628g0KUYug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747948924; c=relaxed/simple;
	bh=OuwLszocgvPUEAoBg9jnY2j/eNClynwiuyXyx9IIUkk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=owkn3GMOeUpg22ZHuPoMF0cPf9vE/Eo9zZZe0iZcd00tfHbQoKgjmb7nykgKN4fuZtwpMAB2x3QE+96p0EGcE+zlZ+w8wSW1JjPZRe9VPHNCBs5eB2vDNRUbUWvLMMle152DVW9OEeuWhCjijXa/QwBKMFpcKVD0trFpraplV6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aP79uLif; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7c59e7039eeso1272952585a.2
        for <linux-man@vger.kernel.org>; Thu, 22 May 2025 14:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747948920; x=1748553720; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=r4wnURsYRlh7Y2K/Oo+nvuz5vB+xzPgvW2VhBu4NC78=;
        b=aP79uLifrJSruhekaHOUNSqO4zctx9LrwJcnpvkR8IygRSPvcASDgGfqV2MXSSZQ8h
         SdNX7sPscA/5BD/nb8Y89JSLCHg8qH7eiQGmQrZDthgyAQnJ2AjSijcSNh7/vkw+L7Vf
         5JjDXrRVtODp/QokG7lJmXZe2Xnpc+OzxTzCDFIZ2Aj+tUen2lXVmGsboh7bRQ+cFObb
         V28eG5W1nlzHNw5+G5bTLBhiQOp4/1YrkIxkHaPrTPljyMnomYODqSqva0DT1PlFfRX4
         9tZBtgcV3q13pduy9q7eb60/nIfJG/RIEapu8DCecLI5im+q7dSP83TkZ9Tl9c3UJofK
         gNZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747948920; x=1748553720;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r4wnURsYRlh7Y2K/Oo+nvuz5vB+xzPgvW2VhBu4NC78=;
        b=We4tatjDHbhhuu+auNM/47CTDXq0pxMBzZO6mIAN0vt4Efb1WN6sv07W4ecLCgdv80
         dRpU70dhxXnqj4U10eVZAPSWJx47vSuWLULSrbP1INxVQlkRypyFaDoq5115gsYLs9ib
         AEC4aIyDWSh9gfwRkTxB6NMZnd2K6faKUs7KQ45gzFSox9xB4XMO28XaJEkDqnV4Zamw
         PgE3+/wTjMsXCg9izoIPFcryJc407kUSKBHu9ltEQYjnzsHabWtj7uSCFwYUU4551dr3
         CzZjAvM0e43Twr9aJ/lVs7SywQqyFHMWZdCPuOfY3STIy7jCnp/hMX2Op6Z+Os0HjHor
         A86w==
X-Gm-Message-State: AOJu0YxF5XhQQmkO8rOOJEZ56DQRAKyGnhNR//rJHrmbT6gp12JAcOCO
	9IV5ceJU02JfGHcbRQw9un4oR1jzBLDeOMzhjBhL17paqt+9eGPwItbPXkg4ACAHYhE=
X-Gm-Gg: ASbGncsnazjgvz3+c6a6AOCGLvfc67Gza8kDqJrpgzkvMZgIQCMAoRytjj8j9y4qtrj
	RKJ2pIBJ+OnpI7xsasLOixWbvhZdRiviSBqTiHF7Bnxv/Y2mTPzDwiEwZC1Kvhl2BjFLdZJAnNg
	/R0owRiCQEy7Pqd/Qj/Fsa7Inc+FCIgCiLIBKhMfoIGJ0wc3gTuI6ReHsBBD8fmENZLT5nHYw5J
	PtBpvl8pdgJIuyLlYi/mpUtipjewRkCbJLyogAyyHW5R6RW4RKBG/s3FVownYjzlvv6tA1QbPdM
	LW+XPmSRWxUCohIf/H3KOv15oVxK0s7HO80cqoeyEUXkAGhMYp7U5pbeuzelKVPtlwcN/N9zcbg
	X0BdxAtGRgbaOwa/NNg==
X-Google-Smtp-Source: AGHT+IHYNfdKvejJOIWwQboA5iN2tx5VyVNidNdEj7nCHFav6fJhIAgbPNU6Vvenp+T3tN2wZ7flVA==
X-Received: by 2002:a05:620a:4515:b0:7c7:b60f:ebd8 with SMTP id af79cd13be357-7cd47f1c95bmr3194226485a.24.1747948920022;
        Thu, 22 May 2025 14:22:00 -0700 (PDT)
Received: from localhost.localdomain ([50.234.104.165])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd467d8140sm1074304485a.37.2025.05.22.14.21.59
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 22 May 2025 14:21:59 -0700 (PDT)
From: Matteo Croce <technoboy85@gmail.com>
To: linux-man@vger.kernel.org
Cc: Nhat Pham <nphamcs@gmail.com>,
	Johannes Weiner <hannes@cmpxchg.org>,
	Matteo Croce <teknoraver@meta.com>
Subject: [PATCH] man/man2/cachestat.2: add a man page for cachestat()
Date: Thu, 22 May 2025 17:21:49 -0400
Message-ID: <20250522212149.36049-1-technoboy85@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Matteo Croce <teknoraver@meta.com>

Add a missing man page for cachestat().
The text was converted from the commit message:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cf264e1329fb0307e044f7675849f9f38b44c11a

Signed-off-by: Nhat Pham <nphamcs@gmail.com>
Signed-off-by: Matteo Croce <teknoraver@meta.com>
---
 man/man2/cachestat.2 | 109 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 109 insertions(+)
 create mode 100644 man/man2/cachestat.2

diff --git a/man/man2/cachestat.2 b/man/man2/cachestat.2
new file mode 100644
index 000000000..f741e3695
--- /dev/null
+++ b/man/man2/cachestat.2
@@ -0,0 +1,109 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH CACHESTAT 2 (date) "Linux man-pages (unreleased)"
+.SH NAME
+cachestat \- query the page cache statistics of a file
+.SH SYNOPSIS
+.B #include <sys/mman.h>
+.PP
+.B struct cachestat_range {
+.br
+.RS
+__u64 off;
+.br
+__u64 len;
+.RE
+.B };
+.PP
+.B struct cachestat {
+.br
+.RS
+__u64 nr_cache;
+.br
+__u64 nr_dirty;
+.br
+__u64 nr_writeback;
+.br
+__u64 nr_evicted;
+.br
+__u64 nr_recently_evicted;
+.RE
+.B };
+.PP
+.BI "int cachestat(unsigned int " fd ", struct cachestat_range *" cstat_range ","
+.br
+.BI "              struct cachestat *" cstat ", unsigned int " flags ");"
+.SH DESCRIPTION
+.B cachestat()
+queries the number of cached pages, dirty pages, pages marked for writeback, evicted pages, and recently evicted pages in the byte range specified by
+.I off
+and
+.I len
+in the
+.B cachestat_range
+structure.
+.PP
+An evicted page is one that was previously in the page cache but has since been evicted.
+A page is considered recently evicted if its reentry into the cache would indicate active usage under memory pressure.
+.PP
+The results are returned in a
+.B cachestat
+structure, pointed to by the
+.I cstat
+argument.
+.PP
+The
+.I off
+and
+.I len
+fields must be non-negative. If
+.I len > 0
+, the queried range is
+.B [off, off + len]
+. If
+.I len == 0
+, the range is from
+.I off
+to the end of the file.
+.PP
+The
+.I flags
+argument is reserved for future use and must be set to
+.B 0
+.
+.PP
+Currently,
+.B hugetlbfs
+files are not supported.
+.PP
+Note that the status of a page may change after
+.B cachestat()
+retrieves it but before the values are returned to the application; thus, the values may be slightly outdated.
+.SH RETURN VALUE
+On success,
+.B cachestat()
+returns 0. On error, \-1 is returned and
+.I errno
+is set appropriately.
+.SH ERRORS
+.TP
+.B EFAULT
+.I cstat
+or
+.I cstat_range
+points to an invalid address.
+.TP
+.B EINVAL
+Invalid
+.I flags
+value.
+.TP
+.B EBADF
+Invalid file descriptor.
+.TP
+.B EOPNOTSUPP
+The file descriptor refers to a
+.B hugetlbfs
+file, which is unsupported.
-- 
2.49.0


