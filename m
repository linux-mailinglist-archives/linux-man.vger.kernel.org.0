Return-Path: <linux-man+bounces-5351-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MhIJTeq5mkJzgEAu9opvQ
	(envelope-from <linux-man+bounces-5351-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 00:35:35 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 114BC434B44
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 00:35:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2E9533013736
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2026 22:35:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D462C029D;
	Mon, 20 Apr 2026 22:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EN2HxQcS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55561C5F11
	for <linux-man@vger.kernel.org>; Mon, 20 Apr 2026 22:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776724530; cv=none; b=IYaCGigXjbuWtDzst10f9nn9CDrbPddhG7is0M7qAn6L/lo1+J1g/+gdHwHd9EmHyP02TYIjq68QlaTJ9AX2JzxjfZacJfhcGHPRuwKHfKHOyFT1iMllrJrK+qrQqXJPfgrxyV4V+cwGPLL8z/HloJueS9u15hwAs9RCu2vezyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776724530; c=relaxed/simple;
	bh=3M80Xa3WxFWlMqK4Ouh9HuqLkNSw5MZThFVsehyq1lE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mpLfuXHHOdQ6eY6DyHBwoZBRUnOWKuAedEAoIfbsTSGdQScYnEBsF8g3dZ3uuUgm8hO9rEMmiR0tG7breUtwTTD4xXT+Qd0Ed0vN87Ms1miZwlvRwT53VHrrZ+uiE2Km//duTAGMtsyPkqHurZNAgbJ8SjpNmEamY7W8sUmjpq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EN2HxQcS; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48374014a77so46089205e9.3
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2026 15:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776724527; x=1777329327; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=enpB0+xMeXZOJzP6COaJo7T905qM4z+JuuPJtxXzq7A=;
        b=EN2HxQcSKhtejHNfnnouGsYBabnijFsxpMa2R+f9CRzXdoH6AfCVIZOuaOP883nyC6
         zoZkr21LzM21F7HqDyJhSrA6ahJRF7FGmqsMxn12mbyvY5/bZfVgptQ8cAVNCbHW87HE
         fdDXpI1y0KkL1TDJCbmtptb+v1GFk5NEEv/znr1TRIhKusy50PiRkmp3DySJBWqLyQOL
         C8REpV3HvX2lux8cINDPxh3M47EQAcPqfGqCph3z1eh6yAcDnGeeoZAc9u1CIjEfaiJi
         KmskmrmkLksF/u7MY6Lbk5S2FfICO+WpqfJyskaM/aKc8Bn30U/xRpa04uROp4X8IIfT
         zeYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776724527; x=1777329327;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=enpB0+xMeXZOJzP6COaJo7T905qM4z+JuuPJtxXzq7A=;
        b=B6BC/S0Z6uUSSyH/mD8Og7fjpvsl44g5nFkflJ5JuKVURmmgkF13bo/FQgf05j7EQW
         qJeGJJUnG0X+JaWs2k7r8GiltXb2tEwBOdTkLgCaSWbbv6fQRJdcSvOtTwz+ESM3bbHk
         vxhuvn+MkZTABJjriWZU9wypNoHYkjLDw6+l65LjuyiDhYs2J+A+UzJlxn4TquMKNYB7
         gspUuBcaBH/neidqbq2Fb/EnQttImBpjuxOKQESyzRTFS8BsriIAXU9cT5/axxQXSWRp
         mLiEFXj9b6w1WZidf4hPbSm5R5m15a0G+/EUWdhrA61f7y5wazwxOsi7RDiewxg/u+Mm
         ocZg==
X-Gm-Message-State: AOJu0YwCvvKRXV4T+SaYOZgbViISDeP3UWB+Dx1fUCacUHlG9JLF1rka
	TRjMvQosfrKP62Cl7/qKQvyQVMcfb9DquTrEN4w3ulLQ430aTr35ChO/
X-Gm-Gg: AeBDietd9mYNE2KgHfJRNVql2AKeDz2YfPpFFBhAqctUtvGX5QOLcklhmPU+u6BFSs0
	GqdSSaHvHeOyMNus3C7IhODwYJsCCg87EKpCZ8r7XLdSXobkizTGpVFsL2zyVNUq88VA77YqqjR
	Q2v199u6io+from0UgOG1P611q33kgpTP7Y8x+FyrgZhOytyoJwj529VNoTc8LUwMZNzOaTnPBL
	xC4WlZ7IEyDpDbVIQfTLmfH5akyqBRHollT+SFnBhPAMhcfgpnsRRzTCjKqc2kdGhd3oSAthsea
	Q2sj7ruxZhUXlP6598+zGJII2MVTF9G+oH1n+D64qkpe9p9QUCGzpFBQ9xe8LXDTOpSHbuijkdp
	GLYjt6Z6WoHW/4TlzBMW5zR1yMmEmPGlZKgnhLCge80tiuUtUkspnsnisvCQcDHBT1M6V9tIard
	Hx/z4Cjm1BQy9EaTqgFtvH7JdWFHD4kskmbTr9II2weAv/bOsd3QdRTC8mglI=
X-Received: by 2002:a05:600d:8408:b0:486:ff92:63e5 with SMTP id 5b1f17b1804b1-488fb73dc6fmr175993525e9.6.1776724526962;
        Mon, 20 Apr 2026 15:35:26 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e3a397sm35369641f8f.23.2026.04.20.15.35.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 15:35:26 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v2 1/4] man/man2/landlock_create_ruleset.2: Document EINVAL scope case
Date: Tue, 21 Apr 2026 00:35:14 +0200
Message-ID: <20260420223517.8020-2-gnoack3000@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5351-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 114BC434B44
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This brings the manpage in-line with the kernel documentation.  Here,
"scope" is a field in the passed struct landlock_ruleset_access, which
can result in EINVAL if populated improperly.

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2/landlock_create_ruleset.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
index 5d64f4c2862c..d4eb5d827656 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -156,7 +156,7 @@ was not a valid address.
 .B EINVAL
 Unknown
 .IR flags ,
-or unknown access, or too small
+or unknown access, or unknown scope, or too small
 .IR size .
 .TP
 .B ENOMSG
-- 
2.53.0


