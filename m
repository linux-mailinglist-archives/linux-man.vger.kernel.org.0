Return-Path: <linux-man+bounces-4646-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FA4CF6F9F
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:10:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92E543021F8E
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76CD82C11E4;
	Tue,  6 Jan 2026 07:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lVAtOkkh"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C713093CE
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683385; cv=none; b=QrGctLm1ByHWWOIi0Gr/KfAwSJ7IYrCE+cNxqivJERHiXS+mYjvwmKmLwyunkBWuSqPSLPTLX0STu0FlrkarZ5TpM5eah6n8UFyOojVQLI9t63FvgSKNPIF8WdUyAQrsVAbrhQDnVMV2pytC4TVN9m/nXYwqLztNXJkvx91dW3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683385; c=relaxed/simple;
	bh=pUdBKyEg8vR4iX6uo9Bb4wkuwE/8xVspnhA6byHuW5Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HHmtU5G+tHtoS7eFiP8lMRGmc2hiADdQfdV9pdv1YrDDMWlUTKr2jOMzVWs3vqFqZMg9jeZYMCgZNUfr2yUf3EpsTlBtyf0vBGotOyOp8tHwH+YER3Ighqr7fmVLfsJCk+XQsp3Po7Ig45xeMzZ8c949E56Fkskm/debY/RfLJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lVAtOkkh; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-7b9215e55e6so535357b3a.2
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683383; x=1768288183; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lrVWyz9tTdg66CwNTiWOgumk3tVUFw62g0F8NyUjQ8Y=;
        b=lVAtOkkhXmyI6mfURuDHn1gPdqcG/9119yhR8swBNMx77R54X0SdZo+xzbuRPI3dVj
         4x701NclN66BDtUOAfIxjNig3BIX216HNRjDOsQgrRBQHnTFOqlqqiuz2aeT90l0fRlg
         6HXIY82iC4OW5b3YI9FczqAm2sJSh25L7zCwegf5YTiyiWxXqv8AWzOr1dnpTOo2DB+l
         J+nxKPaR/WDV5fWGrC3T3bHtYfYC5teht0RF73A/gf9uyhi7a62X2nZ7aGzKFl3Y5eIa
         WH3CNbvzhGhFw5IjHLcTgUDgYQddPwVDD21h7SRDopuzLyPNg8uVaiPS8gDpyB+TzKJc
         bKdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683383; x=1768288183;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lrVWyz9tTdg66CwNTiWOgumk3tVUFw62g0F8NyUjQ8Y=;
        b=wUK1MH17YZVWRm1qN0/kpy+0MrJ2NM22lg8moAEwv7VHRKHUb79k+MdMRgiIQko1FN
         VAUCXdyPmVNfUWSleSxSnJ3KA7ruOPbK3p7TQPc7XG+Jc/YToj0zKrvdJbyAwr7JqIlL
         PkkTOtOfRE3RfeIrkDtj+pssi8TPQoFvKAdbMTBJYzvy4WrnuHoUh8rYa/WN9X2PdOP0
         FibB5mGo2eCXLvYqCE85LN2Apc6geVHA1OQPQP5G7ioMN7wQOcM9aZNrbusgfQZY7sEe
         sRdHkIPh4LT6zzNZhk+vswYdK30h9l3x2UvEaRtROoB1she8458SPlFqWeS/PBdmma2C
         C6tQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzZ4qoDu/oM5l+rckvyDTKaUrh+GB6glu5t5HSPCElyvAAS8fZGoSAnhCR6bI/DAU5EnCrXPRNPCo=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzcvu7nvmYc3CTABnab5+mCtCLQKQtapO/RCH6ghVdORgI1b3hd
	LE0Um1GACpolrqz5v30KZ/KSHS0Fan2jrWd9evAVd0a6zIEuFCpK6xQw
X-Gm-Gg: AY/fxX5+yE1xyClkbfEDNf5JmnwWMRJZESk8F6Q0kn7ZJhyNfzTNPRVLSq5DN3DPleY
	29haVSdxjTA16fFlWwFAW4dUC4qtIdg0EchGYrx004CxSlCLB77MWXbKw6gU/WkWXiRmhG57/Sr
	Ln3zslmTKRM82EGqxUC99gnWZaHF60a6INVbdgLHj7yEd0snrc4YY1Q1vPSO9wVkam+/bj4guaY
	v3U7mMqIqEKfr4C9uzKIgLP2OYsTaBFDP6lcL/nh5FsFc/mbttBEkDxdCc9gW1ojCefLZZDEa9z
	OzGnVVr4PN/Rq8p9eowgTKm4iKnTyZ7Ai1WgAG2AaR3sEzyTL9f0Dg6kj0llenbbnNdl+QsmL65
	VK+qnerTMzdHfolBpJsUldBWmm+LoN1k9c7U5GHcf9vwcIK4UwQEpk3AP0bKYhp8lepdRlvd1Vj
	sS9AreVqNsyP4kHS0b+ujvX98m04LkZ6mlzb7IvqSzl/PFdVasoVKdMEIiuA5ofH13ZkLfpQY5J
	owyprmJxVl8/QVx
X-Google-Smtp-Source: AGHT+IH3PmyQ6OKlbE49fAUU6/FRqNoY2Ux9RNhfN3SVRYKAuU8JWXakFHugi0L9WVVOAHDEFpltWQ==
X-Received: by 2002:a05:6a00:4218:b0:7b9:ef46:ec61 with SMTP id d2e1a72fcca58-81881544fd6mr1968600b3a.26.1767683383214;
        Mon, 05 Jan 2026 23:09:43 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.09.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:09:42 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 05/15] man/man3type/clock_t.3type: HISTORY: Update first POSIX appearance of clock_t(3type)
Date: Tue,  6 Jan 2026 17:07:54 +1000
Message-ID: <24395294f63b638cd12edb58258e65412644ec75.1767675322.git.sethmcmail@pm.me>
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

clock_t(3type) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 2.8.1 "Symbols From The C Standard".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/clock_t.3type | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man3type/clock_t.3type b/man/man3type/clock_t.3type
index 6701862d0e8c..93b874f7dfe5 100644
--- a/man/man3type/clock_t.3type
+++ b/man/man3type/clock_t.3type
@@ -24,7 +24,8 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
-C89, POSIX.1-2001.
+C89,
+POSIX.1-1988.
 .SH NOTES
 The following headers also provide this type:
 .I <sys/types.h>
-- 
2.47.3


