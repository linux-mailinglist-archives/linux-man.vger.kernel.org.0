Return-Path: <linux-man+bounces-1316-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFC1928AB0
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 16:29:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 58CF01F24DFC
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 14:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81AAB15216D;
	Fri,  5 Jul 2024 14:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="stxjaajS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF95316B3B9
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720189735; cv=none; b=MpofU6S8b9O/R3XEZO4bIA9RD7EMWc/PFtyZ/A099owQlNTcHXtLwwYmWs2L6BlPxOhZCrVVf+tz3vQiPJaK3huOOsl8FbFeDCVgywAyA2Z4q9QOY90Hu4DSQ761yy25DHZD7MgEijAadh0QFvI0Ppo2Xim8fvm27mvk6sgNSTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720189735; c=relaxed/simple;
	bh=iOx5qi9O+N1NgHulMBDGAOFmEx4DpEuf9/HEqqwI3Os=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=VSDgu4BdMwZ0lQdAqZGcXMRrnZi4We5b6wvWP+swKVWy1iLYXx3hI9dCQxRcrqN91a1eNfUNiG1ba2yn3Q6gAOEn9YAltQOgmIalHrusl/UPRrFUwJYaRup+ojoKkLrH4L3MXwXq3fZo3i5RsLkRN8ggjB4KbBbCtga21bfSpvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=stxjaajS; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-e0353b731b8so3032315276.2
        for <linux-man@vger.kernel.org>; Fri, 05 Jul 2024 07:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1720189733; x=1720794533; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iOx5qi9O+N1NgHulMBDGAOFmEx4DpEuf9/HEqqwI3Os=;
        b=stxjaajSNuAoTTeKHPLeG1a7J4FfkWLQB6enKgayHr8uf3vjxvkZdhbPa2xtMSijaN
         RE/Fv++MJsQ4jhv6LzBL/B7eDOn1e0CcUvQGfEUpMDaKfcx+1OTwspth7mvXBfH6IRRo
         Z48fC1hBakTcJjLKO3Uz29o2TCgxs2zWrR0kxildf7NcueTSagstExbTYvejiAQYqGy+
         VAE5OO63Z6NpvoNJkShDQRK+2L/jjuvJhflux2wnw/sZKol21I+qRBBrey2B/ayskDpK
         ZBeLkl4OuRmGQlZE2jPZDlwbsv+WlJIhVnzH4GOVMkNCCXFjdqqM+VOSjb6LNySIVmZK
         Zr0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720189733; x=1720794533;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iOx5qi9O+N1NgHulMBDGAOFmEx4DpEuf9/HEqqwI3Os=;
        b=TTvDA+5l0411LC/HfwjFFnmVsS3TCMJLvPFXnr+M4B8FxVssSVs7uwZEslnHrWa2oA
         KcCBIRzOEEhfnZrvwYkd/Ky5ZomkJLYxLUtrqjhhacoPG+jiZppbTtd2CupFoiYnr0ao
         aQz5G1RbcMqBbXPA7XYYWUaqELhwUh26Al3aBrvatIPdE4okrULs9zUOUs5y4AfPjatE
         WRnzAccvVW+9P7mCXx4tBgqO8BeRGG4siVJU9vCzQE186O5o9nAkFpKpNwaBfyskbq4z
         nX1r5j3i/lNeP2ybQwW9oCm0fgT4baW8aPaKic6nFSSJHINlKz34pUxJkqSrhWINuKJh
         mw/w==
X-Gm-Message-State: AOJu0YxFx9iH1T/pJLbVBS+9xN4JwRjhWWancHzZBWUik5Zp0H36wtpU
	iOkNhEx0ygAUhoCxYS6pgSNtjv8x6EBhnzKgE+Lmuca+T2Net75kzuyU7eO2kRtbI8Dwi3DhOnv
	rMQ==
X-Google-Smtp-Source: AGHT+IELw1BNOrke0zYrqO1x9yNtgQl5CgqP7ryvNZG6ZpvhS9wgVO/TangVRk5R6GupxJXbgsfWboTzvJk=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6902:1549:b0:e02:8473:82c4 with SMTP id
 3f1490d57ef6-e03c1bbe8efmr7716276.11.1720189732676; Fri, 05 Jul 2024 07:28:52
 -0700 (PDT)
Date: Fri,  5 Jul 2024 14:28:43 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.45.2.803.g4e1b14247a-goog
Message-ID: <20240705142844.1142998-1-gnoack@google.com>
Subject: [PATCH] FIONRAD.2const: tfix
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Fix a copy-paste error in SYNOPSIS:
FIONREAD was mentioned twice,
but another IOCTL was missing.

Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man/man2const/FIONREAD.2const | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2const/FIONREAD.2const b/man/man2const/FIONREAD.2const
index 5806d280e..d7a44176e 100644
--- a/man/man2const/FIONREAD.2const
+++ b/man/man2const/FIONREAD.2const
@@ -25,7 +25,7 @@ Standard C library
 .BI "int ioctl(int " fd ", TIOCINQ, int *" argp );
 .BI "int ioctl(int " fd ", TIOCOUTQ, int *" argp );
 .BI "int ioctl(int " fd ", TCFLSH, int " arg );
-.BI "int ioctl(int " fd ", FIONREAD, int *" argp );
+.BI "int ioctl(int " fd ", TIOCSERGETLSR, int *" argp );
 .fi
 .SH DESCRIPTION
 .TP
--=20
2.45.2.803.g4e1b14247a-goog


