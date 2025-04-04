Return-Path: <linux-man+bounces-2741-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D0537A7BB29
	for <lists+linux-man@lfdr.de>; Fri,  4 Apr 2025 12:47:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B381F3B0A8C
	for <lists+linux-man@lfdr.de>; Fri,  4 Apr 2025 10:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 797181A23A5;
	Fri,  4 Apr 2025 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="disU27Hh"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0D17485
	for <linux-man@vger.kernel.org>; Fri,  4 Apr 2025 10:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743763653; cv=none; b=eR9x1ainO6sAONzdcFaiKSrnqsDym9H1+4h76/apPktL+aB3LdaFZv0TZz58QxaVLWpv0V3Me+ExgyEuVwJ38Jtg+EE+logxmv+eCV0sRk1yV8vVnTf4ZJpq9ZFyxYlIDywLdsH7r9hlDRiQGI/fyNOGCw+gXnp5JWLvLJIyokk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743763653; c=relaxed/simple;
	bh=QMd4a3zPJoEbkNyJESMBgpeeub/MdrChUidhFZxTBrM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=e+0T31EUJ/qVAj2lRY5xD2R3qqDOV44CF7QSFx2dTQP8xRX9iFD8DNC8j8iQfxht9aLqNhijx6EaIy613FefgOEtGpygXITHuyG3ia+jqeaK5X7UW5kc8NYYkhoyzL0b3e53fhUE9SveA9VwT2cteJghxlQSSkMO09Gr/nA7mB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=disU27Hh; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5eb5ecf3217so3317268a12.3
        for <linux-man@vger.kernel.org>; Fri, 04 Apr 2025 03:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743763650; x=1744368450; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PcDLJ6hskhNzImXxRFzYO66zeuZdmG0zwHqIq4/bFvU=;
        b=disU27Hh4pqUYnqWpwYEfTHlvi0HaD31J61FjkVqLgfXEW5EoCnRoIexiR7QBmMhvf
         TUApuC0W1Mib+IAbN74qSTa9jZizZ4M01TCYnG8ppsV4dFYYrWs72KGj38+UqKlppt+C
         Xa82mjNyEjPTbI2r2En9bnHPUjPJPjIR0EZLmORjVUaNLWaQTpUiZxLLyInemstgMsH5
         8X3uzbDh108dFHKwqqlaTa6iT72uNbjpd33NCIgwnzNdd9hw4mrv4DR4OkNHjY3S+HE1
         RgJlNhW/R3g1gWM8rqIrgl69klXKoeUPnWQeww7Cv2/DtoT+S3/KnjM7o9oYA995le/k
         nWUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743763650; x=1744368450;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PcDLJ6hskhNzImXxRFzYO66zeuZdmG0zwHqIq4/bFvU=;
        b=Ja1noOE+BjOndt9su8bx7X1wfjVaZzC38/h5uaTWaic8ddHURsbqzmZHFicNApxzqw
         4kkjyDLKb8D1s7aaHwFhnb5azlKiXtE5IzYbSNH/TleZFWnojrMm8uEg+u58M4Le8ylY
         qV7fjgSreNr3qyCKx68AHvjB6LoPErfRGZPfTwPKE8S6htKcyoXKqx1gTnMkSuz36QFf
         bxHUpWpaCLw8aaC991W7oXyxR6lfxdPgJkHwsBRuZ31W6utOQvZMeN7hw8r1ntxeeif4
         V0k1n4maClyarykRQweG/QQY1JVuT244MIKHmK3I2RHMowH4dBRGEZXuMgVO+5yuQ9CO
         V/yQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtF84XQCCw8gSK7B1Jf3+4nbdn5eAa2wfCP35sCL9pNcFhfuxzN4YbMYP3wbx7n1VjV0o1BeiVhGA=@vger.kernel.org
X-Gm-Message-State: AOJu0YyAixj2f0aihj0uCPRxAvzP96+VIDiqlSzQq07pKsRpoFV3P2NO
	Q6fQ7BLnZ42hVlque/CvuXzAEm+VCsBu0UyFumLzFqK8XpUnSS5GhxvKK7Rz
X-Gm-Gg: ASbGncvZis2Wxgq+1cwZKELvzLqKBiI7Fuqjf4bFM+MjggpuQd3zqt1UK6sCDR2NAb/
	ZpPBf2be8PKk/xrOuvZ1AaSN+wPmGHEaz72L+AqwDkECZrqrkLzzUqyCc8VNMAQnrZbv6fyhrJo
	sXZAsLBmlqq33qLhDQ7BVTvIxXbYbfWqTkJIzUTRxoD15BwlyGK9A2+yN46kRWZj10L+ebiaok6
	/wqOMC+umNwannUp1mEj/WsiHtKD3FyAPJuq56njFTAu+d9keYDYtw6GYPZMOlIfRO6umifeQRB
	gASGQUPQbu2W4VtE1eCDfsXVeKtgddfd2pqka5L8ISXvBVTJ/uAaFxi43FT3Oktlru8H0ELmcI0
	kQDGNunbR8OpJTgdCDP1AngH0tTAf5TbaxQQGqAeUkQ==
X-Google-Smtp-Source: AGHT+IHSrGMk85pvuFakIZisKq5o/2MiSbNORvJWZyYx+U5Au74K8ExdR1ly4VW0KTdI/LJck1XSCg==
X-Received: by 2002:a05:6402:5250:b0:5ed:c6aa:8c68 with SMTP id 4fb4d7f45d1cf-5f0b3b65ac8mr2023848a12.5.1743763649331;
        Fri, 04 Apr 2025 03:47:29 -0700 (PDT)
Received: from amir-ThinkPad-T480.arnhem.chello.nl (92-109-99-123.cable.dynamic.v4.ziggo.nl. [92.109.99.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f087714df0sm2119530a12.14.2025.04.04.03.47.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 03:47:28 -0700 (PDT)
From: Amir Goldstein <amir73il@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jan Kara <jack@suse.cz>,
	linux-man@vger.kernel.org
Subject: [PATCH v3 1/2] fanotify: Fixes for documentation of FAN_FS_ERROR
Date: Fri,  4 Apr 2025 12:47:22 +0200
Message-Id: <20250404104723.1709188-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The order of FAN_FS_ERROR entry in the event section was rather
arbitrary inside the group of fid info events.

FAN_FS_ERROR is a special event with error info, so place its entry
after the entries for fid info events and before the entries for
permission events.

Reduce unneeded newlines in the FAN_FS_ERROR entry.

Cc: Jan Kara <jack@suse.cz>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man/man2/fanotify_mark.2 | 44 +++++++++++++++++++---------------------
 man/man7/fanotify.7      |  6 +++---
 2 files changed, 24 insertions(+), 26 deletions(-)

diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
index f02a182da..a6d80ad68 100644
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
index adbed2c3e..68e930930 100644
--- a/man/man7/fanotify.7
+++ b/man/man7/fanotify.7
@@ -415,9 +415,6 @@ A child file or directory was deleted in a watched parent.
 .B FAN_DELETE_SELF
 A watched file or directory was deleted.
 .TP
-.B FAN_FS_ERROR
-A filesystem error was detected.
-.TP
 .B FAN_RENAME
 A file or directory has been moved to or from a watched parent directory.
 .TP
@@ -445,6 +442,9 @@ A file or directory that was opened read-only
 .RB ( O_RDONLY )
 was closed.
 .TP
+.B FAN_FS_ERROR
+A filesystem error was detected.
+.TP
 .B FAN_Q_OVERFLOW
 The event queue exceeded the limit on number of events.
 This limit can be overridden by specifying the
-- 
2.34.1


