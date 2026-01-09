Return-Path: <linux-man+bounces-4755-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B2ED076BB
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:43:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 61BAC300DB18
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB3F82DCF58;
	Fri,  9 Jan 2026 06:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H4UktWZP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com [209.85.216.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BF02DF134
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941002; cv=none; b=PAQN02dmMzQv5T4hoGYkYjol6b1ypCMptMYqw6ym/wpJrXOWbElYKSxKIPYllIbPnfXBXf6464oJxGPAzAh2UZA82BwIBw+EYogRPD3hj1ra6LlxDPf5ImmpR2hbtga5BfZRKk/95DyRJbueiwW28RCo/K8sCj4O3PthIIAY6Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941002; c=relaxed/simple;
	bh=R+hPoX0U/xMc8LbloJh++xm7NNZXRj7Gio9WuZCpjlc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UClnDRAblSLuIGAi/SFKpEHXqL916YQPF6nWGROnTyI/JNGwB9kTbPdKxWrTA9gdDmXooJVdTWe95hP9xKnoQSui65FtUXI3MuE42KmQsTH1FvfNWJZ96umXFhOp1cc0U4aEhgfkRG9CQ2AtphEFpBMByponeYaV9g3t6GDwKi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H4UktWZP; arc=none smtp.client-ip=209.85.216.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f65.google.com with SMTP id 98e67ed59e1d1-34c2f52585fso2511641a91.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767940992; x=1768545792; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6/gEN5rk82lFzLYtv5ppnfQKb1JIJzSUURSDik7qMUY=;
        b=H4UktWZPt9y0Dx5eRtyHbzuP2ITIWJDbmKvNpKJ1Vy7M16W5lJWrMkRP2UPsV+zyrJ
         VQJ+5dlk2ExWiwabPHeE4FPPoe+r9EJ6xXsLMWhx79220PDPNnLhg7SvmkMp/MURD+KT
         I8FISLXEeGxHOh9Z1hByZJ4nN2DO6u6TpQT+dLQIG+LIcYNDIdrsNyTbTGXPZLzFqHOC
         BfT4IlzljWmZ334KiPRL99G4Jl48bfqux27FkyGBjeHt3GhIQL5Y+P70v22jSVnbDHzG
         pyZCHHqro39LRAL/nrPxoSpkJ5ztopYyZAEP0cQKI8u/A1Neiwu9dC6ukaH9VEpBsY/w
         lHlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767940992; x=1768545792;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6/gEN5rk82lFzLYtv5ppnfQKb1JIJzSUURSDik7qMUY=;
        b=Pyiw91nvsfR9vwp7lXgV+S0DuIP2sv466E4uDo+KGHxp/ISdOz3TqQjaUr5lU/EXj9
         3eWHW/wHJgT95E2D5BhHF/lAR6p0UHbMHBko4gp4XkqLyfCdig5xYqD0YOEgi4l+kbxd
         zXuYJr9EinUWaJJ+yaSKQU/kPN51iGIaWZdUSVAN6MVBGxhh+8tusyB9BgBP93qi9Jgo
         9imCcbCIogCgk20H8GvUUajG+tGAONAkBvamw9SDQoYdqYCiRfQametvuJdfcY9EgYtx
         CSiY5vHUT/ggIxlnzWHMRrz6orQYhwqC3XyjTrxxRRICcoas23Nqgcxk8ZzFJaI47zln
         WcNQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0wAvl1xOLl6/kVReaSjL3hmy2YVCFNY3rqK3Rio3Y0Rq0RGaGWfFyEzqi7Kv5AyFcnpRVVb9FUiI=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz+uaZ3vFGeJZBaRGnkbiHTebNTNU3mez9ZRNafVftRpgQtQ4f
	ZrDBRg4Uhw3h0EIy7waSF6qHic4VZWbAc8+8Bcv9TjcVlhW8DkyfX21N
X-Gm-Gg: AY/fxX6CoBRkjqTuqbsSNnXuGAX1zZrbUUJr5kIQBMPpKNcdGyUrQ4zmnLCo5CfYe/Z
	ytXoxl//9VFu2qDxoZGnccyMVa+R9TLUfKXIwxq6okYnF2/Ka53D9WutusQj+neLfdMBRcusGj2
	plwQxe4/A14l26LF9+DuNFNgf2/XGyxzIvV2l6TFMNWBkM57sxuwNVcbUqZ3QGi9zeJuYblB7sH
	xwG/y+/EL5Foz1xySpS4//JGbgO6TzMDH4ZTYgZ+tqBIkOQDlVTaKoXR3E7AJ3QGxAmOVZ1/jcL
	X9b0nAHJycoz67aeX/ydzYGPqTeruD6eEORC6OXv4ZnaYFEP806sLowg3TITYZqPgG1Goemh1RV
	il5oZkmohue4nvMfJDLXByS2rDYMGqXE5nu8hyIZDcgIGZl7l4BAfG9H2T58PVh/Pku8Eey+Mwf
	40Br3TErqmCjTd7jhS9FBffNjNNwMVjA3pr2bIZI6wnf6fMQuM4kxczejIPqGJ9HC+3G6QhuVgk
	6WeDs3WpnW+YrsYgJ1mk8AUbyg=
X-Google-Smtp-Source: AGHT+IFXUIEYO95Rxw1Uhy6pFCXGBP8hiqlB+vnE/MxO9cJdfsOXp/9tIMKkpcqFPqiUlz7X/2Yq8A==
X-Received: by 2002:a17:90a:d647:b0:34c:ed28:a279 with SMTP id 98e67ed59e1d1-34f68c20090mr7840132a91.11.1767940992277;
        Thu, 08 Jan 2026 22:43:12 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:11 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 09/25] man/man3type/lconv.3type: HISTORY: Split lconv(3type) and int_[np]_{cs_precedes,sep_by_space,sign_posn}
Date: Fri,  9 Jan 2026 16:40:27 +1000
Message-ID: <fb168b7dee6d8abbe3dd973fecd15d1eccae28ec.1767939178.git.sethmcmail@pm.me>
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
 man/man3type/lconv.3type | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/man/man3type/lconv.3type b/man/man3type/lconv.3type
index e7bb3bde3c3a..b76f06a93e1b 100644
--- a/man/man3type/lconv.3type
+++ b/man/man3type/lconv.3type
@@ -46,6 +46,21 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
+.TP
+.I lconv
+POSIX.1-2001.
+.TP
+.I .int_p_cs_precedes
+.TQ
+.I .int_n_cs_precedes
+.TQ
+.I .int_p_sep_by_space
+.TQ
+.I .int_n_sep_by_space
+.TQ
+.I .int_p_sign_posn
+.TQ
+.I .int_n_sign_posn
 POSIX.1-2001.
 .SH SEE ALSO
 .BR setlocale (3),
-- 
2.47.3


