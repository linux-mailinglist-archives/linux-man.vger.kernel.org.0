Return-Path: <linux-man+bounces-656-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9DF87E12A
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 00:48:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F34FD1C21077
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 23:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1363E225D9;
	Sun, 17 Mar 2024 23:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jLVxTgzo"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455E1224F0
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 23:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710719318; cv=none; b=XARkzE+gluVx1XZNWZi1U63gfNJTWx8d1YepqBJ3XRq4bR/8Nr8+CJH12JriFogzbFCwo/P4b00DoJlc5x/NUHKibWPRikf/p8QFZBHnsFnKilOCqSSBk88N14E6Ogi5mGeVH6y5/PfgF8SjTC5c28WFBqBoUvdmHOyNsgLC1Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710719318; c=relaxed/simple;
	bh=L1uFv0WtowSwgW+XnOvSTQCjApXkWJGApD23EMb0eQ0=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=lY6k5rraQwHsD2kmfC1eIyQ2aKzzctOP7Uv2AmPK76HJzKXJJvdxqyUfUa3ZGQCGDDdVhRlYedVxmF/Lnfb1fQxrAxmuGAVV1SkfpBaVnlbNo7f9u41P2d5f2nvPQRXIr8OIhgIfqTEzPcRoxMju/MvVwkSkXg2V6dVrkowUnSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jLVxTgzo; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a468004667aso364278466b.2
        for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 16:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710719315; x=1711324115; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=L1uFv0WtowSwgW+XnOvSTQCjApXkWJGApD23EMb0eQ0=;
        b=jLVxTgzoBcvBAsjfY62x3yOGunldyInldCF784rV1XV6HOp5qruZiEIAvcbSELzrBr
         NsIDBTD+JwZ2a9XE+1UIkcdO6jkDy7khACkWkGaqDKJWqXQIb2zQKjExvJVvl7TWm7Oz
         ZMbrWfBAiNQsazt6CsZ1EDpwmBJqwhr6q6Wd7BpEkFoWlp2602t6lZBIYajjkxXkzqSN
         lpzN6n7lf00tEv00Rz+3WRe7eNcgbHIvd9AfkiZOHMeQkPDCkXU3ygNV6XdVo4dJBEbK
         /l/Q3ciH6QDGoR+O8AzOqZLVsDCeYZK8PPHwqExQFDr92X6Wc0ZpvaFlgQEGZwd2RGW3
         3VwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710719315; x=1711324115;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L1uFv0WtowSwgW+XnOvSTQCjApXkWJGApD23EMb0eQ0=;
        b=mcxAR0pq2syfLNcdt486EjvAIf4fKtMbb338TB1SzWZSYIzpJaybCH/PYMrhuq/UKn
         Ljhq415H+eL40qxLDNVn/3n0r9hMdYYgpbc2BOFAPn7kYduTC93Gk9ZkqbDR8ienS4UI
         wfVGIE+OlXvtYAdPt+RekVzNM6/Df9mETFMNsA1zjLp/vLco5w0F12MpURLJgWyEiEHB
         djTTdmnaiEWkNJV0lver5ufDjxu3cP2MdqiR5lomuXPohzbF5h4piSNrMIorY8oTpTMq
         cdEwJGLmBLkKzI8m8R0/6yG+rksA22gSFFpAitDNNLWmJW7pGKHSbzBi3wydmeH87L8W
         gB0g==
X-Gm-Message-State: AOJu0Yw0q3jJbK0+w2qx9yCHBzCuqJLyzCvf4He3G7fWkdE0Az3ifZeL
	j/ZFcHiq9+RYw7xq19prTBqRvZyQa38rYLU4ottQ+DJh71kWRR0cvMQ+nDggBxKRTre3xeOkiQ/
	8HeXuFQmMXiB/Z3Ke8K4VQyxZ6hHcTW81PJk=
X-Google-Smtp-Source: AGHT+IFfKNX/JUXTZCwMSZOYITjP4oS9HrO79VJahl8od1nSWpPmGKmwJZbedX4WQ8/E0Ged0orTrZrM6IaYaU0Oi04=
X-Received: by 2002:a17:906:3545:b0:a46:1fb:1df with SMTP id
 s5-20020a170906354500b00a4601fb01dfmr6525938eja.42.1710719315157; Sun, 17 Mar
 2024 16:48:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Jing Peng <pj.hades@gmail.com>
Date: Sun, 17 Mar 2024 19:48:24 -0400
Message-ID: <CAL+Ps4Q7Y_R=oVG3082Jd_6zAzMEZvx3gR+m+j5Abyc9rvw74w@mail.gmail.com>
Subject: [PATCH] bpf.2: wfix
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Signed-off-by: Jing Peng <pj.hades@gmail.com>
---
 man2/bpf.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/bpf.2 b/man2/bpf.2
index 9b8e81fa2..69e1cd933 100644
--- a/man2/bpf.2
+++ b/man2/bpf.2
@@ -1143,7 +1143,7 @@ provided in the kernel source tree.
 .P
 Since Linux 4.15,
 .\" commit 290af86629b25ffd1ed6232c4e9107da031705cb
-the kernel may configured with the
+the kernel may be configured with the
 .B CONFIG_BPF_JIT_ALWAYS_ON
 option.
 In this case, the JIT compiler is always enabled, and the
--
2.41.0

