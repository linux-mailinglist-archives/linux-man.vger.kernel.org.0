Return-Path: <linux-man+bounces-2526-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BC6A478F5
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 10:22:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1ADB216B1DD
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 09:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E83EA227B95;
	Thu, 27 Feb 2025 09:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="azEfSBhK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C97F15DBB3
	for <linux-man@vger.kernel.org>; Thu, 27 Feb 2025 09:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740648129; cv=none; b=KIJJdsbUagN4Mo7s4CTB161qvBdXEuwhMovkkhjkDAET9GehHbIVowGZz1eDlh4TTLBAReS+mGunq+uATVPTHMHXwRNCKAPAbqgPjznggKy3WCTdZq8PF75AuZpBHTLyyg3lJZMB5cWb7+s6XBrkvSip5Y/oakwHcPq3qUb+04I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740648129; c=relaxed/simple;
	bh=Jg5ApV9f8P9X/jz9ObiJ7rL+1FhJpLdd+ZHAp0ewXWw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MpTiu9qvI0Y8AQD/xn7Bj5ADULBuChXKyc7+vqziYz2FHOIIluHPTMvpkTrluGvd8sstAyyGUesxaKT7RR3ypmS74IOorWawMTCCDL0FM0Cw4Jz0njRyWDuAtEg6a9n1PYNY4vhjuLMVhG4qrY4Y+/excFhpVMRVCGJV9PLw0+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=azEfSBhK; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-38f6475f747so297999f8f.3
        for <linux-man@vger.kernel.org>; Thu, 27 Feb 2025 01:22:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740648126; x=1741252926; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wZE1PwaMDwa1O7L5KygrMilRDEYD8jeRk5r+WS8+mzs=;
        b=azEfSBhK+PDLfXIQo845BU83qfODACpyqpA5O9qoaVzAH8iRNQYuWIC2k3rkRhGcOs
         Az+IVdH6bMgPrNpngmCM7EV7XyicJ1yvlyUCumGsh1TWhSntgPHHh1YtYWZtS+Ugw+yT
         nrOydZNGMViX938Yfx70YiIu2rnkkgs6luwY6NQZYM5Kyh1GFldmOrZNxASCtB/37Wkc
         kY3G8XHV7foMYgQ+xQgI/D8JK3fCgY90532gtW/9vQT0HBuf7ntoydTQy73cYggQD272
         HcjyFEBb64c+2D80elHyyo0iY43KMBaJeW1AAf7zNFsyVw3+wgdCnI8lQdjW+aXT0vTo
         QQ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740648126; x=1741252926;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wZE1PwaMDwa1O7L5KygrMilRDEYD8jeRk5r+WS8+mzs=;
        b=uFog/gdJpk+zLV8ER4lbs2pOxh7G9Os1yv10+gjii7Un/gg6oheu13dUf7c9n31HxL
         2gMzXyIf4pP/ILINHtOi/J21Te9MBbGg4RRiGdsQfK5zP3DGDicGzHruPufOeLY6vW1t
         Q7D+hYYlGcmHhBRenQkKTZH2VBOwqIWtkmYeXxlqn3mLu4Sp4ePooi2HhnXY0vnzxJF/
         9V53PRiFfqgnmJuvQFp8/kPMCqQeaPQPghYm5kcXPvqxTeUqadpZn7wchfPZLX5cMrKQ
         T1RToN5SPv8MfQgs3k1H9uPUaIv4Cc4LbK4hEZjj9OKNpW6c/HzSolnmSKuWiMp43V+v
         QQwg==
X-Gm-Message-State: AOJu0YzNOZmBnmwsE51HLMiDDvkUFekqZ8Lt38LB3JTLIHmvLF4EjM1h
	ClkFOYIrE93dvXc6gtBcl3p4nY2vXxBPOdY3e3TZVd1baubgzJOH
X-Gm-Gg: ASbGncv0o+EZ8yye0FPbi9rmy7Yi6VMAtQE3gZtwKusAnQy40gdhF/udlQP8NuRMSgS
	JL4O93SU8hN1AY6iD64KNRD8D8pny1gYr1N5xLcdeNJ9KgdIBZK8AypfbI6S5+6vfyGs8m8R0yc
	BT8U6ArIbvv/v+HkS9aYqHrW0ui4vjnfN88h7aVwPw1xtkR/O2L2rforabrQApLV+XIixgQcAUf
	+JqeaywdG3qhL9AV4rUHZinPHbfRbjvjop/EwPqBSDYSzNXPj2icB831tGIfivu8oui75Khva8/
	PhmMLcRJozmH2ZBs
X-Google-Smtp-Source: AGHT+IENXabPWYTrOffiPmcnu81bMlei9MPelTrmiF8on3JuFudOpRnCRuNE7RN+1ELAqQBLxhVi2Q==
X-Received: by 2002:a05:6000:1a87:b0:390:dfe9:1866 with SMTP id ffacd0b85a97d-390dfe91c49mr2013840f8f.4.1740648126057;
        Thu, 27 Feb 2025 01:22:06 -0800 (PST)
Received: from nz.home ([2a00:23c8:a613:101:2204:db8d:4c76:9ba])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4844a16sm1397585f8f.79.2025.02.27.01.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 01:22:05 -0800 (PST)
Received: by nz.home (Postfix, from userid 1000)
	id 03DCD29B25AE1A; Thu, 27 Feb 2025 09:22:04 +0000 (GMT)
From: Sergei Trofimovich <slyich@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Sergei Trofimovich <slyich@gmail.com>
Subject: [PATCH] mk: don't escape '#' for `grep`
Date: Thu, 27 Feb 2025 09:21:42 +0000
Message-ID: <20250227092142.1822609-1-slyich@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Without the change build process complains

    $ LANG=C make -R help
    grep: warning: stray \ before #
    grep: warning: stray \ before #

Signed-off-by: Sergei Trofimovich <slyich@gmail.com>
---
 share/mk/configure/build-depends/cpp/cpp.mk | 2 +-
 share/mk/src/sh.mk                          | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/share/mk/configure/build-depends/cpp/cpp.mk b/share/mk/configure/build-depends/cpp/cpp.mk
index ef12a848a..8a4ccc442 100644
--- a/share/mk/configure/build-depends/cpp/cpp.mk
+++ b/share/mk/configure/build-depends/cpp/cpp.mk
@@ -21,7 +21,7 @@ endif
 CPP_HAS_ALREADY_D_FORTIFY_SOURCE := \
 	$(shell \
 		$(CPP) -dM - -Wno-error </dev/null \
-		| $(GREP) '\#define _FORTIFY_SOURCE ' >/dev/null \
+		| $(GREP) '#define _FORTIFY_SOURCE ' >/dev/null \
 		&& $(ECHO) yes \
 		|| $(ECHO) no; \
 	)
diff --git a/share/mk/src/sh.mk b/share/mk/src/sh.mk
index 05c9e0449..487eaf14d 100644
--- a/share/mk/src/sh.mk
+++ b/share/mk/src/sh.mk
@@ -14,7 +14,7 @@ include $(MAKEFILEDIR)/configure/directory_variables/src.mk
 
 
 BIN_sh := $(shell $(FIND) $(SRCBINDIR) -type f \
-		| $(XARGS) $(GREP) -l '^\#!/bin/\(sh\|bash\)\>' \
+		| $(XARGS) $(GREP) -l '^#!/bin/\(sh\|bash\)\>' \
 		| $(SORT))
 
 
-- 
2.48.1


