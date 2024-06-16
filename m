Return-Path: <linux-man+bounces-1199-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D78B909B0D
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 03:19:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8164FB20F96
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 01:19:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DE40154C18;
	Sun, 16 Jun 2024 01:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="izjqcKvV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E64B1527A9
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 01:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718500780; cv=none; b=F7+A92yX78YFKbFviurx44whMLFvmiWtddj8YKQL8/PHoam2opEgQtfu+Rz2afC3Up66BTHeTjFYE/Km4FIWPGdBOz+Zb0SC5ZYGNGMMRbvhuh/+BoUiVbLtV7Lv6+/0+nIwgDZcPcOajs3yaSnXXlg39A4T4KrboRiOFoQ97+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718500780; c=relaxed/simple;
	bh=xO+q8UPSEisqX30JapzLo7CRRaW3Fd/z9MM1C4jTLIg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I5wagFTyXUlXDaMiMPf4wc6rlqY2CCLGwC24q9RCLMs7cA/M2YZgwFCliA+K1e6MIVGddvEW4B78NCG4MSgL7dL4F0t2iB5T2Uw9NAUsLJDtB/AmFWKoO44AZXXXekzLmjBVe1mHbIzRxqU97Hb1I6t+dkOfBFl6MM2rVofsAic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=izjqcKvV; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6ad86f3cc34so16341596d6.1
        for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 18:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718500778; x=1719105578; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ZLjUeQcgbOYethTCVBW4hwWzzEegcpo2FaSMW9UoQM=;
        b=izjqcKvVrQ4MMOeWLTWcxf0s6bgXHRqJbLVApyLoytACzIFp9DjAYnF90dXoydZ6LX
         iS5Sts3s2QhhpRda2EA4IveU6T3CbYCqEqMTJetfnlB+pX5zoruO+gwMv6z3ZFX87PSa
         KFFIfmdyuH7lt9oWVbsNspn80SA/wM0cml+mTCWIL6ZbQFJKgOUDC2MTadi1h3xIoqWF
         2MMKO0MjBTbDt5IZhpf5ezUG1LXlPBt/DYlZbAg9wDLq13iNT4tzi0uZTq0b/iiXyooy
         toIKCXkxsydZNvB/dj5ilcqhGeXeA/3RtMu8gmb0J3+5Adk6s+13DYx2RzUKA/Z3UkiG
         5M+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718500778; x=1719105578;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5ZLjUeQcgbOYethTCVBW4hwWzzEegcpo2FaSMW9UoQM=;
        b=D9eW5qNVoG2JGVvOqDwDhvBGpjEF7yEnAgX5APRkeuuTdSlk9UD2cONUqug2VBjtPh
         VafGEgzKcRDk72XumBrlRC5l7Z2yRVbDu7h+AdHYKbjDOJRR70rKYHFyUpfzSiYqcCpo
         GRj1Mv0AFGYF0R3eCRr6coXelN5wjIfDzZB39CvFKRqiIx9mEuX1JZhKInmUGu5Tnz2j
         ofsjR5TYIgNqR7uaZhZxlIFiAmHYy44LDmX72ikuVo/p/1AVHnb0KU8+MiNSjNMLshjH
         IwesaZ4y3cjsMMqXKyAX8YMffNLvh2Jd/G19pEesR+5jrcXl5Xm8PZ8AHQUulbxHLgIw
         gW9w==
X-Forwarded-Encrypted: i=1; AJvYcCWeCo/3GeSZq9UQ9SDYrRfp9dX43/Kh/CvCR+Zu+M1AHvCvxKsondeGIRQi7CJxKfBs2kPcXCjTt1ioH6sDKmFVsL/IAE0XftYP
X-Gm-Message-State: AOJu0Yx20b54KBH9UI6FNpwDlEj9U+atnyBG6Fxyj8vTZ8rDjau2V/rj
	4N305mdlbygvgNIw2H8XUSv5rHt7s0h1vPV+lsIEzZJblZyxlQR5q1dvdil9
X-Google-Smtp-Source: AGHT+IFYp5hJnPe0WXZQ9tk3IkOxm9kXsjt+HFEJyTWUN2Vtlu/fpnZdUtQ/Oo/w6p+O8yaHJwMZHw==
X-Received: by 2002:a0c:f5c5:0:b0:6b2:bb48:8aa3 with SMTP id 6a1803df08f44-6b2bb488c93mr47687036d6.16.1718500777825;
        Sat, 15 Jun 2024 18:19:37 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5c18209sm38130626d6.42.2024.06.15.18.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 18:19:37 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 08/11] sigpause.3: fix section reference
Date: Sat, 15 Jun 2024 18:19:01 -0700
Message-ID: <20240616011920.1627949-9-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240616011920.1627949-1-kolyshkin@gmail.com>
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is a reference to NOTES section, which no longer exists since
the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
Reorganize sections").

Currently, the relevant information is kind of split between VERSIONS
and HISTORY, so it's not very clear to which section refer to. My guess
is VERSIONS is somewhat more relevant.

Fixes: 4131356cd
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man3/sigpause.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/sigpause.3 b/man/man3/sigpause.3
index 7c1d78d3f..060562a87 100644
--- a/man/man3/sigpause.3
+++ b/man/man3/sigpause.3
@@ -13,7 +13,7 @@ .SH SYNOPSIS
 .nf
 .B #include <signal.h>
 .P
-.BI "[[deprecated]] int sigpause(int " sigmask ");  /* BSD (but see NOTES) */"
+.BI "[[deprecated]] int sigpause(int " sigmask ");  /* BSD (but see VERSIONS) */"
 .P
 .BI "[[deprecated]] int sigpause(int " sig ");      /* POSIX.1 / SysV / UNIX 95 */"
 .fi
-- 
2.45.2


