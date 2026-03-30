Return-Path: <linux-man+bounces-5292-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJyuA9HjymloBAYAu9opvQ
	(envelope-from <linux-man+bounces-5292-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 30 Mar 2026 22:57:53 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6571E361336
	for <lists+linux-man@lfdr.de>; Mon, 30 Mar 2026 22:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3DAE3014102
	for <lists+linux-man@lfdr.de>; Mon, 30 Mar 2026 20:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5674336E49F;
	Mon, 30 Mar 2026 20:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a27piD+l"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A051C175A87
	for <linux-man@vger.kernel.org>; Mon, 30 Mar 2026 20:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774903871; cv=pass; b=peUqDyNn7MJAYHifbg7ZW9oXdDYFw4yF1fDEpYExmzwicv0TpNOnkBLBNMOzdhmhXkJQYwH4+9QvRWKPufScmMSYqA/URdnZQ8OL3919lee4X9YWLJ3S8ZMV5np2sdQzCnHdAuwpFb19F5JR9Tio8waXsT97ZcaAlYLs9Iw/7Cg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774903871; c=relaxed/simple;
	bh=a3JA+kG0Xh4aVokUuez8HSzM+zJivESVdbXktfvh2UA=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=eEwFxsP7ENJN4fOOpbI7EiQt9/mTC3nAWHnnRg7KHM39iDQxJ9RQWtjN9CIwb1Gws2R4RNpedQZiIzvJH7k9Tl0SB+wt3OHfUruVhxqc6p6bddST7Fe0RytIpfNKG4aZjc/X6dm3Rg6IEPYVuf1nFxCcMc3fGNCaNEOQNXkgZtE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a27piD+l; arc=pass smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5a0faa0d15cso5265340e87.0
        for <linux-man@vger.kernel.org>; Mon, 30 Mar 2026 13:51:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774903868; cv=none;
        d=google.com; s=arc-20240605;
        b=JT2B+49IL6KzuMvFZRRq39xSpVjaTJU7I9o+FSFFFNX0lV2bIorHtVHH0MGpsntzZa
         iAe5a6wyBwv28WDFkxenN4OzlrJiDCE7DjNNauqBSYhJo/4DrLdHm+M/1/nffUjD4QRN
         pb5Z4Y66Cb3me1P9aPcZXzR2uPX1VreY79UNlyLcIFacihDv4xMG5oVKRjwtwE2SjD2M
         cK95uY0cAio2Sc0YSfYfDnz6zI+xV4VAZZrztHWWrMgQDFU1oANCK7DCbd4BAkd6NERV
         iWoa1TUpBmRVSzMzrvOT/Z3u0LN50BdScfLJy533q4bLl0fOUQVFec/ftpwXvFtt40UG
         Mo8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=SBN79HMpchm3MRpHL74HLNYWuKrs9lMRVEqYsX9eF1E=;
        fh=HQrAeJGtoj0mrk18UcVkFyZbpURbuUn9DSibLkpCvQs=;
        b=b8njYrQiB0MOuwjYtisUc9AIHJGKkrjTMF1EwaEYG7L0sgOozojrwVtA6GOTsKJkoK
         5rB6TdGGnUGnAww0fXx3wzmrV+qXE+MrSwdZmOMRmxZwrOPh8piuQ73zaK+nsOz1S1C6
         so0XuNSZgnFv6Z79BvBbkBacudJWWiMCy6tSVQLXtei4oG0dNeczdIu+UwBZtE/Gy92Q
         psbPoRN+exwUPUk/MuJ6n4eAlPrP/DNND0ik+9GvJOrM+9SGYjCEBYpz9DI9HLHxhPvS
         Aib11L/QccMr8wnn+CwPGxS6PM256OdSehJI/Vr3yixUuyr8qOaeYHni+N6Xku0inPYO
         CZrw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774903868; x=1775508668; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SBN79HMpchm3MRpHL74HLNYWuKrs9lMRVEqYsX9eF1E=;
        b=a27piD+lHcZqUXOuh99b9rmhjfLz3lkq1xZd7l05V75gL4/b7hI+IaTT9TYKP+KnVh
         X+AU3Lij6Ww58WeUNNC8nSwn8J7Ac45TbQSB9n+LJY0BOL5aX8YUs1vygBJ5KC53E8cD
         HJQy1iGnrCe8KtBCkCGzl1nk1zBmBUjsVHAim7AUzbs52Rw1iKZ0JgSD43+17Fhci/yf
         ArFbToaQZtFLaHtAyqI2L1rjfFdRzmudsHssqL8ppHcG46017dUMtxkXJoykCca+phSn
         uBgunxjLw+psyF6wEmNPO0XY+mP3HIgv9nH/QADZ0kr0H+QHMatoFYdAGnojvkipoQI2
         4H1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774903868; x=1775508668;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SBN79HMpchm3MRpHL74HLNYWuKrs9lMRVEqYsX9eF1E=;
        b=lmiT+4LUhsbclXA6ZfDnh2jzWgk9tI4RvuZqyO00tZxM9fK/V65tv1oDcJH2orwNNz
         2/37UOHQhcT0ZIrVZ2WPXGM2aGYsGSH4X5c/Yz8WqKaM++LBb0+uorTJgK1qMCsrDSWk
         j6EVTy/9Zz9O5RpRzt5euXR4sh14g4kFdk0VAw1ozhXYzuw/PdeK8sYkb2RPOOTHsIaJ
         gDLRH3n9DiQBR+gyHs7OX7kxLLtzOF+7dPBjkA1zY9CJOiHTcPYZydawscFkO6O1sXxB
         KOfUz8H+PB20mZTynN19aLIa0ppIqdGm1C8YHvxG12mC+rhU47sj63icf9lpQVhs+eDD
         RblA==
X-Gm-Message-State: AOJu0Yx/O/kCKOpIbt8RkbKmYxqkxVXY4LIKdM/jqW0gPq6Ti+ZGprOz
	UGwR/WNqCnZXoJiVfTLWKrvuHJ7N2CfxyLjOOORMhwqODR/ghP13HYAf0XJgSPSwAoJb0SZJ737
	4WtbF0bVBeL8TKD5Fcb9+fQ4K+3JbjJg=
X-Gm-Gg: ATEYQzyIMCNiYrMVj1J7mpxLf1KDp+RIwloltv2rdXsxozJYOnBX2dPXNScx5BAsrKI
	nS1ISW2uiHY21OMo9tNUY22tcOuFYds8HFChxZRuSEDt2NWrSmj+xTDS41BQ6NOQd6gxD9Ipdun
	FkL9Muv3xiiPjJziaJEb36xI5pdDQToCU6MTZYmfEMYkUVjDSPWl0XOyRuT330p6Ai1FGBvpnD3
	7GqKV9graKQpY3aOIH+L0d4gjlLs1oMMzb+IteqYN1MLwZSqWjmGgcmWNH6pnqjal7pSv/BtrJA
	N+mRULT4fxSqgF1qOCIO8H3ke6VnESeIjErElpTxK+OgS7/uGJuLCpha1cBlztUVwe8Q8/hax0G
	38c5WFgemhZNxkOi6u3UDfFTTD/o=
X-Received: by 2002:ac2:482b:0:b0:5a2:a1aa:2b8a with SMTP id
 2adb3069b0e04-5a2ab92b48dmr4547458e87.31.1774903867458; Mon, 30 Mar 2026
 13:51:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Stan Ulbrych <stanulbrych@gmail.com>
Date: Mon, 30 Mar 2026 22:50:55 +0200
X-Gm-Features: AQROBzAs0-xqUZArUad4WNujP62hFRE5aT2qo00scVhRmRMnGa2bZDEh9O7K-CU
Message-ID: <CAEMnaZ+paJ5_Dc5FkibQSggqiR9hW7EYLtnn=wmbCz3Cb+iLVw@mail.gmail.com>
Subject: [PATCH v1 0/1] man/man3/strptime.3: fix typos
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5292-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stanulbrych@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 6571E361336
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

A little patch to fix a few little issues I noticed in the doc. I've
never contributed here before so I'm not sure if I'm doing it all
right, if not, apologies!

From 42228dd6c167dab1d0dd61d2d25b626d0fc2ecfb Mon Sep 17 00:00:00 2001
From: Stan Ulbrych <stanulbrych@gmail.com>
Date: Mon, 30 Mar 2026 22:41:23 +0200
Subject: [PATCH v1 1/1] man/man3/strptime.3: fix typos

---
 man/man3/strptime.3 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man/man3/strptime.3 b/man/man3/strptime.3
index b969a2a..979bffe 100644
--- a/man/man3/strptime.3
+++ b/man/man3/strptime.3
@@ -60,7 +60,7 @@ The
 function processes the input string from left
 to right.
 Each of the three possible input elements (whitespace,
-literal, or format) are handled one after the other.
+literal, or format) is handled one after the other.
 If the input cannot be matched to the format string, the function stops.
 The remainder of the format and input strings are not processed.
 .P
@@ -288,7 +288,7 @@ explicitly specified, except that it recomputes the
 .I tm_wday
 and
 .I tm_yday
-field if any of the year, month, or day elements changed.
+fields if any of the year, month, or day elements changed.
 .\" .P
 .\" This function is available since libc 4.6.8.
 .\" Linux libc4 and libc5 includes define the prototype unconditionally;
@@ -319,7 +319,7 @@ the same format characters as for
 (In most cases, the corresponding fields are parsed, but no field in
 .I tm
 is changed.)
-This leads to
+This leads to:
 .TP
 .B %F
 Equivalent to
@@ -364,7 +364,7 @@ and
 .B %P
 is accepted as a synonym for
 .BR %p .
-Finally
+Finally:
 .TP
 .B %s
 The number of seconds since the Epoch, 1970-01-01 00:00:00 +0000 (UTC).
-- 
2.53.0

