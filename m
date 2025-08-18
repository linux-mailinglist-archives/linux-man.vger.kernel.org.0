Return-Path: <linux-man+bounces-3464-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B74B2981E
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 06:26:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C32B81898E92
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 04:26:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34D3C1E8333;
	Mon, 18 Aug 2025 04:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ND0yqrqV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A811816E863
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 04:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755491165; cv=none; b=GgMwJnJk0kVbxPQCIA8FbJpU/ZsEMwFXVVWCNxuyZsys0+2H/wgN8XMjrGCOXB/Y2/38WGtxmO3iMIu8w9tiNSnM28SyAE6luFdlPeu9A0cYrIVu2uWVet7znsEh+KPXDKUChrgoz6GAk38Z7T8Pt2fs1zfSSOmpEMOVkz44D+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755491165; c=relaxed/simple;
	bh=tThv0CArwVnb9XIPqi3yykPaqzOEaFEMFuFlRZ6zlW4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=TUVYKIZggJVMX1yl50AtPi/zuJ/Y8h2B1zDJcsaEek9KkHHPYsFFQpt1o8lgN9Ax0drlSnq7wVlqJdjEXBLS5/c4QUGHRty4/xr5yNp9hU1Ebv5MSskS7e3AWqI7A1r2u4MC2bBT8VjsyYohgirVHlatrVOld7EvrUXP2YsS4+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ND0yqrqV; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2445826fd9dso40779965ad.3
        for <linux-man@vger.kernel.org>; Sun, 17 Aug 2025 21:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755491163; x=1756095963; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xzXBF2Vqjberr+8JHO0PZAtephd3Hu2NiGn6kXRX2Ho=;
        b=ND0yqrqVkyX/F/6A2gAADa+hYsHbxC6Z7YNgf6TqpaZfFIo89eIJfGos77T+ETreeD
         J/iWXuiZ7ipV/0oqbrQicerN9kOSmDayhms6XFpgGYdWtoYtLuFJzI5oJPYKOufkEJOV
         UGeZEmvkeyIWvvP7UC1mDc0ahA0Rkmr6g9WUCcY9Z2Ulnrj87d7RB7ffpgzn4EEepiL5
         Xd9CMNgXypNtAgV7Lp/cT/wDSQB2+HFdEHrYj8bZ/HmwpOaRuFmIVz5hLjHZsBQ7NPvE
         iO4p6GR/qiwhqfLPKYlr7Rd6GK5y4aX5P6lJQ/q/OLlxLVbI2Iz9xjgDuLk+ZUqvMQnm
         +qDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755491163; x=1756095963;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xzXBF2Vqjberr+8JHO0PZAtephd3Hu2NiGn6kXRX2Ho=;
        b=W6nEsVTG/5QuMK/FmGt0fOKkqyL2acUkvSRy0edV7Qpu2sUvYpLnGZ8P2NDnpOqrxi
         8nPh2UZVwMhKFsDFD1bDW6y9gYTv18jQrqbCi+O7UfMnhNAI6ZOGvkJs7oU9147zWRE2
         npa4QsqWED54uNkz+9Xs0PVUbGNlZ8yqIcD1k+/5b6RkQ2+R70QTCNDOfZH4LxaQGRdD
         hk91MkM3oyylykuy4LQCTQyL45tUjTEz8ml6GEl52kJ5p2Tx13E7zUZGVs0OmibGP9ty
         5ljJNvkuCnlYXi+1ozMJQS5+h4IlO6M2pfP8hwRqfYj9mHBSbY9WN/y1TKRzlVenkwhB
         Oeyg==
X-Gm-Message-State: AOJu0YzqazfvIOhb6wgDM0l1qJfy7jX86gBbF63OiYbXoqAWx0bGbDZk
	yg+Vm44d/faAqVyZdjVtBu4vhpqdU+BsLxBEGMErqhy6vZ6qXY2dXsyJ88EqU7Zx
X-Gm-Gg: ASbGncuqtGtZiyX9iKV8CwwgKZFyIGE/G0l6AtgG3cQ7rIyCOhJTFRPvlEG/WbRbqaJ
	53lNb2yFLwskpvtN9Fjrb2c5XjCapoiUCJQeDvBDEjcgt/rWhM6wKOjpI7hkPD3YyCErIfXPBDX
	So5Abil4GRx8tlIEpWq2v6LrTgwm0oNdfU0ebS2I/mtGER8sXmaLFahMs3ZsZnZTLS+pVs/8oFY
	bFcUTVugCREEH3GSqQ/9xfpbp51ZJoW3w7Zs2mwivJTmjJuxCYfHZMqsTHQZkAFRNUMgDUwZluz
	BVQc6o98VKAacCcyQ1Q1OmL/gOHHNs7xR3Kyjlye0RiYmRVdusFENqWRCiAfuCcf/NFnmL8+MV8
	eBUVscwB9y9V+vlvkAFEoi0VXHPyGyT8mQA==
X-Google-Smtp-Source: AGHT+IGXZU5BivWJtNlgyaCB27b1wxJhzAcIRHlCPVZeerHrEOZh0J9LDj2nJ0MlZ1ox4y9/WxvL4Q==
X-Received: by 2002:a17:903:1b6f:b0:240:1850:cb18 with SMTP id d9443c01a7336-2446d97f013mr136246945ad.53.1755491162826;
        Sun, 17 Aug 2025 21:26:02 -0700 (PDT)
Received: from pop-os.. ([172.59.160.70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d50f55esm67494365ad.82.2025.08.17.21.26.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Aug 2025 21:26:02 -0700 (PDT)
From: Alex Tran <alex.t.tran@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Alex Tran <alex.t.tran@gmail.com>
Subject: [PATCH v2] man3/sem_post.3: clarify EOVERFLOW error
Date: Sun, 17 Aug 2025 21:25:58 -0700
Message-Id: <20250818042558.95341-1-alex.t.tran@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changelog:
Clarified SEM_VALUE_MAX in EOVERFLOW description, per reviewer comments

See: <https://bugzilla.kernel.org/show_bug.cgi?id=219335>

Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
---
 man/man3/sem_post.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/sem_post.3 b/man/man3/sem_post.3
index 1df132c89..ce2356f1d 100644
--- a/man/man3/sem_post.3
+++ b/man/man3/sem_post.3
@@ -38,7 +38,7 @@ is not a valid semaphore.
 .TP
 .B EOVERFLOW
 .\" Added in POSIX.1-2008 TC1 (Austin Interpretation 213)
-The maximum allowable value for a semaphore would be exceeded.
+The value would exceed SEM_VALUE_MAX.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
-- 
2.34.1


