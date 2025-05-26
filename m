Return-Path: <linux-man+bounces-3021-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC64AC4384
	for <lists+linux-man@lfdr.de>; Mon, 26 May 2025 19:43:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B7E2179DE2
	for <lists+linux-man@lfdr.de>; Mon, 26 May 2025 17:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D8F520D51F;
	Mon, 26 May 2025 17:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kXU8FjSH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C4D19F11B
	for <linux-man@vger.kernel.org>; Mon, 26 May 2025 17:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748281396; cv=none; b=QPyuRE9RA7qzeNJ9ywgVRyQeKUZ+4zh5SdA+NYCD7Lgqe6GXdhds762X0q9Z5+9xIyYnK4FWDE167SULG9XtGbKjuuZ5SrLZEe3i6B0WJzm0HIe6M6oUnWORleSyEtmwtM6ygLqg7oKY76uvuHsDXpGGOiSTIlCUVTp8z7Tubh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748281396; c=relaxed/simple;
	bh=08FRhaHrywzdZIj8ylwhJl3Hf+D/13vDTZSRkiagtlE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Mb1wMA+LpPEyzkcJsUGhkqg7GEQgaZNfi075JPQaHU6w/sUotUhzNKQPiKaXkKpCw2BPcPZfuDtXpXFJTlegftiyCIR1vQMRMWNgafJxScrZB4Jav8bhIxKmQjnnY1pjk9N0hjcXWeSE3CwE7wnhui/Ewd/kOlXT4uBzIFLEGVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kXU8FjSH; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7c9376c4bddso257541385a.3
        for <linux-man@vger.kernel.org>; Mon, 26 May 2025 10:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748281393; x=1748886193; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CYOTvN4GhaQmEwB/dOiLLtFAUGEbDAJRM7dgbPdOeI4=;
        b=kXU8FjSHzR7NDtNR1nEdJsk4EFrPayrHshPaFFhnIrxaJ99PoJkgs+3yxIhicJSLWS
         jPfmT+K5xKRp2FQIV/TFyOTCoF0RBIVYcH2LFYlaj7nrcuQO6q5RFPw8Iv7NGe/e0Vcj
         pQBn9XylNDJ6FPbGGcecuFBh/pfb8ZUDQGXcQnmLnZ4/4wIJCWpPKwSp+J64suBB2umV
         mfedwwxI++9wlGKtDvkg3DE4aVnAxZ3zoDZnqzAF9LNuK0F/jqb4Uw8x12Gryfuqtpya
         D+1LdSu33VDAIVHKZEVfDeQ/CNbENyXk/mC5P2UzmpqmqBr6zX/ousmnF6Y1IFvE/DF8
         pSdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748281393; x=1748886193;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CYOTvN4GhaQmEwB/dOiLLtFAUGEbDAJRM7dgbPdOeI4=;
        b=MdeFT4PiljiY7x86+QTUhHP3hs3UcQaHqiCYa8xi3RcmyG2x2a621NW+SJjfkJXKIQ
         iKVrEuPbnVQDW2+ZzDVC8DgoN9Mp6mVPWgDvvUidL6ley9YTyzV/l7ZhJ6rLlWhPJtkL
         jTwkFQPi2FfJGGJLSZ0tjgC7qmU2peOAxgRHpoYauDzGqXwejobFahiG+bCr5AslRcd0
         8iUz/LUFbiTvpioYKPiB4RV4BdL+44TSEpLLKgcTKlXZGeYYCNF7/M4dtgtD5tWyyvWL
         xI+3Hza5VCgIKcOFbxK96imjcmzaG7nu5/LW5rGbz+jaeW8y+kGwzWek7yrbcuxZFo2s
         /bYA==
X-Gm-Message-State: AOJu0Yy6qK654nK7ujIrvJQuj62pKxSWJOYAyc53HcVHfJb1AsBoW3Cp
	ZD+JB7fiz9JBNu2iZS6jpxKdOZTCvODO7MNULwnRKFqCa++Qt39IY4OOk5ISbZXiSTs=
