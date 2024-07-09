Return-Path: <linux-man+bounces-1414-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C4492C34F
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 20:32:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6A841F24145
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 18:32:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01E5E182A49;
	Tue,  9 Jul 2024 18:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b="oAXoGyvn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598F32AEE1
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 18:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720549910; cv=none; b=IdRzcRZwGb0lFfgD32vK89drm3nA7pgMzow5Co/KQtGU6XTlwANj9xQz8Jk+h3nIpr/OVsciDHTj/QDwmLLGrkPfqwPGHttCULo+s/dtqg+aeZBW3GkghrV/noQbeMd8MKrmKPxySAxqAOEDXcn4INEXue3nKfaskVg3jgR8PYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720549910; c=relaxed/simple;
	bh=+ybtD3rMW9x9U4NvEo/lnHiCh/HjbONJxCdCw6p9SDo=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZJw2VDKdsXisbrdz/t/Dxt/evbNy2qVqlw4Xc19pD18Yf0TsidN0gI8kbEov61eE34o04spP5Q8RXgaTLnBzlaQgcK94GZHle3Qx2DpvqUdijoM2/W/xtw64qs5Uxoi15UjXaLp85d4Z/b4WvdmTQzfsZtcM2w2w7U9CK7iY0Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com; spf=none smtp.mailfrom=toxicpanda.com; dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b=oAXoGyvn; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=toxicpanda.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6b553b1a159so32414786d6.0
        for <linux-man@vger.kernel.org>; Tue, 09 Jul 2024 11:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=toxicpanda-com.20230601.gappssmtp.com; s=20230601; t=1720549908; x=1721154708; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kmv1mjjvcYUl96SA0qF10FvJXvlumaF/KianBCDo0wM=;
        b=oAXoGyvn/1HEXF9VMmZGzuRW2Y8K8P/pbbmL93LwNNDFU3PatqkrD/3gMyq2oa5oRC
         lyrYYDtIbSFnrJHGpGtTRLQLVcSDFCFjDyJHJwJYXNcbYryDq8ZcPWBSQynloYCFPRUG
         KdSnnJH/tplQIiRXyzyttGCDMbgQ2eAAl5zVIVDKAOJDijRZlPpxoTMLki/Rq2iHT/On
         qEPgdBtI8xBx2JDYwBQkQfYs2+98AoTIhJD5z3zUesZ5/dYNViaSSvDQt5JMC8M27ugt
         xdDOKPmRMVOFCmTadC+zrIwiKq2hG3QNDnJAMtXpP0F4IUnBRqMGMgjHnVy6C5sK7E7T
         HFqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720549908; x=1721154708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kmv1mjjvcYUl96SA0qF10FvJXvlumaF/KianBCDo0wM=;
        b=WjfH37yrnuv/vJ/uxsrUykBBUM1ZDq88EE2+TJJqOTkTWB3rKsOPpoXU4TkSLTDpRV
         cim8ADFAxLCoHjJWtvNfPl1zIMfobZWIuufqoPImdeyC+cYAM+wdDRstP/nvkue0d113
         RdUyR8SpdkXAkg9mjrpWyy7YzjmVPpcc9kyvcUIeA8BYDA4hbrYADOOroMhz7wa5xl24
         Wq9sK1lv/bwAIM1oV4grgNg/QWvh91OuOtUiVrWMln0YQAK7hgkYXletI/wqVI/9vE7A
         ZnD0VlJ8gP7It+7hwtyfCXlw4VaWkIwOICqT4URlLW/bYYNEk/bf/KejsYPJsQuq+iNQ
         EHwQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4zz33DkcsLPxYcB1/BLTXaEzTwKu9U1uzhfCedNaWkx5lUgdVUX8L26YVlklZeMA+TQqaE7ESYVlMguH6U4t0/2YhGc6YNj2W
X-Gm-Message-State: AOJu0Yx6CDe0SG8XXzfkwUNMf2ct9JSeZP22jIQC5W2bJJ4G9+wqzevj
	40hkxveDd992YkTAdTCOducJqGUybc8TILTzdO+tXZnzkgtOeSP/ZW1g36GSLYI=
X-Google-Smtp-Source: AGHT+IHwHbMvPEG+jjklGKP7Cp+EsbiS/jg4Nma8VIZ1FJkn9fWGoOKV8ISChPbVE9wOQk+cHIvVrA==
X-Received: by 2002:a05:6214:20a7:b0:6b5:83bb:11b5 with SMTP id 6a1803df08f44-6b61bc8472bmr42991446d6.9.1720549908267;
        Tue, 09 Jul 2024 11:31:48 -0700 (PDT)
Received: from localhost (syn-076-182-020-124.res.spectrum.com. [76.182.20.124])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b61ba1587asm10915786d6.70.2024.07.09.11.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 11:31:47 -0700 (PDT)
From: Josef Bacik <josef@toxicpanda.com>
To: alx@kernel.org,
	linux-man@vger.kernel.org,
	brauner@kernel.org,
	linux-fsdevel@vger.kernel.org,
	mszeredi@redhat.com,
	kernel-team@fb.com
Subject: [PATCH v6 2/2] listmount.2: New page describing the listmount syscall
Date: Tue,  9 Jul 2024 14:31:23 -0400
Message-ID: <2d72a44fa49f47bd7258d7efb931926b26de4004.1720549824.git.josef@toxicpanda.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1720549824.git.josef@toxicpanda.com>
References: <cover.1720549824.git.josef@toxicpanda.com>
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
 man/man2/listmount.2 | 112 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 112 insertions(+)
 create mode 100644 man/man2/listmount.2

diff --git a/man/man2/listmount.2 b/man/man2/listmount.2
new file mode 100644
index 000000000..212929fb6
--- /dev/null
+++ b/man/man2/listmount.2
@@ -0,0 +1,112 @@
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
+.BI "            unsigned long " flags );
+.P
+.B #include <linux/mount.h>
+.P
+.B struct mnt_id_req {
+.BR "    __u32 size;" "    /* sizeof(struct mnt_id_req) */"
+.BR "    __u64 mnt_id;" "  /* The parent mnt_id being searched */"
+.BR "    __u64 param;" "   /* The next mnt_id we want to find */"
+.B };
+.fi
+.P
+.IR Note :
+glibc provides no wrapper for
+.BR listmount (),
+necessitating the use of
+.BR syscall (2).
+.SH DESCRIPTION
+To access the mounts in your namespace,
+you must have CAP_SYS_ADMIN in the user namespace.
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
+is being passed in,
+it should always be set to sizeof(struct mnt_id req).
+.P
+.I req.mnt_id
+is the parent mnt_id that we will list from,
+which can either be
+.B LSMT_ROOT
+which means the root mount of the current mount namespace,
+or a mount ID obtained from either
+.BR statx (2)
+using
+.B STATX_MNT_ID_UNIQUE
+or from
+.BR listmount (2) .
+.P
+.I req.param
+is used to tell the kernel what mount ID to start the list from.
+This is useful if multiple calls to
+.BR listmount (2)
+are required.
+This can be set to the last mount ID returned + 1 in order to
+resume from a previous spot in the list.
+.SH RETURN VALUE
+On success, the number of entries filled into
+.I mnt_ids
+is returned, 0 if there are no more mounts left.
+On error, \-1 is returned, and
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
+points to a location outside the process's accessible
+address space.
+.TP
+.B EINVAL
+Invalid flag specified in
+.IR flags .
+.TP
+.B EINVAL
+.I req
+is of insufficient size to be utilized.
+.TP
+.B E2BIG
+.I req
+is too large,
+the limit is the architectures page size.
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


