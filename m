Return-Path: <linux-man+bounces-5328-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APwKIQRG3WkrbwkAu9opvQ
	(envelope-from <linux-man+bounces-5328-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2026 21:37:40 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEC33F2CBF
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2026 21:37:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 076F230164A2
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2026 19:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE16138D017;
	Mon, 13 Apr 2026 19:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X8N5xiSK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5068731D371
	for <linux-man@vger.kernel.org>; Mon, 13 Apr 2026 19:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776109056; cv=none; b=uF0HA/8iMme7OTJ7miPjYV7IabKX69gFZLsaQ4Bll5YaYvenI+1sMxwZIFU6If3c/ElEeMFetfhs7byRV0z+Lg/R28eVzfCqhoBxlhjjf6bo+HXWLlmhmLX7fTzBRteum4ZBh3P+Bf02VDieKkXeVCgO17wtzYb3zOMAuu7+158=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776109056; c=relaxed/simple;
	bh=DWe0QaWYVs0/w/vni8qhxlLvetIPyKSv6nkXSeIf9rk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pSRD4oeCXinkRMz1qyBAERNMjWH7ZuKFgTrxPUJF2ZttCDHYq3ivhTqszIhOXPOjq67I61Se1lCmNVm0gVRoq8XCH5BL5FzvNuzfn8cQSST0OLUxa5L0BO2Upu2O6yyFBiKAKa9uVYtoBKg/hQv2vw/DkDXV5qqitqCcr1ZD78k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X8N5xiSK; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-488c2690057so46658595e9.0
        for <linux-man@vger.kernel.org>; Mon, 13 Apr 2026 12:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776109054; x=1776713854; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mddYTMyNT7NN7qTEEf7t5sdnnzLsP6s3r8KrfdEOeVI=;
        b=X8N5xiSK49d3PxdQgtLPxL7MG3EH6/Q2xVTC+otZiSb5bwBaX91wHxTMUZXCne/6TT
         9qUCpHu1tEnhlKf75+FZnCN2QpEObhK/UX+c217fsynIql+7teEJ+TxBz+GYALR82ttN
         I/R5+iHkfevyiY+kS5XbSwhZQR5ryjAQOxboy4sy2pIXMZWX9Y4uBc8wEpp6Q7uYxnS4
         283QQeffnoCpjVsAl7lUG8YkvMla+Xo6jxqCFYjmMcoBWEK+sG6ZsXImnwnH6LZXTKLl
         ktt3gNdigTTnHT68GnRZRL+AYcAKeeZATdDEThVePBRxUsqboQPVAyEro8dFyKTH7cNU
         VJCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776109054; x=1776713854;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mddYTMyNT7NN7qTEEf7t5sdnnzLsP6s3r8KrfdEOeVI=;
        b=cKweiqKPc9OANE4bMsG4Qdqn4vwqUKZCGN1AFTU0Q+fNpyfGnvsepTgtcokTYQmqzt
         jaHgOqnsjI/f9dEFX5dX5qd7YBgwJhltMbhFaK+T0MwQTBl0k5ZiulH5Te5ss365ymen
         9KHtENZ0nYJWfNjEamStZ5EfskEaFXH4/DvnDO3SzqZxIdNtkw6007QVAsHF24Fx6kZr
         r2deDosUTljqhA7152wZKbiE51RYm2oJe5rxTYvJZLSLZb1VTUzbMa7QLFXulOs9e9sj
         YfCU7pp1vgPNGFOlSuLnZ9AojCYc8VCj4Z1rmZ5sGBz8qxF2xwsslJFHrf3tOUZyMZ8K
         BNuw==
X-Gm-Message-State: AOJu0Yx/ocyPyTDfhf/8JwY7iGO9VpyniJTZ93aIruYjn3Vta7fynMKQ
	iZg6XuHcG7fk63U4rpgdx8G1Zg/o+W54rYJQkgDZNc85L4E0LNhftJCfoNGykT6i
X-Gm-Gg: AeBDieu/QEhuSCIT9YKxlueVA0pBs+MtpaiYZCTGLKYEcQapYEOC+qv09r7jM4qwWsU
	bwDUl1s3uoRGum2szeg0LbJB9jFtruhi95bNpO/nzifL1eNGTKLYC+yztg8+4v+R0uhEL1XmfYQ
	TNslZAtonH1W+Cj7VWsDuRmWDDn+8PfTpW44tmhH1J22oMqaogT4qSY8DrQtoCk9Dan6vvBDNob
	47Y16VRMUfzbI/QBt0yPGrJMsb0LsuCVlPZKzg0azMbLTeVSW7ICgLb+P3/lVxM74qNdOEhsKsr
	0ugnu9EJimss5qjf8ZEAuSe6uv/jfA1oxXZ/LRr3ADgolOayORQLwQrwB1GYU35hoSjk/DW2IvV
	ZHuUJeyjG8yTShBax1RCElU/vKvQmwKiRoz7O7fnveD5TchYLjD+WG/xCAYjPfUqWHRP/IPE214
	0Cr2g+zvtcMgTDiFJIDXJh8LT8QoIUoNm+3J9DW0Is0Za8Pe1f+ltOlNJMAWc=
X-Received: by 2002:a05:600c:4451:b0:487:1fbf:e0a1 with SMTP id 5b1f17b1804b1-488d68057e8mr194635425e9.4.1776109053358;
        Mon, 13 Apr 2026 12:37:33 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488d684b55fsm107197435e9.26.2026.04.13.12.37.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2026 12:37:33 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 2/4] man/man[27]/{landlock_create_ruleset.2,landlock.7}: Document LANDLOCK_CREATE_RULESET_ERRATA
Date: Mon, 13 Apr 2026 21:34:46 +0200
Message-ID: <20260413193446.24328-4-gnoack3000@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5328-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0BEC33F2CBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the LANDLOCK_CREATE_RULESET_ERRATA flag, which returns a
bitmask of fixed issues for the current Landlock ABI version.

This mechanism was introduced in Linux 6.15, but backported to all
older kernel releases where these errata fixes were backported to.
On official Linux kernel releases, if landlock_create_ruleset() with
LANDLOCK_CREATE_RULESET_ERRATA returns an error, this is equivalent to
the case where none of the known errata have been fixed.

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2/landlock_create_ruleset.2 | 25 ++++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
index 7bca831cbd65..90d0341d2682 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -129,11 +129,34 @@ version.
 Unless noted otherwise,
 all features documented in these man pages are available with the
 version 1.
+.TP
+.B LANDLOCK_CREATE_RULESET_ERRATA
+If
+.I attr
+is NULL and
+.I size
+is 0, then the returned value is a bitmask of fixed issues
+for the current Landlock ABI version.
+If bit N is set (i.e.,
+.IR "errata & (1 << (N - 1))" ),
+then erratum N has been fixed in the running kernel.
+.IP
+In addition to ABI versions, Landlock's errata mechanism tracks fixes
+for issues that may affect backwards compatibility
+or require userspace awareness.
+.IP
+Only check errata if your application specifically relies on behavior
+that changed due to the fix.
+The fixes generally make Landlock less restrictive or more correct,
+not more restrictive.
+.IP
+This flag is available on Linux versions where errata were fixed.
 .SH RETURN VALUE
 On success,
 .BR landlock_create_ruleset ()
 returns a new Landlock ruleset file descriptor,
-or a Landlock ABI version,
+a Landlock ABI version,
+or a Landlock errata bitmask,
 according to
 .IR flags .
 On error,
-- 
2.53.0


