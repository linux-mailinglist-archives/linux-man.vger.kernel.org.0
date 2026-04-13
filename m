Return-Path: <linux-man+bounces-5329-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IrKCg9G3WkrbwkAu9opvQ
	(envelope-from <linux-man+bounces-5329-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2026 21:37:51 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E6B3F2CCE
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2026 21:37:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 110BA301CE71
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2026 19:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B73538D688;
	Mon, 13 Apr 2026 19:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q6+Bi10P"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC31431D371
	for <linux-man@vger.kernel.org>; Mon, 13 Apr 2026 19:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776109069; cv=none; b=aQy98Xeo+/HTL5mbn79eSOD/SDcuBvmK2rWJV3Y90CoLc1Jb+y5uXn6xLqqa5MrsmDOYipj4lfSY1Y7J3ekhWv1g+b4Tie5pVWk3QXVKyi6i6meZzumaDz765H2IoeVUdeCed4/19MXkiLVBUn85HdpIA2GvB6yEHeH+7FU6AhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776109069; c=relaxed/simple;
	bh=RMlmOgGuQdmhDOZNRQdYEAPdj6UEK4X5dv/lF+bWsn4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=e98x1n+Mlk6l06Qla4WDyWTVPs9MSqL0bkdNjFHebnpLOGtyggKC5ILGG19+4Qk7U3irnPbhp8GQ65yAy+csJJswblPO8r2esoDZEpQolwcVo3ANSXzzzrf0vPBHu2upErhb+vIq5Xbsv0I7ROp4GH54gwpHF5YCOHgn4HhPn3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q6+Bi10P; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4852b81c73aso45794585e9.3
        for <linux-man@vger.kernel.org>; Mon, 13 Apr 2026 12:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776109066; x=1776713866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E0h60i3tkyPpnZMCnFDsNo2bmt5bye/nwD0Nkb92MAg=;
        b=Q6+Bi10P4iN4el8tQ+EQPwBF4ja2cxJiDavInwgDkqAuIjNzUONbq3F9ky4YFl1SGT
         6UucN42Q7bQvkNTjaf2MZpc6k6q492QxbUJABMToZc4gSeY5VicTIH9C0GF3thRm+W5O
         gpCmYBhZ7gev41PuMG0c28cazli3jsO22RwHyGAs8WSEgC6Bl+RQppveJk8gW0vp6BmQ
         niGdP1rGs7DaMexUpkPToIhahtGrFvFQA/lvjD8iJPhDKhtW5OhprUilFg0ZCTQEL0MV
         ax6xmvDdwkqIRwbQ7RSM/DPatAJQonP4UJ7oud5WGgN/ayaFJrsW4sjCNSKKlFPkfqwi
         YUhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776109066; x=1776713866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E0h60i3tkyPpnZMCnFDsNo2bmt5bye/nwD0Nkb92MAg=;
        b=HFchtRXKbAXfrT5KNA6a3mv5D1s5/p3OH+03f67UDDH4lEYdFyxGuZWrPVnJ0UeUG8
         Z5k9vMPP/LCQ7K9VQBCBpiXidr9bmlwS1K9+iVtAEgaCIM/KCOHuxV1asmAtXq/dA8uy
         vHmV7J85h+PQ+LH6P6yesKU6TR8zqOOuo69GbRSrbsZItV6gqg/tV89g0xk8FuTtuZ71
         ++yYW6jW2oLm7WZ3NtZHyBD9aiT4aXRMUbQwcRXqATid5k+2Jfd/Rcm+OhpGytZgbIQo
         rXM/2k2uPyi0RmKmX3qzkz+US5GGjljnOtrpukoz83ADlZu4bJE8KKbW1bY+cCizxpdq
         uJLA==
X-Gm-Message-State: AOJu0YyVu9LFINYeiHvIGFz0YBrW3yr6XJzo0eMAN0YvisbeDuIZ92Hf
	abidNS2slEiwwl5L/b8YaLBMHZv+hoctZHgVgwbVSBHhNeYXsYF9ODEKif6CqxAz
X-Gm-Gg: AeBDiev8zJ1bPJGXGas+J//0meYh0M/7RGDtX4OUKnrjV8hj4T6ZOoS30o0SQzeeEEg
	c3WIKVE96ZqvlK13ApDmeFADYm8KoN/0tmbhjUnGC6nF5fAFZvgDVFxonjHZ0EcdxfmTZfsztuu
	Rcm/Wl4a59rjaezYwvM5epwUG8eMCrFuTRbrXxXz6FVTc7yznrhHjhI4Nnt1ALtPwNrEqFDi/fj
	widpw9bfD/p/NbSJxSqhI9BqvSUIM8kTJYLk9MngC5kTKod+dJJ/Q8x1LeKdWzdMl3w5/aLe4vY
	/omcycCKtOF7yae1EwkPeX+smGZ0h7aEPHMiMfQufWBh1a2kC4TpOUDO43caWWlpM1FZHgwpMTv
	tQhLnumUYzV1ht0Sc7v2oJAN2WKxxF+8aAWfgVUk/qo5G0hvdxLJgqF9O+3SNlXUiuwWlje+gBr
	kDrLl0Rot0zU9ffSd0x1wuneqPlWjlVnvlpG2xUYoAuujTaYow
X-Received: by 2002:a05:600c:314b:b0:488:b241:2c5f with SMTP id 5b1f17b1804b1-488d687c076mr168639415e9.26.1776109066211;
        Mon, 13 Apr 2026 12:37:46 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488d689110asm107427735e9.35.2026.04.13.12.37.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2026 12:37:45 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 3/4] man/man[27]/{landlock_restrict_self.2,landlock.7}: Document LANDLOCK_RESTRICT_SELF_TSYNC (ABI v8)
