Return-Path: <linux-man+bounces-5363-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPJyLlm752mfAAIAu9opvQ
	(envelope-from <linux-man+bounces-5363-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 20:00:57 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BF90743E4FA
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 20:00:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5A623301A686
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 17:58:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCC8E39E6FE;
	Tue, 21 Apr 2026 17:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Bff2ctOZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7C33064A9
	for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 17:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776794336; cv=none; b=kG/2ZfVlwFAPWiGmV6iL79H1TxzymjLjxlFXnrX6wLoPC1P80z6GFNJM8vfyH83lvEr6wvbJC//kjo3KxEwrlXVA/KrVpoErk0sJaP/qOYc4vmsWKyxkFUGe0EaCkFZQaMhVWWOiAe7N7zEdAzo6U8SlPKwfL4iyYL1PSrh8rmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776794336; c=relaxed/simple;
	bh=hRbpTAwPvs+DRRbZHMQZxfFGb4xjIxTg4plCpNMARnU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=F3K5hD/vsLKJKeqCJfxVGTLUQ0dkmaSvjZlgQQuVL+/lSbwUHFjJpua6P9rxEl5gP1zRNoV8bHvmnAxLBpLWf/hpUyXwBryOim59v8B942VwG6WU2CSPMM0//+d0/wZqVXBXgSHKq8D7Tt2M5Jr3rGY2/ggImJ7ukZoIlGKkZe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Bff2ctOZ; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-48a3e9862f0so15007445e9.1
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 10:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776794334; x=1777399134; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NtwtIjmwj+TGdnS2S003W7/q4l3nh+2Sw3xFCP8Wjrc=;
        b=Bff2ctOZBDhcAvXE8WtDaMgAl3mAnxiRV43ZC2ml7OlqMUHGnuv15BSCRltJeUplKB
         /pmgVtxzcJlNuDPJ5k2EADpVhuf3uEg8jUUWA5tp5ybdeTmBEwNwFhovyzDaYcHhZNh9
         CGo3vE3Kh+r8PTj2h2vGhdwbeR1wNlLrvalOUhAzsTvX4jspUhBWaAShQjdP92e3Rv4o
         KMUC2BHnyJNwWLVV1IMbwYU44yNmLh7VEzEBxVp8FvZ/T/8rU7Lonrn/y9gDUMkq1Zlz
         rGeSsWDzfIt91t48+LrLc33rWTONhjRVQy+RwoQr0YtYS04K1doIiOUl39d95SnptodD
         vHCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776794334; x=1777399134;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NtwtIjmwj+TGdnS2S003W7/q4l3nh+2Sw3xFCP8Wjrc=;
        b=oW2dYTPAOWaxZ6nvXkQ0ZJaBrqPwTyuuH/WT37WvBtfBZowNnztWSM+PaIowOi4LMt
         y1JqHd4qokwk0gl0IqCPsm7rT4j/DbsE4gB6ClRhZtYFQvhr/IDrDZj5UZ7oEtbmoTq9
         H51rRF9pbeamF6xlPSuRkCAIiNT+eeu12KaTZEL8eepKYjz7Dx9rCOPfoTe84kaKxQi7
         yVtZ90CZ8EpPVM/802nV4X2m+GrsMv/wN+VHOW5K89qN7PwBu//t0IgHJPlSWKsU6qA6
         GDcCay5S0TRU+EeF66Bn59GsdDq0T17fearyY3oASuqO6TsidcpvQZSnz7/84fqXb9xV
         E2JQ==
X-Gm-Message-State: AOJu0YxjuOdpU2jPo3aL+mre+7KN/0xivuro1OR2+OMYrMve8CU8oN26
	tEsDdpTqrIbQXeLCJ28uQ/0AhfRJGd0ZsZPuEPZcerCIifRFGowGovSU
X-Gm-Gg: AeBDiesOWL/yhx4TnDiBbK253vdCZNlwnJm9zwVOX6O1aoQdU1uDii8PyM+z+niwhW8
	IS+gJ8VpX0St3JyspMrtDt6i4OxEd9JmS7F7deqUdP6vMlrBPf9FRqPdz5SGqmugmt4MDFjVmpZ
	lYL71YJ6EQN5vlDufLjk5UDgQao46vHWcodCgbLHODxfxyDIcUed3GXtOZnTf99zOKyyh+ZX/bI
	Z8wYrPpF/8mnZ61D0UZBlw1H8RXogLRHF844dj9OOsTF0kbvXs44rJonSooF9HrpXPTjNRd9SEH
	C9mrt/jmUrZEzcP/KrpMJyP5Raq3hppbzcddSbwjw7+ANin091K65WRrKNobAZu1RfYMxlu6QvX
	FRWYqLXmpHVdIJNFL8BGmwYP7eaW1YXWNKg6/Kh4dZQmWlGRShW3AEV5N96zfLRqI6n4DvT9h4o
	QRyO4gEt5MFKdPO+GSiZ9BRZq5prIF7OICbOtnyGcLbMFUH8K3PnsC51hbfVo=
X-Received: by 2002:a05:600c:870e:b0:488:aa33:dc8f with SMTP id 5b1f17b1804b1-488fb84ffb8mr260542275e9.0.1776794333603;
        Tue, 21 Apr 2026 10:58:53 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fc1c0354sm360940175e9.11.2026.04.21.10.58.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 10:58:53 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v3 4/4] man/man2/landlock_restrict_self.2: Document ABI requirement for logging flags
Date: Tue, 21 Apr 2026 19:58:42 +0200
Message-ID: <20260421175842.6870-5-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260421175842.6870-1-gnoack3000@gmail.com>
References: <20260421175842.6870-1-gnoack3000@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5363-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BF90743E4FA
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


