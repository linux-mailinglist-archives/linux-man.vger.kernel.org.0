Return-Path: <linux-man+bounces-1260-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 665C59170BC
	for <lists+linux-man@lfdr.de>; Tue, 25 Jun 2024 20:57:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C91E2817BC
	for <lists+linux-man@lfdr.de>; Tue, 25 Jun 2024 18:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7564117C235;
	Tue, 25 Jun 2024 18:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b="gt/+FqjM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0886158D6A
	for <linux-man@vger.kernel.org>; Tue, 25 Jun 2024 18:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719341816; cv=none; b=h13uvJFohvSdjo3WI2DbdOy7cqAz8NNWeYMZTHL2QJJ1KKATDpRUbardeqmP28XGZqnjQlqa/VIBRH7nhr+AukB5QUEVyAO4Yy9rcl6aheNzEcn3aVYvsH6joMxvePqiGTCPHxg+UwmoB216SS2Uyqk+D4W6G9xLLyEbofZzBEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719341816; c=relaxed/simple;
	bh=cPyFS29MhsjbQsEzTdqOG8AYbV9KPWslEBcXgiruLzM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gFwVLNIZX/BfjRfW1qDu+HGOPWK59v+//PBltSaloLqioF/ymSIUqqFdeRohj7tXXRyxnRxNw3sO36SkkgK0xk/4muPpKUaK25JjCge2qwIuKRqKQiZxv/MDJhhrhfurJs5jUXXIrKRHpi+UQ2JHahnydDfKB4QChT/Q51rnJN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com; spf=none smtp.mailfrom=toxicpanda.com; dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b=gt/+FqjM; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=toxicpanda.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3d55e963db5so322220b6e.2
        for <linux-man@vger.kernel.org>; Tue, 25 Jun 2024 11:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=toxicpanda-com.20230601.gappssmtp.com; s=20230601; t=1719341814; x=1719946614; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rb9wT4QSaiHaz9QBF9Tfy5DasMFtVo8sghmiqbkkuXw=;
        b=gt/+FqjMNnGPdDM+BgvN5jLcz8pIiCW9A8gBHEnhB2+DoFGmpWKoMnQM084g66cChB
         neDneM+PkbjX+rT88V0HXofsZvkpR4sfeIrrsULxn0qRBNZDPGPRNGyqWQUFrHtbNmyY
         lWonDFcwc53cizoZNCHiJ1Jzr5T+S2Zoyw/VKZ4l2CUEfkSXORpBbpOldDls/DFEbFb8
         FqEn1yENiLkImML7UMlw4uEq7biw4gsGUYXDv5c9T2ZJYIlP8K2hCCzn7AU3xEQPVOh/
         hc99sd8KX9gQjzn9k47IDR0NziQL9CMbYzTx0qg0y8styQi34x6nQrgN0SHnA6kZRjBo
         qSNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719341814; x=1719946614;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rb9wT4QSaiHaz9QBF9Tfy5DasMFtVo8sghmiqbkkuXw=;
        b=huBvHZKUYltGXUgkbACBdKu+cKVFI+xcs7EJEtjhCthnrbL8bp6kWEBCQlBoKhSYJP
         Zutp0vJE8JCvQGFCHDw18vJIGY+x6bemhtMQ1LGijE2q9OwuvK1sAgbezzeKRjnm5Exv
         UqdxIVkvwpfxU7KgDDb/DyFEFlA5pa/ttkX1Jdk5I64ECF7y99HDuna7cvHvUE/PAvti
         NE4CbhppgJm2dMGDnFTtH4k1Bo1j0VX6Iaz3x9bhW9N2+dWhLcT2VL/B2r8hvHCHrPAE
         XJ7gK1xnugVr9iuYCV6HQKiVY93/Q9R6EuDbTYIQL0kfX2SXbwXNRT1Y8A/+KvDyCfl7
         Wj3A==
