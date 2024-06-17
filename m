Return-Path: <linux-man+bounces-1229-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E43590BF94
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32656283B8B
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE7BF1993AF;
	Mon, 17 Jun 2024 23:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SJgdyuDi"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4BA198843
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665858; cv=none; b=FvrgWR7xsN1em+BazAX3AelDmuFQ5ExkgQ8qxXad9bAXX8zBL8wYlErbvnS08QksjGTPX8GAUqe7heRYTlgAzEuzxsWwIqAGMGiJ38qu/HpEQF4fofW+HduMdRAA733UKHpQoRVmNS7zBXLmfKxD+/Yl21peiC8ZwRzH6IlvOoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665858; c=relaxed/simple;
	bh=F8bacOxjrie3qv6ImWle70COj7ptRdQyd7ATC/Fm8Ww=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=md8dNk+/zDAkmSqtdDyjr/+H+b1Jsxjr+WVqwM52fmJfcETrrZFqkoB2Awvoid3uIDDVeu4l5kBXA9172Ts+vhtsLlTA5UeaamX0r7Ik0rnPJGPgEKCcrMANT2ZO9vsyS8K6JKfjV7zP7JrxXVmtz0/ZHapaNfG/mpK4UNned60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SJgdyuDi; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3d22802674cso2757330b6e.2
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665856; x=1719270656; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wjkwoT7VPLQe6dxRkYkGF5WGokAlwO8Rm9YK5wGcWYA=;
        b=SJgdyuDiabangrmCqxXs7ubBAWqtcrqhPtkiFoYAijNsahbIgu9bwTms6B9ykxrb3R
         fe0B9ff+ZLlILMqFUlpRcRZnlxSQ+8SFmfovrX2LzOdUwrKZb7IO6bXvHlLcu8zR6F9H
         5VUTl4cHLPBif5htWU5alFrESvZDbjvyAn4IH5nTl56xBa+Ha6CX8ntJaEA0uMHOsXQI
         JEejszps5c9f+hmkyh5D3+t1e0EEDMyjQQ5SUJh/b8N4wfIGfZAmYXoCu514EfX9SZH2
         bCuQLOSp78rrCDF5VW5Y0tlECgop67qTCSsuw1qh3GmbUBm5Sv49VFdhgm22hr5lbL4U
         sfcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665856; x=1719270656;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wjkwoT7VPLQe6dxRkYkGF5WGokAlwO8Rm9YK5wGcWYA=;
        b=pDEMa2uiPFgHk5VdALK34tWhU07ZA+bkMYLDqXdMphVjJ9DrlDXeJCLO3e5/j8Ka1G
         gidA+U0ZhdlB8E0rD0uV2rt2rER9SGGUl4QgjHsfqcOKHGxHKVHf9DKTd6qrTFcKMLU5
         +5jRoaL/V5gLn/Hz5JfcsDYRDWvhsDO9J/vCiQZxK3Dot/B43Td1R5Zhy41otb9haXFO
         f6bq0E3M08I4efB+ORkvC73+pUf/iu58PG2x+KQH7zKYn3khmEgHIBKaoeKktOwatbrA
         M/p02eS9ISKyhuuVYAS3PuYDFHTdvvEuzjZdEdAkrTaun7yHlco1hzXGtmVagJFTgsqI
         8NlQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8cIzMv8ewCFh81Z8jiAjfp5GCKy+Y1sq6EyeK6ogGX/kIu6IywBE23G4AyteWLQmSUCZv+45exTt54zf2uGb08UTFUgUwb01g
X-Gm-Message-State: AOJu0YyO2DOVIQwzif0rhg5Bjp1Z6xLAqd/953UjxOURhnoTTlqiP3kT
	OL4wXOAhzy38XPscY2fowqsHdc8dzrnhwVvr4FbXy2qOEIP/hLDnT2HhzdJc
X-Google-Smtp-Source: AGHT+IH+eyuSDCqDb/m1f531Hlmjf7w9qY2mWOFy7zyVxrPff6rfJgo/vvrfGQ1y3CU8Tg5Jss9ygQ==
X-Received: by 2002:a05:6808:14d3:b0:3d2:2afb:fd5 with SMTP id 5614622812f47-3d24e9ef16dmr14563568b6e.54.1718665856037;
        Mon, 17 Jun 2024 16:10:56 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:10:55 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 02/16] clone.2: fix wrong section reference
Date: Mon, 17 Jun 2024 16:10:14 -0700
Message-ID: <20240617231035.1766780-3-kolyshkin@gmail.com>
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

The man page says:

> For the prototype of the raw clone() system call, see NOTES

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections"), this prototype is in VERSIONS.

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/clone.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/clone.2 b/man/man2/clone.2
index 655e50b82..90ab5cadf 100644
--- a/man/man2/clone.2
+++ b/man/man2/clone.2
@@ -58,7 +58,7 @@ .SH SYNOPSIS
 .BI "                                       void *_Nullable " tls ,
 .BI "                                       pid_t *_Nullable " child_tid " \fR*/\fP );"
 .P
-/* For the prototype of the raw clone() system call, see NOTES */
+/* For the prototype of the raw clone() system call, see VERSIONS. */
 .P
 .BR "#include <linux/sched.h>" "    /* Definition of " "struct clone_args" " */"
 .BR "#include <sched.h>" "          /* Definition of " CLONE_* " constants */"
-- 
2.45.2


