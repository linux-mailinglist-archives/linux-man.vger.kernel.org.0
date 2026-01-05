Return-Path: <linux-man+bounces-4627-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 556E4CF2B99
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 10:25:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55EEF302558A
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 09:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A41531353D;
	Mon,  5 Jan 2026 09:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k26Xj8ZQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF1B32F744
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604836; cv=none; b=pH3oqIPEWMiQJzk+QJ1FBZrFIbJVT3025oBMV4KlwD0FzV9CN0rHzu3yjy3X7dloTnSdwb81N6QMyVh/AEyjE3XoGYoCasj4oOkoMmNbuPgPVV1k+cK0cr4zYIhkeed36te0XYevea5GZ9kQYRY0KAlNmHqI5FBBtKCtbUdC+as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604836; c=relaxed/simple;
	bh=HAuuFdUi73bafQVGk4l4wc3OQ/ehsqmJElJXrR8cVjk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ADTPUViFbYzj5dNOS66yzE7LbHJD2S6HxZTSbdBqp3ZdsmMtGZ17qbx/sSVO9gDUzClkIjF6PJli3hDgAe5lmRl3+ZN2nOG7AdALbFwOl+whTpeV/w/byGPFZmC9xoIDSBkJG4uXVlFjwvE866qayMj92hBsyYwrSFxJM71j+TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k26Xj8ZQ; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a0ac29fca1so115606205ad.2
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 01:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767604834; x=1768209634; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qM+33cxjC+vAKC6Ls/9OOtB/eVQP7lXeg/1c2YtxXqY=;
        b=k26Xj8ZQozIineKNfNuu4LLAdlagAi098+VxIsZqQYWT+p/muhbgmhGnq0nvhmt297
         RSjWuntZVRFOhqMrK9cPvz5fSsmpxWfMAnMlHR2U4ShHqvQ3C/Dvl8D0xwbbZjhgykdm
         Vg6NR8WX+AuTRjDpYU3JthGzbm0Iux674mRmzRwruPEiLomRXme3DBQG8HsYszhK4xAP
         /tBHGhd/0rEqANikH8Oz1vJUckYAcDeCtkrsGBf91RXAOYeqEVNBmjrnpXM8kxu/TIFV
         swtuKv9v82IQcQ23+eXTd5iVAcRHGeMaAC75iEfNMvvTo+1uS/xSVNb5/puWldFMw2QP
         1EvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767604834; x=1768209634;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qM+33cxjC+vAKC6Ls/9OOtB/eVQP7lXeg/1c2YtxXqY=;
        b=fvRovaroccx7+rAuL6sTug3vcFyQ2d8PcToxNOnriMXv+7XQPbwwkxPTdBXP7VBwZa
         IJekiv58SBbeayRsCqpSY1XLqarXeTzYCpqpSqSSJm/xxPzWpp2ppGP/TAI80Runc5y/
         ibg61i4c4N9mdYtzhgRYbmhNOqRmM9mS/vimCw7KOb+bU20LgEy8JrkPBxbj/8nlqOdX
         zmJP0pGaiX3e1IaBN2W0JFadUb1AAqVpL9ze7asWuncg7fTWO3vnLsx3uMCg8M4qQWtr
         bJ592QPHLy7g/MvIMuGJn0PhkclKXzo1cIbAaePctnIwzqzHog3j+iKKrPAPPhDRSb1g
         I3mw==
X-Forwarded-Encrypted: i=1; AJvYcCX7xDDWeCsE/Gwbr6Rj38Oqa2f0X02WmWhxZg2z2xiLE/Pxan5UShEqYhF9KsslnmUdZx8qpbRGWog=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl/1VjdDXLRNzCkFUqJcUeprtsP/Mvs7vMu6OIDRRK/F4XK+kg
	5zWUiQj2K4mNQtooKcKNDLxo7y3Ja8EJZu8MVTfkocFb49EcNijRuecx
X-Gm-Gg: AY/fxX7wYyGGdZiKYe5OfMJ5wBBjYlvvdHQoCSZFWru0UCfU2IcJ3ftiP9V8bZkqEiF
	jqS2YCONdqnGaH5SrlLBFK5VtQrf22I+u98SivbOwiVRinDWSGfnqoqmPQteifU3G0cj2lMl+QR
	XIgmCaj9QqpC4+uXPHxxXC8zmGcIk1GDfNuJGFRsd4ldbN9VCV0MejG0L+7izx4goIAt+vcpJTK
	FwvifJyqIPe45wpLttL9Xh8DmI3lv7hjfsJgoNHoOSmrtillJJ3wfNu4+VBnTRVYyY429QMK8EJ
	I/dliPjKjcY0M6mo8gFo2eI57BlTGLAXPIMMf3/s6MOzK5wJtCC4kYrsBY0D/7HJtTtPg69Bx94
	8JbWhfwv1oNx88F7fRDxrzPlTGzWhGfJlrt6vXWc35qNSYCmA9IxPm/NpqdB99uUsVcykIyFDkZ
	CX8gBrmmB6adJVE9DUvAq+0QvwOqY5ZGaYAIENRPdP6mZUWw9W88pIynnKhpSBOXrnhaNqWsijK
	fJRgDytIAu3xIYd
X-Google-Smtp-Source: AGHT+IHp5cD20oeKT7NUafq5KFMxLCUUPscJdC16xiuVCaUuIdjpBJHiaeOI2ad+lmhC2i8t+7Oang==
X-Received: by 2002:a17:902:ecc8:b0:2a0:a4b7:44af with SMTP id d9443c01a7336-2a2f232bb66mr396192175ad.26.1767604834334;
        Mon, 05 Jan 2026 01:20:34 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-a8d1-55e9-3280-2b25.ip6.aussiebb.net. [2403:580b:5de8:0:a8d1:55e9:3280:2b25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d776b2sm446173565ad.98.2026.01.05.01.20.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:20:34 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 11/12] man/man3const/EXIT_SUCCESS.3const: HISTORY: Update first POSIX appearance of EXIT_FAILURE(3const)
Date: Mon,  5 Jan 2026 19:18:47 +1000
Message-ID: <966063053cfe8551e5215e55f5c3a9a195a14a10.1767599119.git.sethmcmail@pm.me>
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

EXIT_FAILURE(3const) first appeared in POSIX.1-1990.[1]

[1] IEEE Std 1003.1-1990, Section 8.1 "Referenced C Language Routines".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3const/EXIT_SUCCESS.3const | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3const/EXIT_SUCCESS.3const b/man/man3const/EXIT_SUCCESS.3const
index 4e0918963f87..94378055bc06 100644
--- a/man/man3const/EXIT_SUCCESS.3const
+++ b/man/man3const/EXIT_SUCCESS.3const
@@ -34,7 +34,7 @@ .SH HISTORY
 .TP
 .B EXIT_FAILURE
 C89,
-POSIX.1-2001.
+POSIX.1-1990.
 .SH EXAMPLES
 .\" SRC BEGIN (EXIT_SUCCESS.c)
 .EX
-- 
2.47.3


