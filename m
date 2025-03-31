Return-Path: <linux-man+bounces-2710-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 914BBA76703
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 15:40:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E18218893A1
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 13:40:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27730212B04;
	Mon, 31 Mar 2025 13:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ct/yzjAx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9D2211A3C
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 13:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743428407; cv=none; b=ugZwAEruaHp6kW7tz+y8fVxntpeshTTLWNcuIA8+6a8CletNlbMQML71fGIxgSN6mSB92Bv+UHnh3RHMzlxldKEDZ0K4RQxV1R7+8EniTlcSgO1BUEvGekydi6w/pJ1wpXemMwQL8FNFwlC3VvQ1VVl3vO1rqR/rlxi5h+x6Ggg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743428407; c=relaxed/simple;
	bh=U6YSSM9g4G1Ty8/5UG4VBMaeBJi3HzW179X+q7HDjms=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=KXEkO3L4gwGXRhk3LDlwaIv1lWnts6YxaSHxeyM7GfzrnjogukFTIdq7tIRVD/xAFetTTS8WQi5ClKqoWfsg15ZJ3iKSKY6JRtDcOmdl6ERQaeSyA143xxkOhcqG7aQreJZJjpvymtfJOxNNpXhOREhphjyFSJHAZFc9eKVOFSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ct/yzjAx; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-39ac56756f6so3826115f8f.2
        for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 06:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743428403; x=1744033203; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ryAYAxtXD0Kut+PiZa+cegX+UfZlq1bRRiL5JR1He0g=;
        b=ct/yzjAxpc+u4X1nIxKOG+m4wKd9h1G0U0+lFWZlTSdv9L84RKq4LN49GiI8vPCk+G
         5MV8h92UBp6gA4F3PR5ji1xXRI+pdVdzLSufzfD8KEzqsZ7A7xxda2JwBkWl6aUcGZNC
         DYpGUeMIlJQUmUtrerYTnpBs+aj+DIrZXlWQY4vQ7YFWfwq+NGqm3r/XGkhYIeDrpUGD
         Z6nK7k/84iM2Vo78WjIG+6pPGmTlq+0GN1fVSDqIIJcA83cfUz6VS516c08LQh4TAJIa
         xPIWUGVTGlpjPKyLt0rSPzy3ww5DCTRAdr5G0UG6rX2bDnCWz5hG5MpjUiI8al1RPMTW
         9kxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743428403; x=1744033203;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ryAYAxtXD0Kut+PiZa+cegX+UfZlq1bRRiL5JR1He0g=;
        b=m4qED42hXsx5R9NvDyAtw539q0SHJ53uzoF5xGgkcLjevjUABv6rXO1WM7D/bOtDrj
         iKynBUjGZ96iv3EBXxEbFdP/BcvteeEDdeVR9aT5bG8Tib5IDCM2wzsQPFheU2/Y4zSM
         0MMbrd6J4dTLlSF3ZQeKpJo58PxRqKVfEHnuhf1F/9B65CUljQWcxh5YMLTKYT19PKWR
         l0wS37JSvDnInoAaFEWXTnE1E54n3C4FSBqK5pxqioTy4R4I9CvmtHZYCL159z/ND1+K
         Py4HW8nz6XJihfqHjJBk3yr9eWHbTqm6OVjPTgJO0M+hi1xAhuKyvTduW72NLCQxL+Nf
         cx2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWf36+uf4KTsY8Bmz7RZKlJTm994huntO86kbJA1cap64S3PRBejtkkNCsu6Qd0rhiPX6CVTN0Khx8=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm4BaFMLeeNle5EjLMIZkZqv6EspT0SbERYBBO98jQb9tZeF56
	YhXnWdoyjNnkZ6iFPwBLOsRhA8xR/qFDPnC9I4rXaQAjqVIJWLACGHOF1M7x
X-Gm-Gg: ASbGnct6feK0M3w9o2Rv2ne+2Q4SldyaKGxp9+wXW3nxe5WThvM1vaQNgwGmG5TkS3D
	NLTgOt3pmdFiITbwBmpk5MyWRvSDFqZQcAU/aVjJqu+ug+dbv533p+Rf3HwkEIZTyIk+W1xwm1+
	h0FyjlunIe0qUvaOVGfqbQDHWlX0W7rZQ5JcKAaIFy0fKK6h+mqFt08Qiw7HeWx3Rp/vylToZ6H
	f1vfMOQXBt0hXaKVRGLx1DjdVynbtp4of/DtGEqMkqRBx9nEbHavxVOD0E2ZRVqRa36nHTJpWWo
	CTZV8kb096B5bnHKkPhnDDkQM/hDCk+EbhQy+GePXkErSa4MdDS0Bhwx2d7Df+ZMRco4nOvpbR4
	GDZREjIM5ApERMuWsqIF8e28as3H0tADmEsajNzthEQ==
