Return-Path: <linux-man+bounces-5362-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCEnI4u852mu/wEAu9opvQ
	(envelope-from <linux-man+bounces-5362-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 20:06:03 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 131AF43E597
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 20:06:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84BCF30557EB
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 17:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 264972FF65F;
	Tue, 21 Apr 2026 17:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HBNqvRdQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 952B039E6FE
	for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 17:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776794334; cv=none; b=sgU0fUL2/36YzdvfQ0EtMLTLjfjCerbpwQBLFJMndBTsgVcoBVpjF8hwXR4e0pE4ZYZbQjNzANHKHIxmLF1ZfT3VAytRJkTHBkK59M5N/OaVHVcxdNZbb/rHaGPq+xJUhx63dMOpNaTY0gmGcmvkP/DqtIPS5KKgJTrgYjoHlcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776794334; c=relaxed/simple;
	bh=RMlmOgGuQdmhDOZNRQdYEAPdj6UEK4X5dv/lF+bWsn4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=clyK4DOgX6f6216KSHkKwr71zxLxccMdlh11ixjlww+hhKaRgDMzc1zEO9f8RPCDQcaBbft9bDlPxx9Q5S6b+9Dzq2oNGcvc7iMb3WGYFVsJ8vPvFUJ8WW8EGoBBVJqrEwzY8xc0MEC3XaAQnyWvD3V6psED8fR2RgZUn/OPA8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HBNqvRdQ; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-488b0e1b870so73812485e9.2
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 10:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776794332; x=1777399132; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E0h60i3tkyPpnZMCnFDsNo2bmt5bye/nwD0Nkb92MAg=;
        b=HBNqvRdQ5bSm6QPrIJcRqesMSxCe9Ded20PZbImbpQ+657VEZst5u1wvb6k/td3ZIr
         ubFEomDPyR/m1kI0lickcCac02WHiSwXRrfoqPF7cek0fMDOgKKRJdmqycAaJXbNLOZZ
         50luC1lEgeDIvJhAxBKmOuUA5gf9a/cRYdEHhgrArv95pYPoc03eH/VTNAB8qYvycYNT
         4qunS0nCzSNRQPC1phof2HZSy2Mw+M9sUy1gD2NZjibiaJPVRZLwSHELwo+3sEw+MSlw
         +4ZwWH/u2x9yqBQyA2eLsUTck0IHKwHUwGtl4aCxDYTmZujLsUcQUzdBsqWs/1HUSdsu
         7CvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776794332; x=1777399132;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E0h60i3tkyPpnZMCnFDsNo2bmt5bye/nwD0Nkb92MAg=;
        b=EvPRoG9HXL0BPFYp3ck6XIRxLxExVJnzXCvE2MFDA5z7JaA/X180Ngq+VsiH2GQltd
         A7YL/wdp/W9+bfsFF+BarwCjvF/QmoS1heprmVHEOt4yn+LUiqs5DXgsrJ3WnM0zPUEO
         Dt5+9QBB9SVJmCBhtIYb7JCbjDICHjYgTZTqKQf+gpLIsB3f3UWIR4NYxd3zIhlc3PkZ
         USeggEzNCTPbQTaCvGtZ02H+d+4QtMsWfqcAx9IkQIFsfo9+GglfDeKvrW6sVp0+A14R
         KQ/uEXH0vPMipM6aeypDUTM/F8cKIlfgZeVdx8Tc8ndHnQzDfe84+gqnrF5WratIGzNP
         GVTQ==
X-Gm-Message-State: AOJu0YwmT7Ejt82vlHo+nVLkSiWH65Wi0HjsFCNxxXyWztcSRAvpeos2
	Y3tJ9/SZ/Mlts7VRLE8jfWxNoxz/XKbK6zJBWGky55twwuAl7AXjQLQ4
X-Gm-Gg: AeBDiet+o/Je41ELQUzFfLBA7WBLDMoZwI+1d0F1KTdGgGN5fookf7UdPPV9FttcjUe
	BQx9MBIyBNE+XxRl6RystYBRS3HCO+SHx35FEaoCpjjHa4NtBz9W3Hh3iuDGSeyG5WSzkCy93/r
	lr3+EBHKjFr+VBdRblXZCyQSVSvfcvcaKNmtJQJHRTLE0ZGXMR7JFhy4izt8JrXt66MbafapCcC
	R1fQSfrOszNM5S0rz3jxDigJe3tykc4wT3k69UqHTU/Eo1+Rk0MG8GmyeTXqwaFLkoE1jquq5xN
	Mf6bqL2NG7p04jKgoEsYwUMkAVajUm02OvF1RKpz3pXgTU+Obu4unkwJqByTkZq6A886wecmljJ
	X5sjaJHnDC9mY3OVXDXTk4xy4tWmYR8u/yZI67qmMAeiAz8ThyzmULF9Llh62dw86/LIYT/45pq
	T1LYjAi/EV65+aP/lyI6GtgSXiRQqr67MT8FEv1He3ENuFY/99Ep9OiYoqHfQ=
X-Received: by 2002:a05:600c:350e:b0:488:a82f:bb95 with SMTP id 5b1f17b1804b1-488fb7861c0mr277985845e9.29.1776794331839;
        Tue, 21 Apr 2026 10:58:51 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4cc0f31sm39343240f8f.12.2026.04.21.10.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 10:58:51 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v3 3/4] man/man[27]/{landlock_restrict_self.2,landlock.7}: Document LANDLOCK_RESTRICT_SELF_TSYNC (ABI v8)
Date: Tue, 21 Apr 2026 19:58:41 +0200
Message-ID: <20260421175842.6870-4-gnoack3000@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5362-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 131AF43E597
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


