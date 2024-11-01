Return-Path: <linux-man+bounces-1823-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B369B9A12
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 22:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F98C1F2307E
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 21:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD9171E6338;
	Fri,  1 Nov 2024 21:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="OFig/7my"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D441E47B6
	for <linux-man@vger.kernel.org>; Fri,  1 Nov 2024 21:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730495921; cv=none; b=ANiPu+z6/efxz9t/E4fK508QIAHJoLXId6rTfmOXYJ31iLyOCGMyMlh9BWP6XiwjBnsqOBAuSQwzWiNljajvuTbOc11oVx/SccqeNckEJ+C4iKzyaqQgAGC8uwKmRahD//Sn6dnktTAOxVWFTGeJNDJnXQqkF4UMZzwZjhbZAUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730495921; c=relaxed/simple;
	bh=wA8DyS485XsRUmMcTcb7PAcQoe2eQcjrWA6JUkUhVMU=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=NpP7XvQcZZb68EDMqTgsLVTZyLd7c+qvZ/HsVqtrSgCJCnZOcXGkMQWDEtMX014JdX6O6IfJmyrzVTS4MxldA+uK38cbJ3LJ3hTboED0Wb47tgSkhJGoscIF6wwlRBbtcyO2bEkQxncnlnu8TI1HnjRsRqR98rMv5+0dUJe1s6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=OFig/7my; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-6e6101877abso50161187b3.0
        for <linux-man@vger.kernel.org>; Fri, 01 Nov 2024 14:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730495919; x=1731100719; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=7PJ/2oZM0NegT7a5kDJ3aS9OgH6F8LEnJac0dVeN2cw=;
        b=OFig/7myZxQpYMiDjxIxeGBYcpwRnBsmjhy7c9DlVgaH0Le2pxKCFnN8dPSIhenfaO
         8sEkvhESrz5vu5CeXOsrx8hsBlNtFv5jiQx97AQv4vGtEx2inGfOwv4wO9vGK59PNoBW
         5Yj4ATjcyDc8x+z2gq6A1GaAbYOc4AmqFgEF0kzx6jQBE9gmLYLg5Bq3dEjjg1Tc6eC+
         /fKR8Sawi3+oh9WwWLoVRLVbKNRLCK/EawJCubKmitypEY8uigCKkSh380gwBefaxwcE
         A1K7qTaBsPMC1jomgcCWtu16VoW48MQ/XftgKFw7DybwyzYn0CfNUCEVT5nsHJ15DM2j
         B2lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730495919; x=1731100719;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7PJ/2oZM0NegT7a5kDJ3aS9OgH6F8LEnJac0dVeN2cw=;
        b=rdHzpyBkVjr8wzLRMmW3ifyLQ7YP6ffQ4AAv0+mBC4Hk9fmHcY8agDK7yKDLjGfGCI
         kg9pUU6aahavkO0kN6mlWddpSIHJ/rikU3+xizWTHDDUFdbD/bimRyPw8c6X5X/78AiY
         uaOcIVS+9iusUn0DIClC9yU0KDoxsemopMOuFbgu3959kDuaBHSMlgNNsfRaamaiD5ho
         +zvmqoe5xOJezT5D0vjScRPpPYtoPL0nkfat3yiVXJM3VThhnKEAurN4p6TZNFurUmjx
         OPhLwX6/gznIgOxnmkRyYtLCbHc+FJOEpr/RDcEsGFgly9krJCMuzf7qOBP6s08V9jBM
         JrpA==
X-Forwarded-Encrypted: i=1; AJvYcCWo+nM0L1BKJo17Fogh3LNbs6olxLDD7omlb3n6OoL7ruDxmY5CasYj1dvqW2sg/5SD02jLfHGu6ao=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7wV2qmRqP+RXt5Lbbj1rpdie83uN4BL/+AfPIQda/pX776YSD
	jo3kbZTBJTem8agbzCDgMX6iIwX1s39xVNFsYHX6BwndiSGjJsd94lgYQ1ttMFr/SHxgfDM4V8T
	QBkmzSA==
X-Google-Smtp-Source: AGHT+IF5V1HJGBWziiGDeXXMkzf2czx8Sfxn3tBr/5H0nwa1W8aFmG7SyX3wNTs33/2yNGg5OwGEuXPobUmv
X-Received: from irogers.svl.corp.google.com ([2620:15c:2c5:11:f2e6:5ab5:a95f:35cb])
 (user=irogers job=sendgmr) by 2002:a25:a1e9:0:b0:e30:b93a:b3e4 with SMTP id
 3f1490d57ef6-e33025549e4mr5858276.4.1730495919069; Fri, 01 Nov 2024 14:18:39
 -0700 (PDT)
Date: Fri,  1 Nov 2024 14:18:28 -0700
In-Reply-To: <20241101211830.1298073-1-irogers@google.com>
Message-Id: <20241101211830.1298073-2-irogers@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20241101211830.1298073-1-irogers@google.com>
X-Mailer: git-send-email 2.47.0.199.ga7371fff76-goog
Subject: [PATCH v4 2/4] proc_pid_fdinfo.5: Make pid clearer in the name and
 1st paragraph
From: Ian Rogers <irogers@google.com>
To: Alejandro Colomar <alx@kernel.org>, "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-man@vger.kernel.org, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"

Previously the pid was highlighted through being a tagged paragraph
but not mentioned in the description. Add italics to the path
emphasizing pid and then change the first sentence to include pid in
the definition.

Suggested-by: G. Branden Robinson <g.branden.robinson@gmail.com>
Signed-off-by: Ian Rogers <irogers@google.com>
---
 man/man5/proc_pid_fdinfo.5 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man/man5/proc_pid_fdinfo.5 b/man/man5/proc_pid_fdinfo.5
index ad739bd84..be1675b69 100644
--- a/man/man5/proc_pid_fdinfo.5
+++ b/man/man5/proc_pid_fdinfo.5
@@ -6,10 +6,11 @@
 .\"
 .TH proc_pid_fdinfo 5 (date) "Linux man-pages (unreleased)"
 .SH NAME
-/proc/pid/fdinfo/ \- information about file descriptors
+.IR /proc/ pid /fdinfo " \- information about file descriptors"
 .SH DESCRIPTION
-This is a subdirectory containing one entry for each file which the
-process has open, named by its file descriptor.
+This subdirectory contains one entry for each file that process
+.IR pid
+has open, named by its file descriptor.
 The files in this directory are readable only by the owner of the process.
 The contents of each file can be read to obtain information
 about the corresponding file descriptor.
-- 
2.47.0.199.ga7371fff76-goog


