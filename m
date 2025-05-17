Return-Path: <linux-man+bounces-2943-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFF1ABAC83
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 22:53:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1BCC3BD2F4
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 20:53:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89DA20296F;
	Sat, 17 May 2025 20:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SYFWk74h"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAB1FBF6
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 20:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747515209; cv=none; b=aPAMcBrXEq+mzfsOh+gMxp5Xdw3T+nSr6APMMYY+m3/y4G/HgngRvWKtWag7/WNf2vGaNwh8mNEXsdvmV0wpli2n76B/yB28PaMFyvriN6ZJy8kcfOC+ilNaFZUcHaPXWIwamEvbclpWcuC7N1khYBuaoRG9OZctYCUyqTLT8GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747515209; c=relaxed/simple;
	bh=3Uc8GAoQvLjhcJqhs2vIkzgSRLDFwyhvcvH7QN2blus=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mdYTJn3XBh77ZiNOeprBR1Y7VnwbvY09WB8T0dQ9DA2yeliDzLYiui2UsjX/7JUdsW/0K0XXqhCGgdqjKQlNpDRINzZrac0qRrQVZbTgYV0UnJb3Bc1wc3CdezOuVOZeO0XgqWRSGHKwVqv7T0yOV7NOjgtIXxlMS/h/77WJad0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SYFWk74h; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-22e331215dbso31521145ad.1
        for <linux-man@vger.kernel.org>; Sat, 17 May 2025 13:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747515207; x=1748120007; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=01mCPbOW9vzlkF+8GSmt0fFxr719zs5J2NoPoF9vxH8=;
        b=SYFWk74hvW19qgEzR8aor8qCTA/kZbZdl7YpuxisdvDX/j4FS8MYMlJ8w91inwT4vV
         n2/gdnesv3sEYr/fVlrPOiEugxj5G8fqhQv0UnX/iYMJ9/3vbexBMFCQ7NCkPAjJgOIS
         8QIYVw1p0eR48HPHdTFU9DCvwIuyfXUcYoaudTtV9puSBwLKizPRtbQ+FJ2x1pioVrq0
         ZYLJJXuOB0S62jT7xAr+8a2yBIJ/RS4q7CiBcbCICTDNoUQEHm2vM9Z8PCrn/gVVbkM2
         FhZZyTvQ4mAAkfcjhd8/OvOSzQMIQ+xRXQ8+NKVJuCZw0IAA42VscB+zFSZMdOcOeB3R
         VUPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747515207; x=1748120007;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=01mCPbOW9vzlkF+8GSmt0fFxr719zs5J2NoPoF9vxH8=;
        b=vpKMVhHkbEX10/4UMW9Pa4jv6d7+IYVghn0No7QB32ZCvNEme8P/wXEeOX6/zr8in4
         HX838A8yMQkr1RF1KZxFppEc/iIsTZ8fsytVE5FDSnnyqanSwxPYStLy5hQW89dBm8iR
         5s9XmMJiX+SuSrdLikux+dc2Q6Dgr+nAhtHkIfydjV0vZMSsJ7k1NWa1kZum7AU2eJmd
         Nb5dtAut/HCK1PnHcgfvXpkGpg9ZvUndWd9VDfFOujyezfGaoj/HUs4ULLho6q6DrXZ2
         aQx82WeUM/DgRHvHqsf/QskxCl2BrQO+wWz45pkbT25634RQkOG7OsAO2k/y9l0uNqs+
         QuGg==
X-Forwarded-Encrypted: i=1; AJvYcCX4CdofaU73wNTtTKzMRkkSA5uRi9j9Ra2llNfAVTInWLgjQ4Liwwh8ZxmiSTLLMxihpX2bAmxqYGM=@vger.kernel.org
X-Gm-Message-State: AOJu0YwU7rDEn3/bc/YpfoMQCYtOq5t343M5NzTX032Twz63ci/HE2Fr
	PugQm5GxNc9jGLlLnIrNXU/QB5tSigqLLJ3GfiDC90g+XEryUemEVz7iNINGLA==
X-Gm-Gg: ASbGncsRueATfj+gk/piZdaEymZZX3mODQOvsnRevYNM6fwFqPhx0dVGpAzaN6qUmyy
	68Bnyeo9iM88blkQMpHdOJaTO11IYhJALNDRThlXxrle1Rq7XV/PgmS+k4hKxrHzL/D0H84ERBO
	CkotNwGAtUd8R8xXhA6Us4yWIlIsoh7As+BhjV62ivzJwWFDmmcExTljzFXJUMJsWeiOY0AO+E9
	DPtGEQoH7w2SSrUswQsA7aX61u1KdnjnvnAgZVOBZI2FBjm7NXRA6aSl/QLv3jTOl75dsUwQa6t
	KkrJFKiP6UuJHmb7rVEDCGKNsw8LD5rXMA==
X-Google-Smtp-Source: AGHT+IHPUBCyqhlbPRBU6hkDucISp4xNVhRCDGQ9wt1Wh9hzevi7vKhIEwDUS13S7nW66wQfwV+joQ==
X-Received: by 2002:a17:903:8c3:b0:231:d0da:5e1f with SMTP id d9443c01a7336-231d4e7b7b6mr105933425ad.21.1747515207269;
        Sat, 17 May 2025 13:53:27 -0700 (PDT)
Received: from fedora.. ([2601:646:8081:3770::9eb])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4af1b75sm34567835ad.85.2025.05.17.13.53.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 May 2025 13:53:26 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 1/3] man/man7/signal.7: Mention SIGWINCH was standardized in POSIX-1.2024
Date: Sat, 17 May 2025 13:53:02 -0700
Message-ID: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
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
 man/man7/signal.7 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man7/signal.7 b/man/man7/signal.7
index 72d4aae47..730e90d12 100644
--- a/man/man7/signal.7
+++ b/man/man7/signal.7
@@ -342,6 +342,8 @@ .SS Standard signals
 in the original POSIX.1-1990 standard;
 "P2001" indicates that the signal was added or its definition changed
 in SUSv2 and POSIX.1-2001.
+"P2024" indicates that the signal was added or its definition changed in
+POSIX 2024.
 .TS
 l c c l
 ____
@@ -390,7 +392,7 @@ .SS Standard signals
 			see \f[B]setrlimit\f[](2)
 SIGXFSZ	P2001	Core	File size limit exceeded (4.2BSD);
 			see \f[B]setrlimit\f[](2)
-SIGWINCH	\-	Ign	Window resize signal (4.3BSD, Sun)
+SIGWINCH	P2024	Ign	Window resize signal (4.3BSD, Sun)
 .TE
 .P
 The signals
-- 
2.49.0


