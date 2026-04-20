Return-Path: <linux-man+bounces-5353-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AO+9Bzqq5mkJzgEAu9opvQ
	(envelope-from <linux-man+bounces-5353-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 00:35:38 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDFE434B58
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 00:35:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F0D8F300AB1B
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2026 22:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E51B819DF62;
	Mon, 20 Apr 2026 22:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iScscGnm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697B11BD9CE
	for <linux-man@vger.kernel.org>; Mon, 20 Apr 2026 22:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776724533; cv=none; b=Nh/knZqe7UOEQ55FIvdA3qGOEwmzQogw7XDSfwqskAM8M68G4NKOKaA0xX0cxqA7fVzcYmKPUw771RnuL3ccwRF06pdTrhxAu5oeNI7dEWGBD5lvfMFdWSVA5C/cSQFLTxJAFyOb8tMgFrf4h3aRmsZRsBLLn2LXk/0Zdz4g6SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776724533; c=relaxed/simple;
	bh=RMlmOgGuQdmhDOZNRQdYEAPdj6UEK4X5dv/lF+bWsn4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=avSAou9cO75U3/J5O+5eLO5K/oc+hTyf5ITzOVdEgcjjUS1y+Gwi1ojr0aljbkvMzauxgzf9yk3362RfwfqThqOKUqvhMhuG9U22S7Xn0XyYOylt6cchVcQBNkg/Frye0L6wqpTrQR8oUUg6qG3RNfXvQ9Xi5lzM+VJuaunbJlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iScscGnm; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-488ab2db91aso47504605e9.3
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2026 15:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776724531; x=1777329331; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E0h60i3tkyPpnZMCnFDsNo2bmt5bye/nwD0Nkb92MAg=;
        b=iScscGnm6XuIOC1mdMyTFAoI1YxRc5FtbVHmd5s8OWiM0l2zyz8XxNS+Gk7VShBVGH
         qq7yO73Y8pB/hf0kst9utiSGL5vBwH44DTGyXh5bdnJ0m7qgarb+ai7ksubTdmudEGi4
         4PDDPBAvVb44wxRLhWz8uwW8nDGcCiz0j99mJmHcCfqfrij7584ZsNdbwiBNuv/M4GsO
         1GsTkqpwWHNdow3vXQT/UHE0usxNZKqmyt3UfU6GJ33Jac2cSVWcOZmPCFCx4GEjDlhU
         lGUYCQLb2ycea57deD4VCuWCZBCdDJyR1eHDMO88oYiIDrNQgxckwrVraOjbE29ZzU4L
         lnLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776724531; x=1777329331;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E0h60i3tkyPpnZMCnFDsNo2bmt5bye/nwD0Nkb92MAg=;
        b=naf3ACWMNGLnrYX0y5og7MSsUuPL/FGjUEIMdVg3miki3cEVRnzaHHUEMOORXKlyII
         cJxnlFE4Yr+thnKTItqtPQqlntdflZATFjDqiPpo3Fs770Mw763bS7kD6ab7L8BhsDax
         JUFhQIeSiUh9vQoluGactC/WhI2CEl8WMaAjuFsW1DyQlOWge8t/wVgo6L1Bokd0DX0p
         OvR72e44t01j9l6R1y9iYFkTMzMiACNqw2LlwMvnMPZznlS3aHw38PqLxsNtTHvMwJyC
         gWHPaZBkEgSm9whEvCQ86XbihG+nv6X3y9V2xUyjYaB8lwQQcy4Di03+IamWqRNR/a9V
         Lv2g==
X-Gm-Message-State: AOJu0YwczzobmYF0I+G2N5lgu6gDRkQiIse1sqIkmQxZTw2qEXQdmLd+
	dVuPTV9MFNYWsVOHtTz13JTgler/yHj0LMgQWUgyTBXKQ1Di34LOx+9z
X-Gm-Gg: AeBDiesjHra3GVkNjDbKoMKl92TwDPGnugdBOJp0qQ6oZmThOBN/N5WNfM8r69i1oMI
	CCpiZekGXUkOzfhCBhdRixOHBKSTTchqq4jr5c87GNHuzWUEBkgat43YxF8j2d3ujOr+aSLTEDS
	DZoVH/jJ6+t9wSGIJDRDVoQEarHu/dezpoNTSVIGwHFFbDNalSnxs+NXO1jrGYvuoHk7J3fGdBs
	+Az2Zco4OiFbtk3zf48KnMc2fbjmgWzdwZosn8xuNjrhrhhiZliWujAmC8XEOvIVp90+94htWmf
	j7CFRR4V1F8C47y1i5bOxbVbDSF+mgWWx1CxtnQwm8k279MjzMABAH4L9yzOjRuTR9LnImR3G1L
	rrrYvewRuCsfQfED06HLksGW8lN6wXKgg/tJO8eQM3BrSPFv/6c9yyE46KFZ0CXqKwkxmfzBXGb
	BqZbVh+uAyCWNuR4USQ6yW4DjZ93TWjJtF1QLdBdjQdg1cHh4fScQwGjORCnc=
X-Received: by 2002:a05:600c:620c:b0:488:ae6c:42c6 with SMTP id 5b1f17b1804b1-488fb7786c2mr232321505e9.14.1776724530765;
        Mon, 20 Apr 2026 15:35:30 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fc10777csm366544145e9.8.2026.04.20.15.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 15:35:30 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v2 3/4] man/man[27]/{landlock_restrict_self.2,landlock.7}: Document LANDLOCK_RESTRICT_SELF_TSYNC (ABI v8)
Date: Tue, 21 Apr 2026 00:35:16 +0200
Message-ID: <20260420223517.8020-4-gnoack3000@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5353-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AEDFE434B58
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


