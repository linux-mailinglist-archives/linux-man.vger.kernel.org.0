Return-Path: <linux-man+bounces-4762-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F601D076C4
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:43:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A82EC300B351
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811CC2DCBEB;
	Fri,  9 Jan 2026 06:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lAUNQ7Hx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB282DB7AC
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941009; cv=none; b=dk2YILDK9Lh7R5TqmIKN9mQDqJOcw2YH/qiLR119y/FXpFkvopk2PNm0zzb3Apbfhyxez14wH596x4QCnDTIxI8uMPnf02vTZm2Spoic1Lc0G36GaJV41ni8Xhk09mRm/Su5p5fAwAToI7v0GJa/68QsWfXEZGTU8/zBvS8f/gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941009; c=relaxed/simple;
	bh=v9t3eLqWH4Xa21zJ7zxdrmZe+EJUr5qzc5ddz0s2wyg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e/mjYvK7HjWLJcEMa1TAEA/lXR3q+JZJO43XkWKd8Y+IU+qtUt1bQ/ORpx/Cw4Yb9LLfJbu/pPUzxYcW32JZLNV2ZmYgVHsoPXgu5Dk3blMk1jDqAumZHng4/VgFvjXBFpdYav8QfVgQzuaBOc76uLL0+Ol8I3zEuzSGgnGrW34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lAUNQ7Hx; arc=none smtp.client-ip=209.85.215.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f195.google.com with SMTP id 41be03b00d2f7-c46d68f2b4eso2417144a12.2
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767941007; x=1768545807; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=InlexxdVaBlu9Sagn6m0SVnpBjhJ/4bZj+7fWm6eDU8=;
        b=lAUNQ7Hx3DUjgZekeXDwbfO87/kwCE9Yw/KBEQR874vGMmnSLjHc8A2Rvv+bcUfilQ
         my8TXjjWqEx3XEt9S9UUZp/BXsQy/kESTxPOZweNG49DmrSOCGYU69v2n9xOuOoaCu+X
         CeDrVoyu1IY8DqRo0MutZqHK+FvxyzZIBAWYdvj6TCXCiLQOSo5k8whIXYCu2WXR8sHK
         9WbTgqfILuc7u32Ou6YSCsn+okxZdWlKGfrfQG7SOQcqKRyMi+t2ujbfZdHbKKEPbw6e
         iuXvsT2Gucyxqao11zfvJl0Ouq1XqXXCc8V9yJXPhRdPhwuzTBZbp8G6xdxhVuGmWUHg
         I1kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767941007; x=1768545807;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=InlexxdVaBlu9Sagn6m0SVnpBjhJ/4bZj+7fWm6eDU8=;
        b=V+K0IpH/iqV8SMG59gDhI86hZJsxDIYuSt3+g5zuQ/GcgU0HmSnZpF1/oGzlJP/nNu
         oSSbc6T9KvVxDaLSrgZsY96VMujkrOas7FrYmrO6YX9MVBXm2u31rkdkySWI7CsjS2jp
         VnyQI93It/w/zubjYmm89MxR3x8nHlvzWS1RahnnvgBAIgHgWnw4rGoboN06vMK5yUOm
         Q1UNRmQlSK8vWnitePh9WbW9Xy/eROGC0HNIeO4NgtWtZP9bbV9957+9EmWw3U+vZzMh
         nDd2419vet+wajVOuT7MMWc1vZqW0bsQnfgPtsWbInO+/fNiHJqPeOV/b6eMFBFpD0SA
         OnJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnj7+t4D4cF2aSIvW5C/QBOgFNoFnSqOZVbJP8ZKaOoSdqV2Pd1N6ayT6IvAtVUvN3WLoCBwBHgfI=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv7LdHngn+hN11PSQEs9KiRakqhl8Dho9B8Nl4uqOahzhqdZFH
	qwsfZEaaIsj9zDLLhgThyzIfjiFaZ3FoKVJUl65U+HsTrInX46DvRzpgEJcZq7QA
X-Gm-Gg: AY/fxX7LT2VHH1n+USDVPkoFle6sjRvCv8d+QQhY+awvr6GJqwqNz9KXfWybgxUcRqB
	lGlCwUdSgs50WMf3j7nHsg6s6GwguKa5UO9kNcovGdQOHyD9ao0N7CbPe0vzSFH4JK1vlw1NYXe
	mdSe2i1ddKVlK2Wo8Jd5MHDNhSacXCr0cLMhc+j55z9zXLmhKRtoKIf+P6hspSyp78Rab7EghhT
	5Hh9sHAUey8vnMR5oSvErKDppifFOhTZV9bNEgicvZaxnxrr48Wd+eQPCKZUjUedSboy03laqUP
	wzDWxBkqqzEDf9zkJ0kwwIyYpbmqZ8XpQ3pTVMLIII+qayHyKxLMo2T5KSfe8VaTq3S5eTw2KEJ
	gVntUzWH7eqHSoRr/F6Gs6CQ0ykAPL+Z+B8YgHcagILXGOQ2/LVONvA8kpVdhwZb+f7LBeafi+e
	fSlFHZErPFVzvI7WZfMIomNb8k+hVkVf+eeGtLq5cPSyqDc5tv9wwtqHUxiw0d1ybW3Xq9E0apl
	SAxHVxRpK2FCSzC
X-Google-Smtp-Source: AGHT+IHVdQSsxEvhib8XQIpHThwNYlfG5gMuoossq++YMJ0VgiEESAvX3iWJQesAkKHvVDlBY421pg==
X-Received: by 2002:a05:6a20:2452:b0:366:14ac:e1ec with SMTP id adf61e73a8af0-3898f9bdfb5mr7798134637.62.1767941007467;
        Thu, 08 Jan 2026 22:43:27 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:27 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 16/25] man/man3type/time_t.3type: HISTORY: Update first POSIX appearance of useconds_t(3type)
Date: Fri,  9 Jan 2026 16:40:34 +1000
Message-ID: <d8cf35e1cf3e16fe0a323c0dd01bb4767507fee2.1767939178.git.sethmcmail@pm.me>
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

useconds_t(3type) first appeared in SUSv1.[1]  The type was added to
POSIX.1-2001 when POSIX and SUS merged, but as an XSI extension (still
SUS-only).[2]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 838.
[2] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 367.
<https://pubs.opengroup.org/onlinepubs/009604499/basedefs/sys/types.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/time_t.3type | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man3type/time_t.3type b/man/man3type/time_t.3type
index 9757a3297ca2..b16507dbd95c 100644
--- a/man/man3type/time_t.3type
+++ b/man/man3type/time_t.3type
@@ -62,7 +62,8 @@ .SH HISTORY
 POSIX.1-2024.
 .TP
 .I useconds_t
-POSIX.1-2001.
+SUSv1,
+POSIX.1-2001 XSI.
 Removed in POSIX.1-2008.
 .SS Header files
 .I <sched.h>
-- 
2.47.3


