Return-Path: <linux-man+bounces-4651-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5D3CF6F84
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:09:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 17B8E3004295
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0ED8309DDF;
	Tue,  6 Jan 2026 07:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k6PUMZ+C"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200A729E110
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683396; cv=none; b=jUwEzOAdWoEscUne7260qglDH/ol1oxFnIKAjQFI/TJ9XzlkDR8ilvuba2LMHv8Ra4X9F58L0leL0t3gqWwA5mNLcN/fF9omwpLEEKSmBlMgyK7ZCmgV7hoUskXP5JJK3fhZvtXaCL2C88Y9UCFC37M3XOXZVXDaV3dAtYnIWvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683396; c=relaxed/simple;
	bh=/9szORNHb3JGufEAffNjOvZgKVxYW6Zv8lcoQAvg7Tw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D5rml1ad17gL8697slLd72H15pB9TwuKa6U9U3+ECxiOT8juzowSl7tKSVIloBXxNgDdIT9Xumrf4eu9qQPQqoDBSh6zOdQLku7Ix+47Tp8Om1ngE0ePG2IbF8gj1JEgrPymTjk89lFxUoW/FjBt10fnC3BMVUr4te9qf4sCyz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k6PUMZ+C; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-7b8bbf16b71so777349b3a.2
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683394; x=1768288194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=okLOl7BCZjCXTtkWaeXDkBTgDtxdQyQkfNUpOM2loh8=;
        b=k6PUMZ+CFgYi0+5/zDSTu9Abb0RPqq+Kmo1A2DNSOqEWbP4ME5apSeTS4+iHqAh20s
         noouBVnQISrxVWOwRli5eJG8h8o6A8lUgaOKvDxF4XxjXzZvs1FT8NEvNGCbcqi4/3pt
         8WdUQckrE9YIuPgVCAj+BZawc2dpN4MP12e3kJUChGhnnX2tUOprMvZLzQ6SLzWIvKRZ
         IWAmX1MPDO0L0x0hNJ3VsnMVVH3AZCaMy6LMT0ErrWpjpcyBAChqBA3RWLaQKjXuWa9A
         i/3wBijSS0xGN42boW/DE9ozR1L9WSVBjhVxCGanmJ8s/Heg4VnxC2GSpWHe2NzFIqFT
         zc6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683394; x=1768288194;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=okLOl7BCZjCXTtkWaeXDkBTgDtxdQyQkfNUpOM2loh8=;
        b=hKxP2u4qYXXJ4n0jLjXBZfZbEPvlzDwX3Qq9a8U9bRoFuMH4z7y2+K2a9fLNg71VA2
         XIy/4F3AP1v/lDqtGhXwJAuKPiI62vta//Yxdnwq9BFrPPyy4wD3JHFfvtVprKxbNGq5
         nyNhrslPQoFhLukVb4VO4sd5EJr+UewdKWOt7/gTZMf0dYI5FtgsifAqv8d2pkAeHXpP
         xRlcAhTuRGHAIbsG3uzvDgRKquS5t9sdYRfrdrVajDGdS/sLJnaR4bDTaMIez6bfF1oO
         aQmAL39yHKW9YpSqDOOst0arN+oofZP4MoN3S/KyW/ZXyLY/rEsVbwaq1PreVduOEWwX
         EMvA==
X-Forwarded-Encrypted: i=1; AJvYcCUZx8+Mj8fs3m/MbB0spWC0KVF60FDx7NK34zLFPxq99UrLYkCdJAb0d0HNsxbm+TMNPD1eG+gwyLM=@vger.kernel.org
X-Gm-Message-State: AOJu0YyojQnOFhvGHYc4/JyH1JEpsWkjaQcCKSNxXPjYLnJb4DtWgYky
	KCoTa5Gbs7w5hpNJQebN8bTCXoKFRXKtSZEpIfRPgTRSP218Vc4vO8oihB2WyVvF
X-Gm-Gg: AY/fxX73pLAbHjwUvnuwvfF/L6VpV6BSvId88XB4N2YWd8F1xMI+YsfAF9BQnnXN68y
	CQvxT+9FrcLJSg6cSjSAZ7LVJC2Qk3X4u+9PKSml2pCTf2X1Nr8I5IjTWkDSRlM4hWbgqxzFnrP
	nqk0Zp7yEiRv5RJ2I08nKwdMgxrPUO394CQIluS+8RFtvFluJ+brWo3kYO/Ek02HaA9X6+3wqLn
	j3Viv6vM2YKpHwST2o02fWJBjJ+DbM6N+G9+bVwqNIcCAASPs2ErMEuKhkBOjzMMBrKc4W+hzaz
	HcTMPbgMrzBtp+WFzNndpG47KAAIbohd4UCV2hDxaiJojESn7+hJrb12nu84Ju4VZ1fTjOAg9tZ
	gHsW3As4620rcex1Ru3ifHOctu8TWIcFH2zq6aAeas9Mi07eeL/pEjvbi3Ta1B5Qs8d09MSgI2H
	ftzz6nW1TpAd96UTTqD51gfnd2J4igXo6jt/cdxGzmPoxQSTkafqLwuaPJKtUSZleVCtui0NblT
	vtA+ju21I4LuWJw
X-Google-Smtp-Source: AGHT+IGtVZs/QWR/mudeJVpoDruDqdsR5OzHX039GeU3iYISjvGFNmTYQM9xWiOGrJs1G60KnFAlig==
X-Received: by 2002:a05:6a00:3289:b0:7e8:450c:61c3 with SMTP id d2e1a72fcca58-818827f5e2emr1985093b3a.51.1767683394497;
        Mon, 05 Jan 2026 23:09:54 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:09:54 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 10/15] man/man3type/id_t.3type: HISTORY: Split id_t(3type) from [pug]id_t(3type)
Date: Tue,  6 Jan 2026 17:07:59 +1000
Message-ID: <18896b1be985fc76d94ade5d22077c6a413fc97f.1767675322.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767675322.git.sethmcmail@pm.me>
References: <cover.1767675322.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/id_t.3type | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man/man3type/id_t.3type b/man/man3type/id_t.3type
index 6b17320d96d3..34ea0029b5de 100644
--- a/man/man3type/id_t.3type
+++ b/man/man3type/id_t.3type
@@ -40,6 +40,15 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
+.TP
+.I pid_t
+.TQ
+.I uid_t
+.TQ
+.I gid_t
+POSIX.1-2001.
+.TP
+.I id_t
 POSIX.1-2001.
 .SH NOTES
 The following headers also provide
-- 
2.47.3


