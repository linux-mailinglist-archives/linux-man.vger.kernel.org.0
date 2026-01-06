Return-Path: <linux-man+bounces-4643-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C2762CF6F72
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:09:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E95453003847
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:09:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 318A9309DCC;
	Tue,  6 Jan 2026 07:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HU0yshQN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9422C11E4
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683379; cv=none; b=pevaAuQ6044ivwc8DgRDSk3yRkSyYeaq+KMfIlMIHjGBoZvvY1ofBBUlCmKZWmaFMTLT4V7n6Ql77k0ePRUgoVcPVHVD1XJUDXVw9aCh6+8fFvZi+6QPpTp13JtkXCDrHdwTn6yFobaeB94852pht1ZdxSPxixAb6k3/niucwdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683379; c=relaxed/simple;
	bh=hW3NidJnXhSB95uB8BybtjFIQ4Dawg8hMH70dldawrs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lpvdX4dc3bACetM4UfqISyQvEZbCl0JjNHFKDJx042EOHR1lKw4Ix1JJsCynnRe3Y9hIOy2yn7j+TZDpNcZQmKH1RCdBYtgHm/G8L81j30KWTwVZXWDKz+zTmcVDh5GxFOmf1d7gnUtCHrGPRNAIUvdu5abuLcyqwDXn7QGh3U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HU0yshQN; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-7b8bbf16b71so777084b3a.2
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683376; x=1768288176; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TiiAcwgFw0cFWz5EIN3qBADbRC28hBpca3IqoM/Wa2U=;
        b=HU0yshQNtZiI0etCA4TW7TvB06UXh2q6IKvyIyxnB7BS32eKXUOmrauSlBXT5Ilxuy
         ioz8L84dE3X2XUW13MNCVoWfQkgDLnNg1u3wM3g6jU5i4jT+Z2coQg2ncIr6ftd/jh4o
         rZMTVVrDMJWGL1bUk4u4s1zVm6+f8aLaIOK5CQDCTbMAyYizgP+iXZ7GSavxiNHhsOzI
         un7n4IJZKKJd4LZr0FFck44SeScNg5P4LIwffVRgsqo9nCRJXM0WORk7uWGHy2kxh8dp
         g7N7a3SJe8gfVomwOgxhKN2Wlc3bYpnGrSUbEvadLI/ikuKRu42MLHL8WYMnpmueRZ7F
         c0WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683376; x=1768288176;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TiiAcwgFw0cFWz5EIN3qBADbRC28hBpca3IqoM/Wa2U=;
        b=IkCU5B2LfX2RctWxlG33NwbPH7p67VQNyZVy3nvDkaI9hz7ZPmATjPPsoY1cuZbTrY
         sZrb+/H5nvGX7Zbm+uwrPjSZnk+9LWgEnfb9sek0i7Zr/UYsCKUsDWY8TEvQPex04TyB
         fMIViCK+i1ELxdmfjljyQvuzF+2fs2YGukIdgCRSM7UUoKHxvxKrCK8nPwImJj3L10ZO
         vioV4MaH1Rj6U/lYzCexVGUpu0GUxiObS3hjzlQw0pr5ohgkQO/Q2pqDee3eNCZnBrGk
         4WkfDA/gI5arAvmN8UVRfaQJXn0d0ad3mi2jgg+3sBcWWLO1eDS0GhKzaukGC5r+uWZp
         R7Pg==
X-Forwarded-Encrypted: i=1; AJvYcCWywdeERQuo5c4BVQgF0u0W8V3l9zj4zYGko3wxvvJAouYo7uh6XtnccU43BOKPnuQF2WpHmdZzSbI=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx2IB37j5MVBJ9kysDpck9/n4R/VSfzcfsMb7Q9Fz9XTuckHqq
	xscXZ8vureIPuK0yhllrSHdn1grVEWsfb7Zw2UhEeBwRVzGB7bEI66EIRJZl9df7
X-Gm-Gg: AY/fxX6KkrfUNRQ0/gGEKpzDsiZiXiQVV2AQNqHRrH9+9O7ff66qdB9qSaOty5PlVn2
	3NIzmp5jkP/x2p+Bu7eYTIY7wCzPe2BHWIagCPbIu9mp5XmP0AlKSj1QaPgYEbfKk1GRBvyHiNe
	6awAhvp2qRVMdNxs6Dtr3ribPHLPIVZMlmEVWsv1y4fy/5/F6GgSoRgkfJChv4A9MK/89MDKoi1
	SB7Zr79tsOGnJgNOdzpHNzTyojDFdZAW5eUBdJnRFPRPQFBlCrRQ0f3pfBtpS6c/0MzHqtK6r4/
	qyFC3dJRRzTAQZOkSrC2rwQCu4qWXtVnbAJ/ZzWrkkrN+aYlt7L2yreWdu/6uSXnBgbvVXAzB1e
	dox76RpwVLbqsakWFnNUzf+YS0b9CIf9UJztIfilQnIV+cHZWY16uSJdMuav1oQl3ACcHt0Lygs
	9XFwyVYE4mmFTcwS6gqEa1OMb4Hp0+VtFcWjcbmLGa315iG/8PqvH0yK35XumkU9ty9uO9briHd
	rgLsDN0Bc60Qx7V
X-Google-Smtp-Source: AGHT+IG26IPLTElNaMce/mtsCYlJY5mSlvkmOjypAKhpW9JDe4d/0so+karPJPuLV8GY0kZ/6U0xSw==
X-Received: by 2002:a05:6a00:3007:b0:7ff:885f:9c2a with SMTP id d2e1a72fcca58-8188038c944mr1985812b3a.12.1767683376306;
        Mon, 05 Jan 2026 23:09:36 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.09.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:09:35 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 02/15] man/man3type/blk{cnt,size}_t.3type: HISTORY: Update first SUS appearance of blk{cnt,size}_t(3type)
Date: Tue,  6 Jan 2026 17:07:51 +1000
Message-ID: <3e3cdf605fad029b74a09b9b88aa9f52cc6d8d72.1767675322.git.sethmcmail@pm.me>
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

blkcnt_t(3type) and blksize_t(3type) first appeared in SUSv2.[1]

[1] CAE Specification, System Interfaces and Headers, Issue 5, Chapter 4
"Headers", p. 1177.
<https://pubs.opengroup.org/onlinepubs/7908799/xsh/systypes.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/blkcnt_t.3type  | 1 +
 man/man3type/blksize_t.3type | 1 +
 2 files changed, 2 insertions(+)

diff --git a/man/man3type/blkcnt_t.3type b/man/man3type/blkcnt_t.3type
index 7247f6486b7e..e9644ff94420 100644
--- a/man/man3type/blkcnt_t.3type
+++ b/man/man3type/blkcnt_t.3type
@@ -20,6 +20,7 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
+SUSv2,
 POSIX.1-2001.
 .SH NOTES
 The following header also provides this type:
diff --git a/man/man3type/blksize_t.3type b/man/man3type/blksize_t.3type
index 4ec9013fdb22..81d767d47882 100644
--- a/man/man3type/blksize_t.3type
+++ b/man/man3type/blksize_t.3type
@@ -20,6 +20,7 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
+SUSv2,
 POSIX.1-2001.
 .SH NOTES
 The following header also provides this type:
-- 
2.47.3


