Return-Path: <linux-man+bounces-4341-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7451DC8F425
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 16:26:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 683F44E03A5
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 15:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFA19322524;
	Thu, 27 Nov 2025 15:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eOtuU5pa"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12F9241679
	for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 15:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764257204; cv=none; b=rDQ6LhyapoSeWPjJLf4RwhVy3OJVzFtvYLQxouaOyI+jqnoRP+kIk2vTH+9db7fhtfW/YIGW+OFAOwO3wokSijaL978Nf/V06JasMt5ZdpuJqWKvCWXSvwkN+4TAQ5A+CcbCo4BqWeGPoiu3f4UbX3ukgNDxkRZ4TfhgIYeDB0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764257204; c=relaxed/simple;
	bh=7GDd3kcHQhN9SvunhqkhMYXm4y5VbZvgtdqMvGWvRpM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=np2cMBLFAF+xDL8Q5M4vQjmhWrCbrC7NDyA07qB5/iecrhBW8cOCirj5/X3rb4E3zKspQSrRyeYrkZ7Qch5ZnzIXRcqB5T+hWHJ7aiMV+o5iyXdkbnEKRVMAMHemcP/CfOlQs9iu1wfgGdghsl7l0NB2rUA9eue5Wd7gJay+cg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eOtuU5pa; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42bb288c17bso664611f8f.2
        for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 07:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764257199; x=1764861999; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Vf9AEiDjFd+PjhpRl0JTXpK821qA277VVDHpLl6a6Q8=;
        b=eOtuU5pa1tYLCvffjYrr5w6+ongIKEpbXIEcPvMNYDx7ivxUqw+2e9B2HqJb77cYq9
         +glKaaiyz0b5NGrSXFCYbN6V72aqBhJYvIRdN5L4FHdSKYTM6qx7Xsrrl2Z4RiOx3SEu
         uEWBMzoadBjknULHLAS3WKXzosPx6tlTWKubFUYN2uY52cAN5PGv7on5f6HClkYna80G
         r+G3ZcRZWxFRCdUzlyVWtg1mJEOGBBWjtOlxLK8g8OhzHuSRc9a/BmmDuBTj0yN4pFZ/
         hE2evMO/JU/YfP5Ev56r9Jkc0lM3Qp6jDVap0bAAo3bkm+OcPNDskCNrKviYHm72plE6
         mTXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764257199; x=1764861999;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vf9AEiDjFd+PjhpRl0JTXpK821qA277VVDHpLl6a6Q8=;
        b=J1sRXNhINcCb+9mdcS4XFWU9V3vf/Ypmre3/wiBM0XabZlEcTJOAb5EJBkp8Me1Z0W
         Sw/7RsEN+ukkMtaiMQDbsSQ2opg3sBSnujRKFvKtTe835vq6V6wBtwZjLNV8Ru+Br9A3
         wl/N7s+VufAbxBbOKzw8yODhyrG9MxPwlVGBmzgMkO2gHJO8df931epfKGb/cZWvi0gK
         fdYMufu7Z6T5RgCM+6gYk/voJa+BNOQFIJ3r5cIjJfiy6zLKJa2fp1WxZglSOIo/YNx7
         Xd0fw5orSvZ6nxnfs6GJyUK/3Br+1s0OAI7Qr59m6CMXpY3CxJ/KnOxjaRotFmSI2Zly
         rRWQ==
X-Gm-Message-State: AOJu0YwJmkA35DXYs3Xc7dMDAQITfptWBLhyOmVniSJcZubgOtXuRM/q
	pSjdVKiCPsGfziTYA+Nk7rdZrsyIaaQCY+MF4XZeIddHQFawRZciOae5vpjr8NFF
X-Gm-Gg: ASbGnctgT9Gt1of/rV/91EW7F5DlvUpq+DFM+eD8rmZJWkDEdjSQ5mNsCGxIQbjYzNR
	CNNfdNZh8n96641pj1LhlmUDyj9QJCxqrPE8wnzdXjONDr9RirL2MFoNcIbinFDhJHCEDR/WtME
	BgtSRMcmCGvW5Pc5DCmkiIgSW6DzZlalxOpOp49GpLAqxXk+m8qS7ej3n8f+jyl2pOj4p2a7tIq
	N+t4UQool05c7Xp4jDhRR0qznLN+c4mSwZJvSq574L/Pz/ex6xXi04cFculCvtLEDD8cOIPEZV4
	PrsEga3+mPlSqEr+0lUqB2/dxgLZPQi41x4F5sUytLRxPzDt6NUAV9mT1ENfCPPGp/ROWrSkSNJ
	MIop9qQiXtr10DLH2GbUuxAX+Ef5vaCf+PqqkOYX6OW6B52dLegTxDtOAvQhMs80pVoBmIncl93
	9xVrf2vca0mGGH31YFdrFRXZRf1SornahYnCxm
X-Google-Smtp-Source: AGHT+IHSjnfJJ7lddV9ImWMbNRmwIsbDacbwA0FvuUAncVu/YfR16u0owi7+EPaVerDatIh4T/KuEA==
X-Received: by 2002:a5d:5850:0:b0:42b:3252:14c5 with SMTP id ffacd0b85a97d-42cc1cf3b19mr24491147f8f.28.1764257199309;
        Thu, 27 Nov 2025 07:26:39 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.188])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5d6133sm4369897f8f.16.2025.11.27.07.26.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 07:26:38 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: linux-man@vger.kernel.org,
	alx@kernel.org
Cc: Simon Essien <champbreed1@gmail.com>
Subject: [PATCH v2 1/2] man3/getgrnam: fix ATTRIBUTES table after adding R-functions
Date: Thu, 27 Nov 2025 15:25:51 +0000
Message-ID: <20251127152629.684-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 man/man3/getgrnam.3 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man/man3/getgrnam.3 b/man/man3/getgrnam.3
index 7d6365caa..87eaf39d5 100644
--- a/man/man3/getgrnam.3
+++ b/man/man3/getgrnam.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright, the authors of the Linux man-pages project
 .\"
 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
-- 
2.50.1


