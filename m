Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DAA1B1A0F66
	for <lists+linux-man@lfdr.de>; Tue,  7 Apr 2020 16:36:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729293AbgDGOf4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Apr 2020 10:35:56 -0400
Received: from mail-qk1-f196.google.com ([209.85.222.196]:35754 "EHLO
        mail-qk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729103AbgDGOfz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Apr 2020 10:35:55 -0400
Received: by mail-qk1-f196.google.com with SMTP id k134so1840151qke.2;
        Tue, 07 Apr 2020 07:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=f/EAzeoB610Oj5d/VUk9L0zsAWvphNQPe8+Su9+KStA=;
        b=hXYnTdb5Tc1HFfd65aj7th2iEeVuJUs7F04W/T6aL2Nbo9ZT295OMiLKJ2DY22WAVW
         1d5jVdaDz6TTlRkFfo7bF0ok/Dd4Et/xp3vxs3u9GsmaugOB2hdSMjp2l9fsSSCqU0X5
         eT7TDHCKsYCoFd5d0y9GMmYiPYWG2s+Q2GijGkqDvNYO1t9DFWM7UaAFdE7SLhxjDir0
         1FVb2df4QCGfD6WCUkHwY7KmuKoLoXsIUf9rM+MC3g9mFyFb75fQTIv+8C9msfZ8Nt7V
         7ZXDvx0uvqZ8szNCp/hJceVeDLIcXvpxJCTGDfj1TbIzo7DXiTPZijzVlJpxesaHseh3
         kzFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=f/EAzeoB610Oj5d/VUk9L0zsAWvphNQPe8+Su9+KStA=;
        b=e1uruSfT8b4QVRua53M5UGUdAsq7aNIQt/gPub6AOyABkX2EVOydsc2ZqKljvIx2tX
         Injr4VzLBjDH4WOVNXzSiI0/zWknQ4hO4GrlJjDTQpH6EU2vj685vQ/O6ldAWCMqCbxK
         Sle29H/X9vycbx7ZjfW2mvZV4ZiE+xk24CB6GHuOdnIBRsQBmuhgvIEjkJaFhSGYg18n
         xRntYf92DZOXXdXU2uD9KSu3Em/KZCJjIdq4mpVC60+EWqv4gjB65pBnU8/BoQFFnl/g
         aE3JVhEjI+Z6j/+6y5ruICdAEEESHUdCGxX5RxLcnqLq9+1TqQIcROMRNNeOq9/PTzV0
         QrQA==
X-Gm-Message-State: AGi0PuYAO3ERSCFsi/8hlgQKIuQypc6luSNrsv/T2jHS95/ZSV/j7TkL
        GFdtAc+DSCcoCs2nkCTY9Fs=
X-Google-Smtp-Source: APiQypKN/wCh5Y0oRNAUu4qvqoRkmbwJqo6zfj+JHzbv3MFGWDMxpAH+FrYP30uO7fgCgdwMDwIJew==
X-Received: by 2002:a37:8044:: with SMTP id b65mr2523229qkd.238.1586270154328;
        Tue, 07 Apr 2020 07:35:54 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id i20sm15917175qkl.135.2020.04.07.07.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2020 07:35:53 -0700 (PDT)
From:   Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
        id C3583409A3; Tue,  7 Apr 2020 11:35:51 -0300 (-03)
Date:   Tue, 7 Apr 2020 11:35:51 -0300
To:     Alexey Budankov <alexey.budankov@linux.intel.com>
Cc:     Peter Zijlstra <peterz@infradead.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Ingo Molnar <mingo@redhat.com>,
        James Morris <jmorris@namei.org>,
        Namhyung Kim <namhyung@kernel.org>,
        Serge Hallyn <serge@hallyn.com>, Jiri Olsa <jolsa@redhat.com>,
        Song Liu <songliubraving@fb.com>,
        Andi Kleen <ak@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        Igor Lubashev <ilubashe@akamai.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "linux-security-module@vger.kernel.org" 
        <linux-security-module@vger.kernel.org>,
        "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
        "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v8 00/12] Introduce CAP_PERFMON to secure system
 performance monitoring and observability
Message-ID: <20200407143551.GF11186@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <20200407143014.GD11186@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200407143014.GD11186@kernel.org>
X-Url:  http://acmel.wordpress.com
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Em Tue, Apr 07, 2020 at 11:30:14AM -0300, Arnaldo Carvalho de Melo escreveu:
> [perf@five ~]$ type perf
> perf is hashed (/home/perf/bin/perf)
> [perf@five ~]$ getcap /home/perf/bin/perf
> /home/perf/bin/perf = cap_sys_ptrace,cap_syslog,38+ep
> [perf@five ~]$ groups
> perf perf_users
> [perf@five ~]$ id
> uid=1002(perf) gid=1002(perf) groups=1002(perf),1003(perf_users) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
> [perf@five ~]$ perf top --stdio
> Error:
> Failed to mmap with 1 (Operation not permitted)
> [perf@five ~]$ perf record -a
> ^C[ perf record: Woken up 1 times to write data ]
> [ perf record: Captured and wrote 1.177 MB perf.data (1552 samples) ]
> 
> [perf@five ~]$ perf evlist
> cycles:u
> [perf@five ~]$

Humm, perf record falls back to cycles:u after initially trying cycles
(i.e. kernel and userspace), lemme see trying 'perf top -e cycles:u',
lemme test, humm not really:

[perf@five ~]$ perf top --stdio -e cycles:u
Error:
Failed to mmap with 1 (Operation not permitted)
[perf@five ~]$ perf record -e cycles:u -a sleep 1
[ perf record: Woken up 1 times to write data ]
[ perf record: Captured and wrote 1.123 MB perf.data (132 samples) ]
[perf@five ~]$

Back to debugging this.

- Arnaldo
