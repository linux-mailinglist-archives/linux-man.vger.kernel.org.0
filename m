Return-Path: <linux-man+bounces-5354-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDhAHT2q5mkJzgEAu9opvQ
	(envelope-from <linux-man+bounces-5354-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 00:35:41 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E99434B5F
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 00:35:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CA1523004DB1
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2026 22:35:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB8403016E1;
	Mon, 20 Apr 2026 22:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hJaqW23H"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6581B1BD9CE
	for <linux-man@vger.kernel.org>; Mon, 20 Apr 2026 22:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776724535; cv=none; b=evQOR2fEdRmtqH5GYcZhe8nn2tlMOgHi9Vvnf7G4GqeA89ZxuKv51LDOvqYLX2KaQUN8+t+rjECPEkeq2TBEOVQW0aCevVyzJx33SGMpL5ANUpl1lQVmojrz8CMp7M3ZCJQ1JayrJavcOTkrJSZ5n4vQ+d3T5qQexmCyLAI/n/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776724535; c=relaxed/simple;
	bh=hRbpTAwPvs+DRRbZHMQZxfFGb4xjIxTg4plCpNMARnU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eJtnIobqF8Xokn5zkZLoyKfbCm3OyM5M+zNtyMVdrnk7yzpXAtIUcatPLNvec+lxR7czfyJchey/GmS11hJV7lG+kQu2RXSYmZ0/OmDgJGTvzZ03+WJIuMSsZ28i/4zTSHH1mHprR+Ratjw4JKRWW62Zy64eRwoZLTOsuB3eIDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hJaqW23H; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4852a9c6309so31515915e9.0
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2026 15:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776724533; x=1777329333; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NtwtIjmwj+TGdnS2S003W7/q4l3nh+2Sw3xFCP8Wjrc=;
        b=hJaqW23Hz9VlOKYf3AiuBwz+YI5yIPJFAdD37e6lNwUFgcelsdo8iRuDA1jGgc2/pj
         50SMgG6ekjKpbfKq0Pbr0GfspBnBaz9ABElvY7OwJpxmYoOD6yojRdp/rb4UEIcUgXp1
         zoZ5gROziNQFWjV6jAWsimbGA3xgBK4A43QVzV1zsg4D/BGSHPsjNN9LMY/Kru3MpWr+
         jmQKg8lG82vrOOoFvoAOV8YfXhG4wONHfR9b2v261lH9YtPbzNVmtoSL1lsaZhlxA18R
         lfbyw6ahFj7Y+iOts2fD/+4FIMDN6SaGOnsDCPFKae1e5xXJpcExpDOPSzP9I/08OCVE
         rDqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776724533; x=1777329333;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NtwtIjmwj+TGdnS2S003W7/q4l3nh+2Sw3xFCP8Wjrc=;
        b=WN9rwddlwZrENAd8a6ZpS6Vt1HWHCGTjwtRXUqwDx2/wFR6E+e12ZgxvUP3TYROpPW
         gsjhFYoIKePcqmXoNkxEtNaAaQis7pZ/L8f5KqTWfKr4iINWs+ggx6JyBr0s7lwK3gRR
         GgVRK4HyuFKwBM4lWWZdc3t/Xoz0Qkp09mdcuBKM07WN1amUK+wOQhYEvzz4cvMosQPL
         3h/qBJwxSFIotif5OqPhsjFjitqBnxHV0Fxi3g3DyXNWuCHfJ8MybJKmqeS43S66dG5N
         Lm7hzElQCOmyPDWGfsDwoIy2GJuEoThMst3WFEVwt+48jsDkOqaqf45itRCsh8u3JKNa
         LYEA==
X-Gm-Message-State: AOJu0YzHp7YOJTyayejpm2Ag8G9cljeqCZM8JpUMDHHU2MPHxN5kV5ns
	E5V9nNFpmvglpMzdAtRdtuyjom18LV5qNaQKzuBB5wdfpX/Bz7cU5LIwz+t3E830
X-Gm-Gg: AeBDiesKcI4C3Ckk3fPOAcwg1AeiyUJM5M+894qlFeae+YRMwgL0KPcIc52OIberHM/
	BmQ5XB/S2a904A0yfQLHqFp0AXCtJLf2VDxOFudelHF5ePjxkK+NtIJqFKsAOab/qocw1U/X7zA
	27pioec1VttaY9LufMiE/3JTep7pMxF9ZmwmxAvvB4HTVozuzOS2T3vAueBkw9XsmEkNOuAz6jQ
	wC8GWFLX9xnW8PKshJDtkVzda8AKcbYh0pSXDpWmEPmS7bVvKgYkiXwitte/4yJshLBLnhTFKx6
	tQKnXDNPO582ht5HwrIaj2RbwlydesnqYRBCZh4tI72Xdx6yS8kk8qMoOG9N/JVx85eknYYkjVU
	I7n1J7Xdagv+f+mBInVzbwBrRZ88glfupExqjYDFPYyDH4WclziqhSUGGRcOo+I1abUlG5T1rFg
	JOTm86kYPfK5uhTut5ltemctgfB+gbe/aZRsZaVC/aiA/7B+xAeF2oBiv2gBeYDZYV4TVWPg==
X-Received: by 2002:a05:600c:890b:b0:488:a977:8d6 with SMTP id 5b1f17b1804b1-488fb775a35mr152501325e9.19.1776724532569;
        Mon, 20 Apr 2026 15:35:32 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e59f97sm36075793f8f.37.2026.04.20.15.35.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 15:35:32 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v2 4/4] man/man2/landlock_restrict_self.2: Document ABI requirement for logging flags
Date: Tue, 21 Apr 2026 00:35:17 +0200
Message-ID: <20260420223517.8020-5-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260420223517.8020-1-gnoack3000@gmail.com>
References: <20260420223517.8020-1-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5354-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B1E99434B5F
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


