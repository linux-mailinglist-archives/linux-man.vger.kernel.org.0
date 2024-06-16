Return-Path: <linux-man+bounces-1209-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBA9909FA4
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 22:20:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D5611F21AF5
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 20:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D458E49646;
	Sun, 16 Jun 2024 20:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WmLMxk02"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C85171B0
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 20:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718569204; cv=none; b=h2lXtQ/ta3T+nMyuA3/IJFUAS3Sw7hPZOP+veb0mXL+itHtMS2zTa7GfRAgUd6piq1mkJ+Qcyrizs1NYR8ICitRJ/Kf8nul53kVEmC/jCSb2fPbI3hiyP+EQAe/J2B4sPmTizjnhT3oeabyMnXYZeODm5DoXDZTff6DkGsujwSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718569204; c=relaxed/simple;
	bh=Y7PacDhIDiw0UihC72j5gmDkdSoDn5UxjfO0GG6iUlE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BsYswOhOeoDgIRX0IeQvEovi/euL8ZVnoFJoxYrrO4xhKseicAJGlDUoNun3hLLk72jaMzSYjLwUrdUYb0tO0YYG8zbGZP3Ct24OkB5prAhQ0fKOQFQgPgmLW6rUyhE10KB1XrR7IzwBLTLDy65L2GkTwbFNdTMaDBFjfN4VXfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WmLMxk02; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-797e2834c4eso314141385a.0
        for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 13:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718569202; x=1719174002; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=snHhDIxzyxOhpw1zlQGWL2/JdD5sDdUwl/7UG3OVREQ=;
        b=WmLMxk02+RKiL1dJ/X9wTCNhb8fg1t3u1j02KXkaerkZw7kl/jIb9kohSnFncEtFDE
         4FXDgEAguc2AkwWysEO0r0IqRD4p3wEYvRvyhF2pL8c1qiOlEpMbYrEDKO+7QYk4L90t
         RSf45ywMhs9e0YxEA2CThbWUb6J9PGdSdh+g8A93aHVvt8EXTd+pGvFRof52yCuQoXnj
         0BM4sRV+JLO1PDcyZZcxN7E6GQh9nFIaur8TcmHTQdnhXfuOs+ukOHdjYCY7PKnH1h+S
         xXd1h5oZoWXGX3gs+bmDBd2jTjS3OSjgR8UFblcY5s0aHs7jzOEOq374C6ipL19rlh92
         mEbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718569202; x=1719174002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=snHhDIxzyxOhpw1zlQGWL2/JdD5sDdUwl/7UG3OVREQ=;
        b=Jq5LG8o5ChvLdjTudZYwytBLqNnpSLHx8H/yYuwk/ocuLhfT8Aa2GtZpV2HCSETgMb
         mn6OPX7J6xsWEqZ88v6SIT/OdCRT3TTw2ZH4CtW7LbZov9pmPLXfl1vBPkNGKH04domk
         BrzvLT1Pdrm5+ikXMcHxrXJ9qUITF86KPODyJVDu8FW8IjfnWdzs34Goio7ELCZ4/Sho
         bbiMvex4FathL9yF74mxMANkXYuUbsPpjGel1wCDXWpo3TOy+1h1cbpx0KXBOh+SHQPE
         SIsN0yPmXgIqRifRbfhOnYlsCEjCylNgAk6tNNiDrNcLarGRVY2JYm023uJVDRzY9A5F
         QBjw==
X-Forwarded-Encrypted: i=1; AJvYcCUzxr4/jIq7zOfmRx1ywzLqIb7qv1SZs4eD+GSPbavtBfobVDJHd8PYbeFCZqTt9kbSO6zaN7ZH7Mr6BLwNAiJXwBh+aLWyH01P
X-Gm-Message-State: AOJu0YwWLi4O673qpg0qbRBrrgNaI/XMCcVtU7zdo/spyyLg80MuVsO/
	6mVJVwsnyQx0/RY90J6D2gjjcpziMBwwvCVmzN+IQYlq7rTolX7X
X-Google-Smtp-Source: AGHT+IG9j0gJl4tasp6Zb9QEMQETv5qRmeS3vlc1GMpMv4koedUUNU4FdsaEndY8POwFs1GBY5HcPw==
X-Received: by 2002:a05:620a:2449:b0:795:462b:6e70 with SMTP id af79cd13be357-798d01f6f42mr1399023885a.2.1718569202097;
        Sun, 16 Jun 2024 13:20:02 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4421a64a3a1sm29025021cf.56.2024.06.16.13.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 13:20:01 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 07/11] setjmp.3: fix section references
Date: Sun, 16 Jun 2024 13:19:45 -0700
Message-ID: <20240616201946.1663626-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <wetdiek6naltbxd35r7suxa4fus3k6qkjovchfyu2bg6fhqjd4@olqlwyxhfc7f>
References: <wetdiek6naltbxd35r7suxa4fus3k6qkjovchfyu2bg6fhqjd4@olqlwyxhfc7f>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
Reorganize sections") results in a few problems with setjmp(3):

 1. "Feature Test Macro Requirements for glibc" refers to NOTES, while
    those macros are now described in HISTORY.

 2. The discussion about saving signal mask is now split between HISTORY
    and NOTES.

Fix the references accordingly.

Fixes: 4131356cd
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man3/setjmp.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man3/setjmp.3 b/man/man3/setjmp.3
index 2319feb47..39511e49d 100644
--- a/man/man3/setjmp.3
+++ b/man/man3/setjmp.3
@@ -26,7 +26,7 @@ .SH SYNOPSIS
 .RE
 .P
 .BR setjmp ():
-see NOTES.
+see HISTORY.
 .P
 .BR sigsetjmp ():
 .nf
@@ -65,7 +65,7 @@ .SH DESCRIPTION
 was called and to restore ("rewind") the stack to its state at the time of the
 .BR setjmp ()
 call.
-In addition, and depending on the implementation (see NOTES),
+In addition, and depending on the implementation (see NOTES and HISTORY),
 the values of some other registers and the process signal mask
 may be restored to their state at the time of the
 .BR setjmp ()
-- 
2.45.2