X-Forwarded-Encrypted: i=1; AJvYcCWIaSBEkL/E2q65kYBUujV6mDR6LHjJKrR50nL/xwQlnm6/aLFSHrPIrdwkQIRC/kWxakY4BIxPc3IOTHboK9/Nleq4MzjDe+NM
X-Gm-Message-State: AOJu0YzHHf+qC9hixKSZ1XNQTGnRjhbqjndzur1182adVWMjtkwj9BHN
	yeJzkRU5agyHGjq5ITG7h4aMaGGo/aZ/41NO3WDKzu0h9HwfQJvgWfPBUOPQa2A=
X-Google-Smtp-Source: AGHT+IFeNUser9m9SFMDA91HJIPpG+2ywT2PBdGGK4w7tNaXp3Fls7OvSC/z3dQbtgSBWqca92mNQg==
X-Received: by 2002:a05:6808:1a21:b0:3d2:3811:bc69 with SMTP id 5614622812f47-3d543b84811mr10825652b6e.48.1719341813980;
        Tue, 25 Jun 2024 11:56:53 -0700 (PDT)
Received: from localhost (syn-076-182-020-124.res.spectrum.com. [76.182.20.124])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-444c2c3d924sm57436991cf.61.2024.06.25.11.56.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 11:56:53 -0700 (PDT)
From: Josef Bacik <josef@toxicpanda.com>
To: alx@kernel.org,
	linux-man@vger.kernel.org,
	brauner@kernel.org,
	linux-fsdevel@vger.kernel.org,
	mszeredi@redhat.com,
	kernel-team@fb.com
Subject: [PATCH 1/3] statx.2: Document STATX_MNT_ID_UNIQUE
Date: Tue, 25 Jun 2024 14:56:04 -0400
Message-ID: <a45b2623a25357f33978b49963dad5f99b984386.1719341580.git.josef@toxicpanda.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1719341580.git.josef@toxicpanda.com>
References: <cover.1719341580.git.josef@toxicpanda.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Linux 6.8 adds STATX_MNT_ID_UNIQUE support
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=98d2b43081972

Add the text and explanation to the statx man page.

Signed-off-by: Josef Bacik <josef@toxicpanda.com>
---
 man/man2/statx.2 | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/man/man2/statx.2 b/man/man2/statx.2
index 0dcf7e20b..3d5ecd651 100644
--- a/man/man2/statx.2
+++ b/man/man2/statx.2
@@ -234,7 +234,7 @@ .SH DESCRIPTION
 .I mask
 is an ORed combination of the following constants:
 .P
-.in +4n
+.in +1n
 .TS
 lB l.
 STATX_TYPE	Want stx_mode & S_IFMT
@@ -255,6 +255,7 @@ .SH DESCRIPTION
 STATX_MNT_ID	Want stx_mnt_id (since Linux 5.8)
 STATX_DIOALIGN	Want stx_dio_mem_align and stx_dio_offset_align
 	(since Linux 6.1; support varies by filesystem)
+STATX_MNT_ID_UNIQUE	Want unique stx_mnt_id (since Linux 6.8)
 .TE
 .in
 .P
@@ -410,11 +411,18 @@ .SH DESCRIPTION
 .TP
 .I stx_mnt_id
 .\" commit fa2fcf4f1df1559a0a4ee0f46915b496cc2ebf60
-The mount ID of the mount containing the file.
+If using STATX_MNT_ID, this is the mount ID of the mount containing the file.
 This is the same number reported by
 .BR name_to_handle_at (2)
 and corresponds to the number in the first field in one of the records in
 .IR /proc/self/mountinfo .
+.IP
+If using STATX_MNT_ID_UNIQUE, this is the unique mount ID of the mount
+containing the file.  This is the number reported by
+.BR listmount (2)
+and is the ID used to query the mount with
+.BR statmount (2) .
+It is guaranteed to not be reused while the system is running.
 .TP
 .I stx_dio_mem_align
 The alignment (in bytes) required for user memory buffers for direct I/O
-- 
2.43.0