X-Google-Smtp-Source: AGHT+IEOFnmJhcBZWjnXGDmYBnBPvm7l6Aj9GkCmj90Udb7JR9puR4GvAXkyAFpbSJlmIDmJUZYJZQ==
X-Received: by 2002:a05:6000:1acd:b0:391:3124:f287 with SMTP id ffacd0b85a97d-39c120de782mr6654773f8f.16.1743428403064;
        Mon, 31 Mar 2025 06:40:03 -0700 (PDT)
Received: from amir-ThinkPad-T480.arnhem.chello.nl (92-109-99-123.cable.dynamic.v4.ziggo.nl. [92.109.99.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b7a41e8sm11498823f8f.92.2025.03.31.06.40.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 06:40:02 -0700 (PDT)
From: Amir Goldstein <amir73il@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jan Kara <jack@suse.cz>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 1/3] fanotify: Document FAN_REPORT_FD_ERROR
Date: Mon, 31 Mar 2025 15:39:57 +0200
Message-Id: <20250331133959.1436376-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This flag from v6.13 allows reporting detailed errors on failure to
open a file descriptor for an event.

This API was backported to LTS kernels v6.12.4 and v6.6.66.

Cc: Krishna Vivek Vitta <kvitta@microsoft.com>
Reviewed-by: Jan Kara <jack@suse.cz>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---

Changes from v1:
- Added RVB
- typo and format fixes

 man/man2/fanotify_init.2 | 28 ++++++++++++++++++++++++++++
 man/man7/fanotify.7      | 14 ++++++++++++++
 2 files changed, 42 insertions(+)

diff --git a/man/man2/fanotify_init.2 b/man/man2/fanotify_init.2
index fa4ae9125..bf573c6fa 100644
--- a/man/man2/fanotify_init.2
+++ b/man/man2/fanotify_init.2
@@ -364,6 +364,34 @@ so this restriction may eventually be lifted.
 For more details on information records,
 see
 .BR fanotify (7).
+.TP
+.BR FAN_REPORT_FD_ERROR " (since Linux 6.13 and 6.12.4 and 6.6.66)"
+.\" commit 522249f05c5551aec9ec0ba9b6438f1ec19c138d
+Events for fanotify groups initialized with this flag may contain
+an error code that explains the reason for failure to open a file descriptor.
+The
+.I .fd
+member of the
+.I fanotify_event_metadata
+structure normally contains
+an open file descriptor associated with the object of the event
+or FAN_NOFD in case a file descriptor could not be opened.
+For a group initialized with this flag, instead of FAN_NOFD,
+the
+.I .fd
+member of the
+.I fanotify_event_metadata
+structure will contain a negative error value.
+When the group is also initialized with flag
+.BR FAN_REPORT_PIDFD ,
+in case a process file descriptor could not be opened,
+the
+.I .pidfd
+member of the
+.I fanotify_event_info_pidfd
+structure will also contain a negative error value.
+For more details, see
+.BR fanotify (7).
 .P
 The
 .I event_f_flags
diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
index a532a963a..fd16bf294 100644
--- a/man/man7/fanotify.7
+++ b/man/man7/fanotify.7
@@ -335,6 +335,13 @@ file status flag is set on the open file description.
 This flag suppresses fanotify event generation.
 Hence, when the receiver of the fanotify event accesses the notified file or
 directory using this file descriptor, no additional events will be created.
+.IP
+When an fanotify group is initialized using
+.BR FAN_REPORT_FD_ERROR ,
+this field will contain a negative error value in case a file descriptor
+could not be opened and
+in case of a queue overflow, the value will be
+.BR \-EBADF .
 .TP
 .I pid
 If flag
@@ -679,6 +686,13 @@ Once the event listener has dealt with an event
 and the pidfd is no longer required,
 the pidfd should be closed via
 .BR close (2).
+.IP
+When an fanotify group is initialized using
+.BR FAN_REPORT_FD_ERROR ,
+this field will contain a negative error value
+in case a pidfd creation failure and
+in case of a terminated process, the value will be
+.BR \-ESRCH .
 .P
 The fields of the
 .I fanotify_event_info_error
-- 
2.34.1