X-Gm-Gg: ASbGncu9U7dYoKhP0m8a4Ma5BFDAZJUvxTD+MlT+dhnJn3EcPp6MnVAf7cdmJZQ+QrR
	tytjXmcLLCG7dUPQSWmXh8n6gHxk2QuBf8pFVipN4fHZaBZu1r+clDxE7UVEUbMhksDsNnkT/yb
	d8b9NGd/yianrKf6CLYF40sMSkCIFobUY/6NOD8WqeM+la05/eIqj9sEKVkZxvcjkU++79U7BLP
	RmrepihM/McIK8JJfqGEtLpLbD2EWM/Px3OSM8awysgONWQ+W1Iji7G8YnRacHGLeE5TNZyMqee
	qEXoeDVjNOjNDks/x3dwaPPs+q2Bh0VbL/QAt+luf8erwIgurbELu2MPjyKxeZHgjJko
X-Google-Smtp-Source: AGHT+IGU623WdxDf70cHzYfnIcQE0VP86hiSh2Lqv4a9H2G53JoLx3XvOt7gQsXtuOphKBrtBua/Og==
X-Received: by 2002:a05:620a:2619:b0:7c5:42c8:ac82 with SMTP id af79cd13be357-7ceecbc2f3cmr1577013185a.23.1748281393071;
        Mon, 26 May 2025 10:43:13 -0700 (PDT)
Received: from fedorarm.. ([50.234.104.165])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd467dd34csm1582528285a.47.2025.05.26.10.43.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 May 2025 10:43:12 -0700 (PDT)
From: Matteo Croce <technoboy85@gmail.com>
To: linux-man@vger.kernel.org
Cc: Nhat Pham <nphamcs@gmail.com>,
	Johannes Weiner <hannes@cmpxchg.org>,
	Matteo Croce <teknoraver@meta.com>
Subject: [PATCH v2] man/man2/cachestat.2: add a man page for cachestat()
Date: Mon, 26 May 2025 19:43:08 +0200
Message-ID: <20250526174308.202071-1-technoboy85@gmail.com>
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
 man/man2/cachestat.2 | 106 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 106 insertions(+)
 create mode 100644 man/man2/cachestat.2

diff --git a/man/man2/cachestat.2 b/man/man2/cachestat.2
new file mode 100644
index 000000000..e7f60d935
--- /dev/null
+++ b/man/man2/cachestat.2
@@ -0,0 +1,106 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH cachestat 2 (date) "Linux man-pages (unreleased)"
+.SH NAME
+cachestat \- query the page cache statistics of a file
+.SH SYNOPSIS
+.nf
+.B #include <sys/mman.h>
+.PP
+.B struct cachestat_range {
+.BR "    __u64 off;"
+.BR "    __u64 len;"
+.RE
+.B };
+.PP
+.B struct cachestat {
+.BR "    __u64 nr_cache;"
+.BR "    __u64 nr_dirty;"
+.BR "    __u64 nr_writeback;"
+.BR "    __u64 nr_evicted;"
+.BR "    __u64 nr_recently_evicted;"
+.B };
+.PP
+.BI "int cachestat(unsigned int " fd ", struct cachestat_range *" cstat_range ","
+.br
+.BI "              struct cachestat *" cstat ", unsigned int " flags ");"
+.nf
+.SH DESCRIPTION
+.B cachestat()
+queries the number of cached pages, dirty pages,
+pages marked for writeback, evicted pages,
+and recently evicted pages in the byte range specified by
+.I .off
+and
+.I .len
+in the
+.B cachestat_range
+structure.
+.P
+An evicted page is one that was previously in the page cache
+but has since been evicted.
+A page is considered recently evicted if its reentry into the cache
+would indicate active usage under memory pressure.
+.PP
+The results are returned in a
+.B cachestat
+structure, pointed to by the
+.I cstat
+argument.
+.PP
+The
+.I .off
+and
+.I .len
+fields must be non-negative. If
+.I .len > 0
+, the queried range is
+.RI [ .off ,\~ .off+.len ]
+. If
+.IR len\~==\~0 ,
+the range is from
+.I .off
+to the end of the file.
+.PP
+The
+.I flags
+argument is reserved for future use and must be set to
+.BR 0 .
+.
+.PP
+Currently,
+.B hugetlbfs
+files are not supported.
+.PP
+Note that the status of a page may change after
+.B cachestat()
+retrieves it but before the values are returned to the application;
+thus, the values may be slightly outdated.
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
+point to an invalid address.
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


