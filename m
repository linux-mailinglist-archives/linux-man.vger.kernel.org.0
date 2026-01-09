Return-Path: <linux-man+bounces-4767-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EE6D076F5
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:45:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 767CE303197A
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 527302DF142;
	Fri,  9 Jan 2026 06:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G0eqrobv"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C462DC793
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941020; cv=none; b=Wx5qb03uswvAsxTCpYbzW/XHOH3iLpCIC3/rymshjkr9VtD2CjyYf7vbh6YMSLMvXwvYIY0QT3Ao/MDCmzVFgM8KOITWVgceOofz9mc79u+CT1BMWWTX+utfVk15xef2PVz9b065PlGO2KPSqQ8X+n3JKMGq/WSJK50akUDJeGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941020; c=relaxed/simple;
	bh=xNmmK5hpFr8+ifDKNlN5+6P66r/OXPn/E8m0jvluYrs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=g8afNRWB+6XaCa+HnLdmgMV1k5Z0Ot2fa/UVQMAH6Obou3OIWQKwBUcbftfiFyok0Gv7WO5EhyI7pv2WCG3zYeiXW+NduYuuMasJSL3ASazdBlHJPhA9pLPcJuXQ6nNsjxshCt77nkA8f/1CAxBJFSDpglwxkiTsJyoG6lp8gHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G0eqrobv; arc=none smtp.client-ip=209.85.215.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f195.google.com with SMTP id 41be03b00d2f7-bc29d64b39dso1584332a12.3
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767941018; x=1768545818; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=F9xseOZnoLJUGX2WuRpVKW2J+ij54YFFNrqaFVfHJio=;
        b=G0eqrobvvQgKOZXuJZ5ZzghjiPpJC8/+2i/xn6w57iQDeP7QWQOLD5UUjnoe7aslDg
         bblNouftt5Yl815mkswDZAAPX8RBg6oWWMGiIzGw64tTR3aCrjV+r0pc0qrRWQ2NyO97
         SLql7ktqNm+ksYVuT8ySlWGFKkqggTYumXnMvB4GIpKSqXOUeQe95lUh84a9is9baIwi
         i7hZdi9XUu8L+w4inrnPxEkTKPMaHB1U6yQX4rKHEXQ7Vz4EL37u2sRC63nKNx1gxNl3
         gscyJ4emPbDfQIZeouMvKshe6ZPMvLuBuSuCOHoA15VwBiPzBGJ2ZTbXgcNHanUvVTJZ
         EvlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767941018; x=1768545818;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F9xseOZnoLJUGX2WuRpVKW2J+ij54YFFNrqaFVfHJio=;
        b=ZluFF/Laiy+TGjfacuIx+4Hf3/5rn9VylLH+BImSY4UIO3MOJsJ79uT0uN98R/HE5h
         UTkPN8uQ9S6Kv9PdOS5aX4aWPVS3eLRDWVMi2m0At93iQCmcqfaXIASYNdsucnmwDQfI
         x5MmhzgmDrro8ennTKiqszyjZQkGJvdkFdbKy+2BLhvoLoMfdMICswkZTXOCrHV9iEMd
         KT4XS0bRZW0z3+zX4m5DOyTUASv3VbjxDGaxbUXkhUQVCQJ4Btjz5+O5oOtCnWi/YVz/
         JiEsYzsxSaAE1Mn8OTTg0LWc6xJEiOQCdxyGz/mt2c3xmARUmEvGjXCSiUCj/rXL5O+D
         p7VQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhM4EXL8eMeCTCpCgSoa8IkyDjjiahVthCDdzyV8ChVCNcTQm9oqNeWDc1MdRZuNUHWVr7+1pSu/U=@vger.kernel.org
X-Gm-Message-State: AOJu0YymcRADQus/cywUq9CspQJX4B5wlnnG5jjhN4qHV0FG57D7mhS+
	mDs3RnlXqhUx2mpc9MBks9H39tELoC9LESljifEWK7ACTf5uS2Q1hkTq
X-Gm-Gg: AY/fxX59Jjw4kJRRv5GEYk8evH7acOv4CezkRqvChNZiAnMb1FdqcaqENbk0Lv9H9QV
	Oto4EHgWSrD3RPWuCrxUcR2T3OltoeP6HidD/+RZP5CLOIw5xlCKERtoU1sVc1oiW4KzGPSHhcU
	vCsQwmjXs5SbjHEOX3xKzGhbzm8xVT+EN0AELI27KWz5id7IRil7anrZ0i84AXaWdKsUwrh/o6E
	3h6vAZy/8Msst4B9hyc3PGjtkkJbF1Lhc5twrbhIMKPGHXly8bHs83jzN1OxANRxmYiL9cfJOt5
	uzxFKCG2wxY6La53Mwdcscv6+Fe2CCTN3A0J0htLwISZne8E7N4l4khhhgRGbnO+QuMhuhb6eys
	tnMxDxg/5WX1K9bWa/RkmF7fifYFYNiVWieCa2mGRJfxkXS4RgYWo49Z6Fznoszk2ZoLvcbVLwP
	Xk+Dx038YGq1/dIfOTxWs3pkb9jLn2bspAa9FaE+13Pv0sVd4gqtXF1SDlIP1JoJKro+tKE6CJK
	X4NFmLkfZr3gJMy
X-Google-Smtp-Source: AGHT+IF6KvmuO1PAgl46nhPCf9h4q0OMSSjlJCqhJNbbttYiF/9lctdv+5PdPaE50kEQ2KKPsvjQIA==
X-Received: by 2002:a17:90b:1d12:b0:340:e8e9:cc76 with SMTP id 98e67ed59e1d1-34f68c4ff6amr8451690a91.11.1767941018361;
        Thu, 08 Jan 2026 22:43:38 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:38 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 21/25] man/man3type/wchar_t.3type: HISTORY: Update first SUS appearance of wchar_t(3type)
Date: Fri,  9 Jan 2026 16:40:39 +1000
Message-ID: <a7d237cd5287cf35982d26f5289b1b9daaeb0be1.1767939178.git.sethmcmail@pm.me>
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

wchar_t(3type) first appeared in SUSv1.[1]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 803.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/wchar_t.3type | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man3type/wchar_t.3type b/man/man3type/wchar_t.3type
index 96139f794eb8..503ce31c5a34 100644
--- a/man/man3type/wchar_t.3type
+++ b/man/man3type/wchar_t.3type
@@ -31,6 +31,7 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .I wchar_t
+SUSv1,
 C99,
 POSIX.1-2001.
 .TP
-- 
2.47.3


