Return-Path: <linux-man+bounces-3206-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 94384AE33BC
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 04:45:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE0B23ADD99
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 02:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F39C117996;
	Mon, 23 Jun 2025 02:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FJtCOF76"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E380BA50
	for <linux-man@vger.kernel.org>; Mon, 23 Jun 2025 02:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750646746; cv=none; b=YIW7IM7+ETXB+NAlJShBKZON7dggkJNAu5384N9By4h41Gjhb/+i2Q1uv1PQhUvAC9dwAIe5YqmE/eKr3kOGO8UawW+/Cg29ztKzpd3sHGhH9hcsDWWdeXwC5rq73ubRl6gOncRuRoGXK93ELpQc4t0tjU3HAUi4Dfy4no1/kHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750646746; c=relaxed/simple;
	bh=V8KE7s/maEB8XSKAiJrcE0DP80/6wsnntv9JwBQvp14=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oTOlNRCLunTr4RamvFxMLR/90SC3p0Bc6nXE9hA3mbk2XwIM5GNwOWDmDPWV+whe+bzo4rAp86A3R+5g4EB9Sf2mTgD1gLH5ozlaWoCOhwXWQKays3ncKRG8D7RV1scUG0J8hDqUC7n/HlbiXptekt1+KSkcrsG+hVY+1k07EQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FJtCOF76; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7406c6dd2b1so2730468b3a.0
        for <linux-man@vger.kernel.org>; Sun, 22 Jun 2025 19:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750646745; x=1751251545; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x+MzgWsi35M3q3+6GutdYFVObXUT9LTShcr9OhYhrqU=;
        b=FJtCOF76lzsdKojReqv1UgUoOUzb4mQgNl1zH03tsmLjxe/tkyG1fEny5SFoQRMOHF
         Joaa+ZnuKIl7KNFeLDKQHT6YDCX6PHoViGou3Vw/lLNEwJoRqPflYEPt7gZxyEIOSKYi
         OinjlJ1TPJjrZB3RfkKLcpdQQlJX9jBdIoMkAmpyIJixzQV9kR3GnSrTp3O2dZaKELGv
         +ZEbMy3nSE32djLF+t84XfAk6D3todtejTLZHjWhhYXP4rDYHACjC+WYiYjcqRgsW20e
         ks95WTA5v+YBOd0GFOi/VAI8WKD7ATM/tyN+iSlOtNJCz2tPIdmOG+UB6FEUEiAMOWKa
         kAZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750646745; x=1751251545;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x+MzgWsi35M3q3+6GutdYFVObXUT9LTShcr9OhYhrqU=;
        b=p4H8G83zphJqtLIzM2HKPkggnCN3BDh38KvPKEahXc3WiBsirDtn+K1/pBblCLx0Mh
         Vcg/PLSS7/JSsqVUAr2sKuCADUOQMGBgOskT2LBBfS1FUG5tjQHmez92avsoPEkUz7Ju
         df86qwYIk5O/tfijhfWvMDSLZNLQXnRnbp9sV9JZu5qI/bW2fuAJXnHZdidMLzau5AhT
         K/gR0NpIwo/SO+gR7y74craItN+tHbSNR/L7u7T2ZbDhBUFdJzP05IuH9A8u+oDxWoZq
         qaOKiZ2w/S4i3qznbsRaLnbaAqZv2La43BQhJgdTCfoK7+2KnlHR7hxruVs/p8z3KP5H
         zyvA==
X-Forwarded-Encrypted: i=1; AJvYcCVr3AFhkp4m+gMrjDHdBz6GovmruWnvbIeCLUnAhkSw7fz85VTFOGlhi5oAii7CJ/0oQGW5tWU6WKI=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh+34/UXK0NfERHD584VEehMQltRrcFCyvQFb5uzYdjVA4juvq
	lZ0XBH1zj1pvgvwoLPnpcVqwjv6deEST0O8xkOBFmIWcHLojFa5J1vIQ
X-Gm-Gg: ASbGnctx828yjXtL0h5tue5Wr3/IO1lkDZfNhpsWOQwdfFiitUfYLX4Xgl8TQbzEKL4
	UOT5T9J5gUu7GYEKnM/DGVLOLsfEJEl5uJQSxuhtpHri7lzQzOIRfSvjjfPxhDwIHAecQDRL8Qc
	dqtXK+sJG0lOUPdTLo7v/GU5gy2wDHI9s2PDL/tvFdcGi4aUtqim2vqGmaFdGeFH6xww/BJE2FY
	waEIFxBLoKquJDWHLr7A6qX7yjN4Qdjiw7HNl4B77/DcU8aWNkgmS1Hq6ENyOKkRkSH0b0KqKFX
	wAaDRZg/cbEyEn1Ry6nW4nAUCVxqv+lfoqD671Aki2xftw==
X-Google-Smtp-Source: AGHT+IEaDCS7dyk4Sd+G7hSyAbrwateVP8kVgch3Gnn9AAzgEKWWSSnPa4qKKLU7hHRo9ZJEriK+OQ==
X-Received: by 2002:a05:6a21:e90:b0:1f3:26ae:7792 with SMTP id adf61e73a8af0-220293a6af9mr15951619637.18.1750646744685;
        Sun, 22 Jun 2025 19:45:44 -0700 (PDT)
Received: from fedora.. ([2601:646:8081:3770::b0e6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7490a46abc3sm7326425b3a.14.2025.06.22.19.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jun 2025 19:45:44 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man3/ftime.3: Reorder and clarify STANDARDS.
Date: Sun, 22 Jun 2025 19:44:56 -0700
Message-ID: <fcc66f4d8694f933a71688ad529e6f4f43024658.1750646692.git.collin.funk1@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Put 4.2BSD first and mention that POSIX.1-2001 marked this function as
LEGACY.

Signed-off-by: Collin Funk <collin.funk1@gmail.com>
---
 man/man3/ftime.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man/man3/ftime.3 b/man/man3/ftime.3
index 8ae808ec2..11ebeceea 100644
--- a/man/man3/ftime.3
+++ b/man/man3/ftime.3
@@ -83,9 +83,10 @@ .SH ATTRIBUTES
 .SH STANDARDS
 None.
 .SH HISTORY
+4.2BSD.
+Marked as LEGACY in POSIX.1-2001;
+removed in POSIX.1-2008.
 Removed in glibc 2.33.
-4.2BSD, POSIX.1-2001.
-Removed in POSIX.1-2008.
 .P
 This function is obsolete.
 Don't use it.
-- 
2.49.0


