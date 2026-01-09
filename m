Return-Path: <linux-man+bounces-4748-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6623BD076A0
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:43:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A732D300ACAB
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:42:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CCD82DC793;
	Fri,  9 Jan 2026 06:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GDshsrM4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAD052DB7AC
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767940978; cv=none; b=OiOTAqoL1qJ3alMRiQkjP+RDDLU41jiLoLLeZeezshNUWP7/mDZwxrm+NOmaNxwQPuPDBAC6h6LPKFs16kK7U/E4L3ZO5bp+SpONtYTKxe/nb6K5sxjW8ddStnKxK4i9poXv7nBXwLJ2qLclXZVEFe5rDZMuqXmXXoFB1N/4qzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767940978; c=relaxed/simple;
	bh=E2/yDC+gjXC0aZhOF92The15JvhO/ksfsd2nrww6Xxs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D+ydKsDcE2YCbxmd6EKb6NoNSABoIZjHlu3vL2jfBjiHI997WVPZc2tZMerJlCR+QzDYoVJ55sGJhW6mNia8qGWR5+KwWizQLLmg4Tmb7jSaofWpRBWNHRMH5AtdVxwZuSCeObfdjjufm5jEXPULda8p61y/JMlQxpk5D5cMDiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GDshsrM4; arc=none smtp.client-ip=209.85.216.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f68.google.com with SMTP id 98e67ed59e1d1-34f2a0c4574so3117501a91.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767940977; x=1768545777; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cwb6dtXF2zztviu0E0Sidi0IYHmGDRNtOUHmceAq5Mg=;
        b=GDshsrM4NwqYt56UoSo2pDHMdqvhn6L/xVX1LuqqYOp185jiGMq+VYsXt5y9jwXezz
         JSEWMdHHh9sTHXwkg26qsNtr0U/uQ2YEWVYsnbRjoxNS7aRmzz669UjIn2fB3ncmbKrJ
         Jpe76Vkj/GJLCkGCUqqTNHt5+f1WVYyCmjZgB8xxN3jQYkNT61yCAVfqZJc7TvPr4PL4
         0b1Bh0YSEtOausr5WRyjjRgz0CZNQxPUEz/LrhVk2IfmP2EtPPSa2pnfXadaNudgG1mr
         1HEmm1pSU+LVRjPrzmnsoT6bXBZtvT3KHPncrnevIW9ZSns8OpcHhUzr39Bb9AImn9vq
         l+lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767940977; x=1768545777;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cwb6dtXF2zztviu0E0Sidi0IYHmGDRNtOUHmceAq5Mg=;
        b=Wo2oMnllMMTVpRN6pkfUSmTscyTk8xtXjnJc/J7Cks1EDtRBuIwlpCM2JI+uM3dM1D
         bpT3QTYq0eQCZLtCCbALQcvurfUGotDr7A8zpwLPNoHbyVwtY311xBeZo4G/YQeKmhdC
         YQgzRIg4+j7rvB8LHOYrnaBa9ZAkTEVtdv3gbiFAVxSUcTJ6pHgJlqPmKhrbEB3CszPI
         vadWTVudHhRFZUeGLbTpQh/R6Zfql42lM9JW9bxLpzlmEoFIciggoldJYsqF1MHqycrh
         IavSIk9h1DzyclwWadybRRB/mjMDm59IQn62OGutrdLtbXkuqxkZjdoL54IMbyMDzxrz
         rgcg==
X-Forwarded-Encrypted: i=1; AJvYcCU+uewWsP0Ckp+yJXr1iKLJwpEo9fgStw/W5Xqw3Xs9W7UKFD/ev2Nfs8cloLKGDVWpXvT0U0R/Q4I=@vger.kernel.org
X-Gm-Message-State: AOJu0YyfWPccuYKjcLeS7L0UU5M4MA2OojreCpgQacKFMi8bP435xg4+
	Dhr9K4zgiUOtOwkcIY/EJYov9k69myRIRqj/LPc50iiUPqhW0sn6NWtZT+mKioME
X-Gm-Gg: AY/fxX4BRj/6beSGVPikVFYSMFgzr7LEO/979Gl0IX4p0kj1opnYlm4cyNm+Vj4yLkM
	IgDbPwFR7QR7eadUCivWcQUdACHoD/v8eUTaJ47BQ1uZcabA5jkwIfUyUWzkmeaNTJNHx+KwHJb
	Eyu+0u/Fp7HpDbZiex87aaMdnKk09MZMbmo0DAO8h42IXk2czkVnwbHKsNenjzvOvgBBRhaUGfl
	IR6O92EMX5NETy9pkTKOW+KEIAvpB4k9TCpZY9jvKeDuYNxBaEGKRndRuXrHg81figvgnp8G5rt
	Dn2LCwRBRc6gZn0HK6YENSAsc8Zms5RdWszqWBUO9cSU6WsPudm8kh/Tv/UCsZmOgiSZWxFcTj8
	sBVL0UyzW0Xoc+PpyjM61fMEzS5AtSsAqloOs7kBPAS4VFOVM0Ez/AwOOs+9aawldZwe4fNiH9V
	6CBj0W3Lkf96TLNMdyLQz6tniM7U+JPNrwX3qHH3aYImFDEKnz0SNxgtPGSyzsPp/FeH2dgsAbJ
	CEoj57XaI9DSPmk
X-Google-Smtp-Source: AGHT+IEsAlBd9BQAZXG7r3pJekud1xQtlMCK507KQOu2xZXXCHIZnG/aKYSM/mFZmPJi/nKsnXznJg==
X-Received: by 2002:a17:90b:4c46:b0:34c:f92a:ad05 with SMTP id 98e67ed59e1d1-34f68b9a0ffmr8822359a91.11.1767940977056;
        Thu, 08 Jan 2026 22:42:57 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.42.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:42:56 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 02/25] man/man3type/id_t.3type: HISTORY: Update first POSIX appearance of id_t(3type)
Date: Fri,  9 Jan 2026 16:40:20 +1000
Message-ID: <963da2474e6d7f016db6e4d5b376074bc1596519.1767939178.git.sethmcmail@pm.me>
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

id_t(3type) first appeared in SUSv1.[1]  The type was added to
POSIX.1-2001 when POSIX and SUS merged, but as an XSI extension (still
SUS-only).[2]  Then POSIX.1-2008 moved it to the base specification.[3]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 838.
[2] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 366.
<https://pubs.opengroup.org/onlinepubs/009604499/basedefs/sys/types.h.html>
[3] IEEE Std 1003.1-2008, Volume 1, Chapter 13 "Headers", p. 398.
<https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/basedefs/sys_types.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/id_t.3type | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man3type/id_t.3type b/man/man3type/id_t.3type
index c4b87642c755..1b856aa7768a 100644
--- a/man/man3type/id_t.3type
+++ b/man/man3type/id_t.3type
@@ -49,7 +49,9 @@ .SH HISTORY
 POSIX.1-1988.
 .TP
 .I id_t
-POSIX.1-2001.
+SUSv1,
+POSIX.1-2001 XSI,
+POSIX.1-2008.
 .SH NOTES
 The following headers also provide
 .IR pid_t :
-- 
2.47.3


