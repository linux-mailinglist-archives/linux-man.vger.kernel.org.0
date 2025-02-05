Return-Path: <linux-man+bounces-2348-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EABA29A15
	for <lists+linux-man@lfdr.de>; Wed,  5 Feb 2025 20:31:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5627165ADC
	for <lists+linux-man@lfdr.de>; Wed,  5 Feb 2025 19:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DEB91547F2;
	Wed,  5 Feb 2025 19:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=tapscott.me header.i=@tapscott.me header.b="qYZNs5cg"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982B7210FB
	for <linux-man@vger.kernel.org>; Wed,  5 Feb 2025 19:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738783887; cv=none; b=oQU9f2B6PV/B/nhgtwmv12f/la4riCiMny4gX/Ens4QaJhJFyEAhUFDc4PO00JK6P7WAbQ0+QqBDx7HlxmP6D/om76otjP8raA9gz5AGkI8ALVI46/ER1uJi8k4UTIDAF0Yi25p3KsUOOcFz/l2mxR+2PD8HSIdzSyQI4LwQ0q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738783887; c=relaxed/simple;
	bh=YO6dLfRCstJPDXEMCBEG1MNkR5kNw3kKVAUORcAvN0c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZCkMUvqOnDBXzk1wP8zxgiuV4nYamSRNZYtXKhdVc24WdulWQs0PXVtG9nRUK+lk/dOFsEubJrShwqi9tBwcAGbashJm/gzRwjZwq7iqChwN0ADG49weRMMnePf7qtPPIDiIETKKZ1f7CuLFCG73AjtOeQRAWUSG/djtqsoiPPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tapscott.me; spf=pass smtp.mailfrom=tapscott.me; dkim=pass (1024-bit key) header.d=tapscott.me header.i=@tapscott.me header.b=qYZNs5cg; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tapscott.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tapscott.me
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2ef72924e53so94385a91.3
        for <linux-man@vger.kernel.org>; Wed, 05 Feb 2025 11:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tapscott.me; s=google; t=1738783885; x=1739388685; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YO6dLfRCstJPDXEMCBEG1MNkR5kNw3kKVAUORcAvN0c=;
        b=qYZNs5cg4I9W0QwMDXgDgagviZ79iCK3ezLRjrslFn2N8RiJaj7aWDxpHwWX7MUZgG
         7/37zlXC6gtQplLGMOJWOJdKyPtBPs7o17GufTOD8z+1cfWPvBIe/Q3iQ/0VMWOefCx7
         TwuwJACbcikK0H9IT4qkdadJi09Fh22o4CFRA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738783885; x=1739388685;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YO6dLfRCstJPDXEMCBEG1MNkR5kNw3kKVAUORcAvN0c=;
        b=QvrWRLRIoGBvs1lCGqe1Smr2Xkn9P58UgV8w7Mjw6u0EvRCCxLSUY09oODiqKSsGW9
         pYR93hISODHR1Mnli7dtvmwIpiuWi0QvwMOSLjMbn/PwYtlxPa8qAi42zlJxXx20ZT5k
         7HjK8ah+SQaAXVomd1xtvJpI6FYZA9a0FTghgx/OmGFyzl0+ArlFeO6GJf7Tkwhh7Pe0
         xGm1HhGjSm702WIlqOSH5+ppW84Z+92lSSeZzjH2I53Ox12Rh09bUvTe94OTsSJ8VjFR
         El7ZwwE/eZZxwI5bm+pYk2jcgtqR7RDZOSnfpbuFGrJW9/ltj8xVZuBoo2LnLXeaJzT6
         uyYw==
X-Gm-Message-State: AOJu0YyiHgAwjeWMYnuulzAM5aPd3SRSJkWe3Wp8A21v5AuDMDgkUGJU
	i4CbGKMZ/ayB80GRoy0kYXsqULxUObrlf4U14KEVwBHdY4USr5wjKQjGbfQny87QFnDM4hThtfy
	KDz4Hr/RWmdBAP9tGaBWCuAUd107Q93SNpiu7P4Tm4h4ech4oWTjBDQ==
