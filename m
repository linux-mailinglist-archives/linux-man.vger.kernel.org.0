Return-Path: <linux-man+bounces-1890-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE4E9C383D
	for <lists+linux-man@lfdr.de>; Mon, 11 Nov 2024 07:11:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC1EF1C20BBC
	for <lists+linux-man@lfdr.de>; Mon, 11 Nov 2024 06:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2887B1531E1;
	Mon, 11 Nov 2024 06:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ylab9VKL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1D61EA80
	for <linux-man@vger.kernel.org>; Mon, 11 Nov 2024 06:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731305447; cv=none; b=kaCqqsYV+okYJTE/gEdeETXZzxpiVlr+9ZTqez6T3jRpFDPWOuzV/9x8juWPXlN0xSjxQtg0H4n7SctfVh70vqSUOD62SKql9HA8JPSe/kAQwz1pVPTXdo2o/ISXr/9doRYRgK3vvAlfiLwMqagicpljG0K9EpSFMKl4tefmwVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731305447; c=relaxed/simple;
	bh=/2tLVVnlcgu28gM+WOOy5KQleOd8C7XDPs47sFD2s9c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IhHjAWzcwCC5cBp26zllf2Dy97l7ii1LO9t75bPjZxDt0da63rX10E5tuV8DdHb68ay3lhAx6AIFtT9X83YcMgOhtP7jPFaIdQs1zeRPmtO+VWX3+Pu3dsth8/zSQbGtBTsUpDuiq89KddkE+L+0jTvlWMgXsm2pEVbac+QpwhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ylab9VKL; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-71e4c2e36daso3099871b3a.0
        for <linux-man@vger.kernel.org>; Sun, 10 Nov 2024 22:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731305446; x=1731910246; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0mQa7c90nuXP2OJY0olSmiXWHGaNL6/BylJprGzUH7M=;
        b=Ylab9VKLMCqjIKPBRqytwIYuyWiKl7Gj/x5WrayXchBW2+U20Wd7UmkUFss53IYxpf
         RgIbQg+zO6lfutople0Pcm2RtI79sCBQebmUm59PWzAi60NTroC6uwMZJUGN3hTNYEfU
         CLf6YGZw91yEjNA5vcxedPPTdBzvVTLLMnlaxCx9QJBcwJUj1IlBdwS8+IhbAIMR37vd
         lKvgoxWOYa5xoGnLhsg0WwGpwwIfhp4v8Ozi6IFl/8iWTWE7jAN9SN1h8YRu6bCe+/pg
         +CDtG2FienjfSCPosvs6EnRG3tjdxQJm+cUoLiBsnAU0CLv6K8iQQadRLh3zP5KE9Uub
         RcdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731305446; x=1731910246;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0mQa7c90nuXP2OJY0olSmiXWHGaNL6/BylJprGzUH7M=;
        b=D/IT7NqQoWIQ1e7xbSCGKlG1fnw2tGUHS1+twGcZ3b/eY1W7LHhk/TXgEO5ndnnp45
         K+NmxdFsM6DGtf5u8An1wVpw3MCa30DI77KM+qYYjTo4nP99DYnaoOB3iqgmSO/6h3Qk
         jC5K7h+8/cdC0Oz4nanQCibTqnORWU5FXVy4MlpzVYvFPLRuRToWjnsoZqzowj/xnJEl
         8hgSpxcwxLShhr43UgeAeDwX5IPrp5Zp5qc5rnVAb3bzcJVQBut4WN6j7hoxzORdi4AO
         iEeLcQK/2vye7m3ny8mkLk5Tzz3wZuBbAGEY/qwb3P7kxy9qrpY3+9YvpbF4/7mPvOJj
         gdVA==
X-Gm-Message-State: AOJu0YyCCtK5W/f5e69zZwXV8MhHJTr7c7+sog4XZYTJZ9LtH6w1S5xB
	6hOiKBVrbIddqS+PKmkFhK+GGLnqvIM4uN/oB2/NfSIExMr4b26nYlFLvg==
X-Google-Smtp-Source: AGHT+IHrh5ET36Htn7rWt+p6no1Q9DfX7142rTBBph+CTmGB4oBFxv1x/RCtPf8ntViIAqwJ5Xiijg==
X-Received: by 2002:a05:6a00:6317:b0:71e:66e6:ca17 with SMTP id d2e1a72fcca58-724122d28fcmr14363602b3a.9.1731305445427;
        Sun, 10 Nov 2024 22:10:45 -0800 (PST)
Received: from panther.lan ([2607:fa18:92fe:92b::47f])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72407a5ebaasm8252752b3a.191.2024.11.10.22.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Nov 2024 22:10:45 -0800 (PST)
From: Alex Henrie <alexhenrie24@gmail.com>
To: linux-man@vger.kernel.org,
	alx@kernel.org,
	bgeffon@google.com,
	linux-mm@kvack.org
Cc: Alex Henrie <alexhenrie24@gmail.com>
Subject: [PATCH man-pages v2] mremap.2: Update information about MREMAP_DONTUNMAP restrictions
Date: Sun, 10 Nov 2024 23:10:19 -0700
Message-ID: <20241111061139.206404-1-alexhenrie24@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241105041700.1386571-1-alexhenrie24@gmail.com>
References: <20241105041700.1386571-1-alexhenrie24@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a4609387859f0281951f5e476d9f76d7fb9ab321>
Signed-off-by: Alex Henrie <alexhenrie24@gmail.com>
---
Changes in v2:
- Move link to Link line in commit message
- Consistently position the word "only"
- Use .B instead of .BR for a word followed by a space

Thanks to Alejandro for your feedback.
---
 man/man2/mremap.2 | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man/man2/mremap.2 b/man/man2/mremap.2
index 53e0bcf2d..62bf17b76 100644
--- a/man/man2/mremap.2
+++ b/man/man2/mremap.2
@@ -106,7 +106,13 @@ remaps a mapping to a new address but does not unmap the mapping at
 .IP
 The
 .B MREMAP_DONTUNMAP
-flag can be used only with private anonymous mappings
+flag can be used only with mappings that are not
+.B VM_DONTEXPAND
+or
+.BR VM_MIXEDMAP .
+Before Linux 5.13, the
+.B MREMAP_DONTUNMAP
+flag could be used only with private anonymous mappings
 (see the description of
 .B MAP_PRIVATE
 and
-- 
2.47.0


