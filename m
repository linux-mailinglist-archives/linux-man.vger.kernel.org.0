Return-Path: <linux-man+bounces-2576-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B1585A4CC35
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 20:51:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D937F18960BD
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 19:51:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBA09232367;
	Mon,  3 Mar 2025 19:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="RLNzNEtH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f74.google.com (mail-ed1-f74.google.com [209.85.208.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA541FFC60
	for <linux-man@vger.kernel.org>; Mon,  3 Mar 2025 19:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741031478; cv=none; b=a7/KMDKq8T9MmL3D3pdVYWM5oP+OGcqmQeWxTeSjNuozeVtj0mppBhpzGMqKcK2kgB0WNNFiyp2EN+1eZoVSwOp6m7dvu22orTuV75ydtQmP9BUpmvB///cwbP74w/zjo3t/7erd9sNZ8BZw/NKwrm44jTDHkbuDUb75JEuaJqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741031478; c=relaxed/simple;
	bh=aaD5dOxP3UhG9j8R+Yi0lmE0kCOvdMTAnYwL6OUBM+0=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Q4DlzcM5qtx7as2zrKFwZQ7N0f8iPpP4I/Mv3Qao6p0IXtTubFmqolkq41nOdCClTLUntBs1knBYQNbE78ylHWB5knccOaEQy2gHhgIWkygJ5jlIRYZ56MKHzca1AfHOgFnwsXi+fLWfFVgqcCKu/FBaVIoTBxsnfuctJ9w3bJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=RLNzNEtH; arc=none smtp.client-ip=209.85.208.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f74.google.com with SMTP id 4fb4d7f45d1cf-5e4c2618332so1308833a12.2
        for <linux-man@vger.kernel.org>; Mon, 03 Mar 2025 11:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1741031473; x=1741636273; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H1IXz06KnP32oSrGY8AP31MsAjFoyI+++VIpCHfdH5s=;
        b=RLNzNEtH36oN+R1vasKlK8uFb6XQjyHdjYsAIQeBfvi7XVYTmOR9jvcBVFOaV7jjXF
         R5XLHGdLwYAeB+PY+HMHKl9SN6I1wnzVLBIRTK86m5ynuxdiabOojCLYTBTWmKUqvx2N
         9PqZXHCfYSoJGpd8eE1KobNrVZ14nXtnJzZB3rjmmP0nM0aNPV8DpLUge9PDP5L7+hgc
         tz6i4FLaJj4xMMVxKeMU4L5dWLlCxX0aOqSxz8MuNdIOCpazriIfqffjPHeQULgNj5hY
         lrSH893hKUITJTl11ujwOIpkzrmAdtS3XhlE53PtJv4r6vjC2g099FKfdHSSrm1+sZ+s
         hIvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741031473; x=1741636273;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=H1IXz06KnP32oSrGY8AP31MsAjFoyI+++VIpCHfdH5s=;
        b=sB6Paol/L2Xoa3qJL9HV7XSxn0y4ehNFEysFzU6xiGlBOeZC+zClKGC1wm9ORr8c9N
         kz/4+F9T0ljJuVLmdkPcPFT20Y0YXpEZiMcCWRXvUBPjZwLHzHkjJk6wohNn6H/N56Cr
         nYVmDan0azEF84VxuKB24b/fwpkeNdwSMaCb/QiXNFQWPTjCT2PCyoRNqreGwBS7ksCl
         GTQJ3F+8FuVSTfaO1aJymrTY6NpaPDWtsilXXta2jMyEY+rnrtmcOd1gZQm1fbg2KNQH
         IEYF14LoJPdBidD541t9EkPCg9m5LqcYOc15JSzM2rn5QYjpqAINaeWaMJieykIKHeDc
         tpYA==
X-Forwarded-Encrypted: i=1; AJvYcCWTQvp2+EV9WIMI7O84v97w52u3LiO8kLNaAroCO2g4TGPyVnOrKvOu2gWxMSuGhtsZrgK3LI/MGOo=@vger.kernel.org
X-Gm-Message-State: AOJu0YzfY2usQ4JSh1hh+Z45nfqf7mbcW6Ukute0eHuyPf7BfZ2fAAdg
	wnaxZyj6IV5ewQmW/mRFP3H4C5pmURhLbWc/3x1S1SmscLfQzJ50/Y7qi+zsw/+KuA8fvQqLyXv
	cyg==
X-Google-Smtp-Source: AGHT+IGP3Tn9lGLfAoC8PduROeSD2+2DN90ubyho9SxSM8lqx6Il54mWfhAFkWQOChGZ8yHG1XILR8XB0Ms=
X-Received: from edbij6.prod.google.com ([2002:a05:6402:1586:b0:5de:45f9:8813])
 (user=gnoack job=prod-delivery.src-stubby-dispatcher) by 2002:a05:6402:350f:b0:5dc:58ad:b8d5
 with SMTP id 4fb4d7f45d1cf-5e4d6ad5fa3mr15045725a12.9.1741031473589; Mon, 03
 Mar 2025 11:51:13 -0800 (PST)
Date: Mon,  3 Mar 2025 20:50:29 +0100
In-Reply-To: <20250303194510.135506-2-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250303194510.135506-2-gnoack@google.com>
X-Mailer: git-send-email 2.48.1.711.g2feabab25a-goog
Message-ID: <20250303195056.136777-2-gnoack@google.com>
Subject: [PATCH man v3 1/2] landlock.7: Copy introductory description of
 Landlock rules
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>, 
	"=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, Tahera Fahimi <fahimitahera@gmail.com>
Cc: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org, 
	Daniel Burgener <dburgener@linux.microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Copy over the existing wording from kernel documentation, as it was introdu=
ced
in Linux commit 51442e8d64bc ("landlock: Document network support").  Landl=
ock
rules are not only about the filesystem any more and the new wording is mor=
e
appropriate.

Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man/man7/landlock.7 | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index c6b7272ea..7b7a797ad 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -39,13 +39,23 @@ the running kernel must support Landlock and
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
+.TP
+.B Filesystem rules
+For these rules, the object is a file hierarchy,
+and the related filesystem actions are defined with
+.IR "filesystem access rights" .
+.TP
+.BR "Network rules" " (since ABI v4)"
+For these rules, the object is a TCP port,
+and the related actions are defined with
+.IR "network access rights" .
 .\"
 .SS Filesystem actions
 These flags enable to restrict a sandboxed process to a
--=20
2.48.1.711.g2feabab25a-goog


