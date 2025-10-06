Return-Path: <linux-man+bounces-4055-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 92085BBDDF5
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 13:31:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BC7D04E9866
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 11:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB6C518FDBD;
	Mon,  6 Oct 2025 11:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jxIc8WR3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF781CAA6C
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 11:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759750293; cv=none; b=gaai2wDNiXKI2/9vANpeEQdzLMoMzsB87nJWUFH916Vhb8qhbGeCu9zQ0gE3zCFFl+6aKXR4rxBdJk7A7QcfGpqchdplXQljT/jQVOUG0wLDW8ZtkOwEjI7BZDFyg5ymSNEqsvC4QqABUFr3tiOTVBgoyDjLN5V7o+p2MfxavX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759750293; c=relaxed/simple;
	bh=iMCAxmpVEVyPym+m4yuz+amTYDBF9AkLiYLCqrCDhlM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TFbLM1z7LH1anhxVJbg6aA2+dhqXuljatM/oFxfJ4CsUgIGzcGyNHwl39qqvcpVNklO1hmLnyxTK8LmuZ5MaPlRk4rzBIWbgHVm4XB3ErE6MLHW35fdr7FrR/5F95/l3EyEccLJgtjwXQ6AKCZAlwPVoV0oLKuuYKBYaS4DpBUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jxIc8WR3; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-46e2e363118so43652155e9.0
        for <linux-man@vger.kernel.org>; Mon, 06 Oct 2025 04:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759750290; x=1760355090; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eKyL808F/h4kMk/GMDWnxzUICy3Ew6wmsU8DkzaAgnw=;
        b=jxIc8WR3F8aClftlQ51ODitOrmwBju92uz4fZVmBLuA94IFo0HJBI/aW3q4aO/JKiC
         rBDswVsaLnmABlUd9TwrHzc1aSaHUg4+PeWfxsHZDge6+GwwQ3Iljt1GVk//t92fmxes
         ifFNYpqDHMVNwP8Sz0dSe7vrCQfa8MR6FmeNnPCNpxN4CP75SQ26bzhuy0bGgIBElHQi
         07D0sLYnWpnS3Ho6jx4B6zfZIQ+IkJtyXNS3GSKYFWya3smNQ5BhVTFoiMUeISZT679H
         QsIcOleECPGZv0pp6n+rwpgg5JdHwwfEXwVB0G9NdWWV6PpgQEsoJXw5puqZgIOvfQ/c
         rTxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759750290; x=1760355090;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eKyL808F/h4kMk/GMDWnxzUICy3Ew6wmsU8DkzaAgnw=;
        b=rf8T/JKsBa2n4p/0/458I1EAty3Qs33WwjVmxg/T/+4kQuqIXK7xrzFgfZum4Gu1Fw
         OOMF1UvY+ApjGY2KpFV8PF25DOpOcOdCPyZHazTz7KjHeAwmpqCgqnztP8hBHTxD0V9C
         eR42u9UUMd1NIKLygm2Qu1ljOo3RN8mthertwgysvnLVx9rcEFpQPueaspMh53CjVVfm
         xECr4WVzPWz1KizFcWzLbGVj6qTCwvxNyfqCq2b6mkDokUR4auYtrL9KGI9fjz/mtpxO
         WMZvLJYdewTO96P/eR3ZfOCMmwnk8T0PVm+jaIB/5YlBfwYZemLGSPHeHGkoe0IDrTGQ
         vKHw==
X-Forwarded-Encrypted: i=1; AJvYcCWm19LB1TYFyoHwqtb0Ku3unssTsf4eCzwzUavyK78NV238zk7WQMYHidYSHlg84Ee9FDPtP6RI0N8=@vger.kernel.org
X-Gm-Message-State: AOJu0YydKV3b+7GUvUW92HgWthUhuC529AlENb2GFy4x2G5AXHDTrwWo
	viiKlF9R6i7BXNLhJzVxKhdBaA/PVR1oFxDDzJtNEszyrXVcS7qGOoRrRfhz5V2v
X-Gm-Gg: ASbGncsZQDf2kS60vv8ktpxIGZdqYE1oHAOMqvjtda11bsl95fG4FzfZCZSuKgh7aKI
	+20z3n5Ohxc0On7X5IipM1AiOzkJimZdQHFNJXClEz/gI+7yKMurUlRfOL2zCA33SHdLD7QZUwf
	oD5RDoByLmvqSU/YUJA6pdkLAJMR+OSxzwc2WdQkeb9hJ+6anPJtcvOjASyf6ps18sgH7sFFiiB
	FyH1qCfiXkHCtNpL5VX9xqRfyVYsRS8kPgE3f5qU5Ke/VYArF0aa9AFRtVbSpJqniMK21qn7tIV
	uBO7F8fw/+USGJnxKzHZjGkJIP4rA0XqvREMkKwRefulWwxQMKYHhPXTB0CXCUhErYmmAmweACD
	ejVImdYk8RoHyHG9b7ridFwe3eAhFeNpEsq1Hi+p9MVX4ztaDTX29
X-Google-Smtp-Source: AGHT+IHqfSFel30PCGjIqrDh1usA+Z4mhApZdT1Jtwcty60MMkd6iyVXtXnzBoZlSscrhaOjKjookA==
X-Received: by 2002:a05:600c:8b65:b0:46e:5a5b:db60 with SMTP id 5b1f17b1804b1-46e71168c20mr88269085e9.31.1759750290316;
        Mon, 06 Oct 2025 04:31:30 -0700 (PDT)
Received: from localhost ([2a01:4b00:d036:ae00:7fdc:7a68:6e69:8671])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-46e5c40983asm146111975e9.3.2025.10.06.04.31.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 04:31:27 -0700 (PDT)
From: luca.boccassi@gmail.com
To: alx@kernel.org
Cc: cyphar@cyphar.com,
	linux-man@vger.kernel.org
Subject: [PATCH v2] man/man2/move_mount.2: document EINVAL on multiple instances
Date: Mon,  6 Oct 2025 12:29:58 +0100
Message-ID: <20251006113122.511990-1-luca.boccassi@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251006103852.506614-1-luca.boccassi@gmail.com>
References: <20251006103852.506614-1-luca.boccassi@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Luca Boccassi <luca.boccassi@gmail.com>

open_tree() with OPEN_TREE_CLONE is needed to apply a mount multiple
times, otherwise EINVAL is returned by move_mount(). Available since 6.15.

Signed-off-by: Luca Boccassi <luca.boccassi@gmail.com>
---
As requested by Aleksa on https://github.com/brauner/man-pages-md/pull/19
and based on the 'fs' branch where move_mount(2) was added

v2: semantic line break, clarify purpose of mentioning a version

 man/man2/move_mount.2 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man/man2/move_mount.2 b/man/man2/move_mount.2
index 13063ac1f..968e6a81a 100644
--- a/man/man2/move_mount.2
+++ b/man/man2/move_mount.2
@@ -457,6 +457,14 @@ which would otherwise cause the unbindable mounts to be propagated
 was attempted,
 but one of the listed restrictions was violated.
 .TP
+.B EINVAL
+The source mount is already mounted somewhere else.
+Since Linux 6.15 it is possible to clone the mount via
+.BR open_tree (2)
+with
+.B \%OPEN_TREE_CLONE
+and use that as the source to avoid this error.
+.TP
 .B ELOOP
 Too many symbolic links encountered
 when resolving one of
-- 
2.47.3


