Return-Path: <linux-man+bounces-2711-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E84C4A76704
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 15:40:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 292BF16AD59
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 13:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A63F6211A3C;
	Mon, 31 Mar 2025 13:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fsIIetPM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88CEF21127E
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 13:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743428408; cv=none; b=Vrsudy8wNdDAjA0M5/aTXlo9LArInVqyWVy59/k5PCWL7loPUvAcxJ12HRavCkTmbmO2qOTLcaIHkSmkNwbrE9VssU6zopv/hNGLAQqiEKCHcGZmoshtgzL8cwwGvFpteCDL8/nBRzb9x6bYoQCjuzpyY/XbJVHZBN4KYlquKME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743428408; c=relaxed/simple;
	bh=lSpLeFShMKDslmIJzyFc0PDH3JhceWsLCrCSShymrvU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ROF0cYdYjFb1EoQkKOj1yuXREKOGPUywG7eNPBoDL5mogg98/16yhj+gJq4eW8oZpVvGGH3j0bgt98Jx5+u8u9HzTsYqW5NThjt9Iqc6bcogtYOkX4/da+20hHZEXefMcewcR1sXlml3BQfO/NnwNmsVXmtMe22LRrBCsgXi49M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fsIIetPM; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4394a0c65fcso42961175e9.1
        for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 06:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743428405; x=1744033205; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qb1PsiJbTyg8YfXzMpCstswLnKDjxyg5Ac5pv498zSo=;
        b=fsIIetPMF0yCSlIlfrXNPy73pQjBotsVnvA/haRxruKfjwXEbBoTcvOmli2SHsLbnG
         OxNakkNrpqE/qJYPheqGjcO7sEtB/bOvAbsrIZtbO6rCNDooqIh2ZvE5PVEpyans9YeT
         Wdr6iYnM3eJLu5XfsLyZZpHpe7blK4QaTaL6tYcKsK+ejPnkj1QChu2B0QyIy58Jx5yg
         4fkyTZcZ9zqrstaYO12UCIPbDyppamC6h30UO0uBAwuzS6hL3eFeGFfBeZ6U/g6tKeYi
         YjhFM04YnrUwk65MfQuIlPJOHbWr/J9JzOpVvHcY4YuNu7DWd4AON2QeKnH/add59RrR
         1K0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743428405; x=1744033205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qb1PsiJbTyg8YfXzMpCstswLnKDjxyg5Ac5pv498zSo=;
        b=CyA2rt9XjQR/rT5Sy84HJz4ugfRaJ3rXyk3fiChSOuHt3dgsQat5YoxvEUf1vy4f68
         MiulXckdGIXw96fVROLQE2aawUDHU8YgWv1e1h9rhPOPs3PIJCdYX4j4K6VttLz+pUqP
         ppds69FVNkbcWadNqU6CwNzR54v8O/zqPAALvqC5QNlVVL2hZV0dLuADtRSHtiqWldhK
         okXNbjsbvaij4NtdF5Pj8QVprXTMDtpr0jaaP4rdnqwASWL7raKO0RxzvyUqyB8+BiFk
         3zWlXRmp5hd4DPei+CQfNoOTgJwIKPQvle8M/gIpA/1OMfOvBKTGSqjACh4msi7u+TV4
         lP0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWt2PT+p9bl9vh3ATrXRG1889Fg9li1vpSnmI+AY0OZcOc5+42ar1CYahmsOBUVSr4hweG/gg43ggw=@vger.kernel.org
X-Gm-Message-State: AOJu0YzSJY00eMYPmbrj7DxObiiunDBub8GadOTU9a2GV9oszzhagsao
	HI2CiGiYbdBos4rnd0pqPQdmMgR9NYeL57zeU2ZwUQUWbPt4A8Sa
X-Gm-Gg: ASbGncsBbbMNtMApoDwj8LMyvKohJ2ivDaPkL0nCMSNJVA/ledSvW2eoTbWcIs5g4n1
	j5GmvntCiKmA/WFm3s0b8iuUsShxdYOWLSehOJVV9XTUDTAWBIO/Awv//EMSobHuBWrV6n4GWQz
	3LIm1c2JCyC+gtHDLHwPjM7JivxWRIwLbSwkH7PGYUoYNJPbhZF+JeSYZga2vXDhpN21jPAJxzF
	R++OleZ/BQ8MM6tO5e1qezkIGmIYTPAwC0fpEWzSJJuxYJNYIwN76rH7gwvgg/nZgRGvUm0h6wn
	WAe7HwvhIXxk8777zdVXyhyurbTAOorrnSQVwNlnJgjcjriQSbujSrFhdUJc8MHk2v/d1AUdxQQ
	YMQd4EppieKwBJtPm+rMcgOs9Rj/DK2WmIz/ApT+GIg==
X-Google-Smtp-Source: AGHT+IGiW+UqlholACcjw3aLh0AVp72sueAmf0MjHBROnZmVd7qDVUMGGhQmYB3RNkh9FlZWqe96Xg==
X-Received: by 2002:a5d:5f90:0:b0:390:e9e0:5cb3 with SMTP id ffacd0b85a97d-39c120de3c7mr7184196f8f.12.1743428404370;
        Mon, 31 Mar 2025 06:40:04 -0700 (PDT)
