Return-Path: <linux-man+bounces-2843-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A3AAA6F7D
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 12:24:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A19C73AC90E
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 10:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0961622D4DB;
	Fri,  2 May 2025 10:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O6CwwLRc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5701C8629
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 10:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746181473; cv=none; b=TexAjRqiJBtgosW4lXoHRSnEln2bVCh1PcuovG3jRVZCIiYXl4X0HLLQbOYguKZkHKvQJrlrrAUtuFcTmbU5U8OaFsowpj8CNB6oP47hK78st6hcYngwvlaksZmRqcxCHqhsQ3JQTY7BsupMDSi9nCGj9M4tQitqfI6X9kiuSvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746181473; c=relaxed/simple;
	bh=irLjBTUjlKqukxTEBknardA0/RPQCPWOXDeNNc4vsBQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=cVZmBZbZtYUbESA1MDEUvk/bsoAbvWGF1Cqy8MoHs7C1KLAx+D7liNQRmxekYwipdtq8Oe3vJUAlkaVkFAwNxKYEGM5cxGy6kumBzHUPekUq3vrFD/LZruYqRfZf/6+bSVtIwOKCgZTx8RMcY+EZmJxASVl8K8jZELkI7Og8+fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O6CwwLRc; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-39c266c2dd5so1984242f8f.3
        for <linux-man@vger.kernel.org>; Fri, 02 May 2025 03:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746181470; x=1746786270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S31o/BbkknEfhJhsk2/ZxnM9DcQCTlY+4r983G3iLEw=;
        b=O6CwwLRcWLuuLn9hJda7imfKeFJ7v6M/jqJnBoOaJ3z9TlY2ORt3Zvvl0KqGsdzoR2
         1ngUIRCFN6MIR2TuM4HCoOQKI8tMi4E4v8T2jrsJiZmtDAiZG2ii0tPM4IT1fjgWi+Rp
         641xpEgMij8Fq7RJJwwd3gOvgIVHlBo77XPoidPp88UgbhDS3YltM7mEe8Kuqzh3DyIj
         Y3QIgvW2KfRcngUeft9/kw70jBkE0lQkQG767cKte6mqFQMjmfJT5nTVJE/w/IuxkX87
         QvW2N86egGGO4IMViyc+tDp3E3nEUMOJ48uMLXqyvCAydSdlkGPXlbtOZoV4kaMjFreY
         VGMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746181470; x=1746786270;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S31o/BbkknEfhJhsk2/ZxnM9DcQCTlY+4r983G3iLEw=;
        b=XJx0QU712uDDo6I77Wos7NLFwQoPvH56SdE6Wm3V8E7p8YKrKoi5te36etYiMnu9wm
         LzwldzvNihgVs7QGtRBuUP/2Sa0/HaYaJdVatod2uNo9c/6f/nUZherAZ6H3VWW1Xx0Z
         vQdtndLzaG/+l6Esn02WiW9cdck2Vj/aAYGPmhAWGqpz1VLTDB0V+TWuM1QiIvyrA/Bq
         +Hg5zDI3+lETaEMUhpwAUqOk5M/T0LPJWhvQrv2QVvB/oFlIZRR3BGDz4gl1jZ+y4juM
         sApHq1kjPE0aDLWfaMjHaMLL2RnMEDYCaIQMs9ocEBsLoCsKrd99vGvYp5KJV8DfyRAP
         4Shw==
X-Forwarded-Encrypted: i=1; AJvYcCVTuN9vlqL/wQpQwiXMu2pwZhK+Nd1pe+YzLLbZrhvXj+avEb4WlhljJ9mwvirx/QJXOxHYFgfAWrs=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/zQuu1tterFm7t4jwen40yF1p+Wq5XMK3cKcct+7oAVK6fxeU
	YxYpoxeuPHzf+7Yn/uwbwTWk3+9ksyxMqIUQi2P1M3uoxrg5XaJ1
