Return-Path: <linux-man+bounces-4342-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 47749C8F428
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 16:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3B1174E14F8
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 15:26:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94629327204;
	Thu, 27 Nov 2025 15:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O+51+ofn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D430929346F
	for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 15:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764257205; cv=none; b=mOToGPXggC3W1lbcnz/rPx5p5TRVker4gcuuwbwt6X87989Lqri1dwILyzSsMVOFmYNQkFJE80isNMwa9LTzeP3cF8YZkgDYqgP8xUTmERCO8obMxhEXgBwV+IRByFS9WNiLtyx6UJDBjjzQi4DdCqS0h9W/9ZbSQMlx32J9CZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764257205; c=relaxed/simple;
	bh=app+kRXjGtb8eXzEVjr4+LGbABIFNuDZq0yJyowyzQQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GeZTqrOJ1xJ9xfYETjw86VmmLccjmjvFZiRuAiu9YdfbAsZcZfvRqVQnTgsHxL8gMrvZl8dDHhRrGtUPZ/X8tgQpIkcyyNKu/jbZFLN3IX5l80CX35sH1GjmWIj7ITg/dnyljqnSSkTsS3Q9UBZTob2p6JLMogFxpfP0CuJmSEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O+51+ofn; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4779a637712so5864775e9.1
        for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 07:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764257202; x=1764862002; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=adQqtuGtOkh+/XizIELgIypa/bLr4iuxw07EkkDfkV4=;
        b=O+51+ofnfrqxzdjb/n2R3fuvF2gIbMvfmYdSi5cvCBJBEWqV1mh7/KL+YinYUerL+0
         2tRDtavmQgjZYDLhGbvicHVHPctCGKE83apVoNYsJqi/Npsu3G6+f4nfUy6xFPviSIPv
         22DeNHkvDbI4Hxztukh3C2WBvHHbUEZn8oee9yfkpXPD0jFEmMmHhPrR3PB62MjDbNLn
         PDzCX6PrN6Znb+FeHdDbfgpJnmird9sZTXMlR29uDMQ+RQrDGRRsDaRA0X8hzBKCmtJQ
         IdQesPXFdLiIaV6fIr2OG9uN3tD4qN+rPfhFQNyHJBSWmiWCbddj+Ap6PrmG2LjuRyjG
         sO8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764257202; x=1764862002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=adQqtuGtOkh+/XizIELgIypa/bLr4iuxw07EkkDfkV4=;
        b=Zmvlwfjs+b5I22cWTe2ET0CO3T9VlfUReVvqGv1QyqDmmYjQAIc6guhnT5eqvSkEgM
         yt92saLAGPku2XoU4egh8CSU4DiM2ciq38XpxKVg2GR07GWlNfBwjxypoKVQR4oVO6Ik
         Cz2rtxAE+6eH9yZrW2ysoCTL5mHOtP8qdejoFtJIu6jfteGQ5LP3liYRdY/E/Fb+JXG6
         wiUGSz6oGe2nqPGint9YtmKarntOpjktllXrKHgjxfx7g0ODKlqAX2L3sJB/gwfSegOv
         wyqznDiLMM68cxA2zmLn79nkvgjb7e0bK1wtUdwDYhxEDuDOG720aAkd2hdIfUI/fp/j
         /Cjg==
X-Gm-Message-State: AOJu0YyGE3j+L7Q7m8RChB9VszIYhKSljzkUOAaCFxUyq6N69hKVEirq
	7gSnxByz25mSnhGtqtnH+CrQfRvk2IljUT3sSTn0EVCjOR711J+A3EsdNfc2rLzA
X-Gm-Gg: ASbGncuLKEhju0Pdw9zEjgtN5MgObkKrjZBxq9dBrcvkpQOiNw1egmmcxUVKs9XXm3Q
	CQfvnODNEV3sKc2233EW2jxG3VJKMZI9SFNw/w1yFR/cmK2uZYJafNP2Zg7bvrs9/+6k974CX+/
	2JSETcnJ/sCCZLfDTw0hkbxeEViEc1B5RcmfIAYSQWCmbbldNdUV3G3ekbiRTvoBOtYs4bP30bI
	VAN4mXjouWtlmeqXnCdlRSg8Hpi6It8T+IfhH0Yjd2VfzFZ/bJ5/kVwdwctpJkQeOF+yfKIIwg/
	CzeaOwDn0kqyP2pZkE7BJVhv3KrdZO0sejOl5GDnb77lMjo17ae92zerd4/DSrGAuSpwFmd3CYI
	U8DEDW8IB84zogTPZEJvsp9TvasAGkMNh3Y6ZAyLl+5KtfiE8HiRC3taofBXDM3RUbX7RemBwAd
	zkcLNh9MMlD02VSkI4uOLzHixMWwCVhfrn9/Ug
X-Google-Smtp-Source: AGHT+IFOKSWz8G+kVs9sxTHWmrZHb4QZhLQi+g0Bxcfb/V8p2vg6ROxMfFhPoD4lRRjDlLIhifGMbA==
X-Received: by 2002:a05:600c:4f88:b0:477:af07:dd17 with SMTP id 5b1f17b1804b1-477c01c3721mr288351105e9.24.1764257201899;
        Thu, 27 Nov 2025 07:26:41 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.188])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5d6133sm4369897f8f.16.2025.11.27.07.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 07:26:40 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: linux-man@vger.kernel.org,
	alx@kernel.org
Cc: Simon Essien <champbreed1@gmail.com>
Subject: [PATCH v2 2/2] man3/getgrnam: clarify error behavior when entry is not found
Date: Thu, 27 Nov 2025 15:25:52 +0000
Message-ID: <20251127152629.684-2-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251127152629.684-1-champbreed1@gmail.com>
References: <20251127152629.684-1-champbreed1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 man/man3/getgrnam.3 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/man/man3/getgrnam.3 b/man/man3/getgrnam.3
index 87eaf39d5..1a2143d47 100644
--- a/man/man3/getgrnam.3
+++ b/man/man3/getgrnam.3
@@ -156,12 +156,15 @@ In case of error, an error number is returned, and NULL is stored in
 .IR *result .
 .SH ERRORS
 .TP
-.BR 0 " or " ENOENT " or " ESRCH " or " EBADF " or " EPERM " or ..."
+.BR 0
+No matching group record was found, or no error occurred (POSIX behavior).
+.TP
+.B ENOENT ", " ESRCH ", " EBADF ", " EPERM ", or other values"
 The given
 .I name
 or
 .I gid
-was not found.
+was not found. (Some UNIX implementations set errno in this case.)
 .TP
 .B EINTR
 A signal was caught;
-- 
2.50.1


