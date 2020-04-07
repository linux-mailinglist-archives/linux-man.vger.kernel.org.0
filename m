Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3ECC41A0F2F
	for <lists+linux-man@lfdr.de>; Tue,  7 Apr 2020 16:30:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729023AbgDGOaT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Apr 2020 10:30:19 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:40376 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728573AbgDGOaT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Apr 2020 10:30:19 -0400
Received: by mail-qt1-f193.google.com with SMTP id y25so2771046qtv.7;
        Tue, 07 Apr 2020 07:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=wAYrV6F6G+t5gtx1fZuHs6BGJWDWpkiLa+6bzhMBPMw=;
        b=lditmRVv/LcoROMCq/bKinCSCXK7kSIPrd2WRkQgfMAG5iVrBZ7uZka/PsnKohQP4j
         5Ig6xbokfQxWbvrqqOP7Fe0/tljFqjZ80Gbua+AN6PMXq9s4R68pYsgeD7r1Fqj3pNs/
         IsJOdPJ5t4WGOqRjC0s5L83yp/k8PHgJatpA0ED1TX7i2eDBvs0ELJvtm9oE+S+iWZcJ
         bcp4PUVjR/UGlyu0CDmP1DmVV6MGtCGjLpoDfAMr7gwkoH0eoRQKU/i8LwAwcoASeSjp
         Ylh8TlsWTOmutTIIZ3KXodzQRUC7kb6ikoJSb/vTaeiBtaot8jodWWYa5xiD4kkggAO8
         O9Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wAYrV6F6G+t5gtx1fZuHs6BGJWDWpkiLa+6bzhMBPMw=;
        b=klGKSMdb9pok0vM8+5rEtqTOiArlmHLU+Kve4ocDwdG09FbTaV7Mc27+IeZ9ThwIwX
         Nvqg6CBbr5FvWTQnJAJjfdq3BHO9i31dfUXKsODLOnWIARszw/rWqCW7xEVAC90C+/OV
         z5XC40CKpbJZDBKWGkOmSVGzIPIrQHNtpvtelFCtQLofvGzGdY27NEzNTEY2Uf26eJhD
         XjzFR7dv7MWH/MV/il/gUAU4ObyVS4RE6Ig5+fs3J6GQup3JobAkmZupi0FrZ+F3U1f4
         99oX+pjSvCJOg8XuVxWJST7fUdtgObX/x1KPdHLEG8p6mElOM107gPlG/CQQ5F8mjWUC
         HLjQ==
X-Gm-Message-State: AGi0PuZT3gcd9jkFlExgCvwNttPLoWgCnQuz3z/9ObHy1r1/G6rBhkMM
        0LDYsa0DQ3YNpp443PnEL8M=
X-Google-Smtp-Source: APiQypIGrLW0bPlJckdtYiMlXs17H02JiQkfUDEoX+VYMNZN6nQVg3T1qcLOBfWIiE8HKabTPloJSQ==
X-Received: by 2002:aed:29e1:: with SMTP id o88mr2530139qtd.251.1586269817494;
        Tue, 07 Apr 2020 07:30:17 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id w30sm17976587qtw.21.2020.04.07.07.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2020 07:30:16 -0700 (PDT)
From:   Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
        id 67DAA409A3; Tue,  7 Apr 2020 11:30:14 -0300 (-03)
Date:   Tue, 7 Apr 2020 11:30:14 -0300
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
Message-ID: <20200407143014.GD11186@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
X-Url:  http://acmel.wordpress.com
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Em Thu, Apr 02, 2020 at 11:42:05AM +0300, Alexey Budankov escreveu:
> This patch set introduces CAP_PERFMON capability designed to secure
> system performance monitoring and observability operations so that
> CAP_PERFMON would assist CAP_SYS_ADMIN capability in its governing role
> for performance monitoring and observability subsystems of the kernel.

So, what am I doing wrong?

[perf@five ~]$ type perf
perf is hashed (/home/perf/bin/perf)
[perf@five ~]$
[perf@five ~]$ ls -lahF /home/perf/bin/perf
-rwxr-x---. 1 root perf_users 24M Apr  7 10:34 /home/perf/bin/perf*
[perf@five ~]$
[perf@five ~]$ getcap /home/perf/bin/perf
[perf@five ~]$ perf top --stdio
Error:
You may not have permission to collect system-wide stats.

Consider tweaking /proc/sys/kernel/perf_event_paranoid,
which controls use of the performance events system by
unprivileged users (without CAP_PERFMON or CAP_SYS_ADMIN).

The current value is 2:

  -1: Allow use of (almost) all events by all users
      Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK
>= 0: Disallow ftrace function tracepoint by users without CAP_PERFMON or CAP_SYS_ADMIN
      Disallow raw tracepoint access by users without CAP_SYS_PERFMON or CAP_SYS_ADMIN
>= 1: Disallow CPU event access by users without CAP_PERFMON or CAP_SYS_ADMIN
>= 2: Disallow kernel profiling by users without CAP_PERFMON or CAP_SYS_ADMIN

To make this setting permanent, edit /etc/sysctl.conf too, e.g.:

	kernel.perf_event_paranoid = -1

[perf@five ~]$

Ok, the message says I  need to have CAP_PERFMON, lets do it, using an
unpatched libcap that doesn't know about it but we can use 38,
CAP_PERFMON value instead, and I tested this with a patched libcap as
well, same results:

As root:

[root@five bin]# setcap "38,cap_sys_ptrace,cap_syslog=ep" perf
[root@five bin]#

Back to the 'perf' user in the 'perf_users' group, ok, so now 'perf
record -a' works for system wide sampling of cycles:u, i.e. only
userspace samples, but 'perf top' is failing:

[perf@five ~]$ type perf
perf is hashed (/home/perf/bin/perf)
[perf@five ~]$ getcap /home/perf/bin/perf
/home/perf/bin/perf = cap_sys_ptrace,cap_syslog,38+ep
[perf@five ~]$ groups
perf perf_users
[perf@five ~]$ id
uid=1002(perf) gid=1002(perf) groups=1002(perf),1003(perf_users) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
[perf@five ~]$ perf top --stdio
Error:
Failed to mmap with 1 (Operation not permitted)
[perf@five ~]$ perf record -a
^C[ perf record: Woken up 1 times to write data ]
[ perf record: Captured and wrote 1.177 MB perf.data (1552 samples) ]

[perf@five ~]$ perf evlist
cycles:u
[perf@five ~]$

- Arnaldo
