Return-Path: <linux-man+bounces-1825-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE549B9A18
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 22:20:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 88D92B22970
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 21:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A51F1F4FAC;
	Fri,  1 Nov 2024 21:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="UQMPVANn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D15A1F4725
	for <linux-man@vger.kernel.org>; Fri,  1 Nov 2024 21:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730495926; cv=none; b=Ig3Ujhh4Z//WaQfAowUoWt76twyTqLZW82uRuMvJgzwzpvviGyM382KfrE//wiprbFgGB0J10bIuELxV0HN1gGhrN/j0J//LtIZFE+uRfkz3o9rhFOh5qDf19Uza5woEBZ0Wtqq6K9+MoLCNe2vNUSRcBygFsBfDY+JJMdVp4/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730495926; c=relaxed/simple;
	bh=Awj3Jg1ogd2g+jOA0ktWCv4ePA/1467909DTGuGVo4o=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=tpGRU+cMetbmiaKh7k6JNDANK0RAqJN+PcR1Zs4XYFOpUby0C9OdZjgH9WbpgfyA3HRD+iOhFPlwRseq3zAsCXVf/C9awoyPOpyNNsPGxgZP0bNV1asEmaVTxyFycjPw30RqksYQlvn4AguP80rqX5sW+Zbjh7wlrcMVQnDgXM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=UQMPVANn; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-e30daaf5928so4985461276.1
        for <linux-man@vger.kernel.org>; Fri, 01 Nov 2024 14:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730495923; x=1731100723; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=ge6tq0CykQ0JdTcvuQi+p1TgzlbFfZoJPBWTv3905dE=;
        b=UQMPVANnKAUPghxAIjKDlzMug0xFOaKG8ov8DfUxhvF/OnjWqAk4uy1r3dwDmdHmBZ
         X8kbmsF1bhlXmKSQ7X/j1PXBFVLu9V59+DVau67B7pdkYxIZH0eGGoOqy3x7+UgQmM4G
         PWgCRIl4tTy1813HdQfCmEF8j7m04QR4U8FcnZqEeygQFDc0R8DQL/PaGXgdBwnlNqis
         PIJiXQ1i8qF/LYdzi8KR0kkaSrLKcZImU1KRsIFSu8gRGxw6Yc6qqN2ClHQ6UQDfMjzp
         7DOFKPbLu0IH1P+Xq0gcK8iS8xwirhGrka0LO3UdDPe8I2QowHN0R5zt+RerZS8r7YSo
         yo3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730495923; x=1731100723;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ge6tq0CykQ0JdTcvuQi+p1TgzlbFfZoJPBWTv3905dE=;
        b=umSE5dERSoJRwg+q0deAD+VGlOwoZdzUd4Ka1LS2nLR1dLaHlI96QnKpc9b1IekWyo
         ehRC5wfEcJikFdo7rTXqXUw+7RqnJNhBZig5qew2blVlh1ToLEURabS5b0RFCT8BOVoR
         OrW1I0Qo/y0TZy5ps5Qw0lNXvr8snzz5Y8GMt/NowvNp6tm/QNW8laeqSxhnFT5NewBE
         6T0bxOGuGuvJ7/Hix2QnoOw9eJ79j4uUB83oGEfEtJxdINbDH5INw2JA+9f0QO2jLglI
         2alD9pQx/V7NdvLfyJxHORqnCsp4JgDZSwDrLmiuqOjkeAVZWBNrp5KHp9eFS6Cf9K1m
         mW5A==
X-Forwarded-Encrypted: i=1; AJvYcCUefK4lmJOwu2KtshSFgmG415CVRS127qvBSbfyiPkQqgxbkltb9ko4ur1lxEaJtz/9uIvblCB9YXA=@vger.kernel.org
X-Gm-Message-State: AOJu0YxHK+aCSigFUTaZwwWAyK2LTVokRNyzVQPCmSAeO19mIjGgD6+x
	NyNcnlcP1KXyLgZ1wRzBOivbTTduLrPRexY610IK/xiLhqavPbnZKShDSlbZ9V7d2/XcGT1stNx
	SvPJFEQ==
