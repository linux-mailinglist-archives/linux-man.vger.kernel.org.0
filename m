Return-Path: <linux-man+bounces-2678-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D0263A75A56
	for <lists+linux-man@lfdr.de>; Sun, 30 Mar 2025 16:31:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D7763A713D
	for <lists+linux-man@lfdr.de>; Sun, 30 Mar 2025 14:31:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 786B7288D2;
	Sun, 30 Mar 2025 14:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SQGkB+di"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93BD146B5
	for <linux-man@vger.kernel.org>; Sun, 30 Mar 2025 14:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743345091; cv=none; b=VuRE8bpcCgX/jNKERIBogfm4DeGbHnhgUL2yHJGhKj/sIivagzKaSBxaLrjsTysqYUyTehE3H2NjA8ZpdtpJsqbA770MEA92GC+7T9poHzmWWsoQZsOa11XlSowQ3SLo+a5fiSiQDvwKItQ8VEJVWTP/Q9syxODIroSsNA3EU24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743345091; c=relaxed/simple;
	bh=BOh558qecv+F5ZLYkpQ6RTepJDGR6TcqTZ9SWwrgxOc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XQ1jGfPgyHMhEfjtcZ/C6+P4nUTGVPE/lSpJKJzIyo+aO5SEjvK75+C4BgnL8tBdoCVnnPAYpFyeIbjQ15lhAMd74+3aWOxUccoMOAN8ZZ7LGgkueDiQAAgKJwY8cvGN1Ip2EgpYTcsoBlePcGT2J3UIaYwUjaPGXYrBS+o3Vlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SQGkB+di; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3912c09be7dso2375474f8f.1
        for <linux-man@vger.kernel.org>; Sun, 30 Mar 2025 07:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743345088; x=1743949888; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DwmizsGqNjakVuAAuoawmOoxGrKI0Dm+EH2tKrgnkxw=;
        b=SQGkB+di4i9bwPYpMFvt8v0PxZG+2wArLevEfVpYS41IlNciidmt0FauOjXeNCs7SK
         5W7RedU8rNOCDuZlGBeuuMHWhLidVy/qeCIldirQrIwsyLUzL44luDVcNCeUN48aFIoo
         D38V6XtS2Q1R+03AxhKdOD6tmw/XZ7zzJwLOjORW9y5uQTPSDSI50smhxmg8n5KHFfj7
         913ny/J+WmWFSIOxgzN3OPueoYj7AoF3Bd30gs5iYAyCFAN9QdZniJu8RbGancSiRDeC
         b6MoX9+aUNTIobrkAxlHF8fXF8J3YgA+kgjw71l/Q3Dr/te8liYnV4abTYGSin07c9aT
         bYZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743345088; x=1743949888;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DwmizsGqNjakVuAAuoawmOoxGrKI0Dm+EH2tKrgnkxw=;
        b=kHfhPBdCiTslYUP4Rf0EpwiDq7rdBCY/n4CXjKNdRiBhy9jAxZxSCq/HS80++G8BOz
         VpfXy0jTyzculBayCq7GKXGTXYBCW2ToFmuxtAdSneAdUKbz9N4YB5jQdAEfmcJdZogN
         62DIiPVO1teOT9+Cq26Yu3W1+mkaPDSvpGM0s6Hc7r9VAR6I3Vzy5fG5i5JNQd1Vr1Mx
         9f6XW0Ky4IQH/2U+Mcg72B/3My/3S7yrGg0GrQEpee5W3Rd5WqdSAFd2ZsnMANTONTrt
         sCuIZZ8g4XkokvjNuckiLI4X09kY1ybuf8E+GMmj59AomTX/X2VkEknYFGhfSWLJLCG2
         ICog==
X-Forwarded-Encrypted: i=1; AJvYcCWx+sf5q+CBgQ3txWYsnDp94iFrtcWZIq4LGtKqZMaCwnvqQxvrPCSRDRGSed3RGtRhl2FMlnTdVcQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YwjApjcyTtMkJ4YPQouH84nmuFm95w6a5f/YUFSfJZlrgQZDMCD
	CtXtbRJu6Ss2PV0zv4vg2tf4HYZXpDMCsYSUaxOLacuFmadAaSPHG0UyhGNa
X-Gm-Gg: ASbGncvNw5jbQBd2CatrjQcTnvxS63uPTYG/lmsANweaq6hYmXhl3LKIzQvWEgQgN3I
	26rWcBg23HX6ulvLa1O52rkO3EIDQlWd64Ai1gCUU1Xp5BpUGDmtyeSnjQ89YoCo+ma3V72IhpT
	ymWeKWFY4i/dY5yte+G60KGqO61LgjLYId9vuffWpfBJqMxr6fNT6XoJGYGs1RmRb25UIpStiQI
	cwjinI5KXkznvMsNI/snzdagC0KWFW3AWb7PGyxYHwEv+p03yC6K0cuZYUsLwuCJA9KKNoAwgEz
	4cALcj28IgcbKxai8AdY+YN/uYGUPbbZ1eq3OujRIAi9UC0/HSRhEcVuOXIGZuSnEV++hEQe82+
	50AE8dg==
X-Google-Smtp-Source: AGHT+IGJ4zI2QPhO0Fw93fIe+w5yqhf/5PsqTLavfduElkyuqeqGk8xSEL2R6NyaIXD4oP5VIWIc8Q==
X-Received: by 2002:a05:6000:1789:b0:391:4999:778b with SMTP id ffacd0b85a97d-39c120e1bedmr4734725f8f.28.1743345087603;
        Sun, 30 Mar 2025 07:31:27 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-39c0b7a433bsm8805574f8f.97.2025.03.30.07.31.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Mar 2025 07:31:27 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jared Finder <jared@finder.org>,
	"G . Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v4 1/2] TIOCLINUX.2const: Restructure documentation for TIOCL_SETSEL selection modes
Date: Sun, 30 Mar 2025 16:30:39 +0200
Message-ID: <20250330143038.4184-4-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250330143038.4184-2-gnoack3000@gmail.com>
References: <20250330143038.4184-2-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

* Indent the documented selection modes into tagged paragraphs.
* Document constants from the header file (tiocl.h) instead of numbers.
* Clarify expansion semantics as suggested by Jared Finder.

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2const/TIOCLINUX.2const | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2const
index c0acdd0ea..f2c8d0720 100644
--- a/man/man2const/TIOCLINUX.2const
+++ b/man/man2const/TIOCLINUX.2const
@@ -65,11 +65,26 @@ are the ending
 column and row.
 (Upper left corner is row=column=1.)
 .I sel_mode
-is 0 for character-by-character selection,
-1 for word-by-word selection,
-or 2 for line-by-line selection.
-The indicated screen characters are highlighted and saved
-in a kernel buffer.
+may be one of the following operations:
+.RS
+.TP
+.B TIOCL_SELCHAR
+Select character-by-character.
+The indicated screen characters are highlighted
+and saved in a kernel buffer.
+.TP
+.B TIOCL_SELWORD
+Select word-by-word,
+expanding the selection outwards to align with word boundaries.
+The indicated screen characters are highlighted
+and saved in a kernel buffer.
+.TP
+.B TIOCL_SELLINE
+Select line-by-line,
+expanding the selection outwards to select full lines.
+The indicated screen characters are highlighted
+and saved in a kernel buffer.
+.RE
 .IP
 Since Linux 6.7, using this subcode requires the
 .B CAP_SYS_ADMIN
-- 
2.49.0


