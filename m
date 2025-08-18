Return-Path: <linux-man+bounces-3467-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 86674B29974
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 08:12:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CFB02029F1
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 06:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7689E272E67;
	Mon, 18 Aug 2025 06:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b4bMDKPb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E209D272E60
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 06:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755497531; cv=none; b=QAlZ3VM0KIQ2qPU3xNfmTCQTJys785GvXM0RA3cm9evVJ+UKImxhnSnK0Lrq8fHwmp8VziAaLaeVjCw5SJxV3BmYHmD0f6otc8NamcgT7680kpNWkuPwrtG1xY7GBkD7X9KZz16CkgJkwtJPawDISIVFkJyyesjIExqv3z8uMz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755497531; c=relaxed/simple;
	bh=7WEAe+cKweOlWvWtrknk3YLFikPFkc5O4oQkqD3xwHM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=pQCAOnxFUFItgwxyZWn+FBaz9WgPP5UH4j8e8bIAFSbdPWVGEdYzCzX132Y/mhnLO4mab2m+v7OdK4rUbQfCbQopQGvqc+j+YOJBVPskKRpNI+X+lew0KCQpGYGc4Fb+nLHgieqSA//Mhk3IcweIMxhoNTPQ4bo/Jldqmr7tk2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b4bMDKPb; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-76e2ea94c7dso4293853b3a.2
        for <linux-man@vger.kernel.org>; Sun, 17 Aug 2025 23:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755497529; x=1756102329; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GQpummYxtsSqLyLcOMP3xyskOYYkKOIRmm8g35caj8M=;
        b=b4bMDKPbqzYRzQCupn61UJq+nZ5yI1AXkOV7/6Is8z9VE3XdkVJJ+Ejxdz1j1yj1DL
         T024JHZ8u4WYGYn+EQ86G+aeF24CkK9049BIFASIeKn8SGnSur1ddokworHKbprpszmJ
         wDiXlcMMJq6AvsWA/kBpwUBxEGoGKtWGr3pnXxLMHC/4bQ7nopP5g3GZjrqeAlD1vWCZ
         vW+UxSy6RzowViL4wo6MwYBl8TCRCF3FLX4ubgVgSKspUrudkCcKgYGDW8W8DDXAcEHX
         yRNfYeSmSOLm0KLKW9a4Y7m0sC8uBsqFeL889YOfTLcxZ6mN4WDXaSCBz+Qb6ducC80M
         rcHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755497529; x=1756102329;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GQpummYxtsSqLyLcOMP3xyskOYYkKOIRmm8g35caj8M=;
        b=NpEMM/5Uq9SPERueSA21NWi0GHcOZFahVUM9IwSztnpvzu9PhN7Ti8bGMrZfIVq+bh
         23U6y3FlqNlXFVbFljGcjSOfDWLUBKf1x4qGPB80cJ4lZyFKm1Pl44Nu5XnW/9flpiWa
         gL+05PkwVTFkmMZvdxf6S856zWMm56Hb2pEui5H19iUEXq/vqmKe5CRvfi6GkDJJrZFD
         JJ1FPTvowvFe4cj/YuJ2G8NjuivKa/0XYqrDQHPWAm9llX8chvV5b2fM554JqYLc0NSw
         73LA7R9Bktp7vWoDPi/iKCwO66P95hZ+cnPhyZ1g4r9WuGYWAVb02aggzhTMApSUDQy8
         Dd6Q==
X-Gm-Message-State: AOJu0Yz86WUxO0N7i/dIQKeD7andkZqxjH/808MvB3yxo8iQ2b4xMJmA
	aJGEaeeMXuIyahi9NWxABlOoJgOY+wjf0HjXWHqz9HGawTqaTDcx9e9p
X-Gm-Gg: ASbGncuyARbHNpLluePkylmTHEqKmUXxUGe9WTH+SOa+7wlMyGN167CnpUZpvLbxe85
	W7KUJj03uHVxxcomFFX+xIqhagxL6xj/X5t8Za69/1W4kGg3RH0HHw4O6RmRfsnUz+5EYgB+UD3
	BsssaJla+IfE4BXEshmLafYmyJEL6I7qGqQ6hcw1+3sl6/Mc3LwtF10FbOCh0ud8X5hmbinXXIG
	HYrziKc8SvmdQtj3/ClPcR1Xoshmyz3Zusrohvt0IlUTwCyYc+faEbA/mab4dkJl9+0eUr/8Y8Z
	IX2ihpzQmuvVD5ZQtFBmvBlODfD//kLjA/gSxCdDQFJ59if8NPgY7KfZXf00GmxPiF0BePNKMtV
	O6cc4toUN3K0x2PSBqmN3LMleSR1jJN8Nekuf8P22NvP5CXxdNtIMg8XfciWMKTDqiUsyZA==
X-Google-Smtp-Source: AGHT+IHHHaUDe/vSzksXDIX0rVB2R2XNVKvfixK1XSv7dlu/5fP2pzQoi3z+9JPxN+58+KBgTMN7rw==
X-Received: by 2002:a17:902:dac9:b0:240:1ed3:fc1f with SMTP id d9443c01a7336-2446d71a0afmr157345135ad.12.1755497528956;
        Sun, 17 Aug 2025 23:12:08 -0700 (PDT)
Received: from localhost.localdomain ([2600:382:7610:1712:989a:f101:bdd0:5b1a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446ca9d051sm70080355ad.11.2025.08.17.23.12.06
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 17 Aug 2025 23:12:07 -0700 (PDT)
From: Your Name <himself6565@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Alex Yang <himself65@outlook.com>
Subject: [PATCH] man/man2/getrusage.2: clarify ru_maxrss unit as kibibytes (KiB)
Date: Sun, 17 Aug 2025 23:12:03 -0700
Message-Id: <20250818061203.33211-1-himself6565@gmail.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Alex Yang <himself65@outlook.com>

The ru_maxrss field was previously documented as using "kilobytes" as its unit. However, the value is actually in multiples of 1024 bytes, which is correctly referred to as "kibibytes" (KiB) according to the IEC standard. This change updates the documentation to use the precise term.

Reference:
https://en.wikipedia.org/wiki/Kibibyte
---
 man/man2/getrusage.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/getrusage.2 b/man/man2/getrusage.2
index 34e81f540..13c405d0e 100644
--- a/man/man2/getrusage.2
+++ b/man/man2/getrusage.2
@@ -88,7 +88,7 @@ expressed in a
 structure (seconds plus microseconds).
 .TP
 .IR ru_maxrss " (since Linux 2.6.32)"
-This is the maximum resident set size used (in kilobytes).
+This is the maximum resident set size used (in kibibytes).
 For
 .BR RUSAGE_CHILDREN ,
 this is the resident set size of the largest child, not the maximum
-- 
2.39.5 (Apple Git-154)


