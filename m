Return-Path: <linux-man+bounces-1262-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE90B9170C2
	for <lists+linux-man@lfdr.de>; Tue, 25 Jun 2024 20:57:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D6C31C23D55
	for <lists+linux-man@lfdr.de>; Tue, 25 Jun 2024 18:57:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A850E178CFD;
	Tue, 25 Jun 2024 18:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b="LMOybjYX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0963317C7AE
	for <linux-man@vger.kernel.org>; Tue, 25 Jun 2024 18:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719341819; cv=none; b=hQUY/ivUGFdg3uhEkZXXwxI1lCKzyCCOH49v1gB532ckNLzQvNc1t14BanML+MWiQNvlQwpdFou7RdzhfVtNTFr0qSX/e0le6dy+3LWMnridCBqeSArCPoRnUswX2h/rzaI7WlGTK4X6uP2Evp2WnwBX9z/R5zlfeG8yhkv6D+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719341819; c=relaxed/simple;
	bh=dCY3e0OUWikA6esJuT04kMUFqhFWCUUw+uC84EoZem8=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iQxEMUU9gQGSTWw9tjY+6QtEPnAvkvkRbEUjjj5XzdycEfSOydfJF3t1etbXXMUHqKkuXX9dNFPyoB5aX2mES0vmUgJnz7hCwGRHCDgrb6Bsn4LINQLUp8yWkPuCUSL8wDj1/ZVkhwLE+HBBw1LCTYEl9++O8x50mJHukkhMhLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com; spf=none smtp.mailfrom=toxicpanda.com; dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b=LMOybjYX; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=toxicpanda.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6b556d6689dso5997976d6.1
        for <linux-man@vger.kernel.org>; Tue, 25 Jun 2024 11:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=toxicpanda-com.20230601.gappssmtp.com; s=20230601; t=1719341816; x=1719946616; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v1jr6BdqGpDo32AhsO8LnS3krEzwCc+6umTuLztF2Uw=;
        b=LMOybjYXcEiMPFP72vT4t2Y6gVypK+dmq97e0qOjQ2K3/EzhFcfsx9BldD3e1m8MRR
         guysJCBTduzhUH0SDkhp8mHYHRwr4OjwRCDVfCECmfvkAmxgOcXubp9sNg1QkF8PUpLu
         vbWfRX5rA22hj36QjqqlIoXsLcrpdT2mQjSfmoVf6mviz8vZipgsYrFm1TaFWZvz+qYK
         qYqLWBNTjt0RMXWs1fxXL1UdFcDdDh4zp7TIXOU1m2VjJmpXmWpsYcjQxP8Ct69mvhb6
         iTBRdKBDZqxw0D9X2yx/Xdu9XWTHenQWZUSnTcQG4fhj/oSB9BeT3ugdTakPiGibSFeF
         8GnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719341816; x=1719946616;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v1jr6BdqGpDo32AhsO8LnS3krEzwCc+6umTuLztF2Uw=;
        b=iiCRT16BdpHkVa5jIWgGa8V8fM5ZZDNikoQKAn7IDYLJ59ZQ0Ka+/+3QAI+ijm82fy
         IMQGOrE6LYd0dXv2+G3UMIHC9E1TRWzdUZWYzS6PSxLWzGnC/YGGjMf1ksYgIgGoxWPL
         z1JlKjrjYVup1edXwoxZNSsLiDWnyOPoVW+KDTiUREfgZCNRMyRKQuFMsmv6VcQbzuYm
         iO+qnT6hcKNPQk5o/ncWQSTLrLKESHTceqOrsu/WBZNzsG/+2eeNnei8UEWfDpxLi132
         fU73dUZFuRuHccTS6pJW+PnhfPx2s4vsgiHh5PxSPbncNORJlYDK3l1r+A1s4xUv1MaK
         KSVw==
X-Forwarded-Encrypted: i=1; AJvYcCVZsxc63ehz8TK+9om/x27P54ZecYeusluZBvDaTotBZEVQJ7m/hAKuNQfZ3VIWn/Mm3IbVDezwBAxxO8n7k60TUdqy/Z6yOz/q
X-Gm-Message-State: AOJu0Ywpj1Kz2J+LZtzQPz7dK97DBGJQkx06msuU8eAAheJLuAm/sBaG
	UYfwlktqk2csMZPY5kwl+OHLJ2Rjz6sUxY3xUACr8dbfEg3SeQiyHRnbB9vuhyQ=
