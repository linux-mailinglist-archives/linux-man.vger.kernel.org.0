Return-Path: <linux-man+bounces-3135-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E69AD5844
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 16:14:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06A883A6F90
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 14:13:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7F0629ACD7;
	Wed, 11 Jun 2025 14:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l6bB/Qa6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFC5272E7C
	for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 14:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749651238; cv=none; b=WC0NLXRLlrXSp4FkNxuoTi/s+Oxp0OVvUHHPitlWJp7n1OzhaKdIhf2S2eh6rWpEfBRoQ02RJZttcaWpTaReK0a0MXnpI3EKoenpZ06ifj33zRCBdNu0a1ly0CeYPc3M95lurriQkUrY0tN8sIYNtQjxO+nwyTMpsbQ80nb+2W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749651238; c=relaxed/simple;
	bh=iE/pkt7fV5vqnaPdX9yEjM1vSxfBPhDrQTBB6SvGrns=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tvTG1Dr58xH1xWwly9IWYCzDCM/aMKh3dcCzjD9l2ul1ubdZFZl8rPCMsv1A8jtCpUHyHJFe4URttsaIhwBk3RI+HOg+xERC+mtmdeX4YWpvNqZJVoq3sVj0Xap+vLePcCfyYKR4LUvQgFCsPn28TMcgVPdBCfhMclTROP69PjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l6bB/Qa6; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-606ddbda275so12218357a12.1
        for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 07:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749651235; x=1750256035; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RqcBZPkIb1XAlT7yhanrXUBSD+HPg4xE/IZeserjlWI=;
        b=l6bB/Qa6Yk2LIr2EMfrYzQEVT2L44N07GH5/YGWgWroXpeliFvO/r2d2DxJaXkbTss
         4K+RgOkbkX72lhfakN7KeBLvj7TzES2VSOrD8WjovACera5bkGpnHRs7OiLW8HLmQRMx
         HLnbOBJGX2Jvj3du0mozvEGizjYQ4iZhwDZPiXLnzYi8/KOxdX0HY0wBqWGzGlb0toqj
         LN7GZ4nG4UHFhsuIMeKHza8R8c/J0lKiHSaAHfG1HflY24CfpqOkllmr2kOk+zKAIBCU
         V7QaZTfsTN1A22AD1JLQ6ldxBpwt20d+iVnUzHNxut9diw0QSp0ZbsPWW3Z19+sKiWl2
         Fvyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749651235; x=1750256035;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RqcBZPkIb1XAlT7yhanrXUBSD+HPg4xE/IZeserjlWI=;
        b=fSuvhIGP0QZ6n2MJsDWwkkjnXpx3l/J6kPEon/pj19XQrDeP55EfWX1MYFw0d1ZtoE
         K/REmI3RHXhu79hODsAFV4n8FI1kkhrKYFTk5lIOR5ZDlTnzX1LQCFcNw3JnI5wFWQu9
         ObVuGIz/AY6DY1VShFHRum0JuASpFKEjJ5j1qQYOzu1Z+I8QhqP0KjBYANuXgab7+aK4
         Cy+ZZnjjud2AHaBEx4Nnhpvp1MTisuieV7UJjhPlorvZqSkjPdbMMtIPl3qUIzE9ivlw
         UY+ZAGmDopLmIgmZlmrR5hw3xLD4bcxdFLZEtMaZy2Sujw3dh4QF+HnyiWeAae+3NQmS
         pJOw==
X-Gm-Message-State: AOJu0YxIwuy7z7rnXXl8DRWOxj9G6WRHHlg29Cn/nzRBBZFmGLhKNJQw
	95sdsk4GH6eqoYSw2wthNpO7bTv9xVO8uvax/OBjown1SAZF8hMFeCCMvs/tzVYKS+w=
X-Gm-Gg: ASbGncsNm7WS9iEQh4KfyjcNL9xMjZSIObPOEtBkR/RLq3fGAXgzXXecJD6Aqs8w7Kk
	jOY26n+PFrDjukLvrNBpKiBkMzv2kZ90LOdV573ELAmv6iYRZ7xCly0QkJEMZhVoMljqVaDDlSx
	+i0cacj9nkQwewqZteBMv2NXwghy+Gao/HjRLfeIFutNsPUzVYjhVsoeCXvYluxiog8W7J9b9dm
	mo5rsDcb39WL0zmMRIwJ4v1SYn5SR//PRhkceQblxKcCbdH5j0Yqp9VRoCI6ADWGJP4P2DXagZG
	EchE07vOTe5kt3+UsMxW37S8WCPSo6WewORVZ512TNMVRjVxUnfYpEXWMOiNl1HqvKZXwl71esm
	r8g==
X-Google-Smtp-Source: AGHT+IG4tNBD+aucBhWfBUKEg3Dc3bfeIYgipnAYpqsyHF6yLVzb+sCuNT7nPynXDkHylSrbHKoheg==
X-Received: by 2002:a05:6402:234f:b0:602:28d9:d555 with SMTP id 4fb4d7f45d1cf-60846d10b45mr3165089a12.32.1749651234967;
        Wed, 11 Jun 2025 07:13:54 -0700 (PDT)
Received: from fedorarm.. ([91.217.97.148])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-607edb5f303sm4376098a12.16.2025.06.11.07.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 07:13:54 -0700 (PDT)
From: Matteo Croce <technoboy85@gmail.com>
To: linux-man@vger.kernel.org
Cc: Nhat Pham <nphamcs@gmail.com>,
	Johannes Weiner <hannes@cmpxchg.org>,
	Matteo Croce <teknoraver@meta.com>
Subject: [PATCH v4] man/man2/cachestat.2: add a man page for cachestat()
Date: Wed, 11 Jun 2025 16:13:50 +0200
Message-ID: <20250611141350.1829-1-technoboy85@gmail.com>
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
index 000000000..084d5cd04
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
+.fi
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
+.RI [ .off ,\~ .off+.len ].
+If
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


