Return-Path: <linux-man+bounces-1198-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D49BB909B09
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 03:19:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 815B5281E8C
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 01:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73CE1154C12;
	Sun, 16 Jun 2024 01:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KETMCAcJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D271E1552E8
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 01:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718500779; cv=none; b=jewMzHRTs2fgNU43x0BJzad28Tpw5veScWrLLwOXsS0bAEJQObv/E8neskiAi8JJw6TAC2Mw6Rak/Y9I/Ue9oepiDmvOEXwHEm7qyFFxZ4ZB6qnYwpnGWaKuM+9QhTvlSLZ+1DsOAAIhpTlsjXddyjhqEQIixr7S1uJ/b31/SsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718500779; c=relaxed/simple;
	bh=Qej8mxCYBgITIPGf7N+mOx8cp0REnphzY4BnEdIKUdc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lGWYJxu5nScDrOBVMgu2a2GIL8tDTRtSIkBzAY63Eh0lnWm/Kj3zSRnfyLlCwtRPTI9+fDpf+8YRC/uJuXYP3WPkJmfmOXocVLn3VPtuT4DnN6103oBrlhDfqCOvLny9w0BGbgex76imN/FBygIlOHJuNIHQGldak9nSwn6fjlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KETMCAcJ; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6b063047958so18363076d6.3
        for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 18:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718500777; x=1719105577; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GzE7AQD3nnMY5fdZpespME6KTbi7FkthdTgmDPUN9Z0=;
        b=KETMCAcJq2qbYzt+ob5hwaXHqrozQqptSgf26tXJXuS7CY2mIHeFe7DrefLDohJf0u
         aMZacUTAYMriRNZS2G/qOUJ7RtfLfV1UsDA+gzSjlQlvhcyxctfqvqRCLDShQdM9HT0Q
         4gKXImvYTDh5K5RhGyk7IvQrxBNSx5vs/H5qLLB6QUrL9Zw1mTr1YSRqW3V+zDeKG06F
         C+yw/YHdSNk71vtFx1dTa9Tjsoie8vSJMMH9lou0ErjN31pEN+iTijTLfkAxq/oWkjMv
         m3qVGOWI8dJLuuUk4jD/K4cm/3rtELnJEU2Fbsg+C0YrgHK0IsFJxXHPu9wPEvuGq/7B
         AWgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718500777; x=1719105577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GzE7AQD3nnMY5fdZpespME6KTbi7FkthdTgmDPUN9Z0=;
        b=KwC8pgp5CNQOKZuWpmimBVHEUgblcSTbu6lnL68oW3CHzeuw7FFcNuwqM+VnKLU1R6
         JyrK/9AWKrPumHclJyVQIFx2dh+s75uwNGBk32rOOFmHLrZuPnfg8wDVNPRm1/IkfTJO
         MLyL9adenbMqZUsEDmjdSVEt98HjrYyerMB3APvoatKsVYZNVO7StoG7ZAtG01FSmCI1
         5uc0uwic8Zjh5ZPmPHQHjRrfqcACWu7Xryo/BhxgLwzavisALX85HmmyrJbjkxpWnhBc
         ZuAsCe6um3o8cRmN7CyPYclObLhx5PKTpO4JEz/v37MsCyySlXrhUntR00/V1LYBqyHu
         riGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtR27LWALs5f4iE3owzDPn+lNT33Mb9z9hYbtIqdXpX5Fm4uvokWgfumr0/SzL21YpBPoKcWEY6yyHpsXRqitACcrdeVwh+WQW
X-Gm-Message-State: AOJu0YzSyHxKBCuMGjkhGNtc52Clw3G2RjVYbjDJWOm6BDnPHpXquC+w
	lOlzlEKqUbdxEsngj9nGgQb1NK4+S7nV1YaQBQUvPYiDEQQVCxUnCbWOPIo6
X-Google-Smtp-Source: AGHT+IEFSuqYJygvUILDLY9ckAMfp9sDLK27rtwT1h5GBWXV9OpzWtSgfQNpL4GaZsHR8yIfImON0g==
X-Received: by 2002:ad4:57cc:0:b0:6b0:6629:bdf1 with SMTP id 6a1803df08f44-6b2afc8c21bmr55550816d6.17.1718500776730;
        Sat, 15 Jun 2024 18:19:36 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5c18209sm38130626d6.42.2024.06.15.18.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 18:19:36 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 07/11] setjmp.3: fix section references
Date: Sat, 15 Jun 2024 18:19:00 -0700
Message-ID: <20240616011920.1627949-8-kolyshkin@gmail.com>
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

Commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
Reorganize sections") results in a few problems with setjmp(3):

 1. "Feature Test Macro Requirements for glibc" refers to NOTES, while
    those macros are now described in HISTORY.

 2. The discussion about saving signal mask is now split between HISTORY
    and NOTES.

To fix all this, let's remove NOTES and fix references to point to
HISTORY.

Fixes: 4131356cd
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man3/setjmp.3 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man/man3/setjmp.3 b/man/man3/setjmp.3
index 2319feb47..1403d6ba7 100644
--- a/man/man3/setjmp.3
+++ b/man/man3/setjmp.3
@@ -26,7 +26,7 @@ .SH SYNOPSIS
 .RE
 .P
 .BR setjmp ():
-see NOTES.
+see HISTORY.
 .P
 .BR sigsetjmp ():
 .nf
@@ -65,7 +65,7 @@ .SH DESCRIPTION
 was called and to restore ("rewind") the stack to its state at the time of the
 .BR setjmp ()
 call.
-In addition, and depending on the implementation (see NOTES),
+In addition, and depending on the implementation (see HISTORY),
 the values of some other registers and the process signal mask
 may be restored to their state at the time of the
 .BR setjmp ()
@@ -201,7 +201,7 @@ .SH HISTORY
 with a nonzero
 .I savesigs
 argument.
-.SH NOTES
+.P
 .BR setjmp ()
 and
 .BR longjmp ()
-- 
2.45.2


