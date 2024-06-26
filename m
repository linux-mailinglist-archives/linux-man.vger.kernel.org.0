Return-Path: <linux-man+bounces-1276-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC16918E30
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 20:22:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DFB881C21C8D
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 18:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EA5819066F;
	Wed, 26 Jun 2024 18:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b="Aspfz82s"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5375B19049D
	for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 18:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719426127; cv=none; b=Uiah11EFf4FHnwaeSvypIpQ3JNGP2ZHYseja5uaSbnseElULHg8dwk6HmRqAr9S6xCrLnsn/5SU4f1xJKBfACMsF/NeC5sA4ItUMPGn8x6xe1aM5Vp/Ksw0etQEQWDMLV0Bdubp4vWWuEDTpgP5YwT7GlyvwL/ahKnHC6SaDi48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719426127; c=relaxed/simple;
	bh=L5CalG7p2tPbyKoLDPru/hFh+9ET2V97InDJ1QwLqBI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o4Hu0k9wt+d/QT9U1Yfxsq/nIPxI32csv1RND32q9/RalRstA59h6iC+XghS0dNySwPvjAyn3LL0GyjxgeQu57KrZ+jmvIZ8gS5WE6zJfN4fgVqxF6Ih5BAH25mxvIgKbUsGr3rhic3WPHLbjUUnzwrd/Lo+TfZTJHCQJlEG+t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com; spf=none smtp.mailfrom=toxicpanda.com; dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b=Aspfz82s; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=toxicpanda.com
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6b5253ffd24so20829596d6.2
        for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 11:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=toxicpanda-com.20230601.gappssmtp.com; s=20230601; t=1719426124; x=1720030924; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E4xo2N8ZD04dRnJhB6Mrix3bddB89W6bZcFgqoHvz9g=;
        b=Aspfz82sZGn9GetzDFoK3pd39n6RNbuYTQcR96oRIx0Th+NKkE2TVXR9gONmkNIivR
         Ji3ZUD1nkinbzqeG9GElpqoGbJSu87QKqk9rQ15mcXmbCRnzxvjJbJ85cAm3D072EH0e
         moKvxjA7piKN9FovPGUg0wHQ6i2ITIVMSS1bDuRhC0l0zrR7c7T1FQY6WsG3NFMZ7ZQj
         5kGlbpK8k6UzHlbi9J00hExzUuYFPnq+Cvglq8JU20LfLBVKrRoHn5saCAlKxFZ4dA+g
         +X5qJVGpCtsIGhsZGV0PDA8Nc9K5ufUATj7VHB8w8edZklPphMaXoNcHyqAIZAj2qbeP
         lhiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719426124; x=1720030924;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E4xo2N8ZD04dRnJhB6Mrix3bddB89W6bZcFgqoHvz9g=;
        b=kn35ERuLvUHNuFbDkijIo4BwwjyvwkZrh89LZ3tFbYUhDjrpHzr0or0zNnt85e08VU
         bFVY2G5yE2IdSY0XyyQMWXv0SHEtRMhTGEGjOyA34wC59X0hUzdeMdh7KrGkyvesPP25
         3utNuD+A1NadyCrl6dkYH0QADmXSLZQr9i1IT0fR1qi1zUbn93swsf8rRtt2r+dDu4Hh
         wCJDj2P3cmOBz2hau9ceCf5wbDfruMsUkXBz73rQlYb3MyCB0HSt90ysgw+GtQ3BGFzW
         Vw6uf4r2TJI3h6JHRBUuxaUmHqJgI9c3uzwYcN0EID8KvRzZPY7eUSlM8z1FVXM217Qe
         iVig==
X-Forwarded-Encrypted: i=1; AJvYcCVfMM7f4WJ/UZNgScmZjgYm6Z+99TvZjc82lt7Thtpw55p080rIg2b0f77Irtr05/8+shGyd4z5gNc8njDhG3WTczx5stPISkf7
X-Gm-Message-State: AOJu0YyOsNuvxiOXmxxvqqv6b+AvMm4eXw8vpU+xwgvKJCnStENtyYGy
	aNMnUAnbJjWO0U7vkJWFSlOjSRO8CFqhfP2NWEC5ZBoTU1/fbcEdXGUxjQVayKU=
