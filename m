Return-Path: <linux-man+bounces-3001-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3083AC1AD8
	for <lists+linux-man@lfdr.de>; Fri, 23 May 2025 05:59:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A5144E2A93
	for <lists+linux-man@lfdr.de>; Fri, 23 May 2025 03:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92D1017ADF8;
	Fri, 23 May 2025 03:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WRZjJg/d"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4162DCBE7
	for <linux-man@vger.kernel.org>; Fri, 23 May 2025 03:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747972753; cv=none; b=BtXTL6kTImLK8/YNUhzdAA26mdFjbvG1KT29hNoaoU+Iv2XtfXD2tFDp4GySgrNOXI/ra0fCi9PjK9gqYzYP9+ThF/cOGJ4tD62xBD2Tgf/P4jnBPNRpz+rhLyYkPYjLplMcxh1LL8is8yI+X7FhsUHCFL1IIm3O+xLqGGS52z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747972753; c=relaxed/simple;
	bh=3bV0cMg6NMzJRMFl4E4id5cO0KXbYbhLStw/8hPlemg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MfQJ023nBx6GdAh29Bja7BmzgrGFO4RmphkSHYXd4OY30ECGKeYZZhISP7tZ6lfrSIoXWvogzV5IGXzx4ZLJ+kusSYKX4Cl10mAqAwmU++S1YwRhYsOQ5lxm6CjS4s9YmCwtlVe4cCiHIsMgTOpXec61bwItK7e6OdJL9gbFQqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WRZjJg/d; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-231fc83a33aso56073275ad.0
        for <linux-man@vger.kernel.org>; Thu, 22 May 2025 20:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747972751; x=1748577551; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PmtQ31tz8k4JTd7LY4G3ZK5qbJK1ZB849qE7tdS/eM4=;
        b=WRZjJg/dsLgGdVqP/PLw/XZ8YNHFk0fQUG2BbftTmSQHgBcfTcfYLDUgbXwku8k171
         HKDpAKOtb2Age4Zl8KmZ/soYkxeUnaxCHcxmmyIcKXqgP0hvHJWjNyzo+5QY6c1GIJPv
         mJqd3D2A3fsgUs2IVcS0Ansim5a78p9neoEvtDybTvIYE5rD6KB10usoA1ce4DUxnpkU
         DpgniXINfl78TuNwo97QmRNM20mBJPDF7flYH+hSYvwqdi0j5dCqSB+r+e9xAStIhZMX
         +wYYvfL0n07xbyJP0pkOW0zVjrgur3ZsxWQa6iR5kmDa+4gA/BSa2taQQi5RO5izjdW4
         9BlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747972751; x=1748577551;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PmtQ31tz8k4JTd7LY4G3ZK5qbJK1ZB849qE7tdS/eM4=;
        b=l+Eah09i/Mbfrumw8OWYL9HXeOV0uuVg7jwDlCUs30c9TlEv4vbQ68AIi+85DAvLC2
         X+pcDpQ3Vcq7yeK5/RTnOOXT/YX4vcGbq1Ox5li5cUUBQ3inn1cJ6YOfSx/t7BFum0Sw
         AORonFFUK5H3E58BexwSHSBqk+FHpIDQNDXN7CqtKthmRFG00AY6zNIhqdEp4xx+ZXkn
         IRQi7DWQHWSyr1V4PJllU8sFCMDW+K1KAW6GufMuPT+vjd6N7GhA7V99oNasdZ0gwUEo
         W5Fh02EJIqHoKz7+yGoI4Xux664E3Xc6MxhijALWZJs93svZ2qtxSD+9no4WSnRKusEi
         k9XA==
X-Forwarded-Encrypted: i=1; AJvYcCX9WF3FdgfOAxr9IaymwNP+MHOYD/NtH/z1VE/lPRrRpxhaZM91UFfHl0Dpn9j7ZYZH5F150ntuBWs=@vger.kernel.org
X-Gm-Message-State: AOJu0YydMHIn7zaKAbEae50XE0KQHH6NeNoVaC9ZAK/rzkfv53UX9MWe
	5V7dnlrAkwZv2rVb5ui7d08lv9baiuIo0O9+14GTi18/UtjeXQ/3LOAja+E2nQ==
X-Gm-Gg: ASbGncudcDbLDEvozuFEHEZnpf20akn5rLTuR6pKwqHZTHvGvo1Pn1tz/t7fnTQOBic
	Zvj00vYvuy8XSsCkhmKQL3c3rzNlD//zkYWlMC4DCcjSXe3HzTeHtgylJWzGOJqNTs6yDxF500T
	tDaSQ17a0d2aI/aeIpSRpMRduVscHzt4bwCQ9N+2/VBbizIbdxsNKP7su+8E2A/gR0kvg2CWPoT
	YlIkK9Vs57D1cWkSjLzKi+DWeRbwtql5Opq99exax+lITEqsm4to5z+fXSscc0Agh9EaQrTHTNM
	KY0QfC2jchgmKrIC96WJRb5EkBjJmiNqLqs=
X-Google-Smtp-Source: AGHT+IEfhQ/uc6n64QBGCSxMbzfn2DvxNPU/HF2MU7EQdzIx6y0G1jnjrwLpwtZJTcQezzOdPZ0UeA==
X-Received: by 2002:a17:903:41c7:b0:231:7fbc:19d8 with SMTP id d9443c01a7336-231de35159bmr366082205ad.5.1747972751161;
        Thu, 22 May 2025 20:59:11 -0700 (PDT)
Received: from fedora.. ([2601:646:8081:3770::eef5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ed57b9sm115577765ad.246.2025.05.22.20.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 20:59:10 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man2/socket.2: Mention POSIX.1-2024 added SOCK_NONBLOCK, SOCK_CLOEXEC, SOCK_CLOFORK.
Date: Thu, 22 May 2025 20:58:50 -0700
Message-ID: <fcb9715252e3d7cf296911ba78fcc8840e971224.1747972727.git.collin.funk1@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Collin Funk <collin.funk1@gmail.com>
---
 man/man2/socket.2 | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/man/man2/socket.2 b/man/man2/socket.2
index 01b125fa0..b626ded8d 100644
--- a/man/man2/socket.2
+++ b/man/man2/socket.2
@@ -422,13 +422,24 @@ .SH ERRORS
 .SH STANDARDS
 POSIX.1-2008.
 .P
-.B SOCK_NONBLOCK
+The
+.BR SOCK_NONBLOCK
 and
-.B SOCK_CLOEXEC
-are Linux-specific.
+.BR SOCK_CLOEXEC
+flags are specified by POSIX.1-2024.
+.P
+The
+.BR SOCK_CLOFORK
+flag is also specified by POSIX.1-2024 but is not implemented by Linux.
 .SH HISTORY
 POSIX.1-2001, 4.4BSD.
 .P
+The
+.BR SOCK_NONBLOCK
+and
+.BR SOCK_CLOEXEC
+flags were originally Linux extensions.
+.P
 .BR socket ()
 appeared in 4.2BSD.
 It is generally portable to/from
-- 
2.49.0


