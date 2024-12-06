Return-Path: <linux-man+bounces-2130-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 517F19E681B
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 08:39:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E9741883F76
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 07:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC5141DF983;
	Fri,  6 Dec 2024 07:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="nMJxkAmM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AABF91DB938
	for <linux-man@vger.kernel.org>; Fri,  6 Dec 2024 07:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733470721; cv=none; b=RxRKi0OvpWa2sP8z7E3YMWrlSfmRg8X2vZtflFSwPEAX9BzUxjGj6CHnLbz0/642tTMX6OJ3MHov5TQoHpD7TJFmkEfguTAxW/GQiF9VBIKr49bG/a1+zidS8/xvHG+VYPJeEcH8A8R4yid0RqYPt67zkLL9ASqTbJHz94xZkSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733470721; c=relaxed/simple;
	bh=Eu+TXKTdVF/rr81EhKAUlxAfVv0EUjDZUkx+3iw+f9I=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=ja2hFpTG+XtJSWQDk0PO99fJqNKVuGSnZQoY5skdR76yNDQYMZg54xsCl2cj/lygmiNww+Pvu2v0IxS/0elW8UlcNyjOYZKBDfPH/p+kdy40mI7zRtm66MsLWYXXuAiud0KZeJNDXybf8n865m3XuN4hibZNH8lMsKhtPz9KWIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=nMJxkAmM; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-6ef6e33c182so18193297b3.2
        for <linux-man@vger.kernel.org>; Thu, 05 Dec 2024 23:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733470719; x=1734075519; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=6tcWcwiswh578N5Sbvm8C5ZdbM+ZrqY2qCpqOjcQh4Y=;
        b=nMJxkAmMO0mMqTNjwxSkzUk1UjYMDrOafWq4y3FinQFjki29Z7s9NuOctat1QK5Rhs
         G1vlGRjSaiBFbwM3o06PMtRClMXtkMGKI57Na752wsNDFKQYF3FpYR4UVbIyBuyFIyyd
         0Vv78F5ixBYICRz091gqGI8ciWVzZ2sUvfmwzAOt8UNqKFsF4cVKWfsjxvcptWk5azm5
         aOTQXQPyz1bXfiuzmKagnOGKX648cBBx5aFZp90maeysnlmmpJKyKJdpGLywWokEZx+o
         9fX+DOvZZCtF+u1PquaA1yKsHOIPBVBo0SZGm1jpJNxsYu5BaXGfDAUi/LGYYq8WThnc
         Wo2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733470719; x=1734075519;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6tcWcwiswh578N5Sbvm8C5ZdbM+ZrqY2qCpqOjcQh4Y=;
        b=YtPA2/jsL6AxrIWHKoYQVXwcFzKZ43vwITEnOzv11uY0zC/JnP9ghz177EjVelbljH
         +UZgAmu42Bb3RO05LFumPo9KG4hX0nodgDqMs0zLzGmP7YPWzBkKN73nsLN7UwKCQDff
         +AmZJvHrkv71L3Nhyb48OFWMGvtJ769nmmTqVF3It4mldsKPtdNfQBRnvWqkG7Ogc+5B
         uiuQRwfpClGWgARlHTTPg+BIXe9EWDcEAeXwdX8BUOqfQURP0zZP0FZ7S78wUue2/spg
         7LECSYa6cumP62y5ju9uFRfXHO1gb58ZUc1JtqhZeMH9ZRWwtWj2svnoQuKD8ZhHab8R
         UXaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOQwI/y6E5qzgwQgXZZIvb2qnUX6kWiIIrc0d1wF1ygfResHc9FfdvyF47Z2kLdBrAVrnP0SubJ5A=@vger.kernel.org
X-Gm-Message-State: AOJu0YzKbQJ4hOzs06vAdUQLeYIdMCoFTYrGC/myIZAyWy2nrvtMnCZb
	SubRFiVdcXMfp4JESiZknjbOjEFtudCpDzdljsWiZF/HmbjcxkfavPrHCOkACgAlmxrLp+67Hj+
	IxJ0KPQ==
X-Google-Smtp-Source: AGHT+IHrVWBoiYYD/xmXDfRagPogDl7UXMcm4NMrSYV9vi8DJr6U4VViFkFNqaosBMt+/zmkxpKfltUluk4l
X-Received: from irogers.svl.corp.google.com ([2620:15c:2c5:11:bff4:a354:8911:79b3])
 (user=irogers job=sendgmr) by 2002:a05:690c:5a05:b0:6ee:c295:c76e with SMTP
 id 00721157ae682-6efe3c8f290mr8697b3.6.1733470718867; Thu, 05 Dec 2024
 23:38:38 -0800 (PST)
Date: Thu,  5 Dec 2024 23:38:28 -0800
In-Reply-To: <20241206073828.1119464-1-irogers@google.com>
Message-Id: <20241206073828.1119464-4-irogers@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20241206073828.1119464-1-irogers@google.com>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Subject: [PATCH v5 4/4] proc_pid_fdinfo.5: Add DRM subsection
From: Ian Rogers <irogers@google.com>
To: Alejandro Colomar <alx@kernel.org>, "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-man@vger.kernel.org, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"

