Return-Path: <linux-man+bounces-1308-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D298291E0EF
	for <lists+linux-man@lfdr.de>; Mon,  1 Jul 2024 15:38:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 522CEB21173
	for <lists+linux-man@lfdr.de>; Mon,  1 Jul 2024 13:38:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E455315ECC5;
	Mon,  1 Jul 2024 13:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b="vepUUsOS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4CC15E5CB
	for <linux-man@vger.kernel.org>; Mon,  1 Jul 2024 13:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719841103; cv=none; b=SKFd0C3ApPNofAN7UQWnEoN8702NXhEgje+jbFAfAh6WHIrbBYysFqkboWmyMB0wz/40+s9/TZmyDmsfC7QsyHScbrSe1LI6B9WfrHJ+b2+qmaXMHs5GscDHIlJ3/adWZZTGiGbYZwDlj74MsRmZP8a0lz0jnfpZBZmObRk8nMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719841103; c=relaxed/simple;
	bh=orcW3KV1wue2Wlfs2605HFmKhCkgqvHEBbRYehnsBj8=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=S3ObrYBeUxt+kUkF+llVamzgCyKN/Bn5i/6rLdNcx9qug44V7kox9R/XBgNynXP/8ifErE9XWO2jo0GwawzBuliY6zOGVGCOeJr1CpAUwD6Y0lCCXa+kzsIVyM+UZhVX3A2FuvGpDvq6XJjWHChZt8wIIx3lEAUCvjvC90+bUrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com; spf=none smtp.mailfrom=toxicpanda.com; dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b=vepUUsOS; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=toxicpanda.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-79d720dcf51so156479485a.2
        for <linux-man@vger.kernel.org>; Mon, 01 Jul 2024 06:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=toxicpanda-com.20230601.gappssmtp.com; s=20230601; t=1719841101; x=1720445901; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=4qdIhdrRTGj9K7W9JuO6yWHm/C5DDCvWRrbrdYiRH3M=;
        b=vepUUsOS9yst1KRDgsZT8r7fGtpYeGVNseAE6QWU+553V91KE9YNxWV+z2/l3uKfnY
         0xkYzAkxvaHErJJJ9N5oN6DRbj/s79Xu66dMt93fhTObIn5cpvFKgy6RHD+yo3HkJ1qm
         BOZrAKI50ZtinpLcl++EEqSBpU5G4Zor2EtveL/g9XhNgk62MTaNlotHbPrMysBya94Z
         ARltVv2YCjQKa5f0bVrz4IVAjvZ41WXCqQlRxP66vWNJVdnVZVr2SSph2gWZMPIRLu2l
         LsRudRTm6TUZL/6bUP/Uc51SX/5Ri/sKm3ZMc5rDQKN2V7wEUCSXvnJDR1nh0lGuhzJQ
         Drnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719841101; x=1720445901;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4qdIhdrRTGj9K7W9JuO6yWHm/C5DDCvWRrbrdYiRH3M=;
        b=iR+maIaSWGsVlac/PqdA0/q6/XBplKWosyZWBxo/7Lt/48yu39aL4AP2K2R3DUhpV3
         1mvzhnzkRFudaMdwDAh7RKml/pR5jp0y9p7ooDKieAmR8rY8h9XkKG5udvnlKOujLX1/
         fnSGgwTVGCPHy+/MfWQb7h7e1B9yLOuh3OlZy5apc3Jk/6cf1T5dqY3TmStikLpitt0T
         XoAwrByyaI1zNpdHl+T/FvKb8OGALTL3z/axpVOKDGSC723o9kDVQAv0dAC+u/OS0QCF
         Q8dKa4dEduZw8t+emaKUdHQ0MDJo7nkHPgNQ8n0TXDbt6xbwNqxElGIcvzte6qcsgdCc
         DXwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEqYsACiduLvGlMiasU51bG3MKyGstjU7AgJaOltcvPh0xblR2yqtHelsrGrMkChwyjEiJYR2waemMXACV4gipxXwKtECloOAy
X-Gm-Message-State: AOJu0Yxlo3vxe/B4d5d/WJlwN3r8NVzZMOrAjO7GdLYQjMFfUg5ZFPyc
	RfDu7AntIz3RVXwoimNDHbdwUukr0kGYWq8W32Pyu9XuHlhFqSBpNFkNU7dGBhg=
X-Google-Smtp-Source: AGHT+IH9NWsJCNec1szrhVDTv5U1qMMlsOJkpGMOYvilPLv2Ak7AHFr/z/ZWuIff5kMTdoDa+80l9g==
X-Received: by 2002:ad4:5aae:0:b0:6b4:fc6f:17ba with SMTP id 6a1803df08f44-6b5b70c725cmr63130786d6.33.1719841100965;
        Mon, 01 Jul 2024 06:38:20 -0700 (PDT)
Received: from localhost (syn-076-182-020-124.res.spectrum.com. [76.182.20.124])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b59e737d61sm33087126d6.136.2024.07.01.06.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 06:38:20 -0700 (PDT)
From: Josef Bacik <josef@toxicpanda.com>
To: alx@kernel.org,
	linux-man@vger.kernel.org,
	brauner@kernel.org,
	linux-fsdevel@vger.kernel.org,
	mszeredi@redhat.com,
	kernel-team@fb.com
Subject: [PATCH v4 0/2] man-pages: add documentation for statmount/listmount
Date: Mon,  1 Jul 2024 09:37:52 -0400
Message-ID: <cover.1719840964.git.josef@toxicpanda.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

V3: https://lore.kernel.org/linux-fsdevel/cover.1719425922.git.josef@toxicpanda.com/
V2: https://lore.kernel.org/linux-fsdevel/cover.1719417184.git.josef@toxicpanda.com/
V1: https://lore.kernel.org/linux-fsdevel/cover.1719341580.git.josef@toxicpanda.com/

v3->v4:
- Addressed review comments.

v2->v3:
- Removed a spurious \t comment in listmount.2 (took me a while to figure out
  why it was needed in statmount.2 but not listmount.2, it's because it lets you
  know that there's a TS in the manpage).
- Fixed some unbalanced " in both pages
- Removed a EE in the nf section which is apparently not needed

v1->v2:
- Dropped the statx patch as Alejandro already took it (thanks!)
- Reworked everything to use semantic newlines
- Addressed all of the comments on the statmount.2 man page

Managed to get more of the build system running so hopefully this is all
formatted properly now.  Thanks,

Josef

Josef Bacik (2):
  statmount.2: New page describing the statmount syscall
  listmount.2: New page describing the listmount syscall

 man/man2/listmount.2 | 111 +++++++++++++++++
 man/man2/statmount.2 | 288 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 399 insertions(+)
 create mode 100644 man/man2/listmount.2
 create mode 100644 man/man2/statmount.2

-- 
2.43.0


