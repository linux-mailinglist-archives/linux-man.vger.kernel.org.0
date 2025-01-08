Return-Path: <linux-man+bounces-2205-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFA0A069B3
	for <lists+linux-man@lfdr.de>; Thu,  9 Jan 2025 00:53:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED32A1887D9C
	for <lists+linux-man@lfdr.de>; Wed,  8 Jan 2025 23:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEC8C204C23;
	Wed,  8 Jan 2025 23:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="RcUXNt2F"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AA01A23A9
	for <linux-man@vger.kernel.org>; Wed,  8 Jan 2025 23:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736380411; cv=none; b=B6YqnHQ4vJoS1lvqQvagAp9UDBIjJTUW/HMY0bbHAjk4bpSlSlpbsdrYbMGfe2s2E3cMeI2fh7YivgcOEIeg0sbYtJCOXu65vsJPROzQuc2MeFrIjan+UEzXREfN4fxRicvuR/SaeC2DI3FvDJNTyua0zFpqaoUbFcXIc/+kR4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736380411; c=relaxed/simple;
	bh=nmes0/kfTsMmKD1uSHc9m1+tyYtYAaGFsLIEPHl5eU8=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=DxBkp2d1FmVP+ZBX61LmhxnnZg5+Rc447ORrBvOURLrSjRpY+jTjmNAEbg4lmFXvaZHoJFWznEt79RW/tjirWEV+4dZUP5HMfz7PMBlYiG/tNX+XbHdKQd5AFpiVtGeWXcuBX0ylf3AjP1QyV/d2sEG7aLQLOsBef7iiyr8CWbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=RcUXNt2F; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6dd1b895541so6582566d6.0
        for <linux-man@vger.kernel.org>; Wed, 08 Jan 2025 15:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1736380409; x=1736985209; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9yzDHi5QyA4iA930wJ8btwfhxLtwUVAX1kjf4w8ESQM=;
        b=RcUXNt2FAcGRklm35r6AMWp5pFlBqxEEfRLajlI/IAxR8IHcVwqjf/FnRQIOQLCV8y
         ph98RFD3Pjtb3g+rnPfYE+YiOf6xiqQGy7VOJt/u1lQ6XJBVvnLv6C5auR9incSaslBR
         wrLSqpyHH+mZBIhc1fPsdQ4BhrxKZN8eccDuwJ4AUjIZGw+4v19Q4VAQ+WQBjcCvVWO6
         tf0DjlbMh2J0gEKc/bz3dyb+3GWAcfDNihC8jn7XJSAf6xuAh3zgk1cP4F+hx74bUx7L
         TqMglnLXxeWy14EW4HPdqfzwWgjk9mbTmHuefSmM6ThPQDcjL7aHjAFiuN03U6Ybj5e1
         becw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736380409; x=1736985209;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9yzDHi5QyA4iA930wJ8btwfhxLtwUVAX1kjf4w8ESQM=;
        b=gaOi8Or8wOyCmfgfclJnR15Qu32xSizFUfxf+qgpmlCS/L2hCpefXTPtpt5icE/LmD
         aqVak2wYbJQZM4GIJXRhQu/0+LSI1rn2Mn53cZqOjF5cZWVUfSOve0Gft+KBadSMfPIe
         /yqULrN5107yplqyQ0T0o52q+WSVAQuds/M7ZOo3ohRBDourwdXfft0vdtrnijwS3Zs/
         AoX65Hp2F3RcMSlvZQ1xsWF3gPWmRHM/Ii69jjJP7EBkJl7TxY7WYHRMzBZThFkOEJSr
         t9geFH+zSrLb8kLsjY6N/zEk0UhumVeoicOWQqlTq3HpcZzl//B3BrF7Huzt3/vYISda
         w7HQ==
X-Gm-Message-State: AOJu0Yz/2GlaXbR7qxVTagZ/KZlHTD90SPUOAifIbGYr12rwlmAXajGz
	9/0nmDIt3v1LU00kMkR8t5uSx1WKSPgVbPpzGW4JEvMoTBL7gcSfBifwFpZArTct0H0JG133YyH
	7w02kGYKhtW27ZyfgbDQWHA2065U8fRDBYQGLtfFg/7RuXgDeLVplQ5k=
X-Gm-Gg: ASbGnct5nflpHh4oojR8OcpQPDlAdrzcmcKFoD8K3bHjYV58dHei4Y6lzkHjPexMX9K
	+xCO1kaVR1YnJbJ9Eqlzg1lbv8qcoRz2nO+Q=
X-Google-Smtp-Source: AGHT+IEOCFHrXJkMZLM/fWE+jp6zYUPFlinkr7uozWal/zL/Bhigk6RRuSXn33i/m/2hRMNd7vi50ubdOSwOA3IWBJE=
X-Received: by 2002:a05:6214:4015:b0:6df:97c6:ccc0 with SMTP id
 6a1803df08f44-6df9b22de6bmr84289476d6.28.1736380408804; Wed, 08 Jan 2025
 15:53:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: enh <enh@google.com>
Date: Wed, 8 Jan 2025 18:53:17 -0500
X-Gm-Features: AbW1kvYCA5xjECuzw6hMrDp9LBA_5FSbGsLzqKBW_xPrOsXQM3bhRwclZj6oqrU
Message-ID: <CAJgzZoqAOpJajmAnr-i9h3sPC8F_Uu0A+3eg4nkP+xTAV5fPGg@mail.gmail.com>
Subject: [PATCH] man/man2/stat.2: Add missing 6.11 AT_EMPTY_PATH quirk.
To: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc: Dan Albert <danalbert@google.com>
Content-Type: text/plain; charset="UTF-8"

Signed-off-by: Elliott Hughes <enh@google.com>

diff --git a/man/man2/stat.2 b/man/man2/stat.2
index 099c56b15..cfbfb654b 100644
--- a/man/man2/stat.2
+++ b/man/man2/stat.2
@@ -175,7 +175,9 @@ can either be 0, or include one or more of the
following flags ORed:
 .\" commit 65cfc6722361570bfe255698d9cd4dccaf47570d
 If
 .I pathname
-is an empty string, operate on the file referred to by
+is an empty string
+(or NULL, since Linux 6.11)
+operate on the file referred to by
 .I dirfd
 (which may have been obtained using the
 .BR open (2)
-- 
2.47.1.613.gc27f4b7a9f-goog