Add description of DRM fdinfo information based on the Linux kernel's
`Documentation/gpu/drm-usage-stats.rst`:
https://docs.kernel.org/gpu/drm-usage-stats.html
---
v5. Update style a suggested-by G. Branden Robinson
    <g.branden.robinson@gmail.com>
---
 man/man5/proc_pid_fdinfo.5 | 107 +++++++++++++++++++++++++++++++++++++
 1 file changed, 107 insertions(+)

diff --git a/man/man5/proc_pid_fdinfo.5 b/man/man5/proc_pid_fdinfo.5
index c4914f1f3..bb77ee9a7 100644
--- a/man/man5/proc_pid_fdinfo.5
+++ b/man/man5/proc_pid_fdinfo.5
@@ -300,6 +300,113 @@ fields contain the values that
 .BR timerfd_gettime (2)
 on this file descriptor would return.)
 .RE
+.SS Direct Rendering Manager
+.P
+DRM drivers can optionally choose to expose usage stats through
+/proc/pid/fdinfo/. For example:
+.P
+.in +4n
+.EX
+pos:    0
+flags:  02100002
+mnt_id: 26
+ino:    284
+drm-driver:     i915
+drm-client-id:  39
+drm-pdev:       0000:00:02.0
+drm-total-system0:      6044 KiB
+drm-shared-system0:     0
+drm-active-system0:     0
+drm-resident-system0:   6044 KiB
+drm-purgeable-system0:  1688 KiB
+drm-total-stolen-system0:       0
+drm-shared-stolen-system0:      0
+drm-active-stolen-system0:      0
+drm-resident-stolen-system0:    0
+drm-purgeable-stolen-system0:   0
+drm-engine-render:      346249 ns
+drm-engine-copy:        0 ns
+drm-engine-video:       0 ns
+drm-engine-capacity-video:      2
+drm-engine-video-enhance:       0 ns
+.EE
+.TP
+.BR drm\-driver: " .+  (mandatory)"
+The name this driver registered.
+.TP
+.BR drm\-pdev: " [0-9A-F]{4}:[0-9A-F]{2}:[0-9A-F]{2}.[0-9A-F]"
+For PCI devices this should contain the PCI slot address of the device
+in question.
+.TP
+.BR drm\-client-id: " [0-9]+"
+Unique value relating to the open DRM file descriptor used to
+distinguish duplicated and shared file descriptors.
+.P
+GPUs usually contain multiple execution engines. Each shall be given a
+stable and unique name
+.IR engine-name ,
+with possible values documented in the driver specific documentation.
+.TP
+.BI drm\-engine\- engine-name :\c
+\& [0-9]+ ns
+GPU engine utilization, time spent busy executing workloads for this client.
+.TP
+.BI drm\-engine\-capacity\- engine-name :\c
+\& [0-9]+
+Capacity of the engine if not 1, cannot be 0.
+.TP
+.BI drm\-cycles\- engine-name :\c
+\& [0-9]+
+Contains the number of busy cycles for the given engine.  Values are
+not required to be constantly monotonic, but are required to catch up
+with the previously reported larger value within a reasonable
+period. Upon observing a value lower than what was previously read,
+userspace is expected to stay with that larger previous value until a
+monotonic update is seen.
+.TP
+.BI drm\-total\-cycles\- engine-name :\c
+\& [0-9]+
+Contains the total number cycles for the given engine.  This is a
+timestamp in GPU unspecified unit that matches the update rate of
+drm\-cycles\-\fIengine-name\fP.
+For drivers that implement this interface,
+the engine utilization can be calculated entirely on the GPU clock
+domain, without considering the CPU sleep time between 2 samples.
+.P
+Each possible memory type which can be used to store buffer objects by
+the GPU in question shall be given a stable and unique name
+.IR region .
+The name "memory" is reserved to refer to normal system memory.
+.TP
+.BI drm\-memory\- region :\c
+\& [0-9]+ [KiB|MiB]
+The amount of storage currently consumed by the buffer objects belong
+to this client, in the respective memory region.
+.IP
+Default unit shall be bytes with optional unit specifiers of 'KiB' or 'MiB'
+indicating kibi- or mebi-bytes.
+.TP
+.BI drm\-shared\- region :\c
+\& [0-9]+ [KiB|MiB]
+The total size of buffers that are shared with another file (e.g., have more
+than a single handle).
+.TP
+.BI drm\-total\- region :\c
+\& [0-9]+ [KiB|MiB]
+The total size of buffers that including shared and private memory.
+.TP
+.BI drm\-resident\- region :\c
+\& [0-9]+ [KiB|MiB]
+The total size of buffers that are resident in the specified region.
+.TP
+.BI drm\-purgeable\- region :\c
+\& [0-9]+ [KiB|MiB]
+The total size of buffers that are purgeable.
+.TP
+.BI drm\-active\- region :\c
+\& [0-9]+ [KiB|MiB]
+The total size of buffers that are active on one or more engines.
+
 .SH HISTORY
 Linux 2.6.22.
 .SH SEE ALSO
-- 
2.47.0.338.g60cca15819-goog


