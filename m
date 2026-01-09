Return-Path: <linux-man+bounces-4744-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5E6D071CA
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 05:20:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFF05301B2F8
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 04:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B08181925BC;
	Fri,  9 Jan 2026 04:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TRNv7yTR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E444500958
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 04:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932419; cv=none; b=no1FzyZt6gucWtHeSmHgL2FZXkRHFXDzaPBkQwIj1AKQwTLNk2so+XU7aQkg4llc1OLmTaA2wEOi4yPye7lQBN7KQ55nxemU/Qr3XhVYagTRVJjVvV0M73sV6Dhw8wGVae2a5mZMzN5fr7nmY9xSd/IVUzC6OBcXpgqACJW8f04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932419; c=relaxed/simple;
	bh=XP8IDAcfwHa49J84EhHMknTOiiH/T27MYDthIMvulM8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nicfA/rsMkLrMfyq5Pc77FFhJ3B8uATA8uRQYKxUQAjEb3I+6SC37GsE6hlQXY9Ju0s8JbcbG7RCc2+1666UTaWL7428JpNHoVJ2R7cPHBHrjOoEkEapcee2d9Zm5gBFGxnZUjSZDR2KmqhvuS3jH/d8M/mqhsJuk7y1OWod3sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TRNv7yTR; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a0f3f74587so32288605ad.2
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 20:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767932418; x=1768537218; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qXxzY3BpUF9liI9poopvv8JHbN1s2eNJDjQTw8j1Ww8=;
        b=TRNv7yTRSj78nrwb3TnyUNtNJU1417sNGztTx85ViSPvrgeJ8ai0qQ/mC/3/hAjz35
         T7Uo8YQ9FxdwjCbAaLRQwzl9sLuZqHpxRv+e3EtzSYZuwCjQcoKq8jEavTAGUtS7TO/1
         ArlmjwOdLugTVDOfjZT7SpXHNi0BnRidrzU87OsY2wvAj04pQt4ItuX9B2+DOZ/mDrcw
         LXoWheBFkFjenk/RexpqIzC9mPUsshzj5V9uWQmuP12YOtcWuu97fYi+tQFz//lFPocA
         5jW+v1GEH0J+ABJyVX3Uy3enCxoCwikL6Az8rPpBm/ZiZrx1X0KBA/vfhUrYjLJh0QTI
         mfKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767932418; x=1768537218;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qXxzY3BpUF9liI9poopvv8JHbN1s2eNJDjQTw8j1Ww8=;
        b=ZQXvrHpEK9NIqRZ5Esh5JcWmHNjev5YDgkq5lfuydbZuPvhhI3TgPhE84gpgVc6E6I
         zA5nR7TQxA49Xjo2/YhcvMahkBtOUPgQGf4YNbgKrUwHShlso2gb+dRZXmvsPeMC+dIJ
         ktKy9kah21/0D7Bs3m76VL+D4YkeT5FRTnUZlibScS6MK2zVoDIXCYjOnPpk7CGxUZ7G
         MKwpC7+9xoxr8gCzoHR2WJOmrMtRKEHj2ycMspoUTH375dquSg00HY51LsHVX77KbdzW
         2s14gqHyHAGZGeu2c9jui1DnFWY6o6daBpQCjKFnJ08lognmApMYEhUyr77ytSTwuwiB
         BMow==
X-Forwarded-Encrypted: i=1; AJvYcCUn6ahok8mHlME6goaUzveI8G6ZwN0KeIFzOdxOWwSECkaqV1axwyQyJ5Tllo9cVyQt0kd30HjTYks=@vger.kernel.org
X-Gm-Message-State: AOJu0YwGNz7hRPv5eNjqVvI/90/cd/7bM9cpUv7PPESWJ6wNzeV72SpX
	eSf8VEZAw3RnychGQv/C8bRJKRdQOsEWRQT29NBIICgkVusnEQTCRk1O
X-Gm-Gg: AY/fxX5Dzc76ky0aiMOyCAWVzTzdutncJzpsf6hBP0ehsRtQCXnll0juRZtLUomvz79
	Rn7gye3nS1tsNNsx+05SaDqYLJXgqNee/Tq1AMAGP13DcdHS35hXuHICWiw3ZUoQ8ciFq+z+B6+
	OSHaOf/aaU4nbsmK2OE64xctKJdTrt0mjXHex6IgS2R6CM61EJdz1sKTsa3rNW8fceyILe7lD6/
	7fXNu0UehdYQODhk9W6nPRuxoJzjPOt4yIoqHRX+O35SgLMz5h0xSCRxfFhiWOmYU549Jlty3k7
	1KxnJfNDvysO1ifg7YlOx/CHr8mI62mETI90S4GVbmbmqOl/gFeZYCsXs5ZH3g4iFyYqCaOupQC
	AYNYS3Lha/6EFSlzFaAn9XQojbAkjlmbkOiA5WLMKlrxXEyEKzci0RALgx7wFklyJOFhHirRnAr
	QGCYneVABTwRuKnO1ogvdPf88EwytkBbdqt/15m3ErX4D2j1cmMSyrj/IdGalU/egfUHIiIpZu5
	oHf+AATpLT8475YFQ==
X-Google-Smtp-Source: AGHT+IFwZE3UoG3lImfedLEnbd6LUP1iz6ulmwDV3i9OZuLN4RdjVnUZhD9Xaqdz1A9PlR56frdL1Q==
X-Received: by 2002:a17:903:1984:b0:29e:9387:f2b0 with SMTP id d9443c01a7336-2a3ee4c0109mr74776435ad.39.1767932417677;
        Thu, 08 Jan 2026 20:20:17 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-1ba5-4bb2-ac31-391a.ip6.aussiebb.net. [2403:580b:5de8:0:1ba5:4bb2:ac31:391a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm90098055ad.22.2026.01.08.20.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:20:17 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 11/12] man/man3type/timer_t.3type: HISTORY: Update first POSIX appearance of timer_t(3type)
Date: Fri,  9 Jan 2026 14:19:05 +1000
Message-ID: <d6fc0ff67155305f1b469b3cb7dabdf7650c9a72.1767931376.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767931376.git.sethmcmail@pm.me>
References: <cover.1767840410.git.sethmcmail@pm.me> <cover.1767931376.git.sethmcmail@pm.me>
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


