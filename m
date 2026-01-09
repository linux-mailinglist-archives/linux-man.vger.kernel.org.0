Return-Path: <linux-man+bounces-4751-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBD9D076B5
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:43:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55872302C8CA
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C20932DEA6B;
	Fri,  9 Jan 2026 06:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FW7O+GBQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2362DCBEB
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767940985; cv=none; b=aSHEa+76gYvXaHsPpOACBRHHQ517lyODMBoo61EPYNPV3qVHlvf/fq1a8FSUzDRQF7xhBmhIl7eFs5XVhuc4IDE31D9V4tgmN/eSGJrR3d0zg3VqLB4WdaO5sfJ9mf1KnVPdaHxbm6nDUev9VxNVt8sgXafn6B0jQD6D7ZQ1zFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767940985; c=relaxed/simple;
	bh=Cq9RbAAXKg9ERwHhuC6gEE20Ho5+GZGt5zkocHxH9UU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rrQLtMnqrBtqtPYlF1riee6gieo+MaQ2X/4lXqZACgGTRaBDbw6Fe7Udezkx81cYHM0/6r7eVpQF51AhXeoEPTI+GhMUUzXpKPDgDSYYCg3vmmR+iVU3jfrUsj/9SKzG1J02Z7EI8RWrApTFC9LpZSJvt4uBYfW5s9woz13G5bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FW7O+GBQ; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-34c2f52585fso2511601a91.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767940983; x=1768545783; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RPP44vTxX56LQeCPmt6QlpeduAIWbNArYL9Pugs59gI=;
        b=FW7O+GBQEHhei15gyPhji4XhmVxExtR0eJMagTWiG/bD1VxD/vOLKE1PeaH5HX0d5A
         nHxdmXnHbKxlAYzSrcUOiM/1ctU26mOs1/K4pbc7qi/8Tk3z+QZYbIP6X0wSMM5rx0EO
         8SeZirUr2T8chcHWSSfF4wVAP+CkSXAS2hTECahP0Y4PzBpXwu/lNhijTQYGFGUo1CeD
         q3lUASnFeWmc7s2VDIpf0H7pE5w6+UEfyDeVzA4XlPGrKhCcAjCBJwv6EMEGlGG11o1i
         3RWSDXlUmZsJ4xCLCce0HVxrr8PtwX2/KW047NerS1LXCgR5GCKGBZWZ5amowfxGkFbU
         izXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767940983; x=1768545783;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RPP44vTxX56LQeCPmt6QlpeduAIWbNArYL9Pugs59gI=;
        b=o9laI3u98IpwbRRnksGKW+lq4Yv949D5cK6BqZBVuu61N2xUqq7xcta1ctriKOemrH
         0RC731of5/5o8utTPtmGo2zKlgowQCQcL0wbRCtjtyNU4fpcBeNWDC0yzSYbERntH6QI
         enug4n+deS9OBXmbI91sV1ETxXQ3m7AYxsSOtHmB5PhAUnEofNczPg7jfI2yUOmIjkfo
         lWGIrjgD3/aTFe7Dp1D4ywfQDVaFrMRJXIUb/mbxk9wj1cmw7tQl5v0euKllT6dKDefL
         VzCSBwMXkPIKwobkdDBDNH+tJiT3rG9/HvPzxPSbxfZs64nAvXGP9nYSbIj5xLcJJZzW
         Xuiw==
X-Forwarded-Encrypted: i=1; AJvYcCXowSL/yb0zcpjieGOxqinLr7kXw4W9dIl0dxD2+DgpxnUVeIVcClGleAMJhGtLqAzEriFGrokGzUk=@vger.kernel.org
X-Gm-Message-State: AOJu0YwjaH0VgQx5EfnF9xH3DMg10ePWVQ0w/CwxvzV8yy5UHQIQABrk
	YD/Detifwv0ZZ66Rnarb+h7Hg/trzlA0jorGqHEThuI6A98otchDrcRJRXDOD8PK
X-Gm-Gg: AY/fxX4maT+ly1ZeHJCyoIIm90EdHgbOuWRBCCbak9CEUMeLUsDCUIAhJ1hZKNkpt+Z
	N7xhNvrWa/YhH219z/bhv6l69jLixjfqv5jxXS70opjo/nJLgPKSvp5U3EM7yAf8/DwHG7uNpHN
	XclQAjHvsVwTcjir7TAyfrdDTDQqtN8f94KMdsX5OHseAdXcPYYd7cAMr+GqTwtxcAEXyVLUMez
	1Z4xKsBvkI5ooHr2591NUlKmOSnAj92B659p/Mv+gy6YeImMW9ZMnUVk8BOayUPO+jvcH9xTQXe
	5cIGcxsq0jqTei3qrBtxMPaw6bt1Ww3L983OYUWmqrtnyeZNI5Gf58F8CJi3qTw1ZJm/WUG31zq
	aeML7C3bqbPccbysDj7Ad1L8OVMwftd0L39revNWa4MZOA+s7t8MjNUWXzUJ6pQi6v42KSp3BzT
	faTkjwijwX7OF07/Xy8YTiSnX7kd/9reeU23R+H5KH4KQpYKY9a09wJdpNLxFk1CYVOZJJrwXhR
	mGC/jloFdOqqXDv
X-Google-Smtp-Source: AGHT+IH0mtBu9du+9mPpS6e7Zlt5c+5If9HwhyFpi5vGV99kny+GkK+uJPCLgH9WBUHjk9qY6HNQyw==
X-Received: by 2002:a17:90b:57c4:b0:34c:a211:e52a with SMTP id 98e67ed59e1d1-34f68cae46emr8363802a91.27.1767940983602;
        Thu, 08 Jan 2026 22:43:03 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:03 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 05/25] man/man3type/intptr_t.3type: HISTORY: Update first POSIX appearance of [U]INTPTR_MAX and INTPTR_MIN
Date: Fri,  9 Jan 2026 16:40:23 +1000
Message-ID: <455e106a5e0d571f617c544d870f252a1896ed0c.1767939178.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767939178.git.sethmcmail@pm.me>
References: <cover.1767939178.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

INTPTR_MAX, UINTPTR_MAX, and INTPTR_MIN are defined if and only if
intptr_t(3type) and uintptr_t(3type) are declared.[1]  So given that the
types are only mandatory on XSI-conformant systems, the same is true for
the macros.

[1] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", pp. 314,
316-318.
<https://pubs.opengroup.org/onlinepubs/009604499/basedefs/stdint.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/intptr_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/intptr_t.3type b/man/man3type/intptr_t.3type
index 680553c2de25..0e433914521e 100644
--- a/man/man3type/intptr_t.3type
+++ b/man/man3type/intptr_t.3type
@@ -106,7 +106,7 @@ .SH HISTORY
 .TQ
 .B INTPTR_MIN
 C99,
-POSIX.1-2001.
+POSIX.1-2001 XSI.
 .TP
 .RB [ U ] INTPTR_WIDTH
 C99, POSIX.1-2001.
-- 
2.47.3


