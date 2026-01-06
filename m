Return-Path: <linux-man+bounces-4648-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD99CF6F78
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:09:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 71A2230161F2
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 097CF309DDD;
	Tue,  6 Jan 2026 07:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qxr1NrgG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFFF307AC2
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683389; cv=none; b=RRn1qSupiH4QVQs4Pun1Db7mD8CUPk+2fKwGvxZbidGy4I2Bc7W7Gk/x9D0t2Zs4QOiqXZm8g5Otr/ZzIDWXbWoPppAArCCd13Uoc/fdM12esHOUGjdVpxTd/qRiRrNQ3FEuWl4h9JVsl/hter1w8Ltfw3L9arEnwuoDgbFc+vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683389; c=relaxed/simple;
	bh=gCk3coH92Z8zEHmQL83zGAkw4k/ucspsmq7W4s6iWQE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eriaiQ83P5lgTCWhUUtovQmEeZ5Li8SDcdI5Gh2AhOqlHDx4VjK9JKdAscU2rIuE68p8jz60H36v0+jzh/oxS5XvCXU0U8SXkUHgZWZjvqbnpFzBaVusk11h+90rA5hbHyggI8gfoP6DRsLQesooDV5W7RYfPG0WpWufiSPGdIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qxr1NrgG; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-7b80fed1505so781216b3a.3
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:09:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683388; x=1768288188; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=J7KcEdIuXxGkUdy3woK8aPLqJMcINvxQDwzUkZdWD1g=;
        b=Qxr1NrgG1LdJ4vsm4ECiBM9r0SZ7S9H5Q2LJKp46RWVTofqh161TkfHIp3qhTshKI+
         ArblGMd0gfXNn3DaYVnJruMxD3iuPoxHEnIE1DZCQd+LT9XkN/+26nKWRu75YPWY0kou
         +W3Uf+6UJAiSynzOCatUTvk6++RuTdkqPmzlEg2VuSrCQ9rnq5OaOWkkzUECuDHUyV7o
         KYZyXAQYA1634kkoMPjqox+PeTV4qmMym571ItQpZqx2Yy2owjaX1aiitXjEAJfoju1g
         qOpMWTqvkEF0QzYHprUJt+8yGqvq3BtQmtKdOdvGBTyvWPW1Okru/470MC+OtafE0qN8
         jTdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683388; x=1768288188;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J7KcEdIuXxGkUdy3woK8aPLqJMcINvxQDwzUkZdWD1g=;
        b=i3vzLXOEfNEIE1/iiEp1E22x6iLopxPOjcirlfkKSu1gx7l013WUuwupi9Typ7dJfV
         bcMcUdekW79q3l8XttI2uv55tnwIC8izIJHGdoiw31p5ZF/2u6jFSdwe362SvdM53ylf
         K4ibGmTHcFaLRCxH1Mp2ApjAWBlIGG+s1bN1S1vNSep05IBRN+e7Y0uVo2NCgBIcP20I
         2ZU1T1ZPuo/+5P0MMc2e6PrXrYGdBH/u58F6Xb4JbDlEWMX6ieQ4/zypyIahmdV6qu0b
         U6t+9TEV/crU9Qf/GB0wUbQJmTXyhoSGHAA6PiRN8C1Wlx5slKT5vlNVZI6K0y33oZmB
         n22g==
X-Forwarded-Encrypted: i=1; AJvYcCXiugiLt1ZBWuZQatJWb+NTcNE6vz+V27nd228QzwT2yrQDS5wvRSJMf6vjs7sZgobbXbo79Mhmo8M=@vger.kernel.org
X-Gm-Message-State: AOJu0YyHnfITRp2Php+0WrCWAR/LLjRl1wQuXWS+41BJVO9ugebtcW5L
	xPymkbyC2wKsynV+a1U9DELcBNo4YfDLL8jmo0OfLRpht28VhW6uNPK/9xW6E/Wu
X-Gm-Gg: AY/fxX6dFMMATxIai2+jiDgBsJ5x4eJ7tHrFH4zS5LRCeSHGSK8z8i9NUuiLAavnUN4
	EwVIHJwl3ngoqRv/FDvkk91NrbF2Kk6wQLrvfH30cPkxnYBrF2lKGpyfgdXs6nabCS+i4IoGrtd
	PufuYyhuFDrTDqEpLKWlNj7jgEkC6a0Pq9rhFO6UTAlztVPXorekvSryuUlmohbyB+oSlpGVtgR
	lRN/xB/RvVyTmVCz+fiEBDwYmkdoiJiaLkmiVW9CdPz92hThLJsNJ2gY2gVoXJYzu7xqBW/nl2g
	r5H4DHU68cPVKiX0oSBHic2AQUJvgUqhksEF7wdedtt/YGVXXvKNUyKY6GGt8bZay5tntsoXpqv
	aObZUasJCkfHJqWhW+6MIsrWKI3jZeShy5QxTgo+4XFviFf9jgAzjPWsV4sJ9tR3htprG/NNMng
	heQ3B1dnIhWKQEi5m+VswuYX5jUlUjRqhBgeKX/FXjkD1wlovCUW1NPdI8CQCJ2vPKHATeDh934
	S7LNXR/cG528Fs0nZTnDlXaX14=
X-Google-Smtp-Source: AGHT+IGViumgse/9vAAQ5qW6y5k7cJeV/uSiwurd49q/V8NhL8BpRnoYZPjpykc1V/A7+RpE2D37qg==
X-Received: by 2002:a05:6a00:4983:b0:819:6dcc:9657 with SMTP id d2e1a72fcca58-8196ddbd9d4mr1064745b3a.10.1767683387765;
        Mon, 05 Jan 2026 23:09:47 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:09:47 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 07/15] man/man3type/div_t.3type: HISTORY: Split [l]div_t(3type) and {ll,imax}div_t(3type)
Date: Tue,  6 Jan 2026 17:07:56 +1000
Message-ID: <417e53f6394af198ebac893236ad51beafa3488e.1767675322.git.sethmcmail@pm.me>
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

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/div_t.3type | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man/man3type/div_t.3type b/man/man3type/div_t.3type
index 19af4ee7d5c3..654e78b215c0 100644
--- a/man/man3type/div_t.3type
+++ b/man/man3type/div_t.3type
@@ -49,6 +49,16 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
+.TP
+.I div_t
+.TQ
+.I ldiv_t
+C99,
+POSIX.1-2001.
+.TP
+.I lldiv_t
+.TQ
+.I imaxdiv_t
 C99, POSIX.1-2001.
 .SH SEE ALSO
 .BR div (3),
-- 
2.47.3


