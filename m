Return-Path: <linux-man+bounces-1197-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8585F909B08
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 03:19:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7F591F21A7E
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 01:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38EAC154C0E;
	Sun, 16 Jun 2024 01:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VhSskpyt"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98AB61527A9
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 01:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718500778; cv=none; b=DgTr3WtpfCS2rcJIXVZvFuL6BUpdpEqsyBq5VyFFA5jFScoBd9ua4FjGnjSkipK2P/KU3NW2qhewRkRXPbiitMxmKCaK4LJJsRxIW3E8HLNjFft9nNbZvKCa5uqClRdHhR90Fq+ZZzfERSKVhpIOdAf/HSjQDtZaY+L0zjkwGG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718500778; c=relaxed/simple;
	bh=gUINiCogHh87aXdLAF+jMwCLfBh1u3cBy6guQxj/pEw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GOzIz5tWrkA5wVgxM03TVUU9+Cg4FicWr+N4wLoNbi2EBn0lzTkHC7ewta4RUmgUn15Xzg59fQZI78lCmq6JLSyiIsrLc66sPXIm6wFF1wLCDhhofxXAnGWj+lae8gc7HRH3WN8YZ+RqbKE9YmyxN4PeQV83YN8K7A0efrjjEpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VhSskpyt; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6f9a4f9923aso1860460a34.0
        for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 18:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718500776; x=1719105576; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3IDYgPe4JVLny6AA8vwmGSJYnXWU/DuxX3T8FnZRbGs=;
        b=VhSskpyt8MCUFKAewAKAj5r+voCGm/UQiEcR3aYi5IadNM2EdB7BaAFeZ9zCBjnC+k
         Wv42o4YISGrIX1UDR/jHLqurOvZpssIMXSShdZ6uhuvLZi55l9xl+p3Rcv+YzGWlSfT5
         9BmIBwUad/vOf8wuB/RtlvTRuwLZGVZJtB0dX+wgHSFTbftKFW3rNl9UKhbHvuC25wy0
         9uh+LDDwfnnvwaCn05JHhAHkkSdHwi7YdiiaKQ0FLJ+ahFVrMUQnCLu5nqvaaUVs4wjY
         4m2tv8hPwfh44ViC0iM4xPbrw7g/QqRQoohr7Tkn2RUEn0BJX4UV3GF4OvZBidjevKcz
         BORA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718500776; x=1719105576;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3IDYgPe4JVLny6AA8vwmGSJYnXWU/DuxX3T8FnZRbGs=;
        b=VC9Z3dD6obmFoI0njx3gCOz4IfA9PkZVh0t52xmCZg1tgjv1mJHtFysBx24nnfcNsN
         BXSiST/A9s9YJwYRDZXhR0p88f7mKS6JE5cZc1ZoA4O3O/bf0kV6lQszN7iKL9/xg2kB
         ZlLDjb1QnzBwY3NRDLt2rRMUm65zTlZvYQJ4ax/43qFeRXcNPKF6+G/8FPyZPR/y/Mgj
         z85CtfkQm3sOQEM5UlM2CNUnj+h/RVn4yxRqNvjyTHvlgke2vy5nIVIxLS9lUC6z0qd0
         e1hr324bv/VVob7Q4LFGIjBKMz6Hz/XcehmaV/PP4UKAWAeqqUPAc4H7O5I6gU/4Ptvp
         YG6g==
X-Forwarded-Encrypted: i=1; AJvYcCUb/EUy3VF3nWKeqdBS2aGs3SFYqfGkl0KxQtoWti4bdZxvgZEV6U7HShlnQ3OM/qW5Fln6+kmQ3SYrCAxA1aeZhnq99i+/4Toi
X-Gm-Message-State: AOJu0Yyee9KFv4d3y4hwaoaUXAW5IsCHpJ04cl3YhPF9ZZhlkbEWe7Sq
	7TUMBmdk9Onon5bMD26aoMY2Z8TRP2nAF71FpGxC4Lo1jE5qMmbN
X-Google-Smtp-Source: AGHT+IGMwPXB5udkhVbBswSgsbbxh0Vc81l5L8jdJ/2cxnKnSCdm9d23+ni/vNTY6gttmV+ASGqAcA==
X-Received: by 2002:a05:6830:43a8:b0:6fc:37e:8de1 with SMTP id 46e09a7af769-6fc038de592mr6492762a34.0.1718500775747;
        Sat, 15 Jun 2024 18:19:35 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5c18209sm38130626d6.42.2024.06.15.18.19.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 18:19:35 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 06/11] readdir.3: fix section references
Date: Sat, 15 Jun 2024 18:18:59 -0700
Message-ID: <20240616011920.1627949-7-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240616011920.1627949-1-kolyshkin@gmail.com>
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are references to NOTES section, which no longer exists since
the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
Reorganize sections").

While at it, unify the "see XXX" style.

Fixes: 4131356cd
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man3/readdir.3 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man/man3/readdir.3 b/man/man3/readdir.3
index 731e25c85..094f21080 100644
--- a/man/man3/readdir.3
+++ b/man/man3/readdir.3
@@ -59,7 +59,7 @@ .SH DESCRIPTION
 and
 .IR d_ino .
 The other fields are unstandardized, and not present on all systems;
-see NOTES below for some further details.
+see VERSIONS.
 .P
 The fields of the
 .I dirent
@@ -85,7 +85,7 @@ .SH DESCRIPTION
 .I d_reclen
 This is the size (in bytes) of the returned record.
 This may not match the size of the structure definition shown above;
-see NOTES.
+see VERSIONS.
 .TP
 .I d_type
 This field contains a value indicating the file type,
@@ -137,8 +137,8 @@ .SH DESCRIPTION
 .BR DT_UNKNOWN .
 .TP
 .I d_name
-This field contains the null terminated filename.
-.IR "See NOTES" .
+This field contains the null terminated filename;
+see VERSIONS.
 .P
 The data returned by
 .BR readdir ()
-- 
2.45.2