X-Google-Smtp-Source: AGHT+IFhM4sr/45vUWDgEV/xCw14F/DTI4fmWKd+auo6Ag/2o3iXetzGLHBiXi/BDeFAy43qD781TA==
X-Received: by 2002:ad4:5c4e:0:b0:6b0:86ab:feaf with SMTP id 6a1803df08f44-6b540aaa87cmr116158676d6.48.1719341816046;
        Tue, 25 Jun 2024 11:56:56 -0700 (PDT)
Received: from localhost (syn-076-182-020-124.res.spectrum.com. [76.182.20.124])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b52b16e9basm38236256d6.6.2024.06.25.11.56.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 11:56:55 -0700 (PDT)
From: Josef Bacik <josef@toxicpanda.com>
To: alx@kernel.org,
	linux-man@vger.kernel.org,
	brauner@kernel.org,
	linux-fsdevel@vger.kernel.org,
	mszeredi@redhat.com,
	kernel-team@fb.com
Subject: [PATCH 3/3] listmount.2: New page describing the listmount syscall
Date: Tue, 25 Jun 2024 14:56:06 -0400
Message-ID: <b41e954c5050d1bcf7a620ddb186d9ccd02e3c7a.1719341580.git.josef@toxicpanda.com>
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

Add some documentation for the new listmount syscall.

Signed-off-by: Josef Bacik <josef@toxicpanda.com>
---
 man/man2/listmount.2 | 107 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 107 insertions(+)
 create mode 100644 man/man2/listmount.2

diff --git a/man/man2/listmount.2 b/man/man2/listmount.2
new file mode 100644
index 000000000..442125a5c
--- /dev/null
+++ b/man/man2/listmount.2
@@ -0,0 +1,107 @@
+'\" t
+.\" Copyright (c) 2024 Josef Bacik <josef@toxicpanda.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH listmount 2 (date) "Linux man-pages (unreleased)"
+.SH NAME
+listmount \- get a list of mount ID's
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/mount.h>" "  /* Definition of struct mnt_id_req constants */"
+.B #include <unistd.h>
+.P
+.BI "int syscall(SYS_listmount, struct mnt_id_req * " req ,
+.BI "            u64 * " mnt_ids ", size_t " nr_mnt_ids ,
+.BI "            unsigned long " flags " );
+.P
+.EX
+.B struct mnt_id_req {
+.BR "    __u32 size;" "    /* sizeof(struct mnt_id_req) */"
+.BR "    __u64 mnt_id;" "  /* The parent mnt_id being searched */"
+.BR "    __u64 param;" "   /* The next mnt_id we want to find */"
+.B };
+.EE
+.fi
+.P
+.IR Note :
+glibc provides no wrapper for
+.BR listmount (),
+necessitating the use of
+.BR syscall (2).
+.SH DESCRIPTION
+To access the mounts in your namespace , you must have CAP_SYS_ADMIN in the user
+namespace.
+.P
+This function returns a list of mount IDs under the
+.BR req.mnt_id .
+This is meant to be used in conjuction with
+.BR statmount (2)
+in order to provide a way to iterate and discover mounted file systems.
+.SS The mnt_id_req structure
+.I req.size
+is used by the kernel to determine which struct
+.I mnt_id_req
+is being passed in, it should always be set to sizeof(struct mnt_id req).
+.P
+.I req.mnt_id
+is the parent mnt_id that we will list from, which can either be
+.B LSMT_ROOT
+which means the root mount of the current mount namespace, or a mount ID
+obtained from either
+.BR statx (2)
+using
+.B STATX_MNT_ID_UNIQUE
+or from
+.BR listmount (2) .
+.P
+.I req.param
+is used to tell the kernel what mount ID to start the list from.  This is
+useful if multiple calls to
+.BR listmount (2)
+are required. This can be set to the last mount ID returned + 1 in order to
+resume from a previous spot in the list.
+.SH RETURN VALUE
+On success, the number of entries filled into
+.I mnt_ids
+is returned, 0 if there are no more mounts left.  On error, \-1 is returned, and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+.TP
+.B EPERM
+Permission is denied for accessing this mount.
+.TP
+.B EFAULT
+.I req
+or
+.I mnt_ids
+is NULL or points to a location outside the process's
+accessible address space.
+.TP
+.B EINVAL
+Invalid flag specified in
+.IR flags .
+.TP
+.B EINVAL
+.I req
+is of insufficient size to be utilized.
+.B E2BIG
+.I req
+is too large, the limit is the architectures page size.
+.TP
+.B ENOENT
+The specified
+.I req.mnt_id
+doesn't exist.
+.TP
+.B ENOMEM
+Out of memory (i.e., kernel memory).
+.SH STANDARDS
+Linux.
+.SH SEE ALSO
+.BR statmount (2),
+.BR statx (2)
-- 
2.43.0


