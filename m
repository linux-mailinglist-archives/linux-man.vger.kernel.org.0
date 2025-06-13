Return-Path: <linux-man+bounces-3144-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20316AD82FB
	for <lists+linux-man@lfdr.de>; Fri, 13 Jun 2025 08:14:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99AEA3B4384
	for <lists+linux-man@lfdr.de>; Fri, 13 Jun 2025 06:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E27B2550A4;
	Fri, 13 Jun 2025 06:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QzQnDcwA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58F81B95B
	for <linux-man@vger.kernel.org>; Fri, 13 Jun 2025 06:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749795279; cv=none; b=dZhtdzvkmxxa6i4K8cn/4ektaYMuuzOWmgOYFyF1SRTtzA/1bYsm6wibSsy/35nAmsZhlSdkfLSF2NaB7RFCPk9kPVGidT3aLDeCeTP3XGWZOWYoeifUEhmp7ay2VyzwEEIyw+U2WK9lzZ9qCw8qlnUb+nyEnuD1Lf7Q71MRggU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749795279; c=relaxed/simple;
	bh=csK7i2Vx5MD88KjBJpvwZIgHzMZH+F997dp9+Jo2o+Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MY7vdK+h0j57l2iVmL9CjFvZu41UCEKRLdzKT9BftRANgFRBNNUbnsAobZsWJGUyWIreguiQDMNTUREbRhoQr2pVg530ivghSntZqcofA2DR9DRM6ZXclTc2SZDabog79GykzbkYSNcnZHd3zYjDjlGjlKvKnn5fznf0HroqvKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QzQnDcwA; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-748435ce7cdso1642904b3a.1
        for <linux-man@vger.kernel.org>; Thu, 12 Jun 2025 23:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749795276; x=1750400076; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YcepnrKHNz5ANrVT+GQXev8ngJJMRapF3rlo2gXMETU=;
        b=QzQnDcwAWszS12NrcFQqHRuy/srAHZBNe4r6J+VSl/kKmWwba5x5nipecEQZoCek9R
         N71RUtBXtBLmBpYx4HpJwglHGeUrBNX8oHWnwfdNa8AXTnyvfI3Tyca4REohlkAQaBBk
         vrxEXSUaIRO+sjJwEiAwDjiEorfDHAdcN4FAj/dyGO3kABf9KT1wInqnMRYJJ/wxIdOg
         kztVXDrDUiGdJUECwuUY8DLmxwToB5QiXNwkSKOohvdki7rHElOohERt5mYrUDI3d2ZQ
         swhSdZfDbKw4PUgkH3zf3fCpr+V4sEQdrYhMc0F44yHiJ3kPDAgy8tIxKuU2SHI1sOzQ
         3LNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749795276; x=1750400076;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YcepnrKHNz5ANrVT+GQXev8ngJJMRapF3rlo2gXMETU=;
        b=tdW8xEhWW8NIXq/H+GdbsAOHnAy90Qyrx6IerHwb4dz2rUgYRyZKqkPpv9+ScljX/G
         IXATF6LKuoeXrgwNG1JjUQmldGEYVJlKxWm0SJmDvzRZlq2lIgp5wZRTo+oM8gcGgDmm
         GdE1W9SvHV7BhwowC4gNt5iAX5wGHZx7353L7G64UaKLU+X7NOWDnG/9F2OStGr5JvbA
         uAADRpusOl4VvcifROa6qgP5anCUwA6MMmrz+lmqFpnm0afGZ+uCBXIx6Zb/IMjgfwaA
         DB0DAh+rt7icTnaUqAGtp0GDe5mg9tSnrx1Sdmx3LHtcsB0m1U9BFKgSDoLIfKWIVmmP
         vX3g==
X-Forwarded-Encrypted: i=1; AJvYcCVcD4Z8STf3XnLCQRLCIOusiO56edTc4X4vSMXN+1IUurOz5cvWPgTlCBB6Mr9r/LEIwgmXcBA+XEw=@vger.kernel.org
X-Gm-Message-State: AOJu0YwDT/xRVT3YDCk1MLXBC5ELZO1UgOsiiDqRRxuwMjR17MjBAXC/
	WEmPn0x1N5kdpfITX1PSD8V4LaCjMKF75Q2srzldgslqE8KjX3STOJeu
X-Gm-Gg: ASbGncsdtHtZWxw0sveVmFExmcxBjhfKfWXbC5/hhPtPJvVvpFZv9rOXfV+CP1AMn1x
	BovsF5VSuJXP/fvj1QTC5QqfErOt7hWDTFkHB1Cd1yVY+CVjfeNuuTu8imVyD5ScFcqKrckRZ2C
	dHMiMjKpDEZW1dwjJFqxDLdzyuM/NfNy8vBo3wJ8kVDXLmbg/z+ta/qAYkybVasWezIPywvEozq
	Lq3b4iaqAYpxePYzsmCurVT1THfHHpFrahDfV8E8sYJh96JBO8s+iwnfMjfUjTH5ZQr4Ea1AS0L
	wt3mc3s+iC6FSsCYQj+xfKb6bD6QYyVS00J6MrCOW01m
X-Google-Smtp-Source: AGHT+IE0U0Lkj74E1yE7+DpJsO1Em0zafH8jaLBYEVUvkqI7iB5r6NaAnMDT/DZnuo5I6Smp4Nn5gw==
X-Received: by 2002:a05:6a00:2ea3:b0:740:6fa3:e429 with SMTP id d2e1a72fcca58-7488f79dbeemr2603356b3a.11.1749795275822;
        Thu, 12 Jun 2025 23:14:35 -0700 (PDT)
Received: from fedora.. ([2601:646:8081:3770::f55])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74890082a7esm815497b3a.100.2025.06.12.23.14.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 23:14:35 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH] INSTALL: Adjust file names to match current build system organization.
Date: Thu, 12 Jun 2025 23:14:23 -0700
Message-ID: <1cd0d5aa80cdc10a6c03dc8f3f2827d38bc86767.1749795252.git.collin.funk1@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Collin Funk <collin.funk1@gmail.com>
---
 INSTALL | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/INSTALL b/INSTALL
index 0fdc36f71..d9ce25b89 100644
--- a/INSTALL
+++ b/INSTALL
@@ -80,17 +80,19 @@ Description
        targets that can be used.
 
 Files
-   GNUmakefile, share/mk/install-man.mk, share/mk/install.mk
-       Main makefiles for installing (however, others may also be used
-       by inclusion).
+   GNUmakefile, share/mk/install/*
+       Main makefiles for installing.
 
-   share/mk/cmd.mk
+   share/mk/configure/build-depends/*
        Command variables.
 
-   share/mk/install-html.mk
+   share/mk/configure/directory_variables/*
+       Directory variables.
+
+   share/mk/install/html.mk
        Makefile to install HTML manual pages.
 
-   share/mk/verbose.mk
+   share/mk/configure/verbose.mk
        Handle verbose settings.
 
    share/mk/*
-- 
2.49.0