X-Gm-Gg: ASbGncsj/mdd0xLHBCJQpF1ygApSlpdz8O6ajJ9nJFiwWN/ZCHnaz4H3q3UbcFKFvxh
	SVFOy4dsCVwsgzL+QShkDGopVJ/3zlPw5KStKELE+p0MZZgwoB7go+XiTgGPBeenVil3qe5Sg
X-Google-Smtp-Source: AGHT+IG9kW/z3B0kngeXsaenOgwaw1fA0yd+rPZjyf53yM+91WVIE1VIW0fmzYiIxtfdHYJ65goK2gAytslCjQpg+UU=
X-Received: by 2002:a17:90b:2c86:b0:2ee:a744:a4fe with SMTP id
 98e67ed59e1d1-2f9e081058dmr5958550a91.25.1738783884610; Wed, 05 Feb 2025
 11:31:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAAM_cidrPK1W+K-nb1gY_QHbveKguOMzG34NJ=_QKhz49=vh9A@mail.gmail.com>
 <roqxwpqg6s6ixfqhespsusppefzv6ta5lpmhu2424gzbeyyksm@eoqao3ydz2vp>
In-Reply-To: <roqxwpqg6s6ixfqhespsusppefzv6ta5lpmhu2424gzbeyyksm@eoqao3ydz2vp>
From: Cody Tapscott <cody@tapscott.me>
Date: Wed, 5 Feb 2025 14:31:12 -0500
X-Gm-Features: AWEUYZnPVB0HDPHhGmPSrr_rpxoYXoE8jTd63Xvu-bMt-NyI-Zm_Asw1rPWYvJw
Message-ID: <CAAM_ciemoj0G8NZ7_0Fhr6tfJR5K08ZOXnmyMV1ePRmbOwaCRg@mail.gmail.com>
Subject: [PATCH v2] man/man2/perf_event_open.2: Clarify that exclude_kernel
 does not affect time_running
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Alex,

Thanks for the guidance.

I've done my best to incorporate your feedback in the updated patch below.

> Have a lovely day!
You as well! Thanks

Cody

---
The goal of this patch is to clarify some limitations regarding re-scaled event
counts measured via perf_event_open.

The man page recommends re-scaling event counts as (value * time_enabled
/ time_running), but does not mention that some time-filters (esp.
exclude_kernel and exclude_user) do not affect the reported time_enabled or
time_running, sometimes causing a very noisy estimate of the true event count.

This limitation is easy to encounter when profiling events that are dominated
by kernel (>= 50%) vs. user time and which are relatively short compared to
the PMU muxing frequency (~several milliseconds, on my machine). In those
cases, it is common to see (time_running / time_enabled) report, e.g., ~50%
active time when perhaps almost none of the user time was actually spent
with the counter running, leading to a dramatic under-estimate of the event
counts.

Signed-off-by: Cody Tapscott <cody@tapscott.me>
---
 man/man2/perf_event_open.2 | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2
index bcc6a39cb..bc22a3b12 100644
--- a/man/man2/perf_event_open.2
+++ b/man/man2/perf_event_open.2
@@ -1063,9 +1063,22 @@ .SS Arguments
 .TP
 .I exclude_user
 If this bit is set, the count excludes events that happen in user space.
+.IP
+Note this does not affect the
+.I time_running
+or
+.I time_enabled
+fields, so enabling this may impact the reliability of the estimated
total counts in the presence of multiplexing.
 .TP
 .I exclude_kernel
 If this bit is set, the count excludes events that happen in kernel space.
+.IP
+Note this does not affect the
+.I time_running
+or
+.I time_enabled
+fields,
+so enabling this may impact the reliability of the estimated total
counts in the presence of multiplexing.
 .TP
 .I exclude_hv
 If this bit is set, the count excludes events that happen in the
@@ -1677,6 +1690,16 @@ .SS Reading results
 and
 .I time running
 values can be used to scale an estimated value for the count.
+.IP
+Note that for most events these values are not affected by
+.IR exclude_hv ,
+.IR exclude_idle ,
+.IR exclude_user ,
+or
+.I exclude_kernel
+and,
+if these are enabled,
+the scaled estimate may be significantly less reliable in the
presence of multiplexing.
 .TP
 .I value
 An unsigned 64-bit value containing the counter result.
--
2.34.1

