Return-Path: <linux-man+bounces-3113-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A419AAD0F39
	for <lists+linux-man@lfdr.de>; Sat,  7 Jun 2025 21:56:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BF9F188ED98
	for <lists+linux-man@lfdr.de>; Sat,  7 Jun 2025 19:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA4BE202965;
	Sat,  7 Jun 2025 19:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xDtYfVAu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C20145B25
	for <linux-man@vger.kernel.org>; Sat,  7 Jun 2025 19:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749326213; cv=none; b=bjKYNnoqChWTXgEUGT1SnFogT24slI+W72tWcY7aCg5nfW5N394vfzY7U6wh2L0pkJCzPftkwhpuH/39XuPKKQPL07+vpRbf/O088Ux7+aM3qgogpOYFEnDt0crdylWlhiGn9JmiGcOFBIqptWF10OEFBnEZ/we3oEmYAe/zuOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749326213; c=relaxed/simple;
	bh=IA7cYl8w9LN8ZMdmJLPdDeoGN+nZKAAl826f4UuIaBg=;
	h=Date:From:To:cc:Subject:Message-ID:MIME-Version:Content-Type; b=TLqdY0fwwM8HcSkxsRE17IFOYdX53YeaORTzmp5gyNSLTlGGhbpHTSoubi25CCb0AcQ2Szg8lyYJfUi3fa5kVlal19sPiJJ95L4bnn3a8IGAtNDVCWG/MalZuxNtoKRSYvOAbTqBtmBLix7JZ1Ac3N/5GNj2TQDvIef/ekvBfgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xDtYfVAu; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6fafdd322d3so36272006d6.3
        for <linux-man@vger.kernel.org>; Sat, 07 Jun 2025 12:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749326210; x=1749931010; darn=vger.kernel.org;
        h=mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nfHssHVOLc95I7UMpBgT8Ez6lPI4UnyF+s1eHFtxZo0=;
        b=xDtYfVAuhbn5WBofqn6sE9S5r7msOHgriVguUbDHTICL5CXZRwdNQBNOcmEzx7lXQj
         9JRRsMp4VqvtWI0HSjrrKdhqY8I0a37xSgs4SUdxql650sKVFq+izYonBwasGMHmskzK
         JMaW1ESxELQ19gsOd6XFE17ZyafEXHUyeba1pkznhpqomIEWaX2xo8oSEcZ+jPeg0FKD
         8SHMdSqiFUfRKq8IRwFbJuwnADRul/MpQDdBC4vZDHhG+Nu7FpuU3C+QaR/AjrjKeneG
         JSiL2KRq70lKLoAeYFo86Itt61wuj4Pl3Id7ABIt8kN/WlWRjswz/eihtrzHn4FN8xsR
         1gmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749326210; x=1749931010;
        h=mime-version:message-id:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nfHssHVOLc95I7UMpBgT8Ez6lPI4UnyF+s1eHFtxZo0=;
        b=tkr+evqmMUjZIIZaqV5CyMPHUec8v47WBJCAtH4FsUtRgf4P6oZGlO3Y3/JFpeUrKv
         Pa/JRTx4w2/rxMyRB2EPzjNRyIBL/FSKcunVDjhKCKTgA1olLPVqH5EZEmcl8KA7ZH0M
         zWVHJhETQQgcF/85qxDPtCvcPk0AmafmxjPNDriyf598Xc1/o0rwry1TKnDslvERIaLE
         fZLCvmzkVuQP8nDDuxuU9Mzr1I+x9uJfT+4J2eQvqERsB152DrqXjAnZesr2sz2RyzKB
         caohWmquVW5iOLwWIEJPRwbaB2Xaix3ANCPuRoLO1lynN3MLwHrbZjVXAuVlcrjJejSC
         CVRA==
X-Gm-Message-State: AOJu0Yxc9kxZGOrPnnksIy25RRg0O9h7G+7OMPED/onV4kVYrB3hPgfG
	EuwuAhUgcqv64u0JHVMwGUZ2BYR2/RKBn5FviIUkFPzPa/0/Mj39t99O+f8K0i2sdqao5kRprxy
	zXy0F
X-Gm-Gg: ASbGncsdyDyl1eo1oVKPqU0lOJYNA6eG0+Jiak1BtLRpl167yc8ihAVMqS7rb0qhgak
	aaZxCZiMrRez8q2lMNiDpdqNWxbJIvXtyNtIuw5ld8IYzC4mn7s35QqckwYDMbGrzIWKJQe9zsD
	EqI0Vf9FFg+yOWeQl95wl2VIvPQmls+qL8KjZL5UkUvh1zgjV3uoJ9cHIvVSpdb1brsQrOAC0XX
	WTdQwWc72pC84rCl0FCly7g0mO8CNYNX0jfYm80Dcm60O/zhA6YXcIeqt6AOWYuaMOW546Wh5K5
	22cDolD4lSjvKjZwCdNUVtPRLvnaucd6Iv9XCtYOFwZ/JuqHNry9YONBDjZn1wGXG7gHu7tg4in
	hqgV8wgILTmXDsw==
X-Google-Smtp-Source: AGHT+IHg/sgoNtf3W3/4a8FZuh7cQ79riYLdip7ZDb1rKQHKIJQDITz04ASTRtq5yrMteoByi/3EnQ==
X-Received: by 2002:a05:6214:29ee:b0:6fa:fe02:8229 with SMTP id 6a1803df08f44-6fb08f89fcdmr112570906d6.30.1749326210229;
        Sat, 07 Jun 2025 12:56:50 -0700 (PDT)
Received: from xanadu (modemcable179.17-162-184.mc.videotron.ca. [184.162.17.179])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fb09ac95e5sm32409506d6.43.2025.06.07.12.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jun 2025 12:56:49 -0700 (PDT)
Date: Sat, 7 Jun 2025 15:56:49 -0400 (EDT)
From: Nicolas Pitre <npitre@baylibre.com>
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man2const/TIOCLINUX.2const: fix TIOCL_GETFGCONSOLE
 details
Message-ID: <qrrs083o-sn51-4172-46n1-s8359o543p69@onlyvoer.pbz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The returned value is the console number starting from 0.
Corresponding code is in drivers/tty/vt/vt.c:tioclinux().

Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
---
 man/man2const/TIOCLINUX.2const | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2const
index 98c6cf54e..013344eba 100644
--- a/man/man2const/TIOCLINUX.2const
+++ b/man/man2const/TIOCLINUX.2const
@@ -233,7 +233,13 @@ The VT to write to is a single byte following
 (Since Linux 2.5.36.)
 .TP
 .BR subcode = TIOCL_GETFGCONSOLE
-Returns the number of VT currently in foreground.
+Returns the foreground VT number minus
+.B 1
+(VT
+.B 1
+returns
+.B 0
+etc.)
 (Since Linux 2.5.36.)
 .TP
 .BR subcode = TIOCL_SCROLLCONSOLE
-- 
2.49.0


