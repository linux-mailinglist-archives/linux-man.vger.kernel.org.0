Return-Path: <linux-man+bounces-4663-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 840DACF7DAA
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 11:46:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4745E3016EE3
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 10:46:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B134433B6D5;
	Tue,  6 Jan 2026 10:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U7qE0Rlt"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD81933B6CC
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 10:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767696028; cv=none; b=YfdY1L6ocbcjDVfNH6Dr+WpS8vQOjBfo2ZH5FJJl/sHlKhFMOtAeut+5ltwpgTSHBDwDVaUp4JMDL1IL1j0fLCn57QhtxDrswJ6k+Xisx5J+HfZwr+Z3F/tNwuWhmg2XQ/yv3mIH1DpQ5oFGFozhEK1WTzsqalDBKxo0wnhylHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767696028; c=relaxed/simple;
	bh=GLsMV5QXJMPND9fpVRb8g93CC+6DujfPiGwmWWF4UvA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JyK6+OE9ShuwOgF2EZkx8vAWRsUeRRtkmDez6vYV5/ryuFeL/VLdI25ocA87Tf5kvuWoEEJ3nkk3S+UP7V7Eb+sBFYNbF+jiPHVdanNuwgVC1Ijm8p5vt2yZmnMIgzhvXEYrX1kLWZDjse/h6dXE1hFxrGTH44Vvo9r45exlCuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U7qE0Rlt; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so6184375e9.2
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 02:40:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767696025; x=1768300825; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=toSKIbWj4gsTvghwp0maM4ykjC4DpzUsAHsgzjWyWCo=;
        b=U7qE0RltsQHM2ilPw8Im19hK8w89MJBnuh23uH9RoLteH6NfBkkn3i9nYtnoA0/kj2
         ZcFYz6Fvrmv8uhMXVf8/MFPIuWPZ9tj3qFYiripjs6M/dSgpNQvowFd+EPs+qM2qLRLA
         a/TbHBhYLnxg8iXou6PiQgXQQ3F8N+0tOTCdk/noRkZuWfh1jSGLh5F8CE8+w0YcLbL9
         JfGNITVwlX7oZnT0xh6G0n+4SVu74ktmKPZ6xn8zQKnK3NGVTc8hOVVdULFIW6jxcCuh
         eGfkt5yS/trVdYvpZ8K6tXE/HYtMfslHiYkSk7Nr1/NJ9a4YPqwVtj4AW+ZDL6etnfO5
         tciA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767696025; x=1768300825;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=toSKIbWj4gsTvghwp0maM4ykjC4DpzUsAHsgzjWyWCo=;
        b=SwzPsfW8cYEXSTxskti2UPGDZqXkqctr+SR4TERL65TUYpj0M9ziP8TfuBT464BzHF
         0cdQP/WduErhDjqQ1GbKhAlBE8nMh4BjImL73VNmSk3yF0qzH3fmV06c2bUmH+5pEair
         umW6XcGLOHo6svqGSGdmBj9yNBqXHMwLyB94zs/PIU0k8wnWQfGf0imSw2PGn5xe1MRm
         WvX4EzpnCPRgGBer2yTjEvGZoKZ3fn1c2Yd+WOBfZ69eRux5pMvjaNOy1jjtz90MplQb
         BY2Hp7ho9KIX1qedjhpmzYoZZH5CdIBCLKZZV9EbVOjcQ1EMZ7njixrS3yyGuI/S5XVN
         C3vg==
X-Gm-Message-State: AOJu0YzRV+ZazEmI4+Fd15abqZhretbZIiYdc8aDCCnjb3VCQvV+8Rrt
	6zieR6ffrnk5icsc7HvSFJu0GJ6gQESvOdPdMvT2lv4vDUzU6KY7CVPhOyYHP+XU
X-Gm-Gg: AY/fxX5t9vqnV5OJhESge3Qug3JTLMvjG8+ZqY1DlBOg/AQuXyRdF2pdkxYyhquFkGX
	3CT9WDJJ4QuZo7pqSoiUwEfgwRF/DQ136USufU25bwDBTiM/O70+RCvXL5opDBJyWvGwwOPz+h2
	P6PkaU43M8KIdX0U8fvSGl2eL2x3Snqxje9oH9zFLXyama8ZzJ0vzadRH8j5ofel2BO/oAz6oDu
	DeOrXg2YL76m5J8njkqycG9S6ZKPBOmuLAaHWPRWtozw1T8qwyafq48PgjobaRK1Dx/uyAVCM7U
	i5ZHXazuEtfQ+q+Jt0YdT+WrfFRtvb7cW/oo1jM+XT88h+wDS4vFdt4wlM68JQ/BXylNAVh9Mhc
	8NPq1LqWbla/ojsoEvO1ZYkzY07OkG/yLh/ssHjHbXhcRUhy0HBwpdaFBWn4amcye+QzbyeKrmZ
	+TxzKazbZhb2FRSa/X0IX9AHz6gRx3T11kBOpo
X-Google-Smtp-Source: AGHT+IHgX1b0oAs1zyiY7pwtwoV/GoYTsiVHBdwIX/eATHYuLnLk2c15DiuAELaZ83hYhD7tAn2cyQ==
X-Received: by 2002:a05:600c:19d3:b0:475:de68:3c30 with SMTP id 5b1f17b1804b1-47d7f06b395mr33774175e9.16.1767696025095;
        Tue, 06 Jan 2026 02:40:25 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ff0b2sm3649283f8f.42.2026.01.06.02.40.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:40:24 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	champbreed1@gmail.com
Subject: [PATCH] gai.conf.5: Fix syntax and description for 'label' keyword
Date: Tue,  6 Jan 2026 10:40:17 +0000
Message-ID: <20260106104017.38763-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The documentation incorrectly listed 'precedence' as the parameter for
'label'. Updated it to 'label-value' to match the actual glibc
implementation and RFC 3484.

Fixes: https://bugzilla.kernel.org/show_bug.cgi?id=208879
Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man5/gai.conf.5 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
index d80c23311..b95598e14 100644
--- a/man/man5/gai.conf.5
+++ b/man/man5/gai.conf.5
@@ -26,7 +26,7 @@ Lines starting with \[aq]#\[aq] are comments and are ignored.
 .P
 The keywords currently recognized are:
 .TP
-.BI label\~ netmask\~precedence
+.BI label\~ netmask\~label-value
 The value is added to the label table used in the RFC\ 3484 sorting.
 If any
 .B label
@@ -35,7 +35,7 @@ the default table is not used.
 All the label definitions
 of the default table which are to be maintained have to be duplicated.
 Following the keyword,
-the line has to contain a network mask and a precedence value.
+the line has to contain a network mask and a label value.
 .TP
 .BI precedence\~ netmask\~precedence
 This keyword is similar to
-- 
2.51.0


