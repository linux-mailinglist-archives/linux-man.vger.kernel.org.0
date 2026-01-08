Return-Path: <linux-man+bounces-4721-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E23CD00C4C
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 04:04:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A7310301517C
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 03:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7446919E97F;
	Thu,  8 Jan 2026 03:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JpHvPYi0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABCC227BB5
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 03:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767841453; cv=none; b=nSucbG8V9lv8/rKafQESa6vhKsK0OKuXwAXYQEmLb2CpEtHuiVK7ejgABlka2dbH277lad50iETC+LI0rrjjfdl34IoG/q9L1exIOMFArl1cR6yKa+CWr3SXrPa4QWQcL++KVOqEZOl3ZGyGODjaONuZXOgorykp5iBRktsCOAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767841453; c=relaxed/simple;
	bh=2xDuGeVGI7I7CAHV4gVoUBN7WROuhRxeC0tq+uoX6eA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AjKBbfIhOaGzS8Z0sYGHGgQe/0ndErK1noGHhQOoYnR7ghh3EgwBq8SnRz8ZXlOg33cRgDJqLoETMad47tsEfGMrOp75D/KsOAsGbSbTmTQbsmbUyyLc66M/B9CJsrADYecRtPH3dCvrZrydsNjl4G10RCFvnZ29lwmiS7kRZ+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JpHvPYi0; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-7ade456b6abso1833658b3a.3
        for <linux-man@vger.kernel.org>; Wed, 07 Jan 2026 19:04:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767841451; x=1768446251; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=to3Zhvw4J6xqOqxPHnFF+jqNhjbHhu9TPBH3BiESmgI=;
        b=JpHvPYi0Ucg9Gij1UqEUloIgWrFykF52V/3OrbPKWuoS8WojjCOryymzU9Rpis4Fcu
         r+1SJ2qnEMZ7KCj73giPNj8ZooUfmUrHlBR0z7QB4ibavz7RjOzdXuwcBeCdRfVaY4VF
         Si9zWHfmWfSpOun1WCnjEw3DsSYUETrVm5ODnkNz3peJRjD1vbLfcRrEanJLlzGW1Y9m
         J9/z3FvEhjD9bt5Ee0wGZB9suZAjKJr4qupK7yxcEe45eO5iaM0UpD/BIkEFnUCH/54Q
         h1zc9SyhI2aSKSJH+PpkvQXf5AgPwk2O7y8V5pAvwDK3vtNp4NuCzQIKsB12jfUHmQwu
         A4EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767841451; x=1768446251;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=to3Zhvw4J6xqOqxPHnFF+jqNhjbHhu9TPBH3BiESmgI=;
        b=rFTsaSCxnXNy2SuL1ACeV7ObwkG/ZopX/e5rqfwg8rk1gO/IuUqo4qm07q7G8+bsyJ
         UrebGkkU+uQ8o/COPLDt3lwCRFNz5LvgeKswgwNHFKDQvGa3JzVs4e5CHPv7M479Z0Rj
         pzM/nr8tn7W8mqxi/1sdK7iCelPRg0WVX4wFl2+XYnT7qZEZMA09eyDLPwzf0nMm+b8Y
         AIkG9W0YcnoqIsKvXHzmWi0kdFyFbqChitl7+XYeLO6xpeC/PCNbzHBdDker5Hc9b7kL
         /qjYvCGk5MO4+DTBQP8UCrUwgnBBLpI2JMphjMKtEGdrQ/Iak3VRTSwdDQ4CzFog53G9
         LwQg==
X-Forwarded-Encrypted: i=1; AJvYcCWmAc6UebbC7vEBn97y///2CbJ2xoEvYXrR79dqIPoLICG5ux/OIu+xzya1TWU6qgxMKsVFh37RWBI=@vger.kernel.org
X-Gm-Message-State: AOJu0YxfZ3Rj4fFv31Xm5+rMjxHeG8FEgTyNP6fqBqqsGwHMT4S8Vbyo
	6yQ9dk/qpgEYbPxRc6MYJFhQ4Ua24DfyijBqlFCpbg9J1TbV5VwdvYaz8CyBrobk
X-Gm-Gg: AY/fxX7VbbOnsOzA5UVWeB+Ih9NTfamymX2cDlE7GFvQw1oaYqiMjFIibHGv6I+W9J/
	iRSpqxIOmdxBfcgIWcYfpllMMmZdHLlhZv4/X5dNlLP9rhMysF+IvfLAog9GAlsk6jp538waDgb
	RvCvl6NrtIafoPXJLSttY+GCjawljs4u7GybQ/Tfw/plVT2hCw33POAuvWKB1GeJmUHkFFxHyGA
	2l5Fv0mBODhhUK3PoLefYwQT6bUbAomAC7XrnNlb0QsArsFJZHbB8xbESaWvzBGwVhay4GgwwAu
	K/42opxiDuLSnu24ww2ViX59270XlwtbfsFZLi1EuiOhC/DKrwsdE8rabt1Zv6yeyKTy4xYf+S5
	Ot1WOuQF2lA3qyzKnMsNXGJtH4eq5U/6nmKOH+LQ8tRMKzd1YWbz1U4NdQozqIOynAF+9s4LYRN
	hWOozQmJ53qRcLne3HPriwUAsT8u+TQ+ThReZQegusUp5xAjAtFezmNs2Jw0bMAUO1YzhN5V0EM
	xkkhOqj4IE72eI=
X-Google-Smtp-Source: AGHT+IHKaLJ/gX8ww77dpBqAd0c6bWtfQ44WddVcIyCoBw3LZlrpVsDKE9mhyvOC9xZZ/mMr/T1vYA==
X-Received: by 2002:a05:6a00:4212:b0:7e8:4471:8d2 with SMTP id d2e1a72fcca58-81b7f6e0a6fmr4166196b3a.51.1767841451175;
        Wed, 07 Jan 2026 19:04:11 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce7d-5796-70e-21eb.ip6.aussiebb.net. [2403:580b:5de8:0:ce7d:5796:70e:21eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm6120312b3a.30.2026.01.07.19.04.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 19:04:10 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 08/11] man/man3type/stat.3type: HISTORY: Specify first POSIX appearance of st_{rdev,blksize,blocks}
Date: Thu,  8 Jan 2026 13:03:14 +1000
Message-ID: <9d3a705508aaaec7b2ee5c79bb284fd508008fce.1767840410.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767840410.git.sethmcmail@pm.me>
References: <cover.1767840410.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

The st_rdev, st_blksize, and st_blocks fields of the stat(3type)
structure first appeared in SUSv1.[1]  They were added to POSIX.1-2001
when POSIX and SUS merged, but as an XSI extension (still SUS-only).[2]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 830.
[2] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 356.
<https://pubs.opengroup.org/onlinepubs/009604499/basedefs/sys/stat.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/stat.3type | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
index 44d45b4a52b4..83f6e881a5ae 100644
--- a/man/man3type/stat.3type
+++ b/man/man3type/stat.3type
@@ -137,6 +137,14 @@ .SH STANDARDS
 .SH HISTORY
 POSIX.1-1988.
 .P
+The
+.IR .st_rdev ,
+.IR .st_blksize ,
+and
+.I .st_blocks
+fields first appeared in SUSv1
+before being added to POSIX.1-2001 XSI.
+.P
 Old kernels and old standards did not support nanosecond timestamp fields.
 Instead, there were three timestamp fields
 .RI \[em] .st_atime ,
-- 
2.47.3


