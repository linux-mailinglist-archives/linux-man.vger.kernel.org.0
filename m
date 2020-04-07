Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 35D701A11EC
	for <lists+linux-man@lfdr.de>; Tue,  7 Apr 2020 18:41:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728499AbgDGQkz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Apr 2020 12:40:55 -0400
Received: from mail-qk1-f193.google.com ([209.85.222.193]:39608 "EHLO
        mail-qk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728034AbgDGQkz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Apr 2020 12:40:55 -0400
Received: by mail-qk1-f193.google.com with SMTP id b62so2801qkf.6;
        Tue, 07 Apr 2020 09:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=NEBZoEbbGRpG5+efrS4YpEv5tZvQcL2k17oabanZi30=;
        b=m9E0bGcM1xVIO6HzwOiiw6azRMQ74K9HY/E+3Cq8ZYo+b2q/t/4DqwdDJysT1v2/jE
         /Fbw+z77aAyD2P+UZL/NhMvnvrX4mIAXXG4/6zyxXJSoSCTEF/6PwBr25bCL4Wdgl11G
         xE1YP75k2LXGGKeO0RfqexMQBXvkypqNCbnG8KDXj0GGIMsc/fxCnRSOpuQtldDxVBT5
         bKitoI/pXFqrGa6Tuno2w0+IeKCc15VeBK2o8DK2XbIfk3dLryz+nDLgDWir1FYORsOm
         YILS26DYbdWonLPnQAoI/lvv1QTpYxRO1rw/3K5Sqc9L7RWKCOLQMyA7GfTRGaA9C+HU
         msKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NEBZoEbbGRpG5+efrS4YpEv5tZvQcL2k17oabanZi30=;
        b=TX1Bd5QV0Bg0btTPFcaZIBZrMYhG/V80GxdGibLC1bxvEfD1+D7xLM5d3WnOfTRcRr
         h6Z+EW07xYF0MhkkGTyiLoTIvUcT/6RPgyG4sONAsaB+D+adCjw9XKVIke9LKhbyr4vG
         hCOk/tmNbCfJnFScD3XfQk/J0wC9+Mqea4EjT3RtHjg8Wp2sBsXoerbGn4zQHdsq4ArU
         DgZtUpPIswmGXIf7UUmCiAYs7ZrB2FBY23rITiuCP1g9pb9jr5mzbhesiOlmGW8T6p2K
         bljjhRVzHmE0hjTmlHB7agGm/UZKwF4kGEguw6UWA4iT5g1OmwBmAb95AtlV/RY2Taga
         MhJA==
X-Gm-Message-State: AGi0PuagSr77rO39BXpucNgfsvcnpcpXEkJ1tUEhGcwwKfXKFiEs0qZv
        YJjGEmq1E572Qh9ESJdL9GQ=
X-Google-Smtp-Source: APiQypLyjk8hC3wH5TspiRi3WgJRbW7/VmxEEgbMs9kvR9mUY96WFZvAa+DGSCDDJfubK+BP2ROymA==
X-Received: by 2002:ae9:c312:: with SMTP id n18mr3041970qkg.472.1586277652883;
        Tue, 07 Apr 2020 09:40:52 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id t11sm3230053qto.75.2020.04.07.09.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2020 09:40:52 -0700 (PDT)
From:   Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
        id 4A371409A3; Tue,  7 Apr 2020 13:40:50 -0300 (-03)
Date:   Tue, 7 Apr 2020 13:40:50 -0300
To:     Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Cc:     Alexey Budankov <alexey.budankov@linux.intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
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
Message-ID: <20200407164050.GC12003@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <20200407143014.GD11186@kernel.org>
 <20200407143551.GF11186@kernel.org>
 <10cc74ee-8587-8cdb-f85f-5724b370a2ce@linux.intel.com>
 <20200407163654.GB12003@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200407163654.GB12003@kernel.org>
X-Url:  http://acmel.wordpress.com
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Em Tue, Apr 07, 2020 at 01:36:54PM -0300, Arnaldo Carvalho de Melo escreveu:
> Em Tue, Apr 07, 2020 at 05:54:27PM +0300, Alexey Budankov escreveu:
> > On 07.04.2020 17:35, Arnaldo Carvalho de Melo wrote:
> > > Em Tue, Apr 07, 2020 at 11:30:14AM -0300, Arnaldo Carvalho de Melo escreveu:
> > >> [perf@five ~]$ type perf
> > >> perf is hashed (/home/perf/bin/perf)
> > >> [perf@five ~]$ getcap /home/perf/bin/perf
> > >> /home/perf/bin/perf = cap_sys_ptrace,cap_syslog,38+ep
> > >> [perf@five ~]$ groups
> > >> perf perf_users
> > >> [perf@five ~]$ id
> > >> uid=1002(perf) gid=1002(perf) groups=1002(perf),1003(perf_users) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
> > >> [perf@five ~]$ perf top --stdio
> > >> Error:
> > >> Failed to mmap with 1 (Operation not permitted)
> > >> [perf@five ~]$ perf record -a
> > >> ^C[ perf record: Woken up 1 times to write data ]
> > >> [ perf record: Captured and wrote 1.177 MB perf.data (1552 samples) ]
> > >>
> > >> [perf@five ~]$ perf evlist
> > >> cycles:u
> > >> [perf@five ~]$
> > > 
> > > Humm, perf record falls back to cycles:u after initially trying cycles
> > > (i.e. kernel and userspace), lemme see trying 'perf top -e cycles:u',
> > > lemme test, humm not really:
> > > 
> > > [perf@five ~]$ perf top --stdio -e cycles:u
> > > Error:
> > > Failed to mmap with 1 (Operation not permitted)
> > > [perf@five ~]$ perf record -e cycles:u -a sleep 1
> > > [ perf record: Woken up 1 times to write data ]
> > > [ perf record: Captured and wrote 1.123 MB perf.data (132 samples) ]
> > > [perf@five ~]$
> > > 
> > > Back to debugging this.
> > 
> > Could makes sense adding cap_ipc_lock to the binary to isolate from this:
> > 
> > kernel/events/core.c: 6101
> > 	if ((locked > lock_limit) && perf_is_paranoid() &&
> > 		!capable(CAP_IPC_LOCK)) {
> > 		ret = -EPERM;
> > 		goto unlock;
> > 	}
> 
> 
> That did the trick, I'll update the documentation and include in my
> "Committer testing" section:

I ammended this to that patch, please check the wording:

- Arnaldo

diff --git a/Documentation/admin-guide/perf-security.rst b/Documentation/admin-guide/perf-security.rst
index c0ca0c1a6804..ed33682e26b0 100644
--- a/Documentation/admin-guide/perf-security.rst
+++ b/Documentation/admin-guide/perf-security.rst
@@ -127,12 +127,19 @@ taken to create such groups of privileged Perf users.
 
 ::
 
-   # setcap "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
-   # setcap -v "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
+   # setcap "cap_perfmon,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
+   # setcap -v "cap_perfmon,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
    perf: OK
    # getcap perf
    perf = cap_sys_ptrace,cap_syslog,cap_perfmon+ep
 
+If the libcap installed doesn't yet support "cap_perfmon", use "38" instead,
+i.e.:
+
+::
+
+   # setcap "38,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
+
 As a result, members of perf_users group are capable of conducting
 performance monitoring and observability by using functionality of the
 configured Perf tool executable that, when executes, passes perf_events