X-Google-Smtp-Source: AGHT+IHcepKvAPTOl5R8JUglzf2ea5OPzIoAx5wmnSZhIRmbLv1a0DF2E07xtnm6PSoCQxznui933Q==
X-Received: by 2002:a05:6214:4a4f:b0:6b0:89a8:5704 with SMTP id 6a1803df08f44-6b5366878b1mr106692296d6.65.1719426124170;
        Wed, 26 Jun 2024 11:22:04 -0700 (PDT)
Received: from localhost (syn-076-182-020-124.res.spectrum.com. [76.182.20.124])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b51ed6dca8sm56084676d6.63.2024.06.26.11.22.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 11:22:02 -0700 (PDT)
From: Josef Bacik <josef@toxicpanda.com>
To: alx@kernel.org,
	linux-man@vger.kernel.org,
	brauner@kernel.org,
	linux-fsdevel@vger.kernel.org,
	mszeredi@redhat.com,
	kernel-team@fb.com
Subject: [PATCH v3 1/2] statmount.2: New page describing the statmount syscall
Date: Wed, 26 Jun 2024 14:21:39 -0400
Message-ID: <e202b85c695e90547c75e87d89d9bf1a9b999960.1719425922.git.josef@toxicpanda.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1719425922.git.josef@toxicpanda.com>
References: <cover.1719425922.git.josef@toxicpanda.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add some documentation on the new statmount syscall.

