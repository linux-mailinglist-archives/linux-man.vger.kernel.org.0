Return-Path: <linux-man+bounces-4760-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC59BD076E3
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:45:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3BBC301276A
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 150DB2DC792;
	Fri,  9 Jan 2026 06:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pu4rokrN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0922DC344
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941005; cv=none; b=ST0cxXMGrAd6hwbf71zTX17A1Mmf485lkmGZykIkWHPImLe4fGZYXGQCd4Orfi3m5asPoIQc2o/WjdiImHwnJ0MSSr2B+itGFTih2oNr+CtAyvtCDOT0RUQkS2pFJHYuBKQoRId4q0BCENXGyN4Q+kx4Hxn/YrxWJOquROVskDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941005; c=relaxed/simple;
	bh=GcHXmdGZYKCUZwO0W9AJVyyYKboVUZ8nIo1fuIy7b1s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PA/9GpYlnwX5T5ZNiQFLDXcxGiiNs3+VCdI98dqThWZnnxS4G6U/r2FBwokrUDQEHhCa6mMUXwwKCg4m2+H4YQfcV+7o1NyFv3EJucHwo2Iy10vMCsgqLdUn33WYJ2mQ1rG/oLojJ7ye7NRxK267a3Gnk60DxNPgobbFb28YIf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pu4rokrN; arc=none smtp.client-ip=209.85.215.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f194.google.com with SMTP id 41be03b00d2f7-bd1ce1b35e7so2504838a12.0
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767940997; x=1768545797; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gM1J8Dw0+kkq9xugsoScBB4/h/dWISxBlk22TCVkKhQ=;
        b=Pu4rokrN9jvTcsRcD0lu8s5KmVtwPawRFoOcZZ8fEfbtIKz+43GSQRSpEVAFXA/ARZ
         WLh6g4kuf1kdc44HYa3ptMeeYCGfPbDCwEED1igNnJe+hM8BSkrFOfySncZoDUfsI8T/
         EGT037zciiVP6Ez+MLpzDSYLtkeBNvaliR6BXSFaQ81GI41fQOqJ2TRa07Ymm5ZH/SGJ
         SKZYkiRjVP5AK5nj2M/RLle6Uo07k0xpjkASSNybeTuctxkD7cdb8sZltqM7PCxLNTH/
         7r5S59BF7ygE4eZtIOgxHdJsXEyv5eK7cHYxBa7WWHdk51C7snuH2nZtWjOnRk060WFb
         KFCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767940997; x=1768545797;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gM1J8Dw0+kkq9xugsoScBB4/h/dWISxBlk22TCVkKhQ=;
        b=JvwfMHeQCZ08zL0JLw8j+U5lpyi5DBve43SNU/CEO4iGLuesG12BvrAn4Plow5BPHo
         2uGbRL45SzJG0r1VExSicQ3kDms4k+lioIdRNurXlAN3WGI5MeNRF5/Nq1b2kV8rem2w
         5AwLMR8C1ezs8dgcPjQS25AKu5TPJyQa7sunEb489VuepRTwAh62ZT0pDznMMptlmFiK
         EsNp89hVU9n++ekNznT1EWvmToG5FvuSUelGbnQTJdndOvA5eAnfhDEN6nncE2+X3ncU
         lUMPuiaMUkz6Z7w/CXgsJlnbvtz/ntau32SfdCKMj6TCks7Yjh0UIMnAPkk89W4ZzkKO
         yvvw==
X-Forwarded-Encrypted: i=1; AJvYcCWyDZaBclw6hvSB5bzLazLIzyci2nuJSRf18+TEDhyqAG35PEIIfFU2V+qbwsMyZq4lQZPG7rkeP3s=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywgq4SBIc6eWGjcjZSgNB4lLLAGpAJggW7YR83LUdqkjShH7HMe
	JUOXoEuEHMbsA9XLWCZ6PmnMO97JQubKfd+0CUZrvqh0hhYT23ACeNJe
X-Gm-Gg: AY/fxX62x+v5q9kQBpqxVq55QBz3kuT0aBd3yKEAUKIU/kGT3lLTy9EvQv+lRBSb7rr
	5Cb5TJJAKr8FkSd2qRDKTzCxs+idVuujS1ZsqVUjCTQstpye/J0p8emgblayygPMeH0IzSPludh
	Eycn3UvwHI6NMt7PtnZ7+Yhg3PnkV5yUd8t56ZrJvZ6umOnaUHU5ni2qhdIXUef+zf1aIWm6ayp
	iz8PPAC94I8KuLN8C6JMVVRuiAHOiGyL1giHwOhdJ7h1ya0p5NjspfWU2DhYohhKG6LKH1d4Efo
	2Ojbo5lZsIu8uST9UTf8a/ATC3f5H5IY8ukgP/RIwCJyCdXK7tFTBriKeP9pvYZ9L8LlhjyLYt2
	AV8tQdedthVts2FEOSw1DW9vtUe7cSOiurT2QqHWQvy7ZD59Msg7fG7M5sleKX7aRK2Bqg1O/qL
	QKpE5A988mGugvTr82h4M86O+51QX78vyf7o5AIsbahOi9a+Vg1x9sztHnJEPx42vBQ/s1Roldx
	W2vFcceDGhxMrCD
X-Google-Smtp-Source: AGHT+IEPmNOu/erb7B0vOqqzdJZIwSrp+ADJS3SlD3c7cBYiRNEWkmPqHKNEnV4wrqS+0C4YFv1WGQ==
X-Received: by 2002:a05:6a20:6a1d:b0:357:78fa:b338 with SMTP id adf61e73a8af0-3898f92906bmr9246823637.35.1767940996651;
        Thu, 08 Jan 2026 22:43:16 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:16 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 11/25] man/man3type/mbstate_t.3type: HISTORY: Update first SUS appearance of mbstate_t(3type)
Date: Fri,  9 Jan 2026 16:40:29 +1000
Message-ID: <b4bba25be7dfabc0864f3eea3f92435d8f36b2ca.1767939178.git.sethmcmail@pm.me>
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

mbstate_t(3type) first appeared in SUSv2.[1]

[1] CAE Specification, System Interfaces and Headers, Issue 5, Chapter 4
"Headers", p. 1212.
<https://pubs.opengroup.org/onlinepubs/7908799/xsh/wchar.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/mbstate_t.3type | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man3type/mbstate_t.3type b/man/man3type/mbstate_t.3type
index a4e090477b08..229599c2d4ab 100644
--- a/man/man3type/mbstate_t.3type
+++ b/man/man3type/mbstate_t.3type
@@ -74,6 +74,7 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
+SUSv2,
 C99, POSIX.1-2001.
 .SH SEE ALSO
 .BR mbrlen (3),
-- 
2.47.3


