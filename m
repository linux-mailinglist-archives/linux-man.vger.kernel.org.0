Return-Path: <linux-man+bounces-4645-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CBFCF6F9C
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:10:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C70E5301D677
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:09:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26AB52C11E4;
	Tue,  6 Jan 2026 07:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TocbDXNO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C65422127E
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683382; cv=none; b=N+KehbzbTtdgE14xVIcNkNC7OZGbAnG0IAwDPW4nQqGdEqZM9JQcYIR9sx2TLJYB+1ySCkYqv5IHnZN4gh13H311YgCC9w4Uvwtzj8XQJP4Y27/R6XRfDa/1kdWNGh3W9KM9m4gpZrWEj5oV55NRqQqTs7horOsQ7A9m1vZ509I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683382; c=relaxed/simple;
	bh=Kd+UN/5JAFi1pFwvSQmn9Cw+B1vUwso0UN+hb3xCmhA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KPZV3pFwazRcE5Sqy3Y6cWu/Bo6+t5M58hCWGWb72e70tq0iejSY3sxGl8vojkMAP8wkeRo6m28hZPaAOHdqTFcXU05Rox8RWQmj6ZzEwyotQYzBdrl4JIM5CktVA3XCrjPHST/Cmv1x30MeYN+/6RxU41f/4YVg8fkwURd4V/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TocbDXNO; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-7b9387df58cso1104815b3a.3
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:09:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683381; x=1768288181; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BBGsikHUjLTbJraLxpzlCGqkwYJNap26Yf8UKnZyXK8=;
        b=TocbDXNOIvFPLUHxH9mTDkpmwcdgUBcVvurqIuY/9yGHi0Qo02KeUT4waCtGtGxEC9
         tlxHdC2R4hjJK9rUa0p/x49bup6zPzQ7bv0qCZdqSCH6Ss/jpcQvYvAWUT7R+8N9ZsZN
         +XrQYY+rqPCgfOZyeSTWRkugp0E41IsTuxUkZhbTJU8Bhtnyqfz8o2ewEH03y346amhS
         KmbJwwJg8q/QRD31coXaIdhfM9UxqXbgkVa+dvMsbPmtr0oEGuldLCFnr3uN0tCs9sPW
         eJBhmQKnRkxWnGCTfy+yFyLX95MePh0oyjF+zW5EIV+p6O/2YA2u7y9mg8CLTybgI85x
         L37Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683381; x=1768288181;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BBGsikHUjLTbJraLxpzlCGqkwYJNap26Yf8UKnZyXK8=;
        b=Er/4nKwJbY+C/eOIpOPK2hMBp7E1pKRjxojB2ajb88KdV/MeAJ74MtN15K/Z/Jn/Lf
         qCF1zD9YYiCd0jAomo9TVN7F6jsw76Sp6tj42UU2owzEjzTKm9Hng1XnuvR8F57JcRyU
         8j0XSWC717x5B7h3OJakcBWrJVMHfuM7Qcac+LH2KQD/IViLMuj+wDvThverqWRaALAp
         jIpcJSCHMpCkontdltCodRiUcIVO4rk0O2w8XtrcvJgTdJlFd88y7VhGa7Flj79lqMA3
         4VIkLXNxgHrccMRBtTr9bYSV6OlwLX5InHM/8DlDY+RGPtur+Z2sO8SpIzDNVoDVwgtP
         5ZFg==
X-Forwarded-Encrypted: i=1; AJvYcCUXZcofDcAC6aop9c+ObBeFbAWs/6dktJXNc4OSe1dZN0Jmav+QzYt+XtWiDvsz5dsOez/2j9aODIw=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw58lyjhdh3HmNiORzdvD8VF3KJftyGBbUqxr0nSRRfPzLXbcBB
	ntzZPVcNtAUmM2Sa9GMMkKmUXp8wSDq8DW05qFzwef1IN/JATKJE51BP
X-Gm-Gg: AY/fxX76p6cn57mwFQuY49OHKBBf71X90yo3jWWwY/6yEJF7xEB4HfDp5dBEm9Vw3O5
	lwjd+hldgCat0kt80VOBQcp8jk/m10/ScTyA8ZNfVDe9cOJfNMStSmMss69RUphZ/KedHqsFqEa
	7ZEypATig45IrHMQSdcqd9sb6geDi/D6kR4L8WDjkcmgvIEgJZvJgTtlgojybmEn6wLBQsHvofw
	avYUp3jaKcobgNOof0unvl6+Jvz354uHYHzDCOdi/4v7kuyxODSoRHyX3LOstpDs2Zg4twmmR6A
	5AjsM9TFq+yHODzdPFk5BR5wusdgXevYaLfAxmWVfxCD6meErwfSNz7d3Bm/iskNAcEUigmssfw
	AoLMWGv5catnxmn/EmoBl6TfAzgLHWGj9pgkPF33uGej/tv5PlQhQTe6ISmNENEWFwrpUH5BrJb
	z9ukaH+oe5xyPlPGKlrkbeadT2gIP1oT25ybXpzNnlNRXxvRLGqLzWvxs2TPifRFK2cEyReFMWp
	9wqvrdheDTF+zar0WPA29IiA9o=
X-Google-Smtp-Source: AGHT+IE5z64gFbzHrB7t7n+ofZJp1UAb0KBepvhP4VCVfBV1c+s6s/zlbg9V8jNPenVG7EDPKa8KbQ==
X-Received: by 2002:a05:6a00:3cd6:b0:81a:b4f6:af54 with SMTP id d2e1a72fcca58-81ab4f6b12fmr308461b3a.65.1767683380882;
        Mon, 05 Jan 2026 23:09:40 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.09.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:09:40 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 04/15] man/man3type/clockid_t.3type: HISTORY: Update first POSIX appearance of clockid_t(3type)
Date: Tue,  6 Jan 2026 17:07:53 +1000
Message-ID: <75786342c4cc274d71568aa7e5f47f9976ec8c41.1767675322.git.sethmcmail@pm.me>
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

clockid_t(3type) first appeared in POSIX.1-1996.[1]

[1] ISO/IEC 9945-1:1996, Section 14.1.3 "Type Definitions".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/clockid_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/clockid_t.3type b/man/man3type/clockid_t.3type
index fc44444508f2..62d20c65a5ad 100644
--- a/man/man3type/clockid_t.3type
+++ b/man/man3type/clockid_t.3type
@@ -20,7 +20,7 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-1996.
 .SH NOTES
 The following header also provides this type:
 .IR <time.h> .
-- 
2.47.3


