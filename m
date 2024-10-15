Return-Path: <linux-man+bounces-1801-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 545A999F8ED
	for <lists+linux-man@lfdr.de>; Tue, 15 Oct 2024 23:17:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2C721F22249
	for <lists+linux-man@lfdr.de>; Tue, 15 Oct 2024 21:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 491351FBF69;
	Tue, 15 Oct 2024 21:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="3soUHO3B"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB181FAF16
	for <linux-man@vger.kernel.org>; Tue, 15 Oct 2024 21:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729027048; cv=none; b=tHIS8gNjU5oibbYm7y5uzs7NtXAPUshE4hYwoo6t6i1rbUGfJa+pOS/UkdkyfYUikYiUw2uev6kw/K5raTT/b0S3GfMshvzz/qESwmNeS1P8ogc/TYKn44bUdr6oOctjhNzlx9IQ/vVRSmyFmOBow3YXykz9sgCYV8RjbUm9/4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729027048; c=relaxed/simple;
	bh=OSoPMP8TH1jfd3P9ZF+OhgEsxfXDixx91HnmKCjgVsI=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=EtzrvghWYHuCaAok69b4mNu4LIXhmDbrQ0tLhVg5f43oXtuTfW4Kqys8xCGLlWFQRLfTYI56WdBZdGi4wCTfkHmQSRME3IgZEpT0VjR2YyiBQyKZfZiFlgsCqsA8/3RfKlyks2T1mwmb3rOjEReTC/h5uUlQqTCPepz+g/gJe3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=3soUHO3B; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-6e35199eb2bso68670087b3.3
        for <linux-man@vger.kernel.org>; Tue, 15 Oct 2024 14:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729027045; x=1729631845; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=qp+83TpI3TezfCC8Dtvl97cBiL4JnurBtXXrj0jn8lw=;
        b=3soUHO3BRJ0A14oseU+SAK0WRchyp9wT10lzPSFCV2lC/6aMNam5Tx/zLTAhRTfdtR
         PZ5+O/LhbvK7RzyXwi0Eth+Rn1p970Eo9Rx+AWgtaOu3HSk3WaIGYpsn+zlCzue+xcTk
         Z7mAtjV6YP3ZPIR+tlOXp+ovypDfaSsTj/8M31WXqWqwW9n3grr9OwvdzktPfiERyO5V
         s/ixvB9ljmt2n72YnsVTA0PryzxJAp+WF3QLIISQD8zDk03A5PcYcZnAzxup96X3S2mb
         Z1UbDCWZMik215lSunHf41Te10Qo1EUikYKOgdPtGXBV9cLBJqrlgv1eoJ3JZA7UAJZP
         qiKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729027045; x=1729631845;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qp+83TpI3TezfCC8Dtvl97cBiL4JnurBtXXrj0jn8lw=;
        b=kTixuyHWFQU8e0ncM4AQzalYYrr4DUp2+wAJaajziffno5RRA+6St2O0cu+7etsZbM
         dYazw8Wh3DYYOlOK36NUHsAFRs0+sD4xuMOhdHxq5MXpQh4Fh/EYBA7Rw2MhqB3O3elS
         421kVkLz3XBFe6aostgAkQjrjxzUWmJjd0Hl/fp0GYsLCn/eCzfCqRxxBAOh5vNZIkQ0
         0Yjcl4Pw5P9ngAN156TSBX835zANw214ODvVNiFV9NZRWx61woZr5UT4KU2WHiN5FSOg
         8MmS0otEtCasnPlV1lqwEpzkE2ZbbNEv2vgKtow37eQA40nEAI2WtcNPUJ5vwJroFvHA
         Vm2g==
X-Forwarded-Encrypted: i=1; AJvYcCVu/JmMAaO2QPvKB0/uCqSJ5eL09z/592pQWjs1Gy6EeEUZSe6uISTgPZT3az7HH4gVy+a4La931lE=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp0LWJYNb3zG81WVjl3i5bb34By3C5MWW7yFHMp7VwOJV00OZ3
	3k233DKzKT5ptgtU+wqhYG5qjroP9DPGhqktfv8hD4qkPnePulN9krrk9m1RbmvdGnMKeKc8W7a
	ANA2mqA==
X-Google-Smtp-Source: AGHT+IEl3NSU1WdQwze6KAXwiH4egozRYT4wu4exGFfYWyRpDzyjB1F5KOwgYO3ID9qtJyh31DrebhRjau2i
X-Received: from irogers.svl.corp.google.com ([2620:15c:2c5:11:61a1:4d9d:aca1:ada])
 (user=irogers job=sendgmr) by 2002:a05:690c:7281:b0:6e3:1f46:77a6 with SMTP
 id 00721157ae682-6e3d40a2c01mr388767b3.2.1729027045640; Tue, 15 Oct 2024
 14:17:25 -0700 (PDT)
Date: Tue, 15 Oct 2024 14:17:18 -0700
In-Reply-To: <20241015211719.1152862-1-irogers@google.com>
Message-Id: <20241015211719.1152862-2-irogers@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20241015211719.1152862-1-irogers@google.com>
X-Mailer: git-send-email 2.47.0.rc1.288.g06298d1525-goog
Subject: [PATCH v2 2/3] proc_pid_fdinfo.5: Add subsection headers for
 different fd types
From: Ian Rogers <irogers@google.com>
To: Alejandro Colomar <alx@kernel.org>, "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-man@vger.kernel.org, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"

Make the sections about eventfd, epoll, signalfd, inotify, fanotify,
timerfd better separated with a clearer subsection header.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 man/man5/proc_pid_fdinfo.5 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man/man5/proc_pid_fdinfo.5 b/man/man5/proc_pid_fdinfo.5
index 8678caf4a..02eceac04 100644
--- a/man/man5/proc_pid_fdinfo.5
+++ b/man/man5/proc_pid_fdinfo.5
@@ -57,6 +57,7 @@ is the ID of the mount containing this file.
 See the description of
 .IR /proc/ pid /mountinfo .
 .RE
+.SS eventfd
 .P
 For eventfd file descriptors (see
 .BR eventfd (2)),
@@ -75,6 +76,7 @@ eventfd\-count:               40
 .P
 .I eventfd\-count
 is the current value of the eventfd counter, in hexadecimal.
+.SS epoll
 .P
 For epoll file descriptors (see
 .BR epoll (7)),
@@ -108,6 +110,7 @@ descriptor.
 The
 .I data
 field is the data value associated with this file descriptor.
+.SS signalfd
 .P
 For signalfd file descriptors (see
 .BR signalfd (2)),
@@ -133,6 +136,7 @@ and
 .BR SIGQUIT ;
 see
 .BR signal (7).)
+.SS inotify
 .P
 For inotify file descriptors (see
 .BR inotify (7)),
@@ -173,6 +177,7 @@ file is exposed as a file handle, via three hexadecimal fields:
 .IR fhandle\-type ,
 and
 .IR f_handle .
+.SS fanotify
 .P
 For fanotify file descriptors (see
 .BR fanotify (7)),
@@ -229,6 +234,7 @@ The mask of events that are ignored for this mark
 .P
 For details on these fields, see
 .BR fanotify_mark (2).
+.SS timerfd
 .P
 For timerfd file descriptors (see
 .BR timerfd (2)),
-- 
2.47.0.rc1.288.g06298d1525-goog


