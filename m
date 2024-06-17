Return-Path: <linux-man+bounces-1242-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B3890BFA2
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21DE1B21A83
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A8981993B5;
	Mon, 17 Jun 2024 23:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KkMgUjWl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9954176AB9
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665872; cv=none; b=HiHlHMzi0AwhMamm0JUOK4xujEwBTZQNz6jim5UKQKAZQ87SNWSUTHyT3B78I279f0qIzpszFalGoRwovfixAjW8ViSNxYo3O9s8sk4ST3uUmfTT8YYWZH+r1U5mzLCYc38b+K/Tm34DW94qy2mRTZ/4HsyY1woaiyXnzeA078c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665872; c=relaxed/simple;
	bh=3JYS2aWAJas33XYqDRyqs6YwUHCrau+Ggrd80Bnphro=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QVQ339/3L3wwRdb/t02/Ix13pl08rAOI8RXnobI1fAMdMDaTT+Jj5LKSkKHriqsPfhNrShPP/Vl/2fo8oZjEhVrOObfz4dAwIfu5I6pqBc0gapAyvZft0co70sqCCN84CKgTPTiO66kChZrNRPnBCvB2+aT3jTyYRKSg9CHIi0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KkMgUjWl; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3c9c36db8eeso2662678b6e.0
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665870; x=1719270670; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lYoRMEA8aDQfNZ1YBh5fYLiCzKDg+WNoM8WxSGkBWS4=;
        b=KkMgUjWlN43sonkMDDNVrcRpNSI6uwXtcmiSoGhdp2deqi41cB8C5hMrt5ERpIFbNr
         fUUhL7r4vI1M1LzdBZAVzl0JGQcHAzA0oOItFT3iGDQ9sgjyL/GYGXq6pehf477OSWGt
         K29IxZnfIiuVfBCMOXNG9+baDiqN0NA+vX7l9t+A1xB60S/7WwF5LKW6cAcJ2k55gvKP
         eRWXY5eO4CcJvpB3uQqcIZthVQXNazk3bGm+OSJxDovOrPINdEKw3Db/yzuXZ7W1sENq
         BIu2a8TPnA25r/+kjEmOVg3SJ1AX9cAHogWPtY78ch7Wzmszg48vqv2qzMDaYKy5R6m6
         5G1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665870; x=1719270670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lYoRMEA8aDQfNZ1YBh5fYLiCzKDg+WNoM8WxSGkBWS4=;
        b=nsyXkqQTHbCIpV39Zgkf2v5Z90hbFB2WFFb+FZle4Cl10uiVtV/7weu8DuMXOQhy+m
         BHB7z4ofNKJzwjJGBboiD8grqvhyRtTk0+vEjXmRe5OMDGyoZQMACXNnfHb/L6TPeRE7
         DkRP5mnOXEx/qottxNc70qJZ/t2ih8JBVpZuDsrh+b9YoRWpNoHXP430EZPwYb9yKwem
         WixOvJF3cKAI6d9syCMAAN/ZJWIiPcOb38sLvjM/G72B8ZkGkhQyPS8XQXi3qbqtB7ch
         f+k7YZ8wH8+0urUEd/2zSedO+kBo5eaqd6A+uR+uJUdgGufey7yNg6sISdxr8I9LGr/r
         EAaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWphw1xqdhg8Jkv66zQFPWE8UhFC0+ApvPTlsOMza4GyVHlvelFqrCdFFlB7Fpq08gJB8e98wx3zpfwSl+3V1BtA5/8bLteOxk8
X-Gm-Message-State: AOJu0Yxocy32xngL5/bpyy8Q+Pnb5Yi3FqbSdLjcKgvuXumEB6h8EBfG
	rhNeIVwxsT0ndXXHZCcYlr4AWaxNWe+UcFC9WWie8KNCWFCFz3HpL1JVdjlL
X-Google-Smtp-Source: AGHT+IFH/PAjOnr2Z9mXf8edXG70a9I5RaeByxBfWrXiXsS58J7XqPxtVmAefhVop9BDYA2wDP3VEg==
X-Received: by 2002:a05:6808:10cc:b0:3d2:27ef:264f with SMTP id 5614622812f47-3d24e8a764cmr13852941b6e.10.1718665869766;
        Mon, 17 Jun 2024 16:11:09 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.11.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:11:09 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 15/16] uname.2: fix wrong section reference
Date: Mon, 17 Jun 2024 16:10:27 -0700
Message-ID: <20240617231035.1766780-16-kolyshkin@gmail.com>
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

> The length of the arrays in a struct utsname is unspecified (see NOTES);

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections"), this information is in VERSIONS and
HISTORY.

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/uname.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/uname.2 b/man/man2/uname.2
index 572bfd3a6..09453dc9c 100644
--- a/man/man2/uname.2
+++ b/man/man2/uname.2
@@ -44,7 +44,7 @@ .SH DESCRIPTION
 .P
 The length of the arrays in a
 .I struct utsname
-is unspecified (see NOTES);
+is unspecified (see VERSIONS and HISTORY);
 the fields are terminated by a null byte (\[aq]\[rs]0\[aq]).
 .SH RETURN VALUE
 On success, zero is returned.
-- 
2.45.2


