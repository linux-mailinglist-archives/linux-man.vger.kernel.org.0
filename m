Return-Path: <linux-man+bounces-1232-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2215790BF96
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBFC41F21EED
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E0BA1993BE;
	Mon, 17 Jun 2024 23:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SXoL/Wxk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E73E1991BD
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665863; cv=none; b=S62mGmM0SGaxIAUZx41Nc1zLqoQW8Uup0mp82DeCHcR7Z6YJICoKd21+6au82jc0LmPQ2Lfg9sH82eGNCavQgmmeWkYGZRxzx5tbIYNTgbOI7/mbXvUKAMxPKCsmfM/kbI/2uNHvgGPUvuln90nIY4DBt1+37oiXNNjlYf/IGdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665863; c=relaxed/simple;
	bh=F/ZGo2IcJqMx+vvrXbd8Y8B0m72Se76vtaTfkK4v9JQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oN8qoKYhFG8e2RCxpmhOyxAVawxYvp+LhECGn1xG1dy7PbflFfoONoaldwtsdcYAj1Xtfq9l+M4NzlGeUfDLlLdANYIqE9kUmkpdy6P7MXq+MwPJf/FSJQCS/ZBICjKll84M1NPcH+Ilmb+Y7AK3e1SwfhXkOmQ2HQKMJ3YPXC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SXoL/Wxk; arc=none smtp.client-ip=209.85.217.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-48c2d01994eso1547834137.3
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665860; x=1719270660; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YUZR8r1l0jZH15Lc8HyCfLQBI+vkutK9TnjHqSATPs8=;
        b=SXoL/Wxk5lwI1VEs7CYDSEZxAHebHNTvrTymGDgiy9Tvl1ewdOAu1c6VgbCogZADrd
         S5uZuqJiVi9Ww6ZfRdnkHZLJYNPM3UncFzFLX427GrclVJ2dIjrqG2qea0Tex7CKKwW4
         xHtVlEWyHl0xGxPjC8BEFN7wxcav89wgan6FsuAQxxzh40pVOCObeMfN1yu7vLaYXetg
         osiVJD7KZmdc68q7n3/C1OozZJNKwDt9YxD3H/s4yiLSCsS7tZAxwyYG1S2ORYCBP9lb
         1Aw0qHFFo3DvdaFN/N2iBgKnSsTUSaTbdtqh6erW6/Om2AjiUGwhuzZCmd7UKxWOEYzh
         WQxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665860; x=1719270660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YUZR8r1l0jZH15Lc8HyCfLQBI+vkutK9TnjHqSATPs8=;
        b=c2akICqJeDT/Ak8xRuarTYzb11ehZMzJfsuvuRurs3nLXNy5C2yDlNsKzfu4vkZUZo
         C5HuDYesz6akNiRcwbCsLCQyEYuAO7BQcwzJGMqdF2QwwhMVh4CWdjV/6yKwwI+nPcUv
         LKUZDkiT06qcGqvWZb0lwW+6ch7XzTqEECaypCUlHan7mB5ZsCEk03fK9G2rHnZ4yxD5
         pzSIoNq16YYnS9J5hywLX3WUCMDXqcYytWKrqbgWnYQhm4IEf92mgC/8uSzNDzph/pcP
         6d+xUMZScY5JXkMrjKinnjUiUo3kpUGPik9xvCU4BqYVasXNwHYdVcYLzG4sJZ3gSuHY
         0pTA==
X-Forwarded-Encrypted: i=1; AJvYcCX7OGOY+YNUgwu2QGnIMhuL6aYhRBfI04P/p1M/XiIBdmlVwMAmXXEDX8bDV6qX+v6u+6+QfcanMytkD59CgS8iNMiH7WrJzm+P
X-Gm-Message-State: AOJu0Yx6z1UBOe8PiTTL2fP7o+zIfAj0n5lbyYPZqQRsdvwLZ+yNqrJm
	V1Xlk9HJV2sAqa4yD5zRsl77kG7rFLE/RKBxr8dZC+6EZm9kIB6Gk2B45vn2
X-Google-Smtp-Source: AGHT+IEV3w9Fr40ZpBr1rvEab0ZsRED44KpueG3rZWqq3D5QSd74jxyFqa0WLVS68HxuprGfuDPDWg==
X-Received: by 2002:a05:6102:26d0:b0:48d:73ad:838d with SMTP id ada2fe7eead31-48dae345403mr14196426137.16.1718665859080;
        Mon, 17 Jun 2024 16:10:59 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:10:58 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 05/16] getpriority.2: move info from NOTES to HISTORY
Date: Mon, 17 Jun 2024 16:10:17 -0700
Message-ID: <20240617231035.1766780-6-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240617231035.1766780-1-kolyshkin@gmail.com>
References: <20240617231035.1766780-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In the spirit of commit 4131356cd ("man*/, man-pages.7: VERSIONS,
STANDARDS, HISTORY: Reorganize sections"), move the historical
information about EPERM error from NOTES to HISTORY, and fix the
section reference accordingly.

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/getpriority.2 | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/man/man2/getpriority.2 b/man/man2/getpriority.2
index 111b591b5..4784407ee 100644
--- a/man/man2/getpriority.2
+++ b/man/man2/getpriority.2
@@ -138,7 +138,7 @@ .SH ERRORS
 and was not privileged (on Linux: did not have the
 .B CAP_SYS_NICE
 capability).
-But see NOTES below.
+But see HISTORY below.
 .TP
 .B ESRCH
 No process was located using the
@@ -151,21 +151,6 @@ .SH STANDARDS
 .SH HISTORY
 POSIX.1-2001,
 SVr4, 4.4BSD (these interfaces first appeared in 4.2BSD).
-.SH NOTES
-For further details on the nice value, see
-.BR sched (7).
-.P
-.IR Note :
-the addition of the "autogroup" feature in Linux 2.6.38 means that
-the nice value no longer has its traditional effect in many circumstances.
-For details, see
-.BR sched (7).
-.P
-A child created by
-.BR fork (2)
-inherits its parent's nice value.
-The nice value is preserved across
-.BR execve (2).
 .P
 The details on the condition for
 .B EPERM
@@ -182,6 +167,21 @@ .SH NOTES
 4.3BSD, FreeBSD 4.3, OpenBSD-2.5, ...) behave in the same
 manner as Linux 2.6.12 and later.
 .\"
+.SH NOTES
+For further details on the nice value, see
+.BR sched (7).
+.P
+.IR Note :
+the addition of the "autogroup" feature in Linux 2.6.38 means that
+the nice value no longer has its traditional effect in many circumstances.
+For details, see
+.BR sched (7).
+.P
+A child created by
+.BR fork (2)
+inherits its parent's nice value.
+The nice value is preserved across
+.BR execve (2).
 .SS C library/kernel differences
 The getpriority system call returns nice values translated to the range 40..1,
 since a negative return value would be interpreted as an error.
-- 
2.45.2


