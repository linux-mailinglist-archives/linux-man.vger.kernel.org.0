Return-Path: <linux-man+bounces-4628-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4C6CF2B2D
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 10:20:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BC18A30047A6
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 09:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09BF432FA28;
	Mon,  5 Jan 2026 09:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Sw/Zvoqk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FB432FA3D
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 09:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604838; cv=none; b=OwpzzBy8QTVOvKYqRr888xF+6tWjYsvhSqshJCk7GP45KEXejjB0UKYgBAknRMLYOOBUlSKrdUAGd1tzTtOEnUcGTh2XiS5JsygQct7ex5xzgEU9KtqBUsoqAbG18O32+PE76I+TrPjUW+w3OZSQWX14fgVnWMmgNRcuLgkof9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604838; c=relaxed/simple;
	bh=nB0bTsgYoeY+O/eCrhxCr4WrrdNmGqZtaXCJ4ieJhR8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nQ/JAhtHzxX6la8ddFpPMj6+AAJyk6BcO+I+miUBYqetjee05/+w3wrxWMX7rEjcqjRQf7phg9EvjyiuzAe2NPS7Ysl9qGSnEw9YH4j0ft0TNoIATfVaC3ZzUAhr8iTcuGcqAS+dukA43Nl1cFNI8HYHf/72wxmohi0EeHQefrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Sw/Zvoqk; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a0834769f0so135848215ad.2
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 01:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767604836; x=1768209636; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mjmi8Gr3l7/67rskNq85mMeak6AkWgt16gBYle2ODAo=;
        b=Sw/ZvoqkXt0xIUfdYe5eUeo0Q87rGv1R7RlsprBY1YKnvzO+zznV+XZ7bBJ8OEKTD5
         yDf/rxjXrBWpdEzR9g1xwKArmcjwiJ9e3gvT2Z+xXILyL103T0XSP9ka0QBBZBNFM25H
         JLktGU++iEyzWOvBM+zYNeKsfqSYnACM2MyhOUkaBcikiwQJcqnb6nNbt0AaOVYOj6Fi
         R8gqJwmVlOWNcIZVCS0NzM8BloslfINfv5dWtQrl6kIoGIUjSzRnZ2rJeFl9VUsAKDux
         ORzpRfeuooLpRehQcWIhgzbdyKbsAACmABH58tMF4dUh5geWuVa9pkW/UT4jf9nstM6P
         diNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767604836; x=1768209636;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mjmi8Gr3l7/67rskNq85mMeak6AkWgt16gBYle2ODAo=;
        b=rdBcXrv0JNOa8ZLNGXeh2QbbUwczGU8SbVRcYL7+ZtuDlOnUc0vNsSp/yb56KVqbI0
         ICDwRCoDNlJZu27NyNtT+kRG/QGvzM5OgkUrSKih7ljjIctUyINNplda403/R3zCxZSX
         yLz7hfQgIO0YxQiuXs6T2gK1qJFaBpVS20tW2kBEIG4dRj79wD2qpStJyRLIUAJCY8oZ
         225O0Mmg+IT3GiTYTiy+mFiBoy4YOOh8XBNJFwXgHgUZMh8euEN8BNrmnYuFhVpR7x7g
         N3VE6HdGyNWqDhAZsAawqyRh3Gu9VOZj2HpzONaE0h7hcmo6aFtkp86sbcZzufBgs2K3
         1eRg==
X-Forwarded-Encrypted: i=1; AJvYcCUtyx58V/4EixFcCno258UF4VZFKqo8ZQDhcOrHsSvskw7n0K9eb+PcjQN6h4rFVQkq2YQAZQk4UQU=@vger.kernel.org
X-Gm-Message-State: AOJu0YylygRNUybApAplH/kcGxJ3ONlBpcHhX3S2P6OaDDj0DOIohqey
	WdfENXdHWM4jyIKJLgQB2oEF32IXrFSbz7pwj+Vna5x7QHWv2CR7RXvIO2RI3w8B
X-Gm-Gg: AY/fxX6pRjqylr9kgnYvxQib7UdyBqgWGreFihZ02gx8Uh9id2XLPzp5ffcp09vfDVN
	t6w0i4RPbCKwUKu736qWrdjfdl0QOsplK8oeiO+5tg+ir0qFtyIjz4U0IaFYH4Q8ueQwjhSj6oI
	+ehf1xAsrLH5wjXI8XFPFkxZJMUfX8UgIT3B6SIYiVcYxKN/PIEF60nr9VcfMCV2+ZGz1Gt2+/D
	XC1XxVS6pKccpijC8+dhAeqf1p1PfFhTg148t9/7cHl49pWdHOl0GUw1PSzPpp4m4owkg3u8e6O
	4yWEMAEF9VP05DGNNXHygC8d+77GArYhDTVLteX6MqWkt2johgJKsMhzVq0/4o1Ann7G+1w1Wh2
	uqq67XApW8kgq/YsU6op0y9czULiQ0gwoOocXIbvOkaTvyVS9/e1KbiWBYKbydyHJKxo6JAqjAC
	uuMzJCAtiQiF//Mur+cRv6XiWD34JKMXCd+DYlPunv+UXsnhEXAUzQtVq/J8o9iyLtNUAS8uoqD
	9Xq92qJqTFtj1I1SUKi58V2uUs=
X-Google-Smtp-Source: AGHT+IFoAa86b7c/BVxKq8S/Do3pY7rhu2NGU7c8g38imOWs4S+63ZtgTqKw2InWmbL7D/qrhM5MnA==
X-Received: by 2002:a17:903:2f81:b0:2a0:c58b:ed6 with SMTP id d9443c01a7336-2a2f2735103mr437407085ad.29.1767604836535;
        Mon, 05 Jan 2026 01:20:36 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-a8d1-55e9-3280-2b25.ip6.aussiebb.net. [2403:580b:5de8:0:a8d1:55e9:3280:2b25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d776b2sm446173565ad.98.2026.01.05.01.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:20:36 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 12/12] man/man3const/NULL.3const: HISTORY: Update first POSIX appearance of NULL(3const)
Date: Mon,  5 Jan 2026 19:18:48 +1000
Message-ID: <bbd81741f75936d964554b7c460a0a55070a9ff2.1767599119.git.sethmcmail@pm.me>
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

NULL(3const) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 2.8.1 "Symbols From The C Standard".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3const/NULL.3const | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man3const/NULL.3const b/man/man3const/NULL.3const
index e8fed0848938..12953db18d17 100644
--- a/man/man3const/NULL.3const
+++ b/man/man3const/NULL.3const
@@ -22,7 +22,8 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
-C89, POSIX.1-2001.
+C89,
+POSIX.1-1988.
 .SH NOTES
 The following headers also provide
 .BR NULL :
-- 
2.47.3


