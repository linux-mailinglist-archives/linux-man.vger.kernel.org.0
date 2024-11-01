Return-Path: <linux-man+bounces-1818-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7FC9B9828
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 20:12:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 055611F222CC
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 19:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04DF71CF5FE;
	Fri,  1 Nov 2024 19:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="LjCfXfHj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1851CF2AC
	for <linux-man@vger.kernel.org>; Fri,  1 Nov 2024 19:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730488326; cv=none; b=Ku086nSkQTV48SJhb6m7jQTElL3uRKJSvA7j0Lr0cILSdW84OIoAOD7hzDCaYpWeJvn38B9Aso9kVDiCRLBWN2k8V60rGw1j6f5moXrS7vwnG3M5TlvT/Lp1GjLMV40yRoNsFH8tjCUjU5OUra4FkCDv0LotVcuDEY5k4y1+y9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730488326; c=relaxed/simple;
	bh=qbQXMBXDll38zavw7idgfSxVYsvNRdaFG/TpLr0tJ1M=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=f84Irr+5iLZqWwl44QpNPCRpkBN4P5l3jNZag9Kf81GH6Nxq85KCOxyhPgCwtEBsmzOsR99dMg10ZJCanhhc+KdyvzJR5OjO1LoFAT4cFSaeZ1WYAuZ8YM8Ejiz0h9N0NfgOYTEPnu1zAt8WCOqK9OQLJoTJwaha19dAe81gGYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=LjCfXfHj; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-6e355f1ff4bso45886997b3.2
        for <linux-man@vger.kernel.org>; Fri, 01 Nov 2024 12:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730488324; x=1731093124; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=Gkz28xMAWt/2KXNBG3XjAFk4KTwZpcO3i3iJdGxkSFg=;
        b=LjCfXfHjZ1Lm7Vjn8TP8mQpZF2WmaGqMKG5jieXySYDIuBjLpfHuJlrfhLm2kxQ/gm
         Cd99jH2AyBpdtRtZWfHnoW8jLeTv9GreAEdN3/83MjRXVBU/8gSVCasxjt22JUb5zR7B
         lkzRpzWFjz0XHur4TL3Ge/uhAJWUgFSrwuTzUUWcmfA3oXO8qyoKYTr7+7QbDeteyQcM
         gJZ8RUplMODKGMqNI6G8+KmqmjvBZSI02zjunrHzPvINf4zBY8TJkKRKYF7ohKbx59Zv
         wDxWBqeh/WcyGXhG635b6Vc4yqzoGZaJOu5epWVV97YCb1o993yqdK5maXez0Re5T+Fq
         xU7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730488324; x=1731093124;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gkz28xMAWt/2KXNBG3XjAFk4KTwZpcO3i3iJdGxkSFg=;
        b=M9McMbM7349OxgCT3r1PzOP4u45Gunb5I7VS2pELO/YRWd3EYZZ8+VdhC3NvQdb0g3
         OKhipDY3YYMq8+glSAGVHupHmveNPV8XfPhRhjpsGDqX7bC7WpQ3IgNamzn+WosT9dSj
         zfEvbp6M/RWrFELPY9g5NQQ1rEPRVhVghbiwFEWhPOJpgrqu60JPaN/vzA0Ifv/FpELz
         g7CPKk7wNDX6MD2zyY+qEu4qU9rYnY43lAMFK5zOj6Xkf1xsP3KCctTGXJ77eSZx9QBm
         qBfl0tMFKdQc9R5P/C3tZLUt8Rtasx/HwlF3OjDgcD168YylOkblQXMMgeSEieT/Pc/v
         VUYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXttaEqbNrtw7KeAZdPeV3qnrhLCBzPk5VCQwSd7qWZ8jQy03abIRQA28b6acOwuq0lwcgYkdeXuqg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/3NQEwNms9hY3VbzQ98DXEIeuOtb5kJv81Og1MiVm1NccjbAp
	Pro6SZ+AomnpuNZ+MMJpIY/lOuBIN8JZ6oR9L1ywcIalQ1tQrhh1EPV8Ty9V0tXClnbs7DgKXYH
	e5qw4Rg==
X-Google-Smtp-Source: AGHT+IFNeLRXXudDwC0gCZ6v3ZzzirUae1o9p+zQDA9iH2FxOAlGCG5xI1JIXPP3rrEcjJqvieuCor38xzmk
X-Received: from irogers.svl.corp.google.com ([2620:15c:2c5:11:f2e6:5ab5:a95f:35cb])
 (user=irogers job=sendgmr) by 2002:a05:690c:6482:b0:6c1:298e:5a7 with SMTP id
 00721157ae682-6ea64bed332mr945727b3.5.1730488324379; Fri, 01 Nov 2024
 12:12:04 -0700 (PDT)
Date: Fri,  1 Nov 2024 12:11:55 -0700
In-Reply-To: <20241101191156.1272730-1-irogers@google.com>
Message-Id: <20241101191156.1272730-3-irogers@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20241101191156.1272730-1-irogers@google.com>
X-Mailer: git-send-email 2.47.0.199.ga7371fff76-goog
Subject: [PATCH v3 3/4] proc_pid_fdinfo.5: Add subsection headers for
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
index 935b54b4c..290cae6a6 100644
--- a/man/man5/proc_pid_fdinfo.5
+++ b/man/man5/proc_pid_fdinfo.5
@@ -58,6 +58,7 @@ is the ID of the mount containing this file.
 See the description of
 .IR /proc/ pid /mountinfo .
 .RE
+.SS eventfd
 .P
 For eventfd file descriptors (see
 .BR eventfd (2)),
@@ -76,6 +77,7 @@ eventfd\-count:               40
 .P
 .I eventfd\-count
 is the current value of the eventfd counter, in hexadecimal.
+.SS epoll
 .P
 For epoll file descriptors (see
 .BR epoll (7)),
@@ -109,6 +111,7 @@ descriptor.
 The
 .I data
 field is the data value associated with this file descriptor.
+.SS signalfd
 .P
 For signalfd file descriptors (see
 .BR signalfd (2)),
@@ -134,6 +137,7 @@ and
 .BR SIGQUIT ;
 see
 .BR signal (7).)
+.SS inotify
 .P
 For inotify file descriptors (see
 .BR inotify (7)),
@@ -174,6 +178,7 @@ file is exposed as a file handle, via three hexadecimal fields:
 .IR fhandle\-type ,
 and
 .IR f_handle .
+.SS fanotify
 .P
 For fanotify file descriptors (see
 .BR fanotify (7)),
@@ -230,6 +235,7 @@ The mask of events that are ignored for this mark
 .P
 For details on these fields, see
 .BR fanotify_mark (2).
+.SS timerfd
 .P
 For timerfd file descriptors (see
 .BR timerfd (2)),
-- 
2.47.0.199.ga7371fff76-goog


