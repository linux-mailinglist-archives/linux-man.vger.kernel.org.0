Return-Path: <linux-man+bounces-1868-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 985C59BC440
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 05:15:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55F83282140
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 04:15:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 229E4158DB1;
	Tue,  5 Nov 2024 04:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j+uhuIKc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C028A2D
	for <linux-man@vger.kernel.org>; Tue,  5 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730780154; cv=none; b=TWZDxRZ/RfHIco4y/q++5amF3R0i7z11ZCp5wTDfW7YAga8jsik/hDqYejeV4cNW7xVf1n79FW+Ip2XstsqsChBpKW8iQTVgHvvhOI0IgkDf+eSgSdcn01zICppPKBjz/0P4ylepranSA7M0xp0rWQIJ9D3uWR3ZWl+fgZIr20U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730780154; c=relaxed/simple;
	bh=rl+M2srU8eLoMdkr2c8BPO7b2cqXkFMYSC0xzCMVf1o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=T/p/Eo/XBoboRVQkDEsvPmQuRwzik1+kuZiX9Ykw5uEUm/2YcOPS5sPlZgGmbbnelm3h+8uTDk8ecwQ9AAmLykb0EaBLiljhYTrf4w547hoOfQtiZlqNESo0iQ+oH3CVwZLrqxTfsp11v84KkcYMJioIOvxvblRk/Srf7JHgj+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j+uhuIKc; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-71e5130832aso4019643b3a.0
        for <linux-man@vger.kernel.org>; Mon, 04 Nov 2024 20:15:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730780153; x=1731384953; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3dXrie9pAgF/67LUqkShxHOo2fW/FOirjsfxHgd46Gg=;
        b=j+uhuIKcKcSl58S5ZzRmUvhuHuDvpw2nnEH5fxgDHfvaZoHNSZy6BeCtdovuYeKiKu
         8UAXQfB90gjpurrpssPPA0elSnjgaG00Hr4vhEdCZ7J8+XKnnorg0z8cFvOsEGTrpQ8v
         aD1fu9JoDk69pcdGLk7aE9wcZfWJHB+33MYkd6NVOrRpMAy1BuSDGX4YxnLD3pbsS8JV
         twKtT9djtuIPtGH68yT70dykCRAznb0m6CcG6iGpK/Tm+j5MQGDc7JuXccI4Suibg5Wc
         2Lbda5ShGswWlxseYxzSROFgSimVfxXAVMIoQcoV4tTl0jS09kQH9WHw2SF48OeqQdwz
         jYXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730780153; x=1731384953;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3dXrie9pAgF/67LUqkShxHOo2fW/FOirjsfxHgd46Gg=;
        b=VWVRPB11LublUCmjHE8kim0CEytMHg1OPvNJR0gLz1nhpL+cFDTvUQrVVFzF+z9xcw
         +N+TC80Qrduh594EGv3d/nJ8GMY6CTAgGnL2tp99FPzBsnKEkUGDYcWO1Ua1ywFfLL8r
         sCp4nVoxUXSrYPKEl+ZwGsNl6rRnrouh2eGs/n2VjxmIcKHMy6D8QHonUwjF5MyI/2+9
         /EHyedLANDdqS/XY+PsZJ5yi/4h9BEGAsjzUifC1wS0jcXPe8zIk6qE5+ZceU9Za7Hwn
         6SREorA7u90jeBddLOQFOoyhwffWBKqJ0Qd1oblG8YvSlXSks9wN310NCtbTnPTrrPf2
         wtJA==
X-Gm-Message-State: AOJu0YygPExE15TXo01iTtjKLfTz9WCzgLHy1qBC6cVtyqwyb6Cu9MfB
	BHW4pMomhKWTExwjDtH8zhlH+eG8gHInjUOXR+YD2lkvaj/yI0FdPK3vQA==
X-Google-Smtp-Source: AGHT+IFhuBvKdK4dA0KzOEluG9PnPPZZVODpNnMRmA1tPwSvJxX1W76xguvJQXhAL8Wok5aG4KLERQ==
X-Received: by 2002:a05:6a00:3910:b0:71d:fbf3:f769 with SMTP id d2e1a72fcca58-720c99ca5bemr21545992b3a.28.1730780152612;
        Mon, 04 Nov 2024 20:15:52 -0800 (PST)
Received: from panther.lan ([2607:fa18:92fe:92b::47f])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-720bc1b90dasm8478381b3a.30.2024.11.04.20.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 20:15:52 -0800 (PST)
From: Alex Henrie <alexhenrie24@gmail.com>
To: linux-man@vger.kernel.org,
	bgeffon@google.com,
	linux-mm@kvack.org
Cc: Alex Henrie <alexhenrie24@gmail.com>
Subject: [PATCH] mremap.2: Update information about MREMAP_DONTUNMAP restrictions
Date: Mon,  4 Nov 2024 21:16:41 -0700
Message-ID: <20241105041700.1386571-1-alexhenrie24@gmail.com>
X-Mailer: git-send-email 2.47.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

See "mm: extend MREMAP_DONTUNMAP to non-anonymous mappings":
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a4609387859f0281951f5e476d9f76d7fb9ab321

Signed-off-by: Alex Henrie <alexhenrie24@gmail.com>
---
 man/man2/mremap.2 | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man/man2/mremap.2 b/man/man2/mremap.2
index 53e0bcf2d..b99ab9492 100644
--- a/man/man2/mremap.2
+++ b/man/man2/mremap.2
@@ -106,7 +106,13 @@ remaps a mapping to a new address but does not unmap the mapping at
 .IP
 The
 .B MREMAP_DONTUNMAP
-flag can be used only with private anonymous mappings
+flag can only be used with mappings that are not
+.BR VM_DONTEXPAND
+or
+.BR VM_MIXEDMAP .
+Before Linux 5.13, the
+.B MREMAP_DONTUNMAP
+flag could be used only with private anonymous mappings
 (see the description of
 .B MAP_PRIVATE
 and
-- 
2.47.0


