Return-Path: <linux-man+bounces-4714-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1B6D00C3B
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 04:04:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E5ADE300F9CC
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 03:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 747AE22B8B6;
	Thu,  8 Jan 2026 03:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YW76P/ez"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E713A0B24
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 03:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767841438; cv=none; b=pvibW/jdzZr2sKO7fNzu9xILFlC0eoh1IO1jwGYhdytod2ZoR/6AWEx3WElI2C3ZHrcXyGbSXjNsu7VmJzoxNFD6G0OUsb15rca05HoK2JuSifSMX0L2Q9dsg8H6j6EonUyX+OArdj5YKIdz+Ldfy24EB8wfgm4nFOiZSQfRGUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767841438; c=relaxed/simple;
	bh=kLaqg/LOK/vtfyohPOlY4cMVfuYGFD5xBGsxbVsYf74=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d3DUjBDlc7lFgd7N8wU5c5B9ResUFRbV5cfjQvAWZNdIZvcXGDGTQR0beCa3AYqZeUAhs9AfZUDCVjpZNg6autOl8KGN+MBD31K/1hwqHQb+fNoIhpSRIszVrjQ98IEUHH20UfmZZD4E9wRbSNi6L5qjBcpMsMsDJNp15GwpR+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YW76P/ez; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-7aab7623f42so2427621b3a.2
        for <linux-man@vger.kernel.org>; Wed, 07 Jan 2026 19:03:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767841436; x=1768446236; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ovZT7AR/SEEx5KQRqgyKO2Hb6HW8G3l2hYsU9/PcoKM=;
        b=YW76P/ez0nHC6VLAeSdrGqV43xvoUU69wQbJ9ni9k65VMcRoxgdqqx/czvba71/CG/
         LGRoBxxaZkygq5VwV4m17y8WZFjMHJ//XK5/J1In2uLsju/M4VTdHawkK+72gGSuUNaF
         p7tZMa1Hrw0LnjFI6o1h92CMQOofUIq9n7CSoKKhLHRJDvrAMp2QCT5ng7gY8eo7rRtv
         Hh7MAe1JaElSLvX3itirH89slV2rz9Vht5x70nAeowGBe2erqdmv0Q7+sV16ponA8MJU
         InXtnGHFDKRxAJOsdmAdPzQcLW6LlHh4VX8v6wuKr5OH8su77W4aQktRzsK+VkOgd0MV
         Zz8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767841436; x=1768446236;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ovZT7AR/SEEx5KQRqgyKO2Hb6HW8G3l2hYsU9/PcoKM=;
        b=tm+kf/ulC+Tq+cctjxO7mD4UbV2D2N3yvWOllKKNzhU+qspnhWtA4wdPAjOzGeEKFL
         AvMwJzm+u2iB5ArwPOjY4+yuMAjOzinpaWtfX1x+22WTnQ1xB37mLzIGArYIblTM7E6k
         lvm9V6qRMdOh3fBl174XHVTiPVzpbgwo/bkb0rssltGiE0SiMAS29QdeWQ++14b9uI0T
         N6mKqZ79m0XxVE8IGeCJFMDDOfWW1EHYImrX2UgjWbYCHcX3hFtSiOsjiaoDlf2XEA2O
         tWV09oHSiu+zBalJ35IjWdun+fPBELFBNY4OWJRpFPRhRRKTqcIfeMIxv0VTEcIbtH7J
         9lrA==
X-Forwarded-Encrypted: i=1; AJvYcCWoZO3hWM4IpZZN5DaxKzylcdNiThIH9VNdVclYx0Jd3bTjpL7xfPpS2hu/sssbnh9EPc9c09o4Nzs=@vger.kernel.org
X-Gm-Message-State: AOJu0YynKon8cKbaVpBLAS3od+7lKGBr6QrqwI6vX2dEt3edtfeKxlW+
	n0TuFNRC5maoVdNiMmlwuBuEeM5S7q848psPc6MY2/qZ+ajRJ+5n4XX0
X-Gm-Gg: AY/fxX5PwJzK5iREu9ahFY8hyJaa+9v5Lu0ShAXJXzxRiD3Q2eo6zcXipPFw098af0b
	Zgs4AUDo3mLXxHNXzivfLZU6jE4xOqZfKOktNSDo7QyELtkcqW1/qwe4uU8+f4HnSeO2mafbsko
	l4DuHvvAiUQ1VxSV/ZhscNgW+0e3JdJJFNMK4tpDPbOpbDiThLGexwjrleEBjNc620GB2OSZMKt
	D87Lzwuzwc2oZySpEEZhnJZW1IkvbjsQMnS0oryzWxF61kfv0MbkspxLm5WdWt8Z1RpYfYd16HV
	JWl39sakgE59Gpq9PAvsTypghqC2xbaW7NEmZcQmEKZujIA9T2Ym4z0Dqk5gOwhBRn0Z4K1lLHF
	5D/w1ibpubOLJwp9vf6VnNYZp1lUX2CutyVv+XXkZqcTCzi6Cmk6h92gyECk5AVRxtvmsIB7Jqy
	bNVJ3mIgcGj3RMp/nOIQiPms9va7a0obo2ah8W0KwmGSVv3VzicPG05fYhMCAjW4qKct4P3hcw8
	ZGMNnEt6RgAQ6g=
X-Google-Smtp-Source: AGHT+IEa7fEwOzOGXT7Rz3UkoWnR7fvmHTG1IlZYLVz/4ZsmnsK2RxahnW38JEWpAqFb+4oFZTZN1A==
X-Received: by 2002:a05:6a00:1c83:b0:808:434f:ba75 with SMTP id d2e1a72fcca58-81b7e04bba7mr4098691b3a.25.1767841436102;
        Wed, 07 Jan 2026 19:03:56 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce7d-5796-70e-21eb.ip6.aussiebb.net. [2403:580b:5de8:0:ce7d:5796:70e:21eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm6120312b3a.30.2026.01.07.19.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 19:03:55 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 01/11] man/man3type/itimerspec.3type: HISTORY: Update first POSIX appearance of itimerspec(3type)
Date: Thu,  8 Jan 2026 13:03:07 +1000
Message-ID: <48b823b1a96548132bd3414bcb3505f15e1572b3.1767840410.git.sethmcmail@pm.me>
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

itimerspec(3type) first appeared in POSIX.1-1996.[1]

[1] ISO/IEC 9945-1:1996, Section 14.1.1 "Time Value Specification
Structures".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/itimerspec.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/itimerspec.3type b/man/man3type/itimerspec.3type
index 00eca6702293..7c366b186894 100644
--- a/man/man3type/itimerspec.3type
+++ b/man/man3type/itimerspec.3type
@@ -24,7 +24,7 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-1996.
 .SH SEE ALSO
 .BR timerfd_create (2),
 .BR timer_settime (2),
-- 
2.47.3


