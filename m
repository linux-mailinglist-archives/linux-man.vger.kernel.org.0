Return-Path: <linux-man+bounces-5267-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id z/xsHdTLuWlmNwIAu9opvQ
	(envelope-from <linux-man+bounces-5267-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 17 Mar 2026 22:47:00 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7482B2DD6
	for <lists+linux-man@lfdr.de>; Tue, 17 Mar 2026 22:46:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D250304E0FA
	for <lists+linux-man@lfdr.de>; Tue, 17 Mar 2026 21:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 139F52D7D59;
	Tue, 17 Mar 2026 21:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b="saOaAl0w"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA91288B8
	for <linux-man@vger.kernel.org>; Tue, 17 Mar 2026 21:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773784017; cv=none; b=c/es8AbQN+CEaqHnaWU2Td/i52ZdQno+VJ+PxUvqx/0r5pUCK4Nl1yhcPIb+0ldFCZxvgP65pMy/1EhaeLvbHjz586KLWmt1+GOdAh59KLNpCcW+tnH1f5ALtuWq6PJOaiTuGtFobXzQ4HOpZvdg4Pf85pkaTVv6TOIUGCKqaKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773784017; c=relaxed/simple;
	bh=fBsPNfc3/DZGDgOHGB5W20aLx+NPwpkS5jqxl/pn0Dc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UC7fFT5pdXKJ6w2UH0KxTmiCm+lxeDO+EBd4gjFlJvODr7OfTQhvxIHBnhX9nkvqv9+Sc1vmD8kzbDlWNZh9lwjIuQcmPdxBJZbM/PmskZEMMLS3TelGSAGHRQhqJMwgQ0gULo4krIdnyw5JSYYKPkRKwvL3ZCnVFAWqXVfpeMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu; spf=pass smtp.mailfrom=dartmouth.edu; dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b=saOaAl0w; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dartmouth.edu
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-50917e02532so75168971cf.3
        for <linux-man@vger.kernel.org>; Tue, 17 Mar 2026 14:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dartmouth.edu; s=google1; t=1773784015; x=1774388815; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sAPsfwrlC3Uy390NYZJ54ZakxCNON0J8IMQvp8zTBNc=;
        b=saOaAl0wYUy86h4zI/KHgfgQ529y9E6qk1szDyKP50ewCzdnCslvfMmXmspEWm/0yF
         tYCGFQWyiml/pXXALXrYu0797X91qjqbEsudxBD4FjyfF3dn9Lrhs/CzX1eRbvdn2weT
         RARD+K0SogcvR9Lg3pKT4Ell4A79L1P9mMDPj8m4vchpbBaOXlVNdnTxQ087eLu5LM2u
         TVZk9QnaPtZjyxTQPlC/8EfXU6ZFhpBWoaU8zOIhH893IVcS0toVoULIUCNi8AXa+T2o
         wffG0gPlGj66RCLVJHLhbPzqy1egr3nngWfh/A5CmqIs+vUJ5X5FjGJsiAN6cVIO35cm
         3j6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773784015; x=1774388815;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sAPsfwrlC3Uy390NYZJ54ZakxCNON0J8IMQvp8zTBNc=;
        b=K98JIQZFiVIoA1lo9jRQRn7gK5oc8Ebl3EOq2LlQnPl3sHw0r9LoQ3alcaeGM7Ny68
         jr6tiVSLfQgyGzpBnP4Mtu7rUWoeEV4wpAY0lPzOeDeT4zgO2DJWU0h0fjT/7RnYH6X1
         cuVGV3VcSBnT5lR6sDMWJL1iRJj1CouSp59lIdCcUSVgtMdHhm0YVYLXp0N+NR3wX2Y1
         UrcFjibN1FqINYETyMJSnTUyJPq36s//LZzmOU5fCZmpvx5M3agOdafowtvr+Ep9ESDp
         +d14qg88icJzP0u8OH0n6zUQkRzFpg92KXKarUzV7Upj0WOJxhaDBdqwJcV/JbqLVU/e
         uZDQ==
X-Gm-Message-State: AOJu0Ywx8RDacwoeJzUIqxJQ76ewlEwCX+3vTrtxK7mn7DIc/R4dtU76
	GsEHSPb5VOMYJye0NhvVplE8ochUxUsYk+LDeXXPlv+kO+vIgiDSYi7Wcd8Zx0xMBUU=
X-Gm-Gg: ATEYQzwkvNbUQ54AqOuadXLQFXjzcWpWMoig7euWB7qHrlIYgmSmiFt0Hv03KdNsh7X
	f8xsFvp53PR73pwCu/UZF1qEFEb5MnJ6m5eWPMKsSYwEngdkMYhUykkK0GJoJQqO+byZaPTTxZd
	j813/f9E9HxD7k0oKmrq2b6X7HUx0uMoANXKkHrl5zJs1FtbHlUHTAWAzyhsDQ22zp/znrC3bkE
	kbX8dtlGjIZaamK3E+LJ2Bb8wZdnWxZY25+/NYoww8GxnoUTOXW6xohuggnkwSPuCrtz/OBQzeX
	Q3qmOXuwwFQosyMhRtX9rD0HMz20J8OouQW2xuw3kcdN0iQidHwhrKqH1Er63ixv3Wpvk7gPNwk
	n1xgTyBYmu3XmVAypBhilnZqw4BlAm2oupr88La5wxQscEztSJauqPgWFj6VQPWx0XY+GknMtGS
	ifWUbmoAGJ/G5MrfxxsvOZv9CD7cR42HDWCar25yoHBdQ3+yoDwPKGZd5G0xtk/APbsloCJIQF3
	omRaXZ79Y/b0XUf7gfdw4TtjjmC5w2UhGk2Dei2g+bKzlKqzc56PzKO2/+Tt1cyNDs6uMWaxIbA
	QE+4aF7Llw595JjCiLvtanzmRbzg3qYttwdSl5ywkcGxQvC/TF1o6lcpd237+LKaYVVijp2fP8N
	OBqr0jxEtvFU1Kn6GwUx4Whzm8LwhTfKu3SgG4vBzo3bLotH64zAYPFu/h+TU0w5+jD++
X-Received: by 2002:a05:622a:211:b0:509:238f:ad92 with SMTP id d75a77b69052e-50b147820c0mr13397641cf.24.1773784015428;
        Tue, 17 Mar 2026 14:46:55 -0700 (PDT)
Received: from localhost ([129.170.197.119])
        by smtp.gmail.com with UTF8SMTPSA id d75a77b69052e-50b1359871fsm7953611cf.19.2026.03.17.14.46.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 14:46:55 -0700 (PDT)
From: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Subject: [PATCH] man/man2/mmap.2: Document that MAP_GROWSDOWN doesn't affect mmap return value.
Date: Tue, 17 Mar 2026 17:46:52 -0400
Message-ID: <20260317214652.2135374-1-benjamin.p.kallus.gr@dartmouth.edu>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dartmouth.edu,none];
	R_DKIM_ALLOW(-0.20)[dartmouth.edu:s=google1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5267-lists,linux-man=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benjamin.p.kallus.gr@dartmouth.edu,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[dartmouth.edu:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CD7482B2DD6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The man page states that the MAP_GROWSDOWN flag causes the kernel to return an
address one page lower than the mapping created. This is not true; the kernel
returns the base address of the mapping created, just as it does when
MAP_GROWSDOWN is not passed. This can be confirmed by inspecting
/proc/self/maps after making a gd mapping, and comparing it to the returned
value from mmap.

Fixes: 176b1a76 (2016-11-21; "mmap.2: Add (much) more detail on MAP_GROWSDOWN")

Signed-off-by: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
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


