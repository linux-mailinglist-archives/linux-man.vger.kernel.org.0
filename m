Return-Path: <linux-man+bounces-323-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6EE8203A8
	for <lists+linux-man@lfdr.de>; Sat, 30 Dec 2023 06:05:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4C586B2181C
	for <lists+linux-man@lfdr.de>; Sat, 30 Dec 2023 05:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E792E138E;
	Sat, 30 Dec 2023 05:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aAkJ+jZu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8061B1843
	for <linux-man@vger.kernel.org>; Sat, 30 Dec 2023 05:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6d9b267007fso1663197b3a.3
        for <linux-man@vger.kernel.org>; Fri, 29 Dec 2023 21:04:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703912695; x=1704517495; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pF2MPVIBQwlYQh699GPlv8Lq8kl8UdJibLYsKTM/lZ4=;
        b=aAkJ+jZuvAFF+00PvAjHP6vyQEEuQNyavXw3R8UfrQTtdiwEmr41QJYCkzJmAvFU2J
         1sOWQEAcnU7L6uqRK6V4PErGE0l0NrdnnaZhm9YBNS2qYmwrptM84jWNAsC1hczO8YYT
         EQjkczBijoongOfCQoL///Fki3wrXcGxX6/nlH14mQPyH2QkUu04xtJgRBgg7PvxsQz5
         5x/3WTXwXmtREZBWWqejajyz8NNA0HbXRuAy9N3KN90gH6dz0w5tyEQbaw4yERAehVzJ
         q4+o9Vk0B2s9cV3ldzSdetfMsbLRl3TcaXZnmko1/WhHlfE2BOYYLiC1oVe3cdJFBzSC
         Kz0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703912695; x=1704517495;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pF2MPVIBQwlYQh699GPlv8Lq8kl8UdJibLYsKTM/lZ4=;
        b=H1PBsuM7k0XWiE3ZiicTF+t2A4MgH5hzP6qcUFDiHNInxiSZ8N+h9xr2gUf7c2Hbzq
         1chXmAxuwHUH+gc3hhqGJsJDxJLn1ugdax0VDzMw9bbweEg5Qs3n94aDRalojwenHn71
         dSiPzkZXDQirvUGPEs430ZXmgLIYTW3P70jqHvrRLiTXcBGbMLfVoKOwjls4WqGboJDI
         AN2HplIYceitmvnTFCBAXJe5ZTWEgbyrshyqPvL62H8rmMhRMvfIfWPyR/xCpw52vAHq
         7V3qCpoMo+sVHPy4Yi+xo3ZxZ+2/NCAP2VTUmli7OLy4xvKNL3+WgYZk1ojHtSasj2VX
         5uKA==
X-Gm-Message-State: AOJu0YzVv50T7UE7CW0Z4bqwO0KGSe0tk8YvWIxLc1O2Yb98nuK2UJtB
	rdd3ke/Z4l3Bh6SPq6lM/Q==
X-Google-Smtp-Source: AGHT+IE/8AsmR8JePwjCNwCIamCToQg6CCX2RxV9ZU5IOJVopdZWj4OmI6TM/GKAmNUn1hCDuh/Mbw==
X-Received: by 2002:a05:6a20:3952:b0:196:22a7:24fb with SMTP id r18-20020a056a20395200b0019622a724fbmr2511909pzg.92.1703912694652;
        Fri, 29 Dec 2023 21:04:54 -0800 (PST)
Received: from localhost.localdomain ([122.174.192.11])
        by smtp.gmail.com with ESMTPSA id b67-20020a62cf46000000b006d999f4a3c0sm10197167pfg.152.2023.12.29.21.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 21:04:54 -0800 (PST)
From: Rajesh Pandian <r.pandian@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	schwindl@posteo.de,
	Rajesh Pandian <r.pandian@gmail.com>,
	stefan.puiu@gmail.com
Subject: [PATCH] bugzilla_218018_v2
Date: Sat, 30 Dec 2023 10:33:39 +0530
Message-Id: <20231230050339.4599-1-r.pandian@gmail.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 man3/dl_iterate_phdr.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
index 0a8beb3ae..263178e3f 100644
--- a/man3/dl_iterate_phdr.3
+++ b/man3/dl_iterate_phdr.3
@@ -129,7 +129,9 @@ The
 .I dlpi_phnum
 field indicates the size of this array.
 .P
-These program headers are structures of the following form:
+The ELF program header is described by the Elf32_Phdr or Elf64_Phdr type,
+depending on the architecture.
+For example, the following layout applies to 32-bit architectures:
 .P
 .in +4n
 .EX
-- 
2.39.2