Received: from amir-ThinkPad-T480.arnhem.chello.nl (92-109-99-123.cable.dynamic.v4.ziggo.nl. [92.109.99.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b7a41e8sm11498823f8f.92.2025.03.31.06.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 06:40:03 -0700 (PDT)
From: Amir Goldstein <amir73il@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jan Kara <jack@suse.cz>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 3/3] fanotify: Document FAN_PRE_ACCESS event
Date: Mon, 31 Mar 2025 15:39:59 +0200
Message-Id: <20250331133959.1436376-3-amir73il@gmail.com>
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

The new FAN_PRE_ACCESS events are created before access to a file range,
to provides an opportunity for the event listener to modify the content
of the object before the user can accesss it.

Those events are available for group in class FAN_CLASS_PRE_CONTENT
They are reported with FAN_EVENT_INFO_TYPE_RANGE info record.

Cc: Josef Bacik <josef@toxicpanda.com>
Reviewed-by: Jan Kara <jack@suse.cz>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---

Changed from v1:
- Added RVB
- Added FAN_PRE_ACCESS to fanotify.7
- Split out missing FAN_EVENT_INFO_TYPE_ERROR to pre patch
- Minor format fixes

 man/man2/fanotify_init.2 |  4 ++--
 man/man2/fanotify_mark.2 | 14 ++++++++++++
 man/man7/fanotify.7      | 49 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 65 insertions(+), 2 deletions(-)

diff --git a/man/man2/fanotify_init.2 b/man/man2/fanotify_init.2
index bf573c6fa..699b6f054 100644
--- a/man/man2/fanotify_init.2
+++ b/man/man2/fanotify_init.2
@@ -57,8 +57,8 @@ Only one of the following notification classes may be specified in
 .B FAN_CLASS_PRE_CONTENT
 This value allows the receipt of events notifying that a file has been
 accessed and events for permission decisions if a file may be accessed.
-It is intended for event listeners that need to access files before they
-contain their final data.
+It is intended for event listeners that may need to write data to files
+before their final data can be accessed.
 This notification class might be used by hierarchical storage managers,
 for example.
 Use of this flag requires the
diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
index 1d132fa1a..da569279b 100644
--- a/man/man2/fanotify_mark.2
+++ b/man/man2/fanotify_mark.2
@@ -443,6 +443,20 @@ or
 .B FAN_CLASS_CONTENT
 is required.
 .TP
+.BR FAN_PRE_ACCESS " (since Linux 6.14)"
+.\" commit 4f8afa33817a6420398d1c177c6e220a05081f51
+Create an event before read or write access to a file range,
+that provides an opportunity for the event listener
+to modify the content of the file
+before access to the content
+in the specified range.
+An additional information record of type
+.B FAN_EVENT_INFO_TYPE_RANGE
+is returned for each event in the read buffer.
+An fanotify file descriptor created with
+.B FAN_CLASS_PRE_CONTENT
+is required.
+.TP
 .B FAN_ONDIR
 Create events for directories\[em]for example, when
 .BR opendir (3),
diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
index 614410cd9..77dcb8aa5 100644
--- a/man/man7/fanotify.7
+++ b/man/man7/fanotify.7
@@ -247,6 +247,26 @@ struct fanotify_event_info_error {
 .EE
 .in
 .P
+In case of
+.B FAN_PRE_ACCESS
+events,
+an additional information record describing the access range
+is returned alongside the generic
+.I fanotify_event_metadata
+structure within the read buffer.
+This structure is defined as follows:
+.P
+.in +4n
+.EX
+struct fanotify_event_info_range {
+    struct fanotify_event_info_header hdr;
+    __u32 pad;
+    __u64 offset;
+    __u64 count;
+};
+.EE
+.in
+.P
 All information records contain a nested structure of type
 .IR fanotify_event_info_header .
 This structure holds meta-information about the information record
@@ -441,6 +461,16 @@ The reader must write a response (as described below)
 that determines whether the permission to
 access the filesystem object shall be granted.
 .TP
+.BR FAN_PRE_ACCESS
+An application wants to access a file range, for example using
+.BR read (2),
+.BR write (2)
+or
+.BR mmap (2).
+The reader must write a response (as described below)
+that determines whether the permission to
+access the filesystem object shall be granted.
+.TP
 .B FAN_OPEN_PERM
 An application wants to open a file or directory.
 The reader must write a response that determines whether the permission to
@@ -511,6 +541,7 @@ The value of this field can be set to one of the following:
 .BR FAN_EVENT_INFO_TYPE_DFID ,
 .BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
 .BR FAN_EVENT_INFO_TYPE_ERROR ,
+.BR FAN_EVENT_INFO_TYPE_RANGE ,
 or
 .BR FAN_EVENT_INFO_TYPE_PIDFD .
 The value set for this field
@@ -714,6 +745,24 @@ Identifies the type of error that occurred.
 This is a counter of the number of errors suppressed
 since the last error was read.
 .P
+The fields of the
+.I fanotify_event_info_range
+structure are as follows:
+.TP
+.I .hdr
+This is a structure of type
+.IR fanotify_event_info_header .
+The
+.I .info_type
+field is set to
+.BR FAN_EVENT_INFO_TYPE_RANGE .
+.TP
+.I .count
+The number of bytes being read or written to the file.
+.TP
+.I .offset
+The offset from which bytes are read or written to the file.
+.P
 The following macros are provided to iterate over a buffer containing
 fanotify event metadata returned by a
 .BR read (2)
-- 
2.34.1


