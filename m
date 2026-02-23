Return-Path: <linux-man+bounces-5210-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAWhC6V8nGm6IQQAu9opvQ
	(envelope-from <linux-man+bounces-5210-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 17:13:25 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0D917978C
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 17:13:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E842E3069666
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 16:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE6C930648A;
	Mon, 23 Feb 2026 16:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b="LOw6u1J9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com [209.85.160.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0266B28C869
	for <linux-man@vger.kernel.org>; Mon, 23 Feb 2026 16:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771862556; cv=none; b=ASJoiSEgkCocKArjelkt2qo154L5278V3GWXJLj1bEL2rIXN/EJNJ00C5Q98COmatEgRbxn8vgw8tyt/oM4EIKy3MyuzUT6/ZtXnp7N2tShk5268LKnb4SiMzuoMZ4LzaKrZYOQFXGYiJZWMRthgKLHAj74PZuMN24j2D6WksUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771862556; c=relaxed/simple;
	bh=BSsS04poKZIzoK8vcB2Vg1vte25UHnyai9IKJDu+LZo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DJxnkGePcF9gBIjER9W33STOQ8hTdV6oVAT3Np/ZhRqp/cLUTwS7l3IGb7gyJEBab3qRYNRsSBAu69vzY0qF1NYHWR+Xce6GSWy/JDOqtfhR1KAOKQrfgkEysOR/KETlnBROstumaEX4jdfV3M/KRjmJVRtVAYd1Dzn7eTVT3zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu; spf=pass smtp.mailfrom=dartmouth.edu; dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b=LOw6u1J9; arc=none smtp.client-ip=209.85.160.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dartmouth.edu
Received: by mail-qt1-f195.google.com with SMTP id d75a77b69052e-506a297c14bso38642391cf.2
        for <linux-man@vger.kernel.org>; Mon, 23 Feb 2026 08:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dartmouth.edu; s=google1; t=1771862554; x=1772467354; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TP+HBayWxpzX8/2lINoEWSN0CwPelyV6qMPZVMmmH7s=;
        b=LOw6u1J9AJGUWjAenaKksO6haBYS9D8Q4PaDosigZacsNdvXSWcOos4ZneHuqHp4As
         +l7t/JSkV7pA9xB/bvcWOIkLQdDSg4/cu39MOxkDG4zsGTZbtfcslPllGP0xHV0cw+Gk
         UdTiaXHTE76sjB543owGAR/JRD5IQdUo1zoOV0MTbYf7QopsAiKYeQHqzAZ3mu7Iwe+M
         5JsbfigujZJBiMA+ClCvnoePimNn7iUm3spzlHs6NtF7i0ytuP5lHhlE+3SpGgxSZ2OG
         1VqnnEbo/2wNY3JTxc8EfC32HnO72iJYXELBCFex/ifyFoYjJva09F9Pu2UETgK0/8M4
         o9tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771862554; x=1772467354;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TP+HBayWxpzX8/2lINoEWSN0CwPelyV6qMPZVMmmH7s=;
        b=O6UXmwUcWxYvJBHdtLxv+oK4HPQn7pOSzoi7m9pmI/vQU6eXZwkanvslbPWlfpchQU
         E3uN5V8m0YKp8cJWf5tSv+Bc/LKjQI8sffTVtQl1WC6YkXWyAkUJ/2xaLtlwKP82SXLo
         AzaFYv+qvQ6CSdk1qcMZN04IrB8jW11cX4J/9Z/IWx9GCw4i5ITxOi+YPRpFLT4VDQ+G
         nZp6Joh31F7qurNpdzMiiVE61lHBaRj0iobi4k4GXTBLSpBz9sbD1hSl2DNZDtmjtMVP
         cPAN5LEIoJ/4AOCG7lY55rJKm0W4VcKWJqkexG1AwDDZM0kEnCq+tKiQU7DljT1QLAIl
         lE8Q==
X-Gm-Message-State: AOJu0Yz53MM5VjD8yyGDjxXSLakaKnabpWGtxpsSOnegipiyB90o3frg
	hCH9pNhpA59arHuDoAQgSLOkJ5T1ZiUc96D0au5M8+L5GJFjckva4vFaDqREyFHugbRdxmUlcKo
	RJ3PfJGQ=
X-Gm-Gg: AZuq6aJJyE/widGpJOaMafMXGAs6ARNq/AVWtcIygioiezkzi4mC7cVwBvrWOA9oGW3
	ahbDXU0XDUk2rdEd/wQibdedLAjqBNPErWia5rLAM0NQuryPcWrDJeK2WMZmB6AXKn8yXnYekXA
	w3HoEGW3xeKBzMDQSz7Td7My+T9Vu1kCpn+nv4TIvywVo5ok9NmlmKWiG+7U4yRhONhZ9IX4b4X
	y6ZZ5sgwnFguv/FPSWjRmJu4ECtd6X1NeLo9M/CrHI+KdZ6tAqNDzmSdourqoGVXzX+1r0SX1QM
	yEB5GuVkxVBDdX+Sopo1I1pQ7l9uX9mkzDfWSXVKZ6gAY82FnPNuRS6UOTGuPe6KKMHX0/B+B/c
	fUBU7DTGzZE443UkK6jJT+Z1F3rRWqBj2hxNHEHEuLi2fs4wT6KsgquFs/PV31r8JGpJkzvLMLj
	YSSDi5TOuLU8hmb1washCH4FcomV5w1dK2WCdSVf7bH9HOe3tIrmQ4PvzztnJe2imlfLobSTAFD
	nEPLSJ1B7/Vy5LOLLc1mXsu7ORXWmhGvgLcGQ5QXBkLvRpUTNHgT/daAEzQRnI5Bc+Zu3UHu2pX
	soCLhngMaxen9zznzrwJM/XZ7TQIpekIUW/r/AhOO7fIhMi88BM2yZHgnCqOubfHyiueCqopJna
	bNaseTOiFLorjMkZlxICR1stBfCtKRSx/gHxMlHfIeH78CUY3ddwNtvx2mg8VHuz7QQdv
X-Received: by 2002:a05:622a:14ca:b0:4ee:1e63:a4e0 with SMTP id d75a77b69052e-5070bd278efmr127828581cf.74.1771862552383;
        Mon, 23 Feb 2026 08:02:32 -0800 (PST)
Received: from localhost ([129.170.197.119])
        by smtp.gmail.com with UTF8SMTPSA id d75a77b69052e-5070d550785sm84454521cf.11.2026.02.23.08.02.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 08:02:31 -0800 (PST)
From: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Subject: [PATCH] man/man2/mmap.2: Document that MAP_GROWSDOWN doesn't affect mmap return value.
Date: Mon, 23 Feb 2026 11:02:19 -0500
Message-ID: <20260223160219.1015364-1-benjamin.p.kallus.gr@dartmouth.edu>
X-Mailer: git-send-email 2.53.0
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[dartmouth.edu:s=google1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5210-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benjamin.p.kallus.gr@dartmouth.edu,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[dartmouth.edu:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6A0D917978C
X-Rspamd-Action: no action

The man page states that the MAP_GROWSDOWN flag causes the kernel to return an
address one page lower than the mapping created. This is not true; the kernel
returns the base address of the mapping created, just as it does when
MAP_GROWSDOWN is not passed. This can be confirmed by inspecting
/proc/self/maps after making a gd mapping, and comparing it to the returned
value from mmap.
---
 man/man2/mmap.2 | 2 --
 1 file changed, 2 deletions(-)

diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
index 09e7933d3..20b94c243 100644
--- a/man/man2/mmap.2
+++ b/man/man2/mmap.2
@@ -276,8 +276,6 @@ should check the returned address against the requested address.
 This flag is used for stacks.
 It indicates to the kernel virtual memory system that the mapping
 should extend downward in memory.
-The return address is one page lower than the memory area that is
-actually created in the process's virtual address space.
 Touching an address in the "guard" page below the mapping will cause
 the mapping to grow by a page.
 This growth can be repeated until the mapping grows to within a
-- 
2.53.0


