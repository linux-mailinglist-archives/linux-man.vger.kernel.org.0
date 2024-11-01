Return-Path: <linux-man+bounces-1824-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C13BF9B9A14
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 22:19:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 869C12813D6
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 21:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F166B1E7C37;
	Fri,  1 Nov 2024 21:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="z4wcX5QS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B85E1E7677
	for <linux-man@vger.kernel.org>; Fri,  1 Nov 2024 21:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730495923; cv=none; b=UxOzbACgPQxF0IcVUt4jmOBjf7K+Y69QZNgsNJ7In9iFxIS1qv05s33ZP/3F36QFK/Q+a3DzzzZKUs3I0YO9woyE43mK11ySHA/hckjqdRRl/G8SNMf05phnuVE6L2TLuzRARoBedy7DHQCh/1PIF0lMVNepNBGZ9H2IbGf9Nqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730495923; c=relaxed/simple;
	bh=mfCiTpr2QOPpbszLeJwRkXRjORodfjBcHSOLMJLiIIY=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=McAasNlI85057oPQk9Fu/u2KZWer3Bs+7N0JdqNi0czXXxvfSSF+BlJfhhuTiHrrPeYklgXp1crnUp5wZ6RSzgI0HQSXWziBy8S1KhLHqWQr6KJaFmHEM0p7VRQDNLUzsCGzdy5VFAI9651WR/TiP8VLZY7+BO0C0dD9GveEJ8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=z4wcX5QS; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-e2971589916so4699974276.3
        for <linux-man@vger.kernel.org>; Fri, 01 Nov 2024 14:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730495921; x=1731100721; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=TjhT04moS+pzhk4qD4GZREcRn5lEbBBr+8ByueC2BeM=;
        b=z4wcX5QSaHtFnUiL3HB5zSauW1OnHoeXbdr7KXjtc5bzUFLwGli6L4MpGRI69p+PMh
         EInvbB0yGlWd+JPppsM9UthqMBWUD/ycFqKfucvZ5lm9EJ5dnhFQMdFLhelgIEl19dYF
         eoPFMvgipGar3TDMOkS8s5lyWeuHDd0TZfeD3R1D1dacVJEtZjCpWF887X3WT9ELtzeZ
         hOMPtcpokScrKVGawTaK9cgPFhhf5VPWTB3/E5lr2MworVFgGNCIdav8cJfjPed46/hj
         Bmvm7lmBKz/JK4MBHHVE4mh4PuDs7qeMdb+fLhRxfssYg4kDC8vZcAxm0r/Jgx9AXJmz
         s6Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730495921; x=1731100721;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TjhT04moS+pzhk4qD4GZREcRn5lEbBBr+8ByueC2BeM=;
        b=VTcEk3XV6YzQIbh/aIxlsuxmWfcIBM7fIon9T4LaF3GCH8v0zYQYmfv4g3CdTvoPQJ
         tzykfFH04J/CYKNdf3gBWVuGhe3hEDz6YkOJVKqy3qWJ12ZG47j5OwI5ViJtg90uZOCR
         lsMejEGFg+psi/Cb3Z8Aqwklt8Oojpv9LMjSxfQ3CfBx22hM2VNqJineYvhdufB056d0
         i0JFFQTxnKi68Pj52/5dmO/TnLBWhnm8HX4UHS0JkITmaR51nhQzmWK6AroSbaKwlIAC
         qRLENOU8mqb8LEVuDDuaKTlW0xItSzVqQ2lpfoHuUThfyDe2E8x7t7EnIvR3zN8kji2F
         TVkw==
X-Forwarded-Encrypted: i=1; AJvYcCWX45IawoEWB956EJKPpbI4ZSGK61csvB3ewo2LJkH3LZd7pBqxFLa0eI6gu8xdUy0iOV5Dg7c2WkA=@vger.kernel.org
X-Gm-Message-State: AOJu0YwHEunzz6bFctG1tAbdsHa/fBrxP6VqZrthfpzqUatk0YQlDCuv
	berbEHOG6TMkKAfK+QVhQ/bm70OqPeNNOpYk+CZ/t4r7SMEZt5hR6g3sPqBO0/lMamNtZSNZZeu
	prpZvNA==
X-Google-Smtp-Source: AGHT+IHXm26c8WZH+UjkbUUruw7NFdpvbU7c2tkYNL/I8+s9eDGfk36rQjWRvXRdCXMkraXiJKlP61gSHtxm
X-Received: from irogers.svl.corp.google.com ([2620:15c:2c5:11:f2e6:5ab5:a95f:35cb])
 (user=irogers job=sendgmr) by 2002:a25:6b49:0:b0:e0e:8b26:484e with SMTP id
 3f1490d57ef6-e30e5b41dffmr4636276.8.1730495921311; Fri, 01 Nov 2024 14:18:41
 -0700 (PDT)
Date: Fri,  1 Nov 2024 14:18:29 -0700
In-Reply-To: <20241101211830.1298073-1-irogers@google.com>
Message-Id: <20241101211830.1298073-3-irogers@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20241101211830.1298073-1-irogers@google.com>
X-Mailer: git-send-email 2.47.0.199.ga7371fff76-goog
Subject: [PATCH v4 3/4] proc_pid_fdinfo.5: Add subsection headers for
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
index be1675b69..b7efde8f4 100644
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
2.47.0.199.ga7371fff76-goog


