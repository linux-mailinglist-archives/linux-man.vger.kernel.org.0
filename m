Return-Path: <linux-man+bounces-914-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A168C5BA8
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 21:21:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 399DC1F2210E
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 19:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B413F180A9A;
	Tue, 14 May 2024 19:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KuNlMiyn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0263017EBBD
	for <linux-man@vger.kernel.org>; Tue, 14 May 2024 19:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715714485; cv=none; b=dRqvTm0LT/q1W33n8WbQ7/SzQvAhSFjuqK3L+jGdKPIkBPhDpS7V5KpsYgWonUzye84GBa0HX7tI5SF0nTl3/4Tb6xyLG+wRq1TMhxjOj233Wbq5dhKjEGA1gjHPDQXgDYcCXUPZL08PHHP+yjxdbpGDXBWTp4WTlSkaLtoHXgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715714485; c=relaxed/simple;
	bh=wMsuZi/nfi4YV+WvuJuEnpwGR5JBeROmc63pDgtg65k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IJFS15Q6/RoqTCcpFM3wA/phQxSce+o+xFEpMJ89eda7ZHXwdVJGukU9uNDk/yb4eBlsFC5qxfF0Mu6mb+5IQA4U4PEhCh2q0dbwilqqz+VlFvraKdG4UJxXnmbEt826PMwAi2Jpox3AdwayFpxIb4lqZWmr9dR3faXmm9+kyoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KuNlMiyn; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-351ae94323aso2803449f8f.0
        for <linux-man@vger.kernel.org>; Tue, 14 May 2024 12:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715714482; x=1716319282; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yypcy8C1cwA61MeEaLWC2W6BS6noK11eZDd1E6eycos=;
        b=KuNlMiynNq3aJDtWEmPyy3RrfyN973FryllHcJIXdn1x4g+0clPINhwLDa+VRDyNd2
         ZD/p0GZaaihCuytEL0nl47vuhmHlIVtKXE9yfkaceHNc2rPT21sfVWXbLTxQ8gdG+ioc
         Mrkl6E7lGAAJDp6PdZZ3312c4re7ihe0yHQQ33cBbFIVHq3yU8wS3LsZ8yCRazbiCegz
         7aYWwDB12JfHCs3pXAgw1E02c7ZxvubvUlsNXNhHwcR5lSg9z8pJgR18QlS+cX6SZbNb
         O/Tuv0VSqguHxpdhL1iTT0fVaOGeYTmDHCXgcjaHJKK/EwqUyeyBdvEXhGpWADj3FDwS
         6wdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715714482; x=1716319282;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yypcy8C1cwA61MeEaLWC2W6BS6noK11eZDd1E6eycos=;
        b=dYaWm656VJzjLbI0xGTqNLXCuPYjFFbAQKtoGuQ5rhXbqMtPKz7J+rstc+rDTYiUke
         U4Ug+0oRITSElgEN9YZ2obi7r2ZeO+82JV4EKzYTZAqHD+mQ41HxNonDVswFf3QXUS+z
         pyZP0PV9o61MDiBZSHNUJ+eyyh1qybcd/d/1jHQzpYBW3ABJm8wwTB6T9DYeOUsQoF27
         EhRvYXl33fJmwLAvRjiAz3Groi/5GOd5YqCSC11G/aGNd8gYNaCFHHn4WNzb2T3jWkvm
         ik+8cJxmQ+XUu9s/pGa/uLraVxp4sSYJtys0Hd+mtA9uW1ABUEMr16bWacgAiPTJ6Oaq
         OKQA==
X-Gm-Message-State: AOJu0YyoNogKvPQ2qqvpdJ0eemYS9jJwpElEkwf6b7o07hqCLbXRPImN
	X1xIRUoDwwE9ByNhzLMZj90TQf9cy8iNuRLVebQJm1IaVEwt7JiE
X-Google-Smtp-Source: AGHT+IG4TC1n/J5gahLO4fQd2t0+pIFZMHuMXhcHJI4PxWEO+4iZ5+eBA0ZnrtKmRYVQinLAOO/GTw==
X-Received: by 2002:adf:fccf:0:b0:34d:3d05:cf3a with SMTP id ffacd0b85a97d-3504a6311a6mr9746639f8f.22.1715714482164;
        Tue, 14 May 2024 12:21:22 -0700 (PDT)
Received: from teknoraver-mbp.teknoraver.net (net-5-94-218-116.cust.vodafonedsl.it. [5.94.218.116])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b79bd7asm14279085f8f.17.2024.05.14.12.21.21
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 14 May 2024 12:21:21 -0700 (PDT)
From: technoboy85@gmail.com
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Matteo Croce <teknoraver@meta.com>
Subject: [PATCH v2] proc.5: document 'subset' mount option.
Date: Tue, 14 May 2024 21:21:10 +0200
Message-ID: <20240514192110.84881-1-technoboy85@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Matteo Croce <teknoraver@meta.com>

The 'subset=pid' option was added in commit 6814ef2d, document it.

Signed-off-by: Matteo Croce <teknoraver@meta.com>
---
 man/man5/proc.5 | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/man/man5/proc.5 b/man/man5/proc.5
index 8022ca49e..2567387d3 100644
--- a/man/man5/proc.5
+++ b/man/man5/proc.5
@@ -105,7 +105,12 @@ This group should be used instead of approaches such as putting
 nonroot users into the
 .BR sudoers (5)
 file.
-.\"
+.RE
+.TP
+.BR subset "=\fBpid\fP (since Linux 5.8)"
+.\" commit 6814ef2d992af09451bbeda4770daa204461329e
+Show only the specified subset of procfs hiding all top level files
+and directories in the procfs that are not related to tasks.
 .SS Overview
 Underneath
 .IR /proc ,
-- 
2.43.0


