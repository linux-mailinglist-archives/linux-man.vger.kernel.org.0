Return-Path: <linux-man+bounces-4766-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEEFD076F1
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:45:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7EA173030DAA
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4517F2DD60F;
	Fri,  9 Jan 2026 06:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bb9mvr1Z"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com [209.85.215.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E8D2DB7BE
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941018; cv=none; b=O6VldAvOa3T0896aGdSddU8aCVZC9GhXSPljloFOBvLMf4Vd+Y6ZckFe0YC9/X9bB/0+S6XDsAIsYLSfY8rQ7PYl5Njf2EATLy8n0dxG6YxLsmgxlSqncNx/K+Xyv2pEInj2VwDqM7veJuwOr/lrML42wfPa0487rtoyzRT4A6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941018; c=relaxed/simple;
	bh=vahiYn3gDcczKiqvrtsQaFd8eH+/GEg5s53bFuPsH6E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bUEOckCXebpGAPjeUaAHkDO/kc6Tp03YkgmPNTZ/+KokbAIz8JxA9af5Ep66GZdNpbW2vGSe6ykZ4EZuygle8hAJyTpaIGf5Ke4i6/Q2bNQxRN2FBklAay3sRcuXgeeFKwBgKc1mK6Cto2SC91VNb2D5cpRR8vl51c4V0K1Xg2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bb9mvr1Z; arc=none smtp.client-ip=209.85.215.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f193.google.com with SMTP id 41be03b00d2f7-c03e8ac1da3so1785394a12.2
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767941016; x=1768545816; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UxoZONqxA9jYJXIfn6nBBARXXl12ZDrkwVfu4zOvfYc=;
        b=bb9mvr1ZZstwer1ibF4wleiKPpt4SOHTyQ2vj9NliGQTNomVkin1uGUyK7drN1mrDn
         Qy/JnfIcLhoR6bf5+QkYq04DMyO5fsI/JT1U3vP0jeYVwGAt9TwEeDB3U1FURDnQnICq
         rW+JbghuZXpEn1SYqN4TlOYmaVOyS73gk21l/TAT554/yC3UZQuiFdSGmZf/rdHsiqQl
         n16IGyJu/ElRpVh9vPKxXOm9z+S+Ma13+gXCvOt4/o9Pd+rgalzchy7iM9iiGZnpoJ4B
         ABtQYS5bmastBI+r/vUWWNNlOxFCNB7JVepO6sE70vOPYGnJY8jGG4tYvYiQCcur8QjQ
         1XAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767941016; x=1768545816;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UxoZONqxA9jYJXIfn6nBBARXXl12ZDrkwVfu4zOvfYc=;
        b=AuUZqgoMHigThnjoyVt7d1qnCqSQE49yBnYHW0eTEhLvaucS9ba/VIU9ICvbku1bbX
         2uuYsGrp9t6XrSrNRNmPT1bYb0i40ZH8OJqrVKA8by3K2+0u0s9KMMdzacUVuZNdCV/y
         Ab8hUZfgmcunkRavyOxptIKU1qVJnjFuY6HZWAE2RWymMKJsjBNgdL7oDIcgdY+Ogfbk
         SCO4LTM4HUd3h3iV5lxkFI2zbCCYxw+E8H/D3bYFboZLIUZwTnbvylpsjO2rmB+nInra
         sokDVQpA5tmf2Cppd1vAecpG0wHmRY2toaymcNKlk91WQ5GnUGPJYcP5h1IRUXWbk2Kp
         yNkg==
X-Forwarded-Encrypted: i=1; AJvYcCVops8YvSI1Q0lgohcetO/7oRU6IvHHMEmYmqHl2uNkRV3+ZdKyPcPXvEuA9vDhIXS6KhSlLAuTJos=@vger.kernel.org
X-Gm-Message-State: AOJu0YzrDVCE72sBuh08tvPTZbUi/JPlg0ZvGpGBW0/vdxLtKO++Yfct
	0Wd83K8wZwu3YBmP/4ZPivck9fIU7bpnP2C7QH/ZhBVQ03ob8arNxg/n
X-Gm-Gg: AY/fxX5cJj97tpBQBrZiDuga1F1IRDqwvPgMa8nR+L9IsSaof97I2kJxRGN/nhaHijE
	yAL0th9W7UMeCT1FIJmJd8U9GFrgWqZwty1BY4+lBtYS3ckdYS/ir8cdO+M35SvR6+zkUwpU31/
	QLddcNJ5tR8MrgHtPDN0xMzGlPXqJiUHn0+R8VO+WXYSdbMH0IFEY6j3KctDMPVu1vVO0P3BAfK
	kLMC8IHeZ1OLLkoQ0E5h3lrVdEEPq1gL6We4oiBs6/V/N0JZ0fMahofponcvJ/WZJIv1V/tiawI
	iHuRKh8sG2VZk01thmlSQohR77Xz+nF4KKrtOkPtYm6iqLZVmP3U5Dy6wI/nrErtRYN0CZ9bxfI
	V/l3DwyQTW82GaJhRPyGHCmI7FrorD4hfXVNyu1pBNFDVhqfT99YFdFjT5lSs0bfjeDfd/ofULG
	3j3VxJTQrc99sbTuuab62keQeFJpcvDTDP22SMM8Yr1Ep9yqWiXONR88JTlYaxzFzieVmareZXM
	FSxQXWgEY7Q3Xkt
X-Google-Smtp-Source: AGHT+IESblrWqfnV6nAkHWo3z1KlfSGCsHdX0xTc/hlo1Lfwk27F2jbt9meqYopMld7O1L/FZmKQqg==
X-Received: by 2002:a17:90b:3ec8:b0:341:c964:126c with SMTP id 98e67ed59e1d1-34f68cc250emr7811201a91.34.1767941016160;
        Thu, 08 Jan 2026 22:43:36 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:35 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 20/25] man/man3type/wchar_t.3type: HISTORY: Split wchar_t(3type) and WCHAR_M{AX,IN}
Date: Fri,  9 Jan 2026 16:40:38 +1000
Message-ID: <87a39e047c0e13643ff9963725d7a0ae3884fc5f.1767939178.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767939178.git.sethmcmail@pm.me>
References: <cover.1767939178.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/wchar_t.3type | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man/man3type/wchar_t.3type b/man/man3type/wchar_t.3type
index 165a990b7e35..96139f794eb8 100644
--- a/man/man3type/wchar_t.3type
+++ b/man/man3type/wchar_t.3type
@@ -29,6 +29,14 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
+.TP
+.I wchar_t
+C99,
+POSIX.1-2001.
+.TP
+.B WCHAR_MAX
+.TQ
+.B WCHAR_MIN
 C99, POSIX.1-2001.
 .P
 The
-- 
2.47.3


