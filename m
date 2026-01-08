Return-Path: <linux-man+bounces-4723-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 74073D00C3A
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 04:04:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 63F8230010FB
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 03:04:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9D12277013;
	Thu,  8 Jan 2026 03:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GZysS7ZY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315B120F09C
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 03:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767841457; cv=none; b=C0fvHvI71bzIMP7KSQxERUSYMEoC2eRSW3I2ClhZ+EYfjP/8QWw22P/7xVMhrqZd5I12I2KBw3TReT/l0OqcoraUqh6N5q2WFbX0wOdzjpcS4ap+bjubAL4Se39gi08iLRhn3q5VmShTaWl3W4JwE/TFyyulUZWHVapCv/f/S2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767841457; c=relaxed/simple;
	bh=XP8IDAcfwHa49J84EhHMknTOiiH/T27MYDthIMvulM8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OQhOzxvoGgjp83DnYY+k4VMzi1W7b8UAtOOQkTNMHD1l6EAG7sPUeG5HKi16ELVP3nmZ2q0uprydqJiuWQ8+R7RdR2lK1+vfmCNveW05N0vxSfXcYrQx6yGKTx8nS7o8dHu5Wv+WEzk/Fmgawbmzu5Bgip9T2Px0qTnC73mbptA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GZysS7ZY; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-7bab7c997eeso2199120b3a.0
        for <linux-man@vger.kernel.org>; Wed, 07 Jan 2026 19:04:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767841455; x=1768446255; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qXxzY3BpUF9liI9poopvv8JHbN1s2eNJDjQTw8j1Ww8=;
        b=GZysS7ZYFtvqXeYwvkvJox2oj9l6b50UeNOKu8hGdCZbPIdJJhoMkss6VUDqxK1UJl
         EuRUdq672KIe8YrxIqP+6znTkSb/7ZhrWfHnfdwOm8xrkzItGSGPE9gQdtpuJPwrwlzn
         xdh/OzoUYjFfsZe6zkqvHxi5XgU5ymmMGy328TgHwFWNr2JEwzm31KxnCN9Gm5C7u7UC
         RguwZLR75zocHjWmI/ZyXt+b9gHOMfrUagOYl1psFBqrgcO49gPh1HZHi8zi6ggzzxyQ
         ySF06+ksxevv1QBAekOl2x4GonK1d5XTXyY7wm7RyzoKDUz3xEBb9wSeNrp2CkdSaM4O
         VttA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767841455; x=1768446255;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qXxzY3BpUF9liI9poopvv8JHbN1s2eNJDjQTw8j1Ww8=;
        b=OhSZWwAreGHUFYgtEzgVot5tXkop9D5Do4o6dy2B5BuQVn1IOBGJK63di8sahAdsDH
         EdVxLvWP06Ukf16CSR+sYsVTg14IFwUd9MeYcSxcWXfP0gYwvZHA9pjeCtsIEiGl1dBw
         PuveIcEgHvYnVShIfp4mgbllfXghF+JB6+xua9XcyP7BvzxPjGu5OncJebs/9VskrYlC
         dIO91bN6GiY+K6nQH0Um/EYKnkB1v3uIW4Gkj0nucRKukckcTr+nkInIlhb6Bik4pg5T
         5JE7YbX0JQCt6nRBrF2EeW4rfsW+JxkyL+KU5gwqkhiG3SEnwFsAcemD932zzrSOc24D
         cWEQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0s36uXV7tpgIMe8fqjYl9iCI2k9TqQzKJ+Tru3Z2/YcAHtW030mC7YqyNpQaOBiJExYdAuS6Zjd0=@vger.kernel.org
X-Gm-Message-State: AOJu0YzNu0piHH1aECqheVls4nW+XnNeIJPggPGslREvo4bhQ3RNVcgf
	H6mmbU86LmTV0fQ5n08pds485bVVPFgFSpkkwwGmRpzAtzRR0yATFyrH
X-Gm-Gg: AY/fxX4B2ucOYMldHcOA7WJ4dvkoxb2Q70PKUw1dSVq/96IVNKx+AVTsZpg1jPYcZ/K
	/tduJKZ4zmOkbmQBxEinjMt5b9xujwa/7alywH/RRRHs5oZolsvJTsMLPXs9MRgDID9JSg4durf
	MawfevGEpoWgvDuUc0kMTq0ySQhUVKGvqHRd4sb0pBCQ5yWvGaBmcXABoFvN6pg+scUyqPn1Phx
	1naILFlsM3BO3LyCsJLNrNi0D3grWswZn2BdUKItdhDAmhkiDyz3pqxaNEdnJ3n4cP/FE08xAeS
	RlZAOMyBt9zuu8iizAWgPEQc5AlzKRLHy5QkaYfy0KQa4wbwA8Y6SpPo45S4E+Rjc70eb8rYcng
	H6J/OOSt6+2f0SECE+czugzp9ZSkb5CeUJOwAvKhIrZEpzMlIl3VFWKJDcPKUckvIrKqSZt8JDt
	feeO5tFfqrAXkB89fFa76kil/3r6Xyb69uZut5ltlX5BKVapmuXslF0I8H3pzi8PUSXHvEkSzXF
	UXtPjptjtrN+8w=
X-Google-Smtp-Source: AGHT+IHXR3S3wP5oROl+KHAYettgPG1Hn2yDqlP2nOAecoxuukA6kWjACwcfvn4+PVts+psUSEQ7DQ==
X-Received: by 2002:a05:6a00:6c87:b0:7f1:fad7:2ce with SMTP id d2e1a72fcca58-81b7fbc91acmr4622597b3a.48.1767841455539;
        Wed, 07 Jan 2026 19:04:15 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce7d-5796-70e-21eb.ip6.aussiebb.net. [2403:580b:5de8:0:ce7d:5796:70e:21eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm6120312b3a.30.2026.01.07.19.04.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 19:04:15 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 10/11] man/man3type/timer_t.3type: HISTORY: Update first POSIX appearance of timer_t(3type)
Date: Thu,  8 Jan 2026 13:03:16 +1000
Message-ID: <eb28bf22aed931e9f0afdaa6dfc8f6061bfcae60.1767840410.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767840410.git.sethmcmail@pm.me>
References: <cover.1767840410.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

timer_t(3type) first appeared in POSIX.1-1996.[1]

[1] ISO/IEC 9945-1:1996, Section 14.1.3 "Type Definitions".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/timer_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/timer_t.3type b/man/man3type/timer_t.3type
index ff907871815f..b1b8ba632669 100644
--- a/man/man3type/timer_t.3type
+++ b/man/man3type/timer_t.3type
@@ -20,7 +20,7 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-1996.
 .SH NOTES
 The following header also provides
 .IR timer_t :
-- 
2.47.3


