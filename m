Return-Path: <linux-man+bounces-4763-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 785C3D076EB
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:45:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D82D0302F815
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5C9F2DECCB;
	Fri,  9 Jan 2026 06:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="METF2cbQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9C72DCF6B
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941011; cv=none; b=KPVStJcJmtfGo+eWsoSHhI0qindi2lRdL6hIlcz+oYiVOwhmsxKDJ4r9Px+K1AoHZKeyMvskwhBe0tnxxuhUEevZ1pauHemx3g95zoJ5QMcPW1mvTntS9Fr0V5p7n04/qVXVfq0oFfmNv5zOezA0AT6OgYNMK2eWGoHXHFmmU/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941011; c=relaxed/simple;
	bh=IGTaSC8o4rV/7aRXyldCPQi7Qyxi/VxPm5TTIsmQxCI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UalXyvP+6cLt118ljjA7kLf1f3FXChfiBk/YsYT5w5NjmTUq0ixYsKGHQnLw788Pq1xmgkBcT3h8dOhmkL8TfgvLy+X2PfKVS5kK4HkWTansSrJzUbMTHCVaZgImLBPNpYSdt8SYzUGKdpAEr+Zo8jm4zH25F012SIIwOlG3ygs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=METF2cbQ; arc=none smtp.client-ip=209.85.216.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f68.google.com with SMTP id 98e67ed59e1d1-34f2a0c4574so3117775a91.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767941009; x=1768545809; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+QnC7s2gz0gGNT9TDhPPVPed6Lgx4xkjxLNpSSLDRyg=;
        b=METF2cbQPh7vdrMr+MZDLjN9pupON8KcnL8qy8W44wr7FbgDVbf/s2yEqhxWkLqlds
         PoM/+qtfFRLjmz8SJq3j+sLhXZESFebRQ4geq1VanJEmHhRYo4zkJ23XjhW5y8Jfe0Rd
         tYDGATdg8LH4rvdCZpXv6GFGjy8ikYI3lbSAzmsdwaFIzCviY0Yrt3ooF4Cza7sSd8Aj
         ox0sB3ItYMypQmG1agSK41pO10Q43+oZDdH2TMc968/Iz/vkVTtlZ9Bw/fgLdbiBQN8k
         y89+nLJAnKOL0hiRotas2KHKUjY0OoeqpQKcyCHQDQ0/Ca22nQ5mFlHYeip+t0FWgajn
         rx1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767941009; x=1768545809;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+QnC7s2gz0gGNT9TDhPPVPed6Lgx4xkjxLNpSSLDRyg=;
        b=ULHdVvPUlCO7RjjwKWEPeImhUSnLtDuWHl207bxOjQM0R7Faxmv/AYL71Sco+Woc5c
         Vu90hWi0JpuVDf+R7aMW/r3H4ljTO1CFnktnDjqiQX4mT+PNoYaIWQ/sD79w40Fjrvvv
         TYrWflfZUWhsiAJldxCry1IyCS/smBt6i46xSH/+N1nHrBC3nBS4VAuhvMe06++0NFfL
         bG3yS47NMpN4hrGKUIrMgibODPbs1LuPG+qAv1BDwYv9RrJxrTkifXA7/cx0QbUgmP0+
         rNsh+hcUWR463xyq6TgHMCoLU765/poaR3V1oR2Z1tmQYApbdWHkyaJRA494L0V6uLt4
         5nqg==
X-Forwarded-Encrypted: i=1; AJvYcCWSSfMQcJpvtRJA2n6V38PXtPaKttrUS8bYx3eFKGb1VuVMZ+MjAo3XNaLzurZ4NOIPVfdXTR+3bBE=@vger.kernel.org
X-Gm-Message-State: AOJu0YzunhTgIeTicWKNuzh+i06S3Nmsb4AkvRY/5cvNuc9WXXA+/o8h
	HvOv8d1viMvIS2qaBtJ1KmWp93cwcESZcLRUl0VQMD0LA0kV0u3LGoGP
X-Gm-Gg: AY/fxX50xWymSyvpvq8fkfLRfV9GFi7xln+SLvRKTRgmrmnjAnzhQRKgQizfFtNiI5+
	Np7I7N42Q3eKC/wyRgp3eFnl5UIqP8y2AJAeP4UDc9zbEBy7U0/Fd8QcaTe/45N2dqRRqbgIfmq
	H/b6uUvYbIuSdI0ztS4ot4t8ECwYmdZ4I1NvP+BAgbCfQPi+j5+8MFdRCQrTsBaHBg8IY4KiVZ1
	iIiL0BnCzEBfrFxrBtqHx3YFg0jeUyQAGS9f2pijKTCb2IuI35Ra5Uh0nM9D15mMYfvSgj75Ck3
	AYpRmsnN3hVHKT0zOkenhnyFzj2gwcNB1MNsOu3l8Pbv8XDSyHbKiz6AV79M4aY49mg1lMeDH5H
	/wPHlgDaiq97Ze4mBVohBpZ1lZZXq5vglZISnrKh+zXC57Zv4edjCYELcPgN5nIbE+YH/wHbuLB
	8hbN8VxUvdghz3lRocg4x10mGYyOBmYEgXkANbHER8hlfI/grXj4Cp06SUl44zk4xWjf4R/1hbg
	uJkrkt7asypA9WR
X-Google-Smtp-Source: AGHT+IGhJaE+gr47GWWihDY+923oYsBbDzWAwdGTAIAZfEBDUwoMl36nOLlZ2dCToKDlsgjJdOuX+w==
X-Received: by 2002:a17:90b:1d0d:b0:343:6a79:6c75 with SMTP id 98e67ed59e1d1-34f68c62a3emr8637298a91.29.1767941009628;
        Thu, 08 Jan 2026 22:43:29 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:29 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 17/25] man/man3type/timeval.3type: HISTORY: Update first SUS appearance of timeval(3type)
Date: Fri,  9 Jan 2026 16:40:35 +1000
Message-ID: <47c6b50cf1a1ae9a8f85cba88911c673fe757995.1767939178.git.sethmcmail@pm.me>
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

timeval(3type) first appeared in SUSv1.[1]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 834.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/timeval.3type | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man3type/timeval.3type b/man/man3type/timeval.3type
index d11ad0b7eb2e..509f73058c3c 100644
--- a/man/man3type/timeval.3type
+++ b/man/man3type/timeval.3type
@@ -22,6 +22,7 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
+SUSv1,
 POSIX.1-2001.
 .SH NOTES
 The following headers also provide this type:
-- 
2.47.3


