Return-Path: <linux-man+bounces-2709-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D05A8A76702
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 15:40:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88FA6188A46F
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 13:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A72C7212B1B;
	Mon, 31 Mar 2025 13:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y8JOndRA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5D21DED56
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 13:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743428407; cv=none; b=G6lqFK/xdLJpgC5ptxin2aPsFDanb1WkE1ODIj5+LytogcIIvL000cYHY5t3rHkjsVnEggJJwtk1o7j4gELaBviNHX0cxGdBjdJPkmcWwSb7KUgPNcGz5XhXLsU/UloiAknRiNTqItXxEtMW/Xy7ZyY5Rea9HqMs4iqgB9P2/NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743428407; c=relaxed/simple;
	bh=QFb2cjzAtDnZ24uEHdAK0NI1bGSCXO1MNR+W+/6K5yc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QCDqEoF2ldm0let97EKaSedUZ6+rkvi5hkcoEf7A93OXXLuliOMAUVZd0lLIl0WRl/gLFHsDYb5PrK8vRPQNFZKoM8bovLPI08nEViRRHKWQoeGHCuUumk+Yk/28gIor1ElMC7pMZ6hctIJN43V8bY/JjUs8ZvZIAjA+E3sbW8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y8JOndRA; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-39c1ee0fd43so433523f8f.0
        for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 06:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743428404; x=1744033204; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ICvjY9epGUUckKQEJkNZAZFI+uyzFSGVayDZJ9Egd/E=;
        b=Y8JOndRAJRCwY+r1E5bv3wPVUK+uVLgZP1UnXQs+GFkGaSxEmS9pWsUpo9cXfKDFaW
         FsWGHTh5iWFMKlEUO3ZhFiu9euad4N6q0wRhzICeKdymW+PCiZwfeMj3W1us/R2TbzmP
         YWBEELO0L4uArcEgL1225HBqYbhvXQXfdxQLilLy2ccqkZiZ6OdL/H89FtNYhKmtRnV9
         vU3swsbDtlQVtT04SWXzx4rJIMPb6VnDuHqyTI1lce4grso3aZSMO1nWL/yUskkILZwY
         W27MzABFl8uZmKb7b3/SDxjniS85HRyVjI6BiZt88aPLLRSxJ201Dic1fHCl1/O5YsSu
         bRGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743428404; x=1744033204;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ICvjY9epGUUckKQEJkNZAZFI+uyzFSGVayDZJ9Egd/E=;
        b=s1bjsAaJwrpbwj7OYWMprzitHtD4BMnh016S/GmuO3eT+oBMeyPaS0h2A0MBAMeCNG
         Rzj5wrqunUOUn+zAb/jhmz43St/iuoefR4qMj/Eq39a1CHDbAAsbpVqUTi43c2gbXjun
         MnNHRugU20NDBnjPeM6ZB0wXIIXsoEbpkS9EMtILdZr0mVsGPCm1LYRYqwxGRSaIjaW8
         Oa8aBxuQEYvHYUVPUKrHwZtlMJed+f0tjnSSpt2mXbYy1QLj6/jBvJYBGp2Pz7I+S2dG
         aHvAQIvqUaRofSRQjtbOmdmRZPmhmk9YMZp7O5rE3uYEHx9Pm6f/Ok9F+vBmt1bh9nWh
         Gphg==
X-Forwarded-Encrypted: i=1; AJvYcCXFZidPQXtG6VRpur41SQBP1USBwHJpk/iNSjshsQ6HZiUSO9MgW/D+kEk0qe2cTyGE4sjafo74kOQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YzB6zAVjTGO59JVQGZJP9EV5LDurcDjqTu2bOJQ1HMQQ9dGchTW
	LE9f8DHWB99QVZyQ5zyEhcm7n2NZgDmY2oUtE27Qn1rauTdZqdwG
X-Gm-Gg: ASbGnctj7LxSJZzTC0cDfE5VG/OtQLxe0DdpJ+uiDluKvWgl/lLuQ/Ki+UsHeggDe7G
	759UQXhUHEhKQYjQw5irQxbkkEXwXSLcMbcydwZXkv3SdLOgI3d/pM5hJ3tdS3Mnm0wSBr788o9
	vvaiUiL0OsDLWBgUeoXB6vl0vNor7vuN/OI7jRZPyHjC8QqWGpdPTC/vYd4CeEO1oUmUzQjP5yQ
	V7MIOKczNdNK8pzEmbEOMmdIdeD4M8kMmp4QOYqtsi8+aAQKsBNZbxg3LjpvIcUlqLRFX04NiIx
	qPVH+443aplVdUtpW5nCgjwQzZp2x6lRuvbfmaSGR5i62W+MNAd+qEZxwr0Fhd9rpRW4SXMcjce
	N0j2c4M1MGiB3nWFk9eK0VT09VZRgEMRp/Emgf06wKw==
X-Google-Smtp-Source: AGHT+IEf4spPTSx7xPamAKN3O10Wi88tFHGwQNK0Qlp6sDkuTa5xAIJ+eIM4GtNzHAQb7BJSnX4vYA==
X-Received: by 2002:a05:6000:184e:b0:39c:12ce:8f4 with SMTP id ffacd0b85a97d-39c12ce0e08mr6721900f8f.18.1743428403681;
        Mon, 31 Mar 2025 06:40:03 -0700 (PDT)
