Return-Path: <linux-man+bounces-5611-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMeGJlI3F2ra9QcAu9opvQ
	(envelope-from <linux-man+bounces-5611-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2026 20:26:26 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 492EE5E8F75
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2026 20:26:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A98AB309B465
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2026 18:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5261D46AF2C;
	Wed, 27 May 2026 18:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PvYo2mqs"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A114657F5
	for <linux-man@vger.kernel.org>; Wed, 27 May 2026 18:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779905764; cv=none; b=cesTnnOcFHWhGvRZATX+xYm7+TcyqW+kTC1bfWWzO2UIKKqtygWMS6/Z87T1UFHxXEEOpRQqQOIKLbzSg9lpDFk2aJIuVGZ4721Bj8gSSdaMMJeGZW4BsX0zGph9dGRxablLlPX7pCRq3bG0D30GB1J33HeuAWwLGHwdSof7HFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779905764; c=relaxed/simple;
	bh=2O98pcDodvf/w5L1Uqu7/tQOCDHAp85xEdv7VYL7Blk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=npTR/hje+eeCQV3VbagN/dhPsny+qLMs1tGCtFb4K857F0ZAhzvKvW+n3/9tsQkn1hvrlP73pRL3uimSnUtU8229VWKNPRb6wFJOcQFEhmCwF1gLUdtnK25wQ0Hli9REk2ASt5bJK6vO+S8+uWtCHlaqCmKgy8Xi16fmLEW4ChU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PvYo2mqs; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4896c22fcbaso102748735e9.0
        for <linux-man@vger.kernel.org>; Wed, 27 May 2026 11:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779905761; x=1780510561; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cc56agp3MwuW21VE5gH+ln5C8u11biR7qsKK3i4wPsw=;
        b=PvYo2mqs/wh7+Gtx9zjLfbJ4dAsqBIAiMC3it/PnYlA43003rlAxkgsoUSSiqYBXYb
         2FXd3+RiHxISB1a5AqebJd4dzH23POSbtKcMfO5uM0RJkmrfCUrt45bHhMGOIBKEJkEy
         09Xpvo/aEl58LcbawVEmTwyLZiQl0rVHYGWQRUA6E0qQIIFSB+xQx4OO7Iq3x6w7lNU2
         AIgerfSXKE8SdoA3AsFAPs6BB7J4cZR8H8MQvQ/ux94QNRzjg3ebCvjftV3mRdIzHj5s
         Dq20M4+dsLveoMCOlnXx0QVNJmPuju5OUjTjUc+hg7fd0bD41gRIerw0Q928iJ65jGEv
         rzTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779905761; x=1780510561;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cc56agp3MwuW21VE5gH+ln5C8u11biR7qsKK3i4wPsw=;
        b=lh+nTC5okBKw7Y7hVh4ErOQXJbQ+t30RxdcHQC8krKuHA0fqhGKbbm35mlTCj5e/Bq
         1qaqFLXMmiqq4T5sg1zydOH4TxccdgjXeLx4ntJccK1RUXtc1QVHd3p2EUxH9qxuw+cW
         3ejDt+CoKWchSKDcPHdtsiaHvbJxf6XaBCngNSvvf/k0xzt30M+xZmjmhINUNAW1SlVF
         xP/8W5V9+KyD0zc+GdY2QSakWqVfts++nN8JkBaCfZFWsRWoRSgyTTeIZwXF5UPRGVNx
         ycIqDfAJmmgY4sAY4H12GCh2E8XQfz3CPf54glI2z5zN+bkRHUZx7DNOblojGuaxs9E4
         Apeg==
X-Forwarded-Encrypted: i=1; AFNElJ+xQM9MUnyV30rUbLU7qJHXm6dldyjg4zCjWscVottl7HrqY0mR99ZY4tEdfpRNiM1Xr08KF7Z/qrY=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+q8rJ8PFOK/dmJ2HAMjchbjMgFlbgoRkLtXDoxJ0krS+vAOqS
	ij1Jbc0myXTi1Q7Zn4gpO1y/if20KLX9vcAVJVmSQD39MjY2tJhtNZCR
X-Gm-Gg: Acq92OFolDeFjD+AUUZMAT5w3rzLo+n5+oUdPE6IzeYc6UikG/f2IcdntnVkn/W9JNh
	pTN7v9zVbVX5Th0kN3JWKybPtH8Rc4tS8C5631TeOIj2vw5/fCKtTPIK25hTHrMXUTKXIbrxII8
	pCu3eXLDXqsx0TiObTmYnHtzkTw7LYgqouXsj5P8ZGwlYhl1k+lhnnepyJ5UA1HRNt0tQ+MGPf/
	RWt5FmVqCCItbiPq24V2rwwiA8l3ohpFsKC5FQkNnov0yJxInYrIOrg9acm49QBaLREk+rqwBBE
	CRzBT9TOPyhYkQ866xOAAYv0wiJ2wL5SMr0aq+iD6Q8mgTKnEXpmAl/3QuD3xDxfKiGw63RKP6b
	EA5VUpr599zvIECx7OV4bY5RQ56y0GJIym1qj4emEUKWqy9uu/fnf8o5SN6228+IsNesfOagx8F
	1s5nHY80BggyZqmtWY4X8mWT1SxUCKNA==
X-Received: by 2002:a05:600c:35c8:b0:490:44eb:c1e7 with SMTP id 5b1f17b1804b1-49044ebc2d5mr442432465e9.30.1779905760422;
        Wed, 27 May 2026 11:16:00 -0700 (PDT)
Received: from localhost ([212.73.77.104])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4904526c926sm736405855e9.1.2026.05.27.11.15.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2026 11:15:59 -0700 (PDT)
From: Askar Safin <safinaskar@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: Christian Brauner <brauner@kernel.org>,
	linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] man/man3/errno.3: clarify ENOTSUP and EOPNOTSUPP
Date: Wed, 27 May 2026 18:15:48 +0000
Message-ID: <20260527181549.2237547-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5611-lists,linux-man=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[safinaskar@gmail.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 492EE5E8F75
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

As revealed by Christian Brauner recently
( https://lore.kernel.org/all/20260527-fotowettbewerb-abwinken-einfach-83db3411945b@brauner/ ),
EOPNOTSUPP is widely used on Linux to mean "Operation not supported",
as opposed to "Operation not supported on socket".

Also, as seen in POSIX issue 8:
https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/errno.h.html
POSIX doesn't require ENOTSUP and EOPNOTSUPP to be distinct, so
let's update that, too.

Signed-off-by: Askar Safin <safinaskar@gmail.com>
---
 man/man3/errno.3 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man/man3/errno.3 b/man/man3/errno.3
index a070dab..fdd2710 100644
--- a/man/man3/errno.3
+++ b/man/man3/errno.3
@@ -477,13 +477,14 @@ Name not unique on network.
 No such device or address (POSIX.1-2001).
 .TP
 .B EOPNOTSUPP
-Operation not supported on socket (POSIX.1-2001).
+Operation not supported (POSIX.1-2001).
+According to POSIX.1 this is "Operation not supported on socket",
+but on Linux it effectively means just "Operation not supported".
 .IP
 .RB ( ENOTSUP
 and
 .B EOPNOTSUPP
-have the same value on Linux, but
-according to POSIX.1 these error values should be distinct.)
+have the same value on Linux.)
 .TP
 .B EOVERFLOW
 Value too large to be stored in data type (POSIX.1-2001).

base-commit: 9a4bfd0e50745c2649b6291db40b58e37c9c1c6b
-- 
2.47.3


