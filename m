Return-Path: <linux-man+bounces-2291-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF7CA1BA9F
	for <lists+linux-man@lfdr.de>; Fri, 24 Jan 2025 17:37:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 496FE164245
	for <lists+linux-man@lfdr.de>; Fri, 24 Jan 2025 16:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 967511953A9;
	Fri, 24 Jan 2025 16:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="kqCa4nQG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f73.google.com (mail-ed1-f73.google.com [209.85.208.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A501615A84E
	for <linux-man@vger.kernel.org>; Fri, 24 Jan 2025 16:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737736668; cv=none; b=b9AR3f5oPKw7hTQhvp9M7dOO2Cyo7UotwmNRyJQJiqj45zNJEDbeHt69bI/3CYnXsTtgYi+o/+zaOeCGI3Bs+lrckzYDWSaHQ5wRIz7sPGFK6TiNTvNCDhnjd5/GlMGnM/EL/uiTk2Ss36lxJe6PpUxxwbNHhm9vH9OQJ0JflT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737736668; c=relaxed/simple;
	bh=Cg1aTXrhXUeJuoOTW6g56F8Oc3uRQ7NHkPOeEA+76to=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=mH0QXNbNSJ6rm+wlSFXqp0KDJWMUbTBaRYd6C6s1zU+AUzF9fC6vwf9fr1ziB/kLzlvAFPOMkCfnjpsXJ60tbzmm8w0GDK+l9T4Rt4nPikATELwcNKHEEIf8JQHbNpXkZVScUw32xazxFBSGryNCnPrEC7ROTyoz7+wy6iDf0ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=kqCa4nQG; arc=none smtp.client-ip=209.85.208.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f73.google.com with SMTP id 4fb4d7f45d1cf-5d9f2ec86d1so1611103a12.1
        for <linux-man@vger.kernel.org>; Fri, 24 Jan 2025 08:37:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1737736665; x=1738341465; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cg1aTXrhXUeJuoOTW6g56F8Oc3uRQ7NHkPOeEA+76to=;
        b=kqCa4nQGhn+h4bYJ8utPKnCEZgwrKn2WGfZ2qPCl3lml8TYeQajHY4fXawjtMbeJ9f
         GBiKtjMZesOBKdkuNyiMKitQ8MnPBRmC89AVOlyD7EifRIYLsGh6++trIHiRqdx2FjGk
         3wNGAb3a5KoPEegc3yv1GfdO26Rgmv9RU3OCkd6C4Vt1T21656zqaPLYnY4ZZmGTfFN1
         xEYaQFfqQQ457QVL9rgK6wRV/VcItiwPkiDfCy151958xTCJpahdxqaz7rV3oJpnXAmh
         7qANESjHukMGjQIOgGPee28ptZAoME3VWIIludi1y0GpWzId1X91serNCOscBEtKmazW
         Wptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737736665; x=1738341465;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Cg1aTXrhXUeJuoOTW6g56F8Oc3uRQ7NHkPOeEA+76to=;
        b=vGeWny2oP9TKYyWvo88MtDC9Zn80p5oAgdYHxuEL2hLXkewYY99/D1TC0az5t140ao
         Ou0wDb6j2+rCEIjWgWDBJKHGPsV66Fs501MzIYI5Gq44A5WZekUYwn5A9QCH5TdcgUz8
         4BsREdBqhuR2oOfrHl1TJab1NVG57vkm/h7RJdvSsFGD7W4BGOvsdwczOLJZKpIwOqHD
         VrwItEaRezEOzOvVKhFJc/ICPuiJJpKpy/aHe4r7Re4SV2I4cBMHI0C/qh3fgmy7FGsi
         72vVpQV8bpJsqbbkUr9Oi5YGOaTMvfnWTFwUsC5wr5oXIFzYXf1L6pQESbJf+aV7Q62T
         DQhA==
X-Gm-Message-State: AOJu0Yy/yq9MaEG1wnnGzDBvGZqjNuZ5nnqRFqMVxpjyGmuxAHht/zWG
	QCxtURmwFaRgxECRQWce0/iQLIZSbmeB37JmpoWAwkcW/DiBc+YV836XikQXx5xvlinyp+dxz0M
	mig==
X-Google-Smtp-Source: AGHT+IH5mKvT7ybZdzHLgALBUWONZ+zg1RTUooBR72qTinLFEEOxB2vEcIah2SiURQGWPNxdXmGJFPjFR9g=
X-Received: from edcc5.prod.google.com ([2002:a05:6402:1f85:b0:5c9:4adc:9cf8])
 (user=gnoack job=prod-delivery.src-stubby-dispatcher) by 2002:a05:6402:518d:b0:5d0:ed92:cdf6
 with SMTP id 4fb4d7f45d1cf-5db7d30114amr67371323a12.19.1737736664899; Fri, 24
 Jan 2025 08:37:44 -0800 (PST)
Date: Fri, 24 Jan 2025 16:37:08 +0000
In-Reply-To: <20250124154445.162841-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250124154445.162841-1-gnoack@google.com>
X-Mailer: git-send-email 2.48.1.262.g85cc9f2d1e-goog
Message-ID: <20250124163709.168805-2-gnoack@google.com>
Subject: [PATCH man 1/3] landlock.7: Update description of Landlock rules
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-security-module@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>, 
	"=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This brings it up to date with the wording in the kernel documentation.

Cc: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
Cc: Tahera Fahimi <fahimitahera@gmail.com>
Cc: Tanya Agarwal <tanyaagarwal25699@gmail.com>
Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man/man7/landlock.7 | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index c6b7272ea..11f76b072 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -39,13 +39,25 @@ the running kernel must support Landlock and
 it must be enabled at boot time.
 .\"
 .SS Landlock rules
-A Landlock rule describes an action on an object.
-An object is currently a file hierarchy,
-and the related filesystem actions are defined with access rights (see
-.BR landlock_add_rule (2)).
+A Landlock rule describes an action on an object
+which the process intends to perform.
 A set of rules is aggregated in a ruleset,
 which can then restrict the thread enforcing it,
 and its future children.
+.P
+The two existing types of rules are:
+.P
+.TP
+.B Filesystem rules
+For these rules, the object is a file hierarchy,
+and the related filesystem actions are defined with
+.IR "filesystem access rights" .
+.TP
+.B Network rules (since ABI v4)
+For these rules, the object is a TCP port,
+and the related actions are defined with
+.IR "network access rights" .
+.BR landlock_add_rule (2)).
 .\"
 .SS Filesystem actions
 These flags enable to restrict a sandboxed process to a
--=20
2.48.1.262.g85cc9f2d1e-goog


