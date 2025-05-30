Return-Path: <linux-man+bounces-3062-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 691C6AC8F64
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 15:12:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 431C1503CEA
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 13:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05EB422D780;
	Fri, 30 May 2025 12:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jVNEcTXx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8891D220F2A
	for <linux-man@vger.kernel.org>; Fri, 30 May 2025 12:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748609318; cv=none; b=mNI0C4Kyvf/RdsIxEhy+DgymifRXG1Je7dvaG0HxQUjyDUBydtXLUwrbDashOumRRKB0NeQ8we8AlDfTy1Gr5Qtqi2IWeY0YkcFYac2Hm1WUBNvK8ZrnOaGwQ1wOmT/qFKIyt+IA8UoJ4HEig9OP/F6ytub3J48WQ1Ac/MG6SVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748609318; c=relaxed/simple;
	bh=XPBwNADP2V4X0jig67dFxI/FETKXK/2xOyD75GUEpN0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cAN0x1McFQeX6CdoSvp4BVVM+z82e+uOFq/5w1ZrBVVKCg8o9hRfHuyoQjMap9CyXM3RCw1O6A7tae+UvL8Kea3E0RCpBazKrFGxlLa7U/MKFlQdiad6r1Y5ck3QG20aW1Yelaq6e2ITkTYMMZf6we4Oiw+lfDMPHb476blqZRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jVNEcTXx; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ad88105874aso305310266b.1
        for <linux-man@vger.kernel.org>; Fri, 30 May 2025 05:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748609315; x=1749214115; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kKuFlmAbOe38p2l21ZfuGZOUQLIi7LRuEhEB5wriDGM=;
        b=jVNEcTXxIoy2fynpgMbWj8vXBVdnU6vUJddZI5uL/0bgIq3j5ENjrk8yz82ZyNpp1X
         MMfyzxPjA0RpmTMdTYsJI6dcpUE8nHIymd17eywHF4fP4OeJrehlMjk8WlUw+sALwmk+
         SOdPhjbnPVPX+R5rN0vcNRjP7laXknCqYYh5yEhLaDrZXim9p/q4LbO3AYzhoKgRKkUz
         N4JWx1KNb3cBOgBPsXw2Dq2FIFfiQF5uwUgAiFjOqSUG0HRebzxKr3IHWV2cqokH2LKE
         phcGV9qb3dFSin3eZOzyej5yIT09SIqdNv4c5wjKY0A2Ttr6yFEs4fggupiV4YyKjx8e
         2djg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748609315; x=1749214115;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kKuFlmAbOe38p2l21ZfuGZOUQLIi7LRuEhEB5wriDGM=;
        b=DPqbEAb+wMCoqWypvB+eN/6aAsS9cveaLAUsdYd5m225fuWn/Llfa/M7oXSsq1fzw0
         Bp5HuJLdrzGrus/51J/+Hev83F/eW1O5heyaP6+1mn6KQGQjdcAv7EAuingM6d8wa546
         mrGeCjT9t7ZaV6qF37gAw3iksSjHicP48F0Q/bt+Em89uNI6wp5zOVypiNNW2o19XB+N
         B/FZGjtwlANYP/zDVCW1TSnrZm10K35Q5MnHaQZ3ArEyJISdEieHfr8GBohpjGvHPnuy
         7lDSn9VjtdphRnT+7Isrq1s+ZWlNDsJQZEqvJTGbzRew1UIZ31W9ypVncHFvQ+jaxPFd
         fYYw==
X-Gm-Message-State: AOJu0Yz3adg4+4xtJbUWTPRmvbkpGSFhhRncur14jN2fSHAz8efOBfVA
	2OOnVxzzyQsoHaflbaiae3cxWi1NVETaZUb28DOw8NZOVmK0HEhK5VuJkZL6bQ==
