Return-Path: <linux-man+bounces-297-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E03E81E765
	for <lists+linux-man@lfdr.de>; Tue, 26 Dec 2023 13:25:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C25CCB21A26
	for <lists+linux-man@lfdr.de>; Tue, 26 Dec 2023 12:25:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC274E61A;
	Tue, 26 Dec 2023 12:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dpQSDXWk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860B14E603
	for <linux-man@vger.kernel.org>; Tue, 26 Dec 2023 12:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-20400d5b54eso3150152fac.1
        for <linux-man@vger.kernel.org>; Tue, 26 Dec 2023 04:25:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703593504; x=1704198304; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G7y+vT4aDp1TNxKPlWzWO98fOowPTQPI89bzUsy0OAM=;
        b=dpQSDXWkef9ezqjwdb2ghY0IX7DcARHGQQSNrOvPvsknPtNo5WxS0q60JcOCm0SvCA
         gPzv02gCccPreVXtIow6il0mEhAe/ychcgeNq1IF1WN6/xtTMiDpWm7JO22pyXoLAw1T
         IEgG8QKrQghv14qmkCSGKFdbkP830oIuGYcI5H3eXWpARYyoNYqDCEuyo70X7CaBgtO+
         ra8IdKPskdqa0D5KhA4ZH0vraamq53GIEYdhikpi9CuJyy9Hzw4qNyZD9AJeA3g21Jkc
         xmnxV65KnPPqu9GNXc45XtoG6MWSvNAhl9t/V7QYhMlz98OZzQHc4oocAL1U7RQVj+pB
         dj6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703593504; x=1704198304;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G7y+vT4aDp1TNxKPlWzWO98fOowPTQPI89bzUsy0OAM=;
        b=f7ESVt+kVH9Wep9e6Xv6DRK05rgMDEVnYLD2aFnUTHJelAQy5mry1OZS96yek94cDJ
         nF+3GfK1fIq/kSvG0ClhXw5FxmOTjKMp/3A0iNiMPe/FtWhkdycv6b291JvDE3JcoZ+7
         quXo0Urz3HwTubSkDKnGI4n0EDzhM8WHN3baBDU/aYKa2Zasg4eF6dcnE5p49wTuTOTC
         SwlxcaiM6JZQVlYVhoKe+dTNB+w4BtxuUmPwjEnuIPt3ZZmR+b7z/ZfCq6JPdXAILUDM
         OjyzlDqf2cAcSRVkeJYlRFNJcrgOEUePG8AgRBZ1GVXhPtcxi5auoMXA8KZWVV7A6rmb
         tD7A==
X-Gm-Message-State: AOJu0YzLUBe4JWHltrw+CyUkR67lcF06zeM8TJ8y6RwqTutKkyvk4uRz
	Jk7ff53y2RI3iW2skBFwTxdrxSCW2hMmjvk=
X-Google-Smtp-Source: AGHT+IGULCxtzwn1KGBG0cqkE/YaxEYnLLgjUI7v17XDauH/LpUGslpNyDOK2AjmjTnDig2fShHnQw==
X-Received: by 2002:a05:6870:f61f:b0:204:28bc:b324 with SMTP id ek31-20020a056870f61f00b0020428bcb324mr7942050oab.15.1703593504429;
        Tue, 26 Dec 2023 04:25:04 -0800 (PST)
Received: from localhost.localdomain ([122.174.192.11])
        by smtp.gmail.com with ESMTPSA id go18-20020a17090b03d200b0028c1807cbf0sm7477293pjb.54.2023.12.26.04.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 04:25:03 -0800 (PST)
From: Rajesh Pandian <r.pandian@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Rajesh Pandian <r.pandian@gmail.com>
Subject: [PATCH] bugzilla_217709
Date: Tue, 26 Dec 2023 17:53:41 +0530
Message-Id: <20231226122341.14444-1-r.pandian@gmail.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 man7/mount_namespaces.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
index 1f0a1b41f..736dd91bd 100644
--- a/man7/mount_namespaces.7
+++ b/man7/mount_namespaces.7
@@ -1127,7 +1127,7 @@ in the following step:
 .EX
 # \fBunshare \-\-user \-\-map\-root\-user \-\-mount \e\fP
                \fBstrace \-o /tmp/log \e\fP
-               \fBumount /mnt/dir\fP
+               \fBumount /etc/shadow\fP
 umount: /etc/shadow: not mounted.
 # \fBgrep \[aq]\[ha]umount\[aq] /tmp/log\fP
 umount2("/etc/shadow", 0)     = \-1 EINVAL (Invalid argument)
-- 
2.39.2


