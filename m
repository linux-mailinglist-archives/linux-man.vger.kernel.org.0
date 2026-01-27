Return-Path: <linux-man+bounces-4968-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJTCHPjKeGmNtQEAu9opvQ
	(envelope-from <linux-man+bounces-4968-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 15:26:00 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 328B995966
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 15:25:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A0B283001F86
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 14:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48C6F3587A4;
	Tue, 27 Jan 2026 14:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b="Y1rPF5bS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com [209.85.219.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980DD34B195
	for <linux-man@vger.kernel.org>; Tue, 27 Jan 2026 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769523955; cv=none; b=FvUsSKBdsgNawKLwCnGphsCLreDj3vPBCjcaTBYxm4T9USknUnP5t3MDnU53iSQNKJqQTQgGdpBFIda19O2vF66r+B7XKPYYHvf+KNwUbj0zmML0bpefi4cFrrZOYcfpyLP5DUMxevAMmwujIwMRh4U7BUaNxImtT63cUCUBXpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769523955; c=relaxed/simple;
	bh=38ywWlYc+nAWGU0AzNOftHqJHzqrC6sj4dR2ilnx7oM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=a16DS8WWBi9iKg7AiePLvnWa5Br5HqobhUJ4jMmgfXSDHfxM4Tkl7Nv1XfJP5ALjSd946AfWiLkOJzo7WOJlYz/J0/g+FPgJ3vHZk3yfk9EW6EN1mFv8Nq5RL5d1uDJiKYBvLjmxs0UMjgqWI2Gh5UHFA8BA+xDykoiCSsKGmLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu; spf=pass smtp.mailfrom=dartmouth.edu; dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b=Y1rPF5bS; arc=none smtp.client-ip=209.85.219.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dartmouth.edu
Received: by mail-qv1-f67.google.com with SMTP id 6a1803df08f44-88a3d2f3299so61629276d6.2
        for <linux-man@vger.kernel.org>; Tue, 27 Jan 2026 06:25:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dartmouth.edu; s=google1; t=1769523952; x=1770128752; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zQBG3AiVtn0KsqKJ0GnSFKvdfuYEctNJ5mX3P+UB/Ng=;
        b=Y1rPF5bSATEMEgMDWH/j49IWkzCzh4MsDcpwx3DuBbt3GdyWxA8XIQyVI/8xOHQdfW
         XxPwS5LfGLjuyuLGlWM39sMpjcgUggYv8cdzecbLTScTdhvyzE91UU9UKpW8AJeG+v1k
         RbQsPrI1vQYxZdMI3i64IfolCD+etQ5OO7dOuaVHJsGRYZGP0DpUMZQuyVHOxuea/q4e
         fF6O0I+2WKqX4gI7KHg2GhXaVx5Jflp0q4x/U7XrKgtTkzxxC4vMlB1+m6SqM/+ulC7S
         lcRzHCrKs0tUFkRkgspzlxS8iFoP4is32jEY1mbQF0xtM7MTiA1FHv6n/3Fv2F9ZRrB1
         LaMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769523952; x=1770128752;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zQBG3AiVtn0KsqKJ0GnSFKvdfuYEctNJ5mX3P+UB/Ng=;
        b=TMzjF2ixBjDSvGtVAQ81YZZXptJg3n3awJ2FurMnc3xusgZZcdQWQ3cnI5sQwIfkTv
         +4FzyuSogCbVEswGTOOBOUZCRmOFFIO4t3cFGDLlrebQo4nJHHvKxniNYmAeWt8FTrmC
         +1LbHpaMpfJBONR4AtxsF7m+myrngWkfXW+Sk6xtII4jLO5pCefqZ7hbL3mulefUJMl2
         ZYi7A1b8NE3N/TAZ5wKd3T1WDN03ukVOnz/rldsB50ZE1Bpb0wjSp9uk5K8TJ0IysczC
         OIYJPkw7KQgEmw35Wz416P5Mdow9kqlSynhAD+Alx2VBiDl6czK15tVnPSm1RdB+gKoH
         aZFA==
X-Gm-Message-State: AOJu0Yxf9/+pxp7nGOyAFoDDY2ogklXqB6Wrv8rlba4hygWTW6qUdv/c
	GmrIHMrGiqGgRiZD/IKYhq0mYL7JdbHCoF3H09UPrv9VWKEKsG37wvkx1yN4x8AXHz0=
X-Gm-Gg: AZuq6aJrDnUlV1X24f0i/sSX4IGbDp3aIZqf0sRey8puLn0SgFBM3yVFabh6mc5XSs0
	1oxltb8FfvLElwICntPEfrDeA6ujVrZahxbGDDqG8K6fvSytA9SV2liFE899GsHfjmM3rAJ5XTU
	OCB/wBqTQUkPMhbcAbO9WIDoz2xIMT3SkVKHY+ORved/1zzWSLYQWW6MbIQHsAIa42OV5FFA2nj
	GApaNV130UYFsWHoRtW3Akd5SqDEVnJSSLcp6MEhDr+wUc9gomgsrBUlwSTEvcNCKXOtxOoVktt
	VeyqRG04ZU/Mdus57FQEIz7vg200H82m4DImJ+Yc/9f7zMr+Y5b55htwm8fU9pMVqA1lohQCxmq
	ITTOzW1sXmr+vuJB0JStWubHFcf5naGENRwkEZCTfXP0VgjVvFtbiAJB35U99QkEw7HassQbR03
	0m63lEjIgNzy75Xe5Y5Bl1/19n6+ianW2q4rF0qR0+WV/4wh+FpeC5sqkgZGvVB9HQJeqhwIH/Z
	hEGyNhNGM/cBiUnSwLWDlYFiMBjtqHNG5shbohQwHpyjcLO/OI2gsnDV0Qx6D9kNG7stJOrtAik
	060wfWc5ofbG7QjJbN5T52BtGqD+g15wsNZXvd4LE1KKZe3OGprdwWfA9yu6PyLPpyBVZglvyrY
	Gevdzu8gRNF+hVl+3ue794DJJ1nSvwPUEiuUfATDhcW6i83oYxaex0bCX
X-Received: by 2002:a05:6214:29e4:b0:88f:fcac:e9c7 with SMTP id 6a1803df08f44-894cc7d9219mr23875816d6.9.1769523952539;
        Tue, 27 Jan 2026 06:25:52 -0800 (PST)
Received: from localhost ([129.170.197.107])
        by smtp.gmail.com with UTF8SMTPSA id 6a1803df08f44-89491844d6asm114901036d6.21.2026.01.27.06.25.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 06:25:52 -0800 (PST)
From: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Subject: [PATCH] man/man2/mmap.2: Document MAP_GROWSDOWN return val
Date: Tue, 27 Jan 2026 09:25:45 -0500
Message-ID: <20260127142545.3328119-1-benjamin.p.kallus.gr@dartmouth.edu>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dartmouth.edu,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[dartmouth.edu:s=google1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4968-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benjamin.p.kallus.gr@dartmouth.edu,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[dartmouth.edu:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,dartmouth.edu:email,dartmouth.edu:dkim,dartmouth.edu:mid]
X-Rspamd-Queue-Id: 328B995966
X-Rspamd-Action: no action

Previously, the man page stated that the MAP_GROWSDOWN flag causes the
kernel to return an address one page lower than the mapping created.
This is not true; the kernel returns the base address of the mapping
created. This can be confirmed by inspecting /proc/self/maps after
making a gd mapping, and comparing it to the returned value from mmap.

Signed-off-by: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
---
 man/man2/mmap.2 | 2 --
 1 file changed, 2 deletions(-)

diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
index 093b0caf1..9bfa88a65 100644
--- a/man/man2/mmap.2
+++ b/man/man2/mmap.2
@@ -274,8 +274,6 @@ should check the returned address against the requested address.
 This flag is used for stacks.
 It indicates to the kernel virtual memory system that the mapping
 should extend downward in memory.
-The return address is one page lower than the memory area that is
-actually created in the process's virtual address space.
 Touching an address in the "guard" page below the mapping will cause
 the mapping to grow by a page.
 This growth can be repeated until the mapping grows to within a
-- 
2.52.0