Received: from amir-ThinkPad-T480.arnhem.chello.nl (92-109-99-123.cable.dynamic.v4.ziggo.nl. [92.109.99.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b7a41e8sm11498823f8f.92.2025.03.31.06.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 06:40:03 -0700 (PDT)
From: Amir Goldstein <amir73il@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jan Kara <jack@suse.cz>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 2/3] fanotify: Fixes for documentation of FAN_FS_ERROR
Date: Mon, 31 Mar 2025 15:39:58 +0200
Message-Id: <20250331133959.1436376-2-amir73il@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250331133959.1436376-1-amir73il@gmail.com>
References: <20250331133959.1436376-1-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

FAN_EVENT_INFO_TYPE_ERROR was missing from the list of info types.

The order of FAN_FS_ERROR entry in the event section was rather
arbitrary inside the group of fid info events.

FAN_FS_ERROR is a special event with error info, so place its entry
after the entries for fid info events and before the entries for
permission events.

Reduce unneeded newlines in the FAN_FS_ERROR entry.

Cc: Jan Kara <jack@suse.cz>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---

Alejandro,

This unrelated cleanup was plit out of the FAN_PRE_ACCESS
patch and I have also added some extra cleanup in preparation for
adding mount events.

If you were going to re-organize the section describing the different
extra event info types, maybe better doing this after merging the new
types from v6.14: FAN_EVENT_INFO_TYPE_RANGE and FAN_EVENT_INFO_TYPE_MNT.

Thanks,
Amir.

 man/man2/fanotify_mark.2 | 44 +++++++++++++++++++---------------------
 man/man7/fanotify.7      |  7 ++++---
 2 files changed, 25 insertions(+), 26 deletions(-)

diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
index 47cafb21c..1d132fa1a 100644
--- a/man/man2/fanotify_mark.2
+++ b/man/man2/fanotify_mark.2
@@ -362,29 +362,6 @@ Create an event when a marked file or directory itself is deleted.
 An fanotify group that identifies filesystem objects by file handles
 is required.
 .TP
-.BR FAN_FS_ERROR " (since Linux 5.16, 5.15.154, and 5.10.220)"
-.\" commit 9709bd548f11a092d124698118013f66e1740f9b
-Create an event when a filesystem error
-leading to inconsistent filesystem metadata is detected.
-An additional information record of type
-.B FAN_EVENT_INFO_TYPE_ERROR
-is returned for each event in the read buffer.
-An fanotify group that identifies filesystem objects by file handles
-is required.
-.IP
-Events of such type are dependent on support
-from the underlying filesystem.
-At the time of writing,
-only the
-.B ext4
-filesystem reports
-.B FAN_FS_ERROR
-events.
-.IP
-See
-.BR fanotify (7)
-for additional details.
-.TP
 .BR FAN_MOVED_FROM " (since Linux 5.1)"
 .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
 Create an event when a file or directory has been moved from a marked
@@ -418,6 +395,27 @@ Create an event when a marked file or directory itself has been moved.
 An fanotify group that identifies filesystem objects by file handles
 is required.
 .TP
+.BR FAN_FS_ERROR " (since Linux 5.16, 5.15.154, and 5.10.220)"
+.\" commit 9709bd548f11a092d124698118013f66e1740f9b
+Create an event when a filesystem error
+leading to inconsistent filesystem metadata is detected.
+An additional information record of type
+.B FAN_EVENT_INFO_TYPE_ERROR
+is returned for each event in the read buffer.
+An fanotify group that identifies filesystem objects by file handles
+is required.
+Events of such type are dependent on support
+from the underlying filesystem.
+At the time of writing,
+only the
+.B ext4
+filesystem reports
+.B FAN_FS_ERROR
+events.
+See
+.BR fanotify (7)
+for additional details.
+.TP
 .B FAN_OPEN_PERM
 Create an event when a permission to open a file or directory is requested.
 An fanotify file descriptor created with
diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
index fd16bf294..614410cd9 100644
--- a/man/man7/fanotify.7
+++ b/man/man7/fanotify.7
@@ -395,9 +395,6 @@ A child file or directory was deleted in a watched parent.
 .B FAN_DELETE_SELF
 A watched file or directory was deleted.
 .TP
-.B FAN_FS_ERROR
-A filesystem error was detected.
-.TP
 .B FAN_RENAME
 A file or directory has been moved to or from a watched parent directory.
 .TP
@@ -425,6 +422,9 @@ A file or directory that was opened read-only
 .RB ( O_RDONLY )
 was closed.
 .TP
+.B FAN_FS_ERROR
+A filesystem error was detected.
+.TP
 .B FAN_Q_OVERFLOW
 The event queue exceeded the limit on number of events.
 This limit can be overridden by specifying the
@@ -510,6 +510,7 @@ The value of this field can be set to one of the following:
 .BR FAN_EVENT_INFO_TYPE_FID ,
 .BR FAN_EVENT_INFO_TYPE_DFID ,
 .BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
+.BR FAN_EVENT_INFO_TYPE_ERROR ,
 or
 .BR FAN_EVENT_INFO_TYPE_PIDFD .
 The value set for this field
-- 
2.34.1