Signed-off-by: Josef Bacik <josef@toxicpanda.com>
---
 man/man2/statmount.2 | 285 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 285 insertions(+)
 create mode 100644 man/man2/statmount.2

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
new file mode 100644
index 000000000..2f85bc022
--- /dev/null
+++ b/man/man2/statmount.2
@@ -0,0 +1,285 @@
+'\" t
+.\" Copyright (c) 2024 Josef Bacik <josef@toxicpanda.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH statmount 2 (date) "Linux man-pages (unreleased)"
+.SH NAME
+statmount \- get a mount status
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/mount.h>" "  /* Definition of STATMOUNT_* constants */"
+.B #include <unistd.h>
+.P
+.BI "int syscall(SYS_statmount, struct mnt_id_req * " req ,
+.BI "            struct statmount * " statmountbuf ", size_t " bufsize ,
+.BI "            unsigned long " flags );
+.P
+.B #include <linux/mount.h>
+.P
+.B struct mnt_id_req {
+.BR "    __u32 size;" "    /* sizeof(struct mnt_id_req) */"
+.BR "    __u64 mnt_id;" "  /* The mnt_id being queried */"
+.BR "    __u64 param;" "   /* An ORed combination of the STATMOUNT_ constants */"
+.B };
+.P
+.B struct statmount {
+.B "    __u32 size;"
+.B "    __u64 mask;"
+.B "    __u32 sb_dev_major;"
+.B "    __u32 sb_dev_minor;"
+.B "    __u64 sb_magic;"
+.B "    __u32 sb_flags;"
+.B "    __u32 fs_type;"
+.B "    __u64 mnt_id;"
+.B "    __u64 mnt_parent_id;"
+.B "    __u32 mnt_id_old;"
+.B "    __u32 mnt_parent_id_old;"
+.B "    __u64 mnt_attr;"
+.B "    __u64 mnt_propagation;"
+.B "    __u64 mnt_peer_group;"
+.B "    __u64 mnt_master;"
+.B "    __u64 propagate_from;"
+.B "    __u32 mnt_root;"
+.B "    __u32 mnt_point;"
+.B "    char  str[];"
+.B };
+.fi
+.P
+.IR Note :
+glibc provides no wrapper for
+.BR statmount (),
+necessitating the use of
+.BR syscall (2).
+.SH DESCRIPTION
+To access a mount's status,
+you must have CAP_SYS_ADMIN in the user namespace.
+.P
+This function returns information about a mount,
+storing it in the buffer pointed to by
+.IR statmountbuf .
+The returned buffer is a
+.I struct statmount
+with the fields filled in as described below.
+.P
+(Note that reserved space and padding is omitted.)
+.SS The mnt_id_req structure
+.I req.size
+is used by the kernel to determine which struct
+.I mnt_id_req
+is being passed in,
+it should always be set to sizeof(struct mnt_id req).
+.P
+.I req.mnt_id
+can be obtained from either
+.BR statx (2)
+using
+.B STATX_MNT_ID_UNIQUE
+or from
+.BR listmount (2)
+and is used as the identifier to query the status of the desired mount point.
+.P
+.I req.param
+is used to tell the kernel which fields the caller is interested in.
+It is an ORed combination of the following constants
+.P
+.in +4n
+.TS
+lBl.
+STATMOUNT_SB_BASIC	/* Want/got sb_... */
+STATMOUNT_MNT_BASIC	/* Want/got mnt_... */
+STATMOUNT_PROPAGATE_FROM	/* Want/got propagate_from */
+STATMOUNT_MNT_ROOT	/* Want/got mnt_root  */
+STATMOUNT_MNT_POINT	/* Want/got mnt_point */
+STATMOUNT_FS_TYPE	/* Want/got fs_type */
+.TE
+.in
+.P
+Note that,
+in general,
+the kernel does
+.I not
+reject values in
+.I req.param
+other than the above.
+(For an exception,
+see
+.B EINVAL
+in errors.)
+Instead,
+it simply informs the caller which values are supported
+by this kernel and filesystem via the
+.I statmount.mask
+field.
+Therefore,
+.I "do not"
+simply set
+.I req.param
+to
+.B UINT_MAX
+(all bits set),
+as one or more bits may,
+in the future,
+be used to specify an extension to the buffer.
+.SS The returned information
+The status information for the target mount is returned in the
+.I statmount
+structure pointed to by
+.IR statmountbuf .
+Included in this is
+.I size
+which indicates the size of the
+.I statmountbuf
+that was filled in,
+including any strings.
+.I mask
+which indicates what information in the structure has been filled in.
+.P
+It should be noted that the kernel may return fields that weren't requested
+and may fail to return fields that were requested,
+depending on what the backing file system and kernel supports.
+In either case,
+.I req.param
+will not be equal to
+.IR mask .
+.P
+Apart from
+.I mask
+(which is described above),
+the fields in the
+.I statmount
+structure are:
+.TP
+.I size
+The size of the returned
+.I statmountbuf
+structure.
+.TP
+.I sb_dev_major
+.TQ
+.I sb_dev_minor
+The device that is mounted at this mount point.
+.TP
+.I sb_magic
+The file system specific super block magic.
+.TP
+.I sb_flags
+The flags that are set on the super block,
+an ORed combination of
+.BR SB_RDONLY ,
+.BR SB_SYNCHRONOUS ,
+.BR SB_DIRSYNC ,
+.BR SB_LAZYTIME .
+.TP
+.I fs_type
+The offset to the location in the
+.I statmount.str
+buffer that contains the string representation of the mounted file system. It is
+a null-terminated string.
+.TP
+.I mnt_id
+The unique mount ID of the mount.
+.TP
+.I mnt_parent_id
+The unique mount ID of the parent mount point of this mount.
+If this is the root mount point then
+.IR mnt_id\~==\~parent_mount_id .
+.TP
+.I mnt_id_old
+This corresponds to the mount ID that is exported by
+.IR /proc/ pid /mountinfo .
+.TP
+.I mnt_parent_id_old
+This corresponds to the parent mount ID that is exported by
+.IR /proc/ pid /mountinfo .
+.TP
+.I mnt_attr
+The
+.B MOUNT_ATTR_
+flags set on this mount point.
+.TP
+.I mnt_propagation
+The mount propagation flags,
+which can be one of
+.BR MS_SHARED ,
+.BR MS_SLAVE ,
+.BR MS_PRIVATE ,
+.BR MS_UNBINDABLE .
+.TP
+.I mnt_peer_group
+The ID of the shared peer group.
+.TP
+.I mnt_master
+The mount point receives its propagation from this mount ID.
+.TP
+.I propagate_from
+The ID from the namespace we propagated from.
+.TP
+.I mnt_root
+The offset to the location in the
+.I statmount.str
+buffer that contains the string representation of the mount relative to the root
+of the file system.
+It is a NULL terminated string.
+.TP
+.I mnt_point
+The offset to the location in the
+.I statmount.str
+buffer that contains the string representation of the mount relative to the
+current root (ie if you are in a
+.BR chroot ).
+It is a NULL terminated string.
+.SH RETURN VALUE
+On success, zero is returned.
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
+.I statmountbuf
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
+is too large,
+the limit is the architectures page size.
+.TP
+.B EOVERFLOW
+The size of
+.I statmountbuf
+is too small to contain either the
+.IR statmountbuf.fs_type ,
+.IR statmountbuf.mnt_root ,
+or
+.IR statmountbuf.mnt_point .
+Allocate a larger buffer and retry the call.
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
+.BR listmount (2),
+.BR statx (2)
-- 
2.43.0