X-Google-Smtp-Source: AGHT+IE/8CzI7i3EySC0vIuva6sxGxU1mgLMmC415LORgd6XesninyBQ7kr/kIBLxbPUm8vOr/8ZTo08y5s7
X-Received: from irogers.svl.corp.google.com ([2620:15c:2c5:11:f2e6:5ab5:a95f:35cb])
 (user=irogers job=sendgmr) by 2002:a25:dcd3:0:b0:e28:f231:1aa8 with SMTP id
 3f1490d57ef6-e3087a416d3mr103176276.2.1730495923359; Fri, 01 Nov 2024
 14:18:43 -0700 (PDT)
Date: Fri,  1 Nov 2024 14:18:30 -0700
In-Reply-To: <20241101211830.1298073-1-irogers@google.com>
Message-Id: <20241101211830.1298073-4-irogers@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20241101211830.1298073-1-irogers@google.com>
X-Mailer: git-send-email 2.47.0.199.ga7371fff76-goog
Subject: [PATCH v4 4/4] proc_pid_fdinfo.5: Add DRM subsection
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

Signed-off-by: Ian Rogers <irogers@google.com>
---
 man/man5/proc_pid_fdinfo.5 | 94 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/man/man5/proc_pid_fdinfo.5 b/man/man5/proc_pid_fdinfo.5
index b7efde8f4..bcaf33817 100644
--- a/man/man5/proc_pid_fdinfo.5
+++ b/man/man5/proc_pid_fdinfo.5
@@ -300,6 +300,100 @@ fields contain the values that
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
+.IR drm-driver: " .+  (mandatory)"
+The name this driver registered.
+.TP
+.IR drm-pdev: " <aaaa:bb:cc.d>"
+For PCI devices this should contain the PCI slot address of the device
+in question.
+.TP
+.IR drm-client-id: " [0-9]+"
+Unique value relating to the open DRM file descriptor used to
+distinguish duplicated and shared file descriptors.
+.P
+GPUs usually contain multiple execution engines. Each shall be given a
+stable and unique name (<engine_name>), with possible values
+documented in the driver specific documentation.
+.TP
+.IR drm-engine-<engine_name>: " [0-9]+ ns"
+GPU engine utilization, time spent busy executing workloads for this client.
+.TP
+.IR drm-engine-capacity-<engine_name>: " [0-9]+"
+Capacity of the engine if not 1, cannot be 0.
+.TP
+.IR drm-cycles-<engine_name>: " [0-9]+"
+Contains the number of busy cycles for the given engine.  Values are
+not required to be constantly monotonic, but are required to catch up
+with the previously reported larger value within a reasonable
+period. Upon observing a value lower than what was previously read,
+userspace is expected to stay with that larger previous value until a
+monotonic update is seen.
+.TP
+.IR drm-total-cycles-<engine_name>: " [0-9]+"
+Contains the total number cycles for the given engine.  This is a
+timestamp in GPU unspecified unit that matches the update rate of
+drm-cycles-<engine_name>. For drivers that implement this interface,
+the engine utilization can be calculated entirely on the GPU clock
+domain, without considering the CPU sleep time between 2 samples.
+.P
+Each possible memory type which can be used to store buffer objects by
+the GPU in question shall be given a stable and unique name <region>.
+The name "memory" is reserved to refer to normal system memory.
+.TP
+.IR drm-memory-<region>: " [0-9]+ [KiB|MiB]"
+The amount of storage currently consumed by the buffer objects belong
+to this client, in the respective memory region.
+.IP
+Default unit shall be bytes with optional unit specifiers of 'KiB' or 'MiB'
+indicating kibi- or mebi-bytes.
+.TP
+.IR drm-shared-<region>: " [0-9]+ [KiB|MiB]"
+The total size of buffers that are shared with another file (e.g., have more
+than a single handle).
+.TP
+.IR drm-total-<region>: " [0-9]+ [KiB|MiB]"
+The total size of buffers that including shared and private memory.
+.TP
+.IR drm-resident-<region>: " [0-9]+ [KiB|MiB]"
+The total size of buffers that are resident in the specified region.
+.TP
+.IR drm-purgeable-<region>: " [0-9]+ [KiB|MiB]"
+The total size of buffers that are purgeable.
+.TP
+.IR drm-active-<region>: " [0-9]+ [KiB|MiB]"
+The total size of buffers that are active on one or more engines.
+
 .SH HISTORY
 Since Linux 2.6.22.
 .SH SEE ALSO
-- 
2.47.0.199.ga7371fff76-goog


