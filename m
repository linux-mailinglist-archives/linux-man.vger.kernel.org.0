Return-Path: <linux-man+bounces-4625-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A21E5CF2B93
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 10:25:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C09F9303F7A3
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 09:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78DCD32FA3D;
	Mon,  5 Jan 2026 09:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RfwB91sh"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83471D54FA
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 09:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604832; cv=none; b=bBw9uQBw10JW9z4fZse+fzRPbHnH32stbWHb1TkhMmS4F+5e8g5oReg93a8jA4FLyTg7DsjyKZXmkwVDxWhl5iPRJFJsJKkBQ6hAN4ymGljCtN6J1QsnW8bRBayCXwm3EvNzWtOaG8cPYMfTvuqF9+HqNUMU4xiOoUogf1RBSfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604832; c=relaxed/simple;
	bh=Fw7oxhhGYI7sWCMU913bi8h4AL2QWFsxEnmXGBiA14E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bc83oX7H4ueitqQ1TebQq1l+yN1q6V3p0yWz0olMcWfzI+q34MFxPbKth2mJEbCZ99vyOjfOWqSbq6U06rQQMh2zauROw1fhXeilXfyjrGV5Jhbee23wS58vFlJHsTbVdXlojakX4y9ISLnqZ0oW5lOyM8o2fxrLsoNqULQWfdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RfwB91sh; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a0834769f0so135847505ad.2
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 01:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767604830; x=1768209630; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0AyERc8aiexccW+dsHUf92uVj7j4stIQmQjoMBYo61A=;
        b=RfwB91sh2QZEJfBYne40skOEFQ734runpAeEDVpWUQN5l8XOLbgIzI7bsRKvHfOiTM
         /wLF2OO6x6xtOko508BHaRvBS3XYr34tzVwP5ljdwWXDU5oc/twxfP/gyccPnrJNX1QB
         bfv6uLbZhl0K2WcGLT/sN2SrmNAOMIiyLMQNpZ7ld66jm3KsEMGJyXuTo4E8lOlR0LJ5
         LqESycLZbhNuPo8EA2kYjw+o8DUWJuCc3WzICNYXpywzuLzKlZ7iPgHPuu4l7jnbKPHo
         QaCP04wHiiihmgfkmaz/JQHg0ldQIZtGAX1cRR6XLiuZ26Tneb7JbrFqMP3k3HWekvcy
         Q+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767604830; x=1768209630;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0AyERc8aiexccW+dsHUf92uVj7j4stIQmQjoMBYo61A=;
        b=iCbOJxV2rV3CBlo8Ds+qBC+93fl1CoJWbQEdUmQzzX7dCJdkjeZgqcgaM2X8BY5Dbj
         Q8tByxsPxgo8ImHHWa6Zl1rMAMO+PTKnZ06Liq+5O5gRAW2kZka7IpUUQUNDyjLCruI7
         rQQXsCyX2zLF+72M0yWUdXKdfHOzn4Mb4iON9c8f1BSYfapRrJDaikXzWzDkEKpelJlW
         qCDt0p/IOdmQhoJmPwhn3RyXc9seuvtHiMQfonsxSYYxGHwCU1sHM2bS1PIhgoZfjmcx
         6LLPjmbUZAa5v36jyau12xP5Q4JCN0Lr5FUUll/sLX9NSQR0jwRhvFjeOOV6hJEC3KG0
         JHhw==
X-Forwarded-Encrypted: i=1; AJvYcCXpwZ5i15d80LlkDh0uMP4uDR2tMpVQBaNMFG5LNAj8x/Mt1956+xvrubxMit7mLfjNR3CEhZ7Dk0M=@vger.kernel.org
X-Gm-Message-State: AOJu0YzMAaDivlhV5qB2DbWOYzCTE4G5MQa+dG2oby4PzLTDy7YuvNfH
	ySpnMZUxZaEYhmR76WGgBac+622jQjnCusltAV5XsOk4NOVfYPUpB/0IJeaBLejc
X-Gm-Gg: AY/fxX7g6cxDCaxtWjehOsQjnR6QLsblaIEl5eF+frftOj3K/kOeD+KamcUylEy0nv8
	DH4gO18yj5JSRYkt/JHa7cmRRDkCJtO2kgpSpZLrfH8IU4p91NfCsco9CK2pxABM1fvqF/sL6hs
	3a0CH50dv85MST674X+xQXUc9ITcNfZTVgiXc2rFBP4YQz5AuGm05x4tdFTOlZ/xI+Owcvj7a3g
	xT+HPmAeHJEDmm++L2BXDgteVXPyBg6RayblEMbyBPjPYC52O9IvziDnhdA8B3SFg0X0+MnLWgv
	H/Tb8dfA8d71BGcNBZxbvjcefg/NpaQF3qvJ8//ZqobJfLNInKUa9DB6D2VurXWfABXGTyw0HHF
	V5yHJ0lIOTNNatunS/JY04DjUK3Gs7wvNF4ebEwlAKUKiDdaBfWHGLlZurGcOXuajTUnq4tjdqi
	vb2FXTGygRF52BvjOTP0c8xf1r3yFUPYcWolTENhtqqm7m1UWtTcAE38fwRYWHlN7YiCJ+39J5T
	a4JNUwzuphMMM+0
X-Google-Smtp-Source: AGHT+IGO9WHO97k5VIsYGzuDOalwL9D4hyvHN8tlzRebLrTjRtcR1Hk5OKqr/Qmu+oh74bm8GwoX5Q==
X-Received: by 2002:a17:903:2b0b:b0:297:dabf:9900 with SMTP id d9443c01a7336-2a2f1f72b44mr579133845ad.0.1767604830120;
        Mon, 05 Jan 2026 01:20:30 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-a8d1-55e9-3280-2b25.ip6.aussiebb.net. [2403:580b:5de8:0:a8d1:55e9:3280:2b25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d776b2sm446173565ad.98.2026.01.05.01.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:20:29 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 09/12] man/man3const/EXIT_SUCCESS.3const: HISTORY: Split EXIT_SUCCESS(3const) and EXIT_FAILURE(3const)
Date: Mon,  5 Jan 2026 19:18:45 +1000
Message-ID: <25f4fa02d9413de36de8688b300df5e1c73d0565.1767599119.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767599119.git.sethmcmail@pm.me>
References: <cover.1767599119.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3const/EXIT_SUCCESS.3const | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/man/man3const/EXIT_SUCCESS.3const b/man/man3const/EXIT_SUCCESS.3const
index 7f5f6030dcc7..a88422e7d910 100644
--- a/man/man3const/EXIT_SUCCESS.3const
+++ b/man/man3const/EXIT_SUCCESS.3const
@@ -27,7 +27,14 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
-C89, POSIX.1-2001.
+.TP
+.B EXIT_SUCCESS
+C89,
+POSIX.1-2001.
+.TP
+.B EXIT_FAILURE
+C89,
+POSIX.1-2001.
 .SH EXAMPLES
 .\" SRC BEGIN (EXIT_SUCCESS.c)
 .EX
-- 
2.47.3