X-Gm-Gg: ASbGncscI6YNg0qr2C6+m/roQHDJH0Xlm1CS3ifv++PbJOPZcM+ZiZ6mCAu0rsQfbtC
	NKaTQ27u1EzB7cFPV3FntedoiBcYII3arBdIW3HePAGyQvUIO7DqfaAp2toiEQqhSwM73ggNxt8
	fAwe8qA5rgb8ZqNWK8Z+bc9x4Ys7BhUX5O9Kt3dngEVWCTGlJWHUR0BgbRh8olvYdxtJ/og6UgK
	2DBZjdKilKZoOCAVZv5z9c1JoXNLHOErSWuHL1Wf3PDffkvq6O6Tlwc0VHmmtzN3uTujzQdfm1Z
	ld+CyTjj070fOn3rLck61i3XnD27WO4+TRC+XQNVPMlMPEwFTHir3f1Jdit4qAN76Bk6yhcBM0M
	ok7nEhvr5s4bFn9Rmx+CJag==
X-Google-Smtp-Source: AGHT+IECt11hnFgPekVxzCCyEvIDXJqkYM+Bv2eKdvX8y87VsNj4x1USvJStueh5rkco74SAJyE9oA==
X-Received: by 2002:a17:906:4719:b0:ad8:9e80:6bc1 with SMTP id a640c23a62f3a-adb322d8bb8mr221118566b.18.1748609314464;
        Fri, 30 May 2025 05:48:34 -0700 (PDT)
Received: from fedorarm.. (mob-176-242-53-27.net.vodafone.it. [176.242.53.27])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d7ff06asm325784966b.15.2025.05.30.05.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 05:48:33 -0700 (PDT)
From: Matteo Croce <technoboy85@gmail.com>
To: linux-man@vger.kernel.org
Cc: Nhat Pham <nphamcs@gmail.com>,
	Johannes Weiner <hannes@cmpxchg.org>,
	Matteo Croce <teknoraver@meta.com>
Subject: [PATCH v3] man/man2/cachestat.2: add a man page for cachestat()
Date: Fri, 30 May 2025 14:48:29 +0200
Message-ID: <20250530124829.214375-1-technoboy85@gmail.com>
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
 man/man2/cachestat.2 | 111 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 111 insertions(+)
 create mode 100644 man/man2/cachestat.2

diff --git a/man/man2/cachestat.2 b/man/man2/cachestat.2
new file mode 100644
index 000000000..12dbd900d
--- /dev/null
+++ b/man/man2/cachestat.2
@@ -0,0 +1,111 @@
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
+.P
+.B struct cachestat_range {
+.B "    __u64 off;"
+.B "    __u64 len;"
+.B };
+.P
+.B struct cachestat {
+.B "    __u64 nr_cache;"
+.B "    __u64 nr_dirty;"
+.B "    __u64 nr_writeback;"
+.B "    __u64 nr_evicted;"
+.B "    __u64 nr_recently_evicted;"
+.B };
+.P
+.BI "int cachestat(unsigned int " fd ", struct cachestat_range *" cstat_range ","
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
+.P
+The results are returned in a
+.B cachestat
+structure, pointed to by the
+.I cstat
+argument.
+.P
+The
+.I .off
+and
+.I .len
+fields must be non-negative.
+If
+.IR .len\~>\~0 ,
+the queried range is
+.RI [ .off ,\~ .off+.len ]
+. If
+.IR len\~==\~0 ,
+the range is from
+.I .off
+to the end of the file.
+.P
+The
+.I flags
+argument is reserved for future use and must be set to
+.BR 0 .
+.
+.P
+Currently,
+.B hugetlbfs
+files are not supported.
+.SH RETURN VALUE
+On success,
+.B cachestat()
+returns 0.
+On error, \-1 is returned,
+and
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
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 6.5.
+.SH CAVEATS
+Note that the status of a page may change after
+.B cachestat()
+retrieves it but before the values are returned to the application;
+thus, the values may be slightly outdated.
-- 
2.49.0


