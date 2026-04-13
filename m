Return-Path: <linux-man+bounces-5330-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aA1TBR1G3WkrbwkAu9opvQ
	(envelope-from <linux-man+bounces-5330-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2026 21:38:05 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 833663F2CE0
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2026 21:38:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6B2DA302961F
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2026 19:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97CDD38D6BD;
	Mon, 13 Apr 2026 19:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P5WYjP1F"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2349638D688
	for <linux-man@vger.kernel.org>; Mon, 13 Apr 2026 19:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776109080; cv=none; b=TXK+QTcAexZaeTmD+QRvRwG14os9YtDzFGlHl6/TJuaOgjv93dEHl90guCzLqPVRo3JwwQPuZ9cs+GSZk/1QeU6y65CQQ13e+eERDybHonQVnP0iOYV+WYqxplz98yrIOqFI/z1f6hODE4ITfGfMTPkP3sUQvMkgmhwZEil4+Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776109080; c=relaxed/simple;
	bh=hRbpTAwPvs+DRRbZHMQZxfFGb4xjIxTg4plCpNMARnU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ONwd0THmo43AjJ2mT4BptjLypaszoV0vNJppsocqpbhgtkjxE0w+q4D+ppLMal42/rqooASgRUfS/eErgNNPa5fObQHrPCcAtEJMr3QHkOHgXX5/97fBYeXaAxZcWEQosN6iKnDsKindk7caJLpCGjg2BKBynjbAmajjTDgDZN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P5WYjP1F; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-48374014a77so66768535e9.3
        for <linux-man@vger.kernel.org>; Mon, 13 Apr 2026 12:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776109077; x=1776713877; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NtwtIjmwj+TGdnS2S003W7/q4l3nh+2Sw3xFCP8Wjrc=;
        b=P5WYjP1FvzNCaEImWc2kgTOxJ4cB++UJV82qzis386+37TKAjkM3K9+2GRZ/tY86oK
         YYU7fmu3l7bQcQhzp42UsRBYhKuzHiI7PduAfbcaN+NPIUyGZNFtoexZHNEHaMVRaN3U
         euiGxwaNz2i5AgGk2pzwRkRp/MobeyJXHQWXlzfMEy5HaKmEZZt6hPuS1/46pAgjlHKJ
         AOn4pP96+K/9lh0SzQqiJ/CUM0hRf78wcsiaTRW7gpRL3kCRV6zaCz6IviMVFhdKguVw
         rDH7SWuuF7RCmqHGd0b+R7UB/YaGmY+7P45r0Cq/a3n8riL03fLhECf0uATYfbByOEug
         ktLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776109077; x=1776713877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NtwtIjmwj+TGdnS2S003W7/q4l3nh+2Sw3xFCP8Wjrc=;
        b=YOBNoIC9x+J7xzXSsyQubmUiZJUATh3N+isCFyLVvEe+j2a1Dzn+yPQvIqQc8+vP9v
         KrKeQS/zrf38Pz0mldhMSOq1fOrnulkL1mh22nS/ennd7VPL70NdeNMhn0Sb8G/TjsUT
         KKAbxgkhpmdrhfH7ec8nbZd0wg86i/c0WVj0QoolvtT0Ysr4xFmnQgS8iZLGC056nimE
         OxNG4w6yF7fcFt5KXhDg1L2ycquNL641G2c4QoOX8JzPXy7AjW6lRPT8Nimt/VwPtSq1
         D4JfsQNJpyKRviLEwfUf9SPjwfgfm9RgDIH2I8mkkN6WI7NcgkFxTYwDfgEeMTCY2gRH
         ot5A==
X-Gm-Message-State: AOJu0Yw/iaQrm0D1lLmm0SV6Ud/N+TtQNAtuZ7uPgeiQMmJuW2COxoNM
	JWDmrROX/rE5s1qmnxBORaKV5lTZPN+8o4lnMswTOuB1WhF+3XsrxsttbTP34mks
X-Gm-Gg: AeBDietwa1n5frYTXpWxd9ego1VrP8hmlR3ZQz6lDui5/Mekd83XsLpoKNsEIYYQkiA
	nSZ3s/uD/1aR/PE5acnv6x3iNMaYs5gD5m9/zQqN2k2xH1mQoz3LYW6k8zi2Z+HMd1SOOp08orG
	QgKZCxsm0br7rWzGar1SqGZ2bZd/0sCrXEJyfKgDYQd8UTg6urRWrUTw6Vp2rz027U+PiDrkNef
	kpO9afFjolTPCjwNW1M1pe/PLMrYBafcvxB6AOyM4I5lkl8up+Vs103XmC43QfVsC4xNIK5Fot5
	eLvNACxCvbthEgBRbzhLXBun0Qaeupr2KljO6JobsGJtKAdnpylTakhfOlNVh6giSVU28a9Betu
	PXAYNx8iHixsXr+tPjcZRTCBk+Ea7FOQEKYfZBPMqjumV3M2nCvZqod6cQeQHQubnVZV8aLQnGJ
	NRNFhVgt2Hmis0KOcTMDhKi5J6q8lD2j48Epx7NDzS3SMPTeLK
X-Received: by 2002:a05:600c:c10f:b0:487:cd8:4c9 with SMTP id 5b1f17b1804b1-488d689ca8dmr138946025e9.27.1776109077307;
        Mon, 13 Apr 2026 12:37:57 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488d5d6ee98sm140869615e9.1.2026.04.13.12.37.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2026 12:37:57 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 4/4] man/man2/landlock_restrict_self.2: Document ABI requirement for logging flags
Date: Mon, 13 Apr 2026 21:34:51 +0200
Message-ID: <20260413193446.24328-9-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260413193446.24328-2-gnoack3000@gmail.com>
References: <20260413193446.24328-2-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5330-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 833663F2CE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Missed this on the earlier commit; we should mention since which
Landlock version these flags are available.  Users can correlate this
with the Landlock ABI version as it can be queried through
landlock_create_ruleset(2).

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2/landlock_restrict_self.2 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restrict_self.2
index 1265ea2feb91..99288b582fea 100644
--- a/man/man2/landlock_restrict_self.2
+++ b/man/man2/landlock_restrict_self.2
@@ -134,6 +134,8 @@ It can also be used with a
 value of \-1 to mute subdomain logs
 without creating a domain.
 .P
+These flags are available since Landlock ABI version 7.
+.P
 The following flag supports policy enforcement in multithreaded processes:
 .TP
 .B LANDLOCK_RESTRICT_SELF_TSYNC
-- 
2.53.0


