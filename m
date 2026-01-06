Return-Path: <linux-man+bounces-4661-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE412CF7D53
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 11:39:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07B55314A7BB
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 10:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC6AF3314B9;
	Tue,  6 Jan 2026 10:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KhzbF/II"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB85C330B22
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 10:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767695531; cv=none; b=A06qIIfA6tkOzFiIjZqjdu/rFIPN3l0lqenQQ3CTFrZCC5uFUHx7gyAvJFcg5Uv07ScS5gOsPYbCCjIBlpKeUk7em7cJ4zUHn0Bohq+2JMK9+c4QrCc7XvRgLsWxGY47+Oaubs1oehBkjhd92rRP97Pg8hpKypR+pBGyNaDksBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767695531; c=relaxed/simple;
	bh=fjZeHy5Q88LzheA5/1onQidCRAK8XrXYB+OmL/LPizk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cTQC9z8uWqyyVRj4DznsMWWdVZwvIGe0qhwq7wVIrdeg5kPVu848mDNtf2oYZFLzaNY6+xtlf/IJgz4PBHj3VuRA9WTfEDB0jBrB0UQwAyDMlG3LFksQ1T7NcFU0dp5jovm4kvrs3YTHKQKpmDTgYvm1HTEuleMCecjzEoe+JmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KhzbF/II; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47d3ba3a4deso4968575e9.2
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 02:32:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767695526; x=1768300326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NRpW20T7RkYBwz4q7tTr+ZUGmOGKmEemkfLxSn18BsA=;
        b=KhzbF/IIA8bdxrgWOXwRa/cvWj/SYk2i6yJGgguAKWNmXy7tx53tHxt72MhpfiRtGl
         XXpv/f8/wiCJJ/AkUzozjuSa+pr2TVcM0bdZGMLqzq6h1XDygSL3QFrkmHRgaV0nC9zu
         c1U5mCvK7W6VKBHRfrnQOSvzqYjmLGsNrpT+k+uYUObZ67Jy6Qiw3NWJQT3HbR9qSnez
         q+Za7/BaRtNh72LcdciNippVd5aw5R5jTuJTvKkO3TtCid4vetqn50uSm3RWsgBS7/b7
         StHZHpCNoyH/8PQ5E4ZdRAFPpUiB++tDydllkNMc9H3jskmzEk5hef6feLR1aCzjcmuT
         U+/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767695526; x=1768300326;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NRpW20T7RkYBwz4q7tTr+ZUGmOGKmEemkfLxSn18BsA=;
        b=jzIZvyJodABaL6syfbknmoi3e4itJllIInDmzuWJIGYVNfDHSj/qM18L35ViCam+pV
         c3Bcp552nycgpOwsPnvk/e2EgltM5tSEIenGmAYPtyyv62BfL9E/BkTOyJv71Ezkdc2c
         e4lDZ+Gw6CZa88jNh6bTjrYZgzeVstpqI5UsmftznuSulCiILRFcuCUclhUrksy/+aPo
         mztUsNZBhVFnfwHklSq6SjN0aD5sA4NbPILE56E7vHNZelFuTznV5fu3YYGXRHImCk2q
         hoeaNLaYQAG7uW/ghrmDxj9kYwbolCYPaa+M0pbZYACwxZwcbNH9e7FYFIk8EdTMHMKK
         Xq0g==
X-Gm-Message-State: AOJu0Yz9V4V/jJFprUDj20mNqpb9lkE/pBv9jJI+0350l4XkPKuDVzka
	kR7LgwpOdurEaJuu/6RdxcSPs1x4k70xx3nj/1cTADnXHfZaaxFow4h8
X-Gm-Gg: AY/fxX5a29n26uDp5GeQS/oODd/SsHjBHZ4mWTPDirTo/8ZqJBW+ZFL0EupXwUPVSV2
	pQp4Q24zlZ/McBCvdgvqJF9L7kcjd92GUMEnR1zuv++kXBRWC0Hcgqi2mFm8soWlm9Hoh5bmT1t
	5Q5MaSwXEF2ooFU6LC0Sir/1YzrtAInAUnk0eROpXd2tX7GxSmrogRcoZfTLGYHgYnexCld5jse
	SeDgwFQv2dGY6Wh+iaVMmLpLcxjAQmkpKoYBAYvCATzEL9fC7V5zels5zwyvBh9J0j0n6VKzewG
	1k3txbW5hneMXbBIwUd9rSZrBwRueL0cwDf1XMt8pDZPx7OAxNv0ZzbTXEA09TTcm18nytIVfmx
	N9OZ12Xcp4ydLdmyNaccvJewoEQ7JouM9Zu1pvqcfeyXWJyg3POogzBXm3TDDmKJOVEN7NEb4Vy
	0b+iTN5veB0nnJxtcRDVgA2aWztI84KCzRAbdMtKTxgEf9JBE=
X-Google-Smtp-Source: AGHT+IEt5+VouKnDd8YPwm4hFGve3tYaetbYhetSB84cbU8gPLFCAQR8RR/EL0sRN6mp2Q8AKGpmTg==
X-Received: by 2002:a05:600c:3b27:b0:46e:48fd:a1a9 with SMTP id 5b1f17b1804b1-47d7f0a86a6mr26248215e9.33.1767695525715;
        Tue, 06 Jan 2026 02:32:05 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.188])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7fae6699sm14275055e9.3.2026.01.06.02.32.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:32:05 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	debian@helgeth.de,
	champbreed1@gmail.com
Subject: [PATCH] man2, man3: Fix spelling (British -> American)
Date: Tue,  6 Jan 2026 10:31:59 +0000
Message-ID: <20260106103159.30476-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change 'signalled' to 'signaled' to follow American English standards.

Reported-by: Helge Kreutzmann <debian@helgeth.de>
Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man2/select_tut.2 | 2 +-
 man/man3/exit.3       | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/select_tut.2 b/man/man2/select_tut.2
index 8fd312bcd..6071ec7d8 100644
--- a/man/man2/select_tut.2
+++ b/man/man2/select_tut.2
@@ -128,7 +128,7 @@ main(int argc, char *argv[])
         if (got_SIGCHLD) {
             got_SIGCHLD = 0;
 \&
-            /* Handle signalled event here; e.g., wait() for all
+            /* Handle signaled event here; e.g., wait() for all
                terminated children.  (Code omitted.)  */
         }
 \&
diff --git a/man/man3/exit.3 b/man/man3/exit.3
index da33aab4b..114d8247f 100644
--- a/man/man3/exit.3
+++ b/man/man3/exit.3
@@ -188,7 +188,7 @@ See
 for an explanation of orphaned process groups.
 .P
 Except in the above cases,
-where the signalled processes may be children of the terminating process,
+where the signaled processes may be children of the terminating process,
 termination of a process does
 .I not
 in general cause a signal to be sent to children of that process.
-- 
2.51.0


