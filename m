Return-Path: <linux-man+bounces-2821-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A06FA9E608
	for <lists+linux-man@lfdr.de>; Mon, 28 Apr 2025 04:03:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 819DE3B707A
	for <lists+linux-man@lfdr.de>; Mon, 28 Apr 2025 02:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23B8085626;
	Mon, 28 Apr 2025 02:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="QFC8hkE9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708915684
	for <linux-man@vger.kernel.org>; Mon, 28 Apr 2025 02:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745805779; cv=none; b=TQcnycZU+ERFRhaZ4VQPczDg6AUU4LIytgY2yj8z5CHndl+R7LuyIvEoJLw1r78zRVbKaoHnVXEBAL+7/DMJFsLdbL+hLOWd361k9Jj/eQAHUk8g/DDKYgwLHsRj0vJGjLkfmp9gQOzQJb0XyaQjdJPwQnQ2pLFvVQjpju+huEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745805779; c=relaxed/simple;
	bh=MopX525TCkQcHROpN7GoVWZdKANhbXQk4hSnGtc3nPw=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=jw7IU7mJvy7WTLIC999Dt1ks2aWrEMZgkwJb4/7ifdX+9LG6FAzgUc7FATP39VA4jJYNLVj6tb0UopwhaC6jNOgmsinFml/ySWcAdE0r2XtTsPF3EGXu0MCZaqrkmKZHWSJYjE00ipfBxQ5nPfh+fIfZtFRg0oBduTXhRBCfmjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--tweek.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=QFC8hkE9; arc=none smtp.client-ip=209.85.216.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--tweek.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-2ff8a2c7912so3118537a91.1
        for <linux-man@vger.kernel.org>; Sun, 27 Apr 2025 19:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745805777; x=1746410577; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MopX525TCkQcHROpN7GoVWZdKANhbXQk4hSnGtc3nPw=;
        b=QFC8hkE9mjkqVcneJUoqYOPnaC11mePjBqFGtkYklczbGWoeYCEa9LrhhDEQZyv1u6
         1oIGTLV2OUP4Ql0hx01DVCZh+OFsv8AUa6B39Y7ehukkAjUauVJeuc0T5Z73zn2pC2Y1
         3+LBmMuVHEs9XyPYa+5WC9oa1IJC4/DM8lg1Pivk+aTXsGeOe9vgaryXlihp2DCAPhuu
         sr7aMFZq2c3wj3wlLB1ncGs1yzj/HY1U5ZLYPPFBrp1KOICS1jODYP3Xuw5Xfd+8NQGk
         IwGXLG28dD5gGdANkwxl/2xUKMFW8WV//1gpXE7+460xCOlzMZVQh88cOc4nCsLIwBW8
         xB1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745805777; x=1746410577;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MopX525TCkQcHROpN7GoVWZdKANhbXQk4hSnGtc3nPw=;
        b=wjQxfQEw5l71F20YnuwECW33UubBroz8pCmbCNfd2997l7Fk9ZHET2XgEn28jmUrDY
         SGJelvmBkNvrN4QwGw4b26Z4vua8VqGoD+zHsWrFBqXurwmfU+cYm4oOm56ErTSbhz5w
         bD3DT48HuPF4cH8T1nIAllfgQWXicnh+uOCmQmc0EBHHu+VM3oCHkg++Kif4ag6BgpDJ
         2oMTQATGzARbLsfNsvi4zwm0WimRdns3Rkq+XjakGY8boAnLMO3TohrZi/VOB6SoxLGa
         xVAQ5/cDVQUl/MSzf58Xp4hb0Js5vktSbV5eolKTmRtZw13ghQ5pCJtb9ptcthtKHRHC
         YbLw==
X-Gm-Message-State: AOJu0YxkCDA+Y07MxbUJZsuNUJgPHH1sT93GNCouVIu+MqpoPTFwVdqi
	rfCSBuQ+3hcS0fBCldsiPukFKQfCDP24RSrMUDXRia/5jgBRYJ7h0Kg6o8ed0/Vs+0Y7nyV4Gw=
	=
X-Google-Smtp-Source: AGHT+IFfoiwCDkOFIvbjFMK+2SL2coc68INeilGDD1gRNw1HHbQBEamy/oazrklOQVaOxo7EbepwydsXgg==
X-Received: from pjur4.prod.google.com ([2002:a17:90a:d404:b0:301:2679:9d9])
 (user=tweek job=prod-delivery.src-stubby-dispatcher) by 2002:a17:90b:3c87:b0:2fa:17e4:b1cf
 with SMTP id 98e67ed59e1d1-309f895d396mr14658036a91.2.1745805777687; Sun, 27
 Apr 2025 19:02:57 -0700 (PDT)
Date: Mon, 28 Apr 2025 12:02:52 +1000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.850.g28803427d3-goog
Message-ID: <20250428020252.1569621-1-tweek@google.com>
Subject: [PATCH v2] man/man2/memfd_secret.2: Update default state
From: "=?UTF-8?q?Thi=C3=A9baud=20Weksteen?=" <tweek@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Mike Rapoport <rppt@kernel.org>, 
	"=?UTF-8?q?Thi=C3=A9baud=20Weksteen?=" <tweek@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In commit b758fe6df50 ("mm/secretmem: make it on by default"),
memfd_secret was updated to be enabled by default.

Signed-off-by: Thi=C3=A9baud Weksteen <tweek@google.com>
---
Changes since v1:
- Move the paragraph to the HISTORY section.
- Drop reference to the performance concern.
- Follow semantic newlines rule.
 man/man2/memfd_secret.2 | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/man/man2/memfd_secret.2 b/man/man2/memfd_secret.2
index 322d67a41..b3896b12d 100644
--- a/man/man2/memfd_secret.2
+++ b/man/man2/memfd_secret.2
@@ -136,6 +136,13 @@ or has not been enabled on the kernel command-line wit=
h
 Linux.
 .SH HISTORY
 Linux 5.14.
+.P
+Before Linux 6.5,
+.\" commit b758fe6df50daf68fef089d8f3c1cd49fc794ed2
+.BR memfd_secret ()
+was disabled by default and only available if the system
+administrator turned it on using "secretmem.enable=3Dy" kernel
+parameter.
 .SH NOTES
 The
 .BR memfd_secret ()
@@ -182,13 +189,6 @@ or spawn a new privileged user-space process to perfor=
m
 secrets exfiltration using
 .BR ptrace (2).
 .P
-The way
-.BR memfd_secret ()
-allocates and locks the memory may impact overall system performance,
-therefore the system call is disabled by default and only available
-if the system administrator turned it on using
-"secretmem.enable=3Dy" kernel parameter.
-.P
 To prevent potential data leaks of memory regions backed by
 .BR memfd_secret ()
 from a hybernation image,
--=20
2.49.0.850.g28803427d3-goog


