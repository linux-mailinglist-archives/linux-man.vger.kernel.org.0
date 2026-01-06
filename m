Return-Path: <linux-man+bounces-4644-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 029D4CF6F96
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:10:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 289AF301A1E5
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E808B2C11E4;
	Tue,  6 Jan 2026 07:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X0RoUJkE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BA522127E
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683380; cv=none; b=BlhuAh+8WZg7QIYrVp50Igr+kIF3RbtUWfO51WYY1jDuRzSAP9SDQxxBrHD4KfHlxmCjshEjZ456loSihzqByNVACPxC4OVJawgi2+6GywiMhQXJ/j42x0EGQ+xWG6M8s11RD7WKQSKnA+v6PoPM/0u6w2Op3GLNhCHPrHWlWLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683380; c=relaxed/simple;
	bh=4jk2EW3zNDs3IE2YM24DfMA5XeX3RQ4dltKQwYUQijw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jIHCBJY/pZ2+9AHvqsLWcrh+JmNNrSwRRute2hWdapsuyof8PbsTtkejVJz7m8w3p6nuGoCDNQWx26s6aInauedXq6WCtx3Nb1/Mz0ms2sxjr64g7pkbrTvcWrLBBZk88wSc4eNkX/dr2o5pHl0QcWvU9b+ENxVj1xR5JlYnuMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X0RoUJkE; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-81345800791so571588b3a.0
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683379; x=1768288179; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GuWYhGtaCEzEpo3nenvBSn/USsdvKOq6JXuXsKy8pnE=;
        b=X0RoUJkE583BaV4kDjFD0P5Y981AY0p51exZ0PrDUcQq3f9B/dwD8x7R7aOxPdT/RX
         cCFchi3Wskd3ypvLsw2E4Q4KDNZaZ+bz/vwq9THvgYVh6SXqsum0fP4KIJx2NXXRNDKH
         9+sFZJIEaazDJXiADRw1mRvB7hfNxfRJudySofZ8mvvQmG4u1tlCBGWcH6+ogNzTZ71K
         mGtIsnWy4rfJLdGP9WC0DUGzoAba7s2d8fFXMireIazvGj5Sm5HTAoK++JKEQF9nHGZS
         bmcSTpcRUXwTDiZN4arZnSK2Tgt+GckoDPquAL1IS5XXvpwUvP8txBjCzP/xvSfi4weh
         D0Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683379; x=1768288179;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GuWYhGtaCEzEpo3nenvBSn/USsdvKOq6JXuXsKy8pnE=;
        b=Ra1JIKkjSVet1e/wza3THVgZ7mj54JUZukyxIKKXx/GojnmgNWbCNnkn5Y5CzH1hvB
         jvJv5lVjVdnhKUyhGoFPAr6u/Bf0q2fTTPGBvHDCOnmk6TlrAd4mg/A5PKaVCHUGbq9f
         ZKZQGtn7xdHsvEyoXNPMkwhkxFPCNi7TbbYBRQwR8dcV4G0Kqgg/UwzmymrIK09E1KL3
         QJQettaVphqFk0GkYaXqqE5hqlWafOFEkTqVxmKPrHYrDzpHrRhtIM4grEwSbJHEjbjf
         DCO6E7aRXet5byy41LmtegU9i2fP33wM0M2ejt5U5AdCbQN7Q8O7qim84bhfNedAnDEM
         EGdw==
X-Forwarded-Encrypted: i=1; AJvYcCWIWv+GQFHpzlvOHpDOymd9hpAtxTprrAI7JNONmBvNWlVXAIyxLxDtzkFVfhduip1JZHJFi6JBCVw=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxoki4tRH+3nLCmNdtU1nJoPqv8iVSk1jGLfYi/9u8at1iW1x+F
	36dsgxenn/2KJNBqFW186F+fKmZbGzS7LlLGGdBSQ8qwwAxRXSHM2C4YyacJBqAF
X-Gm-Gg: AY/fxX7TYxgTYQUqg5snt6AOpccFtbcZ3ep3sQ7u6NYHqE3CwXg5qReYGjXaWueOzfO
	0nMz+FFJCZkkMhTkOAiCfMEn7RfCc4uk/z5C4cXDPkmhHMtWnZQca5eZ9RRQ7hqnTQQ99dbJtjp
	a3qwZ4fPVLiAkV2GLmxuhOposFAOJb9OXeMBjAS77yBFa9Lz9GBFo6QhgGfm2t4hzWzgVZhJT+b
	I8uMMYfF7aw4x6F4EZLPSvKovaQEX99pjmbOk2NWmWMRN8lSJaVrlXa+OH2seUP6ms9JljsUiTw
	C2ajfw2Q6nGpFcVrHsi1+oih5uJOcHiXdIYutXrj67ba1UDFs8UjilIa9GjJcUG6RmsA6ocsd7a
	VPMuJQja9M6r5gqRsHGZQFyYVxu7/PnqFkUyJb+hPy31fqTLYYBQVByFCCBv7FHdbHZ9cdD7KJc
	XVcOC97/WQIs3DkNqwNvB7x4qpfgpZ9o109qYj/x1z9u6kLtE+gfRlZqL9fo5d2iqbSAzAQx48K
	kxIodGcR5Vt04+n
X-Google-Smtp-Source: AGHT+IFZnk5iguuDvOTw+b6sG8rgQ5m6/WhprEz1Nzc/w9y6uEIIVreG3C132BbEUOSsZiMffzyq4g==
X-Received: by 2002:a05:6a00:32c6:b0:7e8:4471:8d6 with SMTP id d2e1a72fcca58-818829e1973mr2006547b3a.55.1767683378576;
        Mon, 05 Jan 2026 23:09:38 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:09:38 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 03/15] man/man3type/cc_t.3type: HISTORY: Update first POSIX appearance of types
Date: Tue,  6 Jan 2026 17:07:52 +1000
Message-ID: <eb523868fce18ce322d720ef52219e8c39851b6d.1767675322.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767675322.git.sethmcmail@pm.me>
References: <cover.1767675322.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

cc_t(3type), speed_t(3type), and tcflag_t(3type) first appeared in
POSIX.1-1988.[1][2]

[1] IEEE Std 1003.1-1988, Section 7.1.2.1 "termios Structure".
[2] IEEE Std 1003.1-1988, Section 7.1.2.7 "Baud Rate Functions".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/cc_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/cc_t.3type b/man/man3type/cc_t.3type
index 99ed8d4a9ef5..4337d508b8b0 100644
--- a/man/man3type/cc_t.3type
+++ b/man/man3type/cc_t.3type
@@ -28,6 +28,6 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-1988.
 .SH SEE ALSO
 .BR termios (3)
-- 
2.47.3


