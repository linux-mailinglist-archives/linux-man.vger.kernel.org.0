Return-Path: <linux-man+bounces-1240-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B6E90BF9F
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1D124B211A6
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4254198843;
	Mon, 17 Jun 2024 23:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RMAsx/Qt"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F0B176AB9
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665870; cv=none; b=eKuulNWNyKQNP5cCuMuJzxyk7PsczQ4vrnZ8MEfn2abAb3x24KJYQv+EZ7eEivuRb7RqPX7Miy3l3+gm4g4hwnBHC69v4QKXfFP4brW+NaGKiWolotRKyVsXDZky8+yqUNKxMBSRc7XMedg71evv17YMR0mHbPXUHasdY4Vzs6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665870; c=relaxed/simple;
	bh=LX5B9S1m9xJS6+rZcuFjgpwmASR4fveXnl61KtDP37o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lTjkXW405s1Pb03I5lobdECBQf70sSVsWWYFVBhq4lmVHzms7O0IJDbs+QG8PYk1Hik7pqRlDGy3LQb5lr8275KzF3PAbTkvLzRmsu78JulZhaGPEQzFjKkcX+RngWUjHk5BBMIicFZhFfhq699hP1UjSGNUIuKG8fmqH9vvYyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RMAsx/Qt; arc=none smtp.client-ip=209.85.217.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-48c493dc7e7so1428361137.0
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665868; x=1719270668; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yZJ9gHhcHtyjVC8KoZ6Imdf/0Rhtx2aOZ+Wju90v2Dk=;
        b=RMAsx/QtkDQhvDbnDI+6fD3pl9DtL6uS7+aXiYG9fq3JOWli2UA1h95tEnpxWyRed3
         vvUYGFxWEL2HYAUbNm5ZX9EoCoj2oWfqSnSWQpD7nBNucmLFJTF3O6sPRrU86c+vEN9B
         qlvfLt29APOik91HJRo8DJu+MaCyGQQGHWUD/lLy4SJf1AoS3FGp1AuudODPQEQ5+oMB
         GAcHsX+074GFr5y53S9LT9Z3vZc1ajz4MTfumf3Jj+gxECzvN9c9LXJ5lA57X9TmWE0m
         03aip2ZvD0fXceawBg8/BywimVJYwQoVomzT9xk5Y34qGQfmRJcWvOugdilSi0jPKnK/
         oTjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665868; x=1719270668;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yZJ9gHhcHtyjVC8KoZ6Imdf/0Rhtx2aOZ+Wju90v2Dk=;
        b=lFzGV5+c+gyH3UHS8Z/VQHksGUXjN++fZ0/GarFac078VsBl3u5leiOK55nD8gwYT7
         fWuAFSqGryqvqnJpYfN8w++quvC3gfNtjBn4aqk6OZT0LJTMdLFJTg+blfoVwNzQ/1wu
         w9C7MmS+r2sgaCdtJNS2VQaR/Xsp8WeLo9YzOhDepWY9RgBcJHAHm3CT865V0aOHnX1u
         ieZ0nwFgNvK7diFOCjfM/rRXUhtUkwXuamQDtdYCfCyTfLYi8X6gPQgCvRdAgRKxBs7s
         8k9a1sQAR3zmGfKPvulSh1U9r3WSMdf5a3S2HxNjyll6fruPL4yhgSvyiUvXlvSAIgiB
         yoHg==
X-Forwarded-Encrypted: i=1; AJvYcCUnAp+MRBDW8YDyhuXE0Ia86IGYVXkfR/p93wsj929AIzwH2etRzCt2fB1bsoIfhXSQixlwtXFr++ONF+5SZBqzwALsWh2muq20
X-Gm-Message-State: AOJu0YxQXRo8TGI6C2XDgN/sxz0hAkybDfzRUL1iMqBWnIXuNuGb4I8y
	14wwZLsw9cqsDzl8sK9wXzItw+1rAYAqPJYx3toodORnbFzTtDMQU6khxUuU
X-Google-Smtp-Source: AGHT+IHPaJbbrMOGwnXuEU9a8IAgU8Lcabqf+XE8ZA6ibfvoMRVaaAgB4SL2YOQjYMo4Qxqcy/iC/w==
X-Received: by 2002:a67:ce02:0:b0:48d:afd7:1027 with SMTP id ada2fe7eead31-48dafd7114dmr7918090137.4.1718665866533;
        Mon, 17 Jun 2024 16:11:06 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.11.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:11:06 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 12/16] open.2: fix wrong section reference
Date: Mon, 17 Jun 2024 16:10:24 -0700
Message-ID: <20240617231035.1766780-13-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240617231035.1766780-1-kolyshkin@gmail.com>
References: <20240617231035.1766780-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections"), the discussion about O_SYNC and O_DSYNC
is now under VERSIONS / Synchronized I/O.

While at it, fix the typesetting.

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/open.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/open.2 b/man/man2/open.2
index 1e98a1df4..88d065179 100644
--- a/man/man2/open.2
+++ b/man/man2/open.2
@@ -418,7 +418,7 @@ .SH DESCRIPTION
 .BR write (2)
 was followed by a call to
 .BR fdatasync (2)).
-.IR "See NOTES below" .
+See VERSIONS.
 .TP
 .B O_EXCL
 Ensure that this call creates the file:
@@ -776,7 +776,7 @@ .SH DESCRIPTION
 .BR write (2)
 was followed by a call to
 .BR fsync (2)).
-.IR "See NOTES below" .
+See VERSIONS.
 .TP
 .BR O_TMPFILE " (since Linux 3.11)"
 .\" commit 60545d0d4610b02e55f65d141c95b18ccf855b6e
-- 
2.45.2


