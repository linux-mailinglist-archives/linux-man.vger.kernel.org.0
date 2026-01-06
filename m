Return-Path: <linux-man+bounces-4642-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C62C2CF6F6F
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:09:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CF0213015E13
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50BB43093CE;
	Tue,  6 Jan 2026 07:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V9grf6X9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2ACF22127E
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683376; cv=none; b=j4qJ9xMQyo9lDzhu3d2yZnTXnzc6tD8tRqPp/xGXWeaIiBe1ZrHV1xmJBM2VAMBsInEiqXOpgElzpHR/pz8k/pMfkOv/74s3ctiKXjYEO9zX8369U9D0efyWMk5SefcMcRO82xPYbcUPE72BmclWJDtBIo3tOWNy5PpueJ3MTFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683376; c=relaxed/simple;
	bh=qO4xg6IGtcIv3x+Y3FllMTQmqx1LUmGZt0AyTTL7bCs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UsvlE1mpDmfIAkSAHZFUHP6USD7uos33wlfyitRlJkFJyL9CYjaYsqwMbEZCWLOLQF/X9XlGQ4kaFfgxanHCZS3LF7VsQTqGDdcciuvzkCaBTgFjjz+nqw0NjDH2hcuci3UEdL1w8HLVr5aKhHDrVlh+/H+Ee7pjSB2JKq5CDNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V9grf6X9; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-803474aaa8bso374718b3a.0
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683374; x=1768288174; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dMKYG3qPSr/H9c9ctN1wdFAqGPADzstBbdY9tRAbziI=;
        b=V9grf6X9j7fHhA3d1H9DGOzqGJaP0qSMfEoKK//OEfAlHNYXx1k+PuqYtep844W/L1
         WEQi67tIEs3LJxs6NxkgQYtIz3NofgFmsxPMASFNBSYqGI4MwM5kHblgZOaxi97hybcH
         7BXAJx1s4FJzrOcrUr1DdqgG9ynLz/OKST1f4E/WCB7vrL8aUiy120kya0PV/LmZGjDT
         O2Ww0da+VfZpqodq79q/fjV5cm6dc5O3F+kfxq3zd6gqLA6FPOA35kS/7zD/HVzATk95
         t+VGshdn2l6aklDVKYalhx0DEEY/LyLXEVFvF5NyZuFAZHzO1Eji8TfR/zDtLSmdFsga
         3YoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683374; x=1768288174;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dMKYG3qPSr/H9c9ctN1wdFAqGPADzstBbdY9tRAbziI=;
        b=hVZMAnTLGyAg5qTZFZJwcyBpDHbyPyom6kCSUAAljJpQNo2BAWwCVjeHz1tlYG/jzc
         I0wJlomfh1Nhj9raCLhgL4oZ0NOq17ROBOVKOGaRtEQoaAQboe2gpwW9FxoUEcWtpC1A
         nui/RBpZ1IVX6m0UbNgpn/JyieerishHo/V2m5SeOB5aYmDiQ6PyYxqdJFWNv2Z2+Y/m
         /GBPp/DFTZD8mlrTfU43MTMpyKJGQpgpJ3geveigKbLzfctoevciOdQ0phYbDZRs5hiz
         uvwuXr2veRXOXB6c7R6x3hJwFnWIcz4uRCfgGQf+fScKUrJOqQ0bAxflvpGTnjtePlLB
         SDfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiBYLFQj2xhfMCRyI9XC/ak4k342Mo00CNtoLjjuWSChdGyzqupWAzeWG7GuXmR4TpP1uum2meiZE=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzek1lkqJLnMFs+raeFl19soqH7zEf3pGQGpwaUOPD55vzmS61r
	wJhxbcWjX1YeV5wrQZrJ74HgAQu3CecYQlUDMLxTGicv5Zwy0+K+WEKTfcBPsZ2j
X-Gm-Gg: AY/fxX6WxZxcXr+UceS7kakVkbMGHqxLlbyXQkctie+hsml/en2rOkUMUgOwxWfgeMU
	SS7U3Zq4LVBrluoNcyyI8+vj/SEeW98jbf59yrKlM9N26bCo3iD6mm/H4bhLKN8FE0MXYlbjSLk
	iYaKb8Du/EKBL+plfsn35au6MNMzXV0OW+lKbVdUnjDvYQHEjcYoReV1Y0Ia7eO4J7DpQIzqdGx
	idlv4IrzMvdv7Xi+JSgejo5aQCzOj7eprcqWtu+mt0qBZYy/pROwStHq9Qiaeypeej7RsdajnCI
	E3g65rtZpvkTXVKwpHlyRHb6e3Fs8qDvS7lSc0qRu0D6Nz6cWn8lvNkNOOPLTxHZm1NJPBkR15C
	oQWMgOk59gyzdz7IA8ogTZOzMMcngHrrSfCh2A2mxrhZ6Bjm+N+WUO2dlGqxe7XYbut9xjUOMGo
	GDyZSwpljbTDEZ6rXA3NZprv1wNR1dCreXJ4Us9aog/nzUxRwBSiRqHn6gZJI8Zy5nOqPm1pf2G
	418NlmyxFxuBJFehdqnTIeX5S4=
X-Google-Smtp-Source: AGHT+IHUBeWQOgSqzEbZIT5URu1uEO4OFjM2VzLjMgkUTiej4GaMoqlZcZZDBS13X8nIezUvqP1HyQ==
X-Received: by 2002:a05:6a00:1c83:b0:7e8:3fcb:bc3f with SMTP id d2e1a72fcca58-819444cc2e5mr1252844b3a.20.1767683374045;
        Mon, 05 Jan 2026 23:09:34 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:09:33 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 01/15] man/man3type/aiocb.3type: HISTORY: Update first POSIX appearance of aiocb(3type)
Date: Tue,  6 Jan 2026 17:07:50 +1000
Message-ID: <9d24531969247a5b763e1bf3de701a8b7614b39d.1767675322.git.sethmcmail@pm.me>
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

aiocb(3type) first appeared in POSIX.1-1996.[1]

[1] ISO/IEC 9945-1:1996, Section 6.7.1.1 "Asynchronous I/O Control
Block".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/aiocb.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/aiocb.3type b/man/man3type/aiocb.3type
index d81f425fce28..68cefbd0450a 100644
--- a/man/man3type/aiocb.3type
+++ b/man/man3type/aiocb.3type
@@ -28,7 +28,7 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-1996.
 .SH SEE ALSO
 .BR aio_cancel (3),
 .BR aio_error (3),
-- 
2.47.3