Date: Mon, 13 Apr 2026 21:34:48 +0200
Message-ID: <20260413193446.24328-6-gnoack3000@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-5329-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: B4E6B3F2CCE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the new LANDLOCK_RESTRICT_SELF_TSYNC flag, which applies the
Landlock configuration atomically to all threads of the calling process.

Available since Linux 7.0 (Landlock ABI version 8).

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2/landlock_restrict_self.2 | 18 ++++++++++++++++++
 man/man7/landlock.7               |  2 ++
 2 files changed, 20 insertions(+)

diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restrict_self.2
index 9e80a40ee4a4..1265ea2feb91 100644
--- a/man/man2/landlock_restrict_self.2
+++ b/man/man2/landlock_restrict_self.2
@@ -133,6 +133,24 @@ It can also be used with a
 .I ruleset_fd
 value of \-1 to mute subdomain logs
 without creating a domain.
+.P
+The following flag supports policy enforcement in multithreaded processes:
+.TP
+.B LANDLOCK_RESTRICT_SELF_TSYNC
+Applies the new Landlock configuration atomically
+to all threads of the current process,
+including the Landlock domain and logging configuration.
+This overrides the Landlock configuration of sibling threads,
+irrespective of previously established Landlock domains
+and logging configurations on those threads.
+.IP
+If the calling thread is running with
+.IR no_new_privs ,
+this operation enables
+.I no_new_privs
+on the sibling threads as well.
+.IP
+This flag is available since Landlock ABI version 8.
 .SH RETURN VALUE
 On success,
 .BR landlock_restrict_self ()
diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index bcf06ea30ad4..06910ccab5b1 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -476,6 +476,8 @@ _	_	_
 7	6.15	LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF
 \^	\^	LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON
 \^	\^	LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF
+_	_	_
+8	7.0	LANDLOCK_RESTRICT_SELF_TSYNC
 .TE
 .P
 Users should use the Landlock ABI version rather than the kernel version
-- 
2.53.0