X-Gm-Gg: ASbGnctimeCLF9k6meqJxmkYKhjmsNhd4z94QGxtk3yq0OaH6r+KJ/bUZSt4Eiejzd+
	+QpoaaktW1izwFDNwpvDwYIrPcRoykXOjC0jZR3m+9VdbSegx5a/fHWUdjkt3PrW1MOjPsY6MBL
	9gKqtBWro3OAKyCqQkCOD7Lkh8n4FbW6mL3aJ+RzqLk3fe/t4ezYPQdubOLMwLJ5hDdRJG18puV
	/HajCBIt+8dzkVvPA9ozShaMmq8W71i/PwWTUBMirMolpuTMJ/xGyngTlHACU8oZqb2AQjh/BHw
	P5RyvzRIGI7J9retAc7qAkhRQ2DBiCSp/D4RTmDbBL8f70fmuGNTtAHzVjnFAax/pwk=
X-Google-Smtp-Source: AGHT+IHhnClKU1pjyyNY0J9pdTOo1RgXy2bGZPZN5PbVhDKc0jR6RyQjAfY8F8mHkpVTnBYbBLJemg==
X-Received: by 2002:a05:6000:1449:b0:38f:4acd:975c with SMTP id ffacd0b85a97d-3a099addc42mr1767342f8f.27.1746181470179;
        Fri, 02 May 2025 03:24:30 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a099ae353esm1771132f8f.31.2025.05.02.03.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 03:24:29 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jared Finder <jared@finder.org>,
	Jann Horn <jannh@google.com>,
	=?UTF-8?q?Hanno=20B=C3=B6ck?= <hanno@hboeck.de>,
	Jiri Slaby <jirislaby@kernel.org>,
	Kees Cook <kees@kernel.org>,
	linux-man@vger.kernel.org
Subject: [PATCH v2] man/man2const/TIOCLINUX.2const: Document CAP_SYS_ADMIN requirement for TIOCL_SETSEL modes
Date: Fri,  2 May 2025 12:24:03 +0200
Message-ID: <20250502102405.4891-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

CAP_SYS_ADMIN was previously required for the entire TIOCL_SETSEL
subcode, but is now only needed for a subset of the selection modes,
since linux.git 2f83e38a095f (2025-01-13; "tty: Permit some
TIOCL_SETSEL modes without CAP_SYS_ADMIN").

The CAP_SYS_ADMIN requirement for TIOCL_SELMOUSEREPORT was further
corrected in linux.git ee6a44da3c87 (2025-04-11; "tty: Require
CAP_SYS_ADMIN for all usages of TIOCL_SELMOUSEREPORT").

Admittedly, there are kernels where CAP_SYS_ADMIN was briefly not
required for TIOCL_SELMOUSEREPORT, even after Linux v6.7, but this was
a mistake which is now fixed in all up-to-date stable kernels.
Therefore, we still document CAP_SYS_ADMIN as required "since Linux
6.7" in this case.

Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit?id=2f83e38a095f8bf7c6029883d894668b03b9bd93>
Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit?id=ee6a44da3c87cf64d67dd02be8c0127a5bf56175>
Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2const/TIOCLINUX.2const | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2const
index 61f1c596d..b98a0202b 100644
--- a/man/man2const/TIOCLINUX.2const
+++ b/man/man2const/TIOCLINUX.2const
@@ -72,18 +72,30 @@ may be one of the following operations:
 Select character-by-character.
 The indicated screen characters are highlighted
 and saved in a kernel buffer.
+.IP
+Since Linux 6.7, using this selection mode requires the
+.B CAP_SYS_ADMIN
+capability.
 .TP
 .B TIOCL_SELWORD
 Select word-by-word,
 expanding the selection outwards to align with word boundaries.
 The indicated screen characters are highlighted
 and saved in a kernel buffer.
+.IP
+Since Linux 6.7, using this selection mode requires the
+.B CAP_SYS_ADMIN
+capability.
 .TP
 .B TIOCL_SELLINE
 Select line-by-line,
 expanding the selection outwards to select full lines.
 The indicated screen characters are highlighted
 and saved in a kernel buffer.
+.IP
+Since Linux 6.7, using this selection mode requires the
+.B CAP_SYS_ADMIN
+capability.
 .TP
 .B TIOCL_SELPOINTER
 Show the pointer at position
@@ -118,11 +130,11 @@ If mouse reporting is not enabled for the terminal,
 this operation yields an
 .B EINVAL
 error.
-.RE
 .IP
-Since Linux 6.7, using this subcode requires the
+Since Linux 6.7, using this selection mode requires the
 .B CAP_SYS_ADMIN
 capability.
+.RE
 .TP
 .BR subcode = TIOCL_PASTESEL
 Paste selection.
-- 
2.49.0


