Return-Path: <linux-man+bounces-4679-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4D4CF898E
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 14:50:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 17674300819D
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 13:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 757B8337105;
	Tue,  6 Jan 2026 13:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JANOxYy+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9952D33030F
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 13:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767707397; cv=none; b=FJtOOZKS13YYIQJNy6c9TYzbV7DGt+pPA1Er4gK1YF2+ov++HX05y7dQ0m8NQcWLOL/0WjggoBb7GShjNj+bLg/f9keXJ+95vtiLzER1/JYSMG22AR5tt/ndAu/QOQRakSgj3SunoemDPuxX0mw/NloD28bu8G2drIBqtZD/ydw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767707397; c=relaxed/simple;
	bh=dBKIqD8h51QypEZo/f7gB9GFK1j6T4Va98kV31IXLEg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TtCxBQ6vFhudt2bSDki5ZY4DyHVU/qZIs3A/SQtbUtI6zcbxHdJZIs8BqzbijiB7cpGhPwVH2E08mqXGtjBDZXvPKULllhipWpSDIl+JsMKeUVHPKoQbIXF0I9zqX117LAJTrxu0tkPWlTiLIpZtjaQ2zzydfUgEMMwukCPtLJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JANOxYy+; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-432777da980so508110f8f.0
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 05:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767707394; x=1768312194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9LhX9tUq2aRl76m84eTozLW4opGZv4Q4yJ+J8lNfiSY=;
        b=JANOxYy+EV6CSwS5pwUfVmUvd1fvQAw8X9RlmPNwtw7caxwhHqoIjF8Wlgehip92I/
         gBhJcMp29M6meH23qdic68uwWMm2lhODqjtu7k6KsLdACAcf9UDMvVTYckU8I8kYMNbB
         XUYFAnD8h5ATQwAYaZhZNaF7X9LqUo4Ha2sXcZJgcq89hWmBl8SkWyBG/UsxsD30p6CX
         u2kwdFZWLcpukOIT+R58zdTu+20wI+RFDvOSVs3kH363h6ezTTai3wdXkxBeEbqo62Xj
         5VdWafP5DDbXmaLvT//aEZQFTwmuoxUqXX2MjBSD6vWvy//pzhC3dhny51sYyZCApU9/
         W73g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767707394; x=1768312194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9LhX9tUq2aRl76m84eTozLW4opGZv4Q4yJ+J8lNfiSY=;
        b=PLdaUgpyBqiE9JoHpzKfjHmBo/TsYwxfb1xOQd9tO2hDzb02gmZuAN8CLJAd9Vy0WP
         LcmAXS1OYmfq8Swd4sSjyPLcnIBmbKJ0YEJxoDm3Ldn8+WJaxhh7V2p6ftJi1WNzRWa2
         +YqFgsETX+zc4pu9wp7sInmvXedrhlsfY6mX2qqbtwLlnsZYsy126yzgVyCkIVWug2y6
         i2mpTpmNm6w43hP0xK5DO15BcnNot2g+wvxAP+IPcbUYSf+B5Nl5VzpJucOSeeiQPc2U
         y3roYk94wT3XrAokqWC+N3cLRkSXAYAUmF+FjgMT5YvJ1bblXIJDlXhPlIs1DMDttqnf
         58ag==
X-Gm-Message-State: AOJu0YxfjeolmkHJoxqTxuIFs879xfuQZ+UnahD+rEXVNE9DXqW3NBYr
	lhryRo50nF35zBuPTCjS6Ia1EScX+mXbEI3/vF9gw7Jkt2i+H2L7lAAyvJ2N9IzI
X-Gm-Gg: AY/fxX7htKbjWEnw4Lbyw6IjpaoaY2MUE4JfOCTg+VD8hlbF5p6NsODIkA03QHZQ1ob
	4+c4ezEyNHoB53wupV1GucfIHrPlp/iQ77jtThq8akc7v/mDu0aRBQ4fc0yeBwAjAyTUkmJaSaU
	yPqWPPm049JjuQQwNLPu44GITGwzDqNGePNRunq5fXNkOwfRkUiqs6D1yeOlGSdgjBEzQPyfHnl
	wzYbgvf13Yo8HAo82dKXNgykFJND69SX7CJAw04nkn3NabGfcUZKJD31Fdvag+TOWaJF3gq23dj
	L6VNRfbnXqaPoemgxo0ZT/5rCmZar1uyxS+gktUEAQXxcylH3T6dvz0n8cgpZoPFldeTwM3HB54
	b8tJCz/dN6LHHSNIyATibpWzTMe1eH5GvVQKI8hsR8J3pHOBWISQnnjUetY+5hjAoEIj8GF94sv
	8bZqakHzNfhZZRxE3EUaNyKppwElw7WK7LzZztE7tdyplxhlM=
X-Google-Smtp-Source: AGHT+IEr/TwruPR8bR3gXKZP7tLh7ou/OcGpB1XsVg+9768+kAatShsVtGuhAO5uS1lDdpSTN5OUIA==
X-Received: by 2002:a5d:64c9:0:b0:432:852d:5276 with SMTP id ffacd0b85a97d-432bca19c7bmr4949297f8f.12.1767707393685;
        Tue, 06 Jan 2026 05:49:53 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5df9afsm4739378f8f.24.2026.01.06.05.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 05:49:53 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Simon Essien <champbreed1@gmail.com>
Subject: [PATCH 2/3] man2: update glibc wrapper status and clean up FIXMEs
Date: Tue,  6 Jan 2026 13:49:35 +0000
Message-ID: <20260106134936.233305-3-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260106134936.233305-1-champbreed1@gmail.com>
References: <20260106134936.233305-1-champbreed1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update seccomp(2) to reflect that glibc 2.33 added a wrapper.
Update sched_setattr(2) to remove obsolete FIXME markers, as the
lack of a glibc wrapper is already correctly noted in the text.

Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man2/sched_setattr.2 | 5 +----
 man/man2/seccomp.2       | 4 ++--
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
index 6d5718022..c8010b8fa 100644
--- a/man/man2/sched_setattr.2
+++ b/man/man2/sched_setattr.2
@@ -460,7 +460,6 @@ does not include all CPUs in the system
 Linux.
 .SH HISTORY
 Linux 3.14.
-.\" FIXME . Add glibc version
 .SH NOTES
 glibc does not provide wrappers for these system calls;
 call them using
@@ -482,9 +481,7 @@ provides a superset of the functionality of
 and (partially)
 .BR getpriority (2).
 .SH BUGS
-In Linux versions up to
-.\" FIXME . patch sent to Peter Zijlstra
-3.15,
+In Linux versions up to 3.15,
 .BR sched_setattr ()
 failed with the error
 .B EFAULT
diff --git a/man/man2/seccomp.2 b/man/man2/seccomp.2
index 125794880..685ed4713 100644
--- a/man/man2/seccomp.2
+++ b/man/man2/seccomp.2
@@ -25,7 +25,7 @@ Standard C library
 .fi
 .P
 .IR Note :
-glibc provides no wrapper for
+Before glibc 2.33, glibc provided no wrapper for
 .BR seccomp (),
 necessitating the use of
 .BR syscall (2).
@@ -863,7 +863,7 @@ be determined.
 Linux.
 .SH HISTORY
 Linux 3.17.
-.\" FIXME . Add glibc version
+Glibc 2.33.
 .SH NOTES
 Rather than hand-coding seccomp filters as shown in the example below,
 you may prefer to employ the
-- 
2.51.0


