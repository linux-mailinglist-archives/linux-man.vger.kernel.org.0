Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5E1CE1A12A2
	for <lists+linux-man@lfdr.de>; Tue,  7 Apr 2020 19:23:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726508AbgDGRXp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Apr 2020 13:23:45 -0400
Received: from mail-qk1-f175.google.com ([209.85.222.175]:43015 "EHLO
        mail-qk1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726277AbgDGRXp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Apr 2020 13:23:45 -0400
Received: by mail-qk1-f175.google.com with SMTP id 13so137941qko.10;
        Tue, 07 Apr 2020 10:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=K+MMhgwbQedUfosyD2Cw+pAjWD5r/4ySukc35JXfHtQ=;
        b=AISqMdEd8PmC6p044QKzmqRvTEknmQL37J3YiXyuydqqLA9II7+ikNL1/d1tev4diw
         4quCsK0SbFHe16ewvETijwjSegnewllWpsYE9/RmuzbJzWeof90cD8xTKghvASkb5YCH
         dRKhp4Rea3pGc0yerTbItjCt5X7Q8nHrSdPObogOtuRJj1IWe5klvpHR/WnB/7mbgXra
         voptzu1KNaqfjBPeOBjpm5QxutfUDr8T9uglWizgQ6zcyAGPT2NqX77iU7bjsLV8ATIV
         g/ERhpCiQDGEaTqr22AW+xneH6DFGgLRiqvNdYmUHEv4QCOZCr7VYviX87oE7r/2kDCY
         WuDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=K+MMhgwbQedUfosyD2Cw+pAjWD5r/4ySukc35JXfHtQ=;
        b=LuX7QPV7b5FuRkuH4V4jH96qruJE8eVNWyap3qt0UFGZmjngmzOZVTKeKPW4wnT97x
         adCKBQXNeMPhp6T5m+4vLyvBxTkeoyAGssjPQIondu1kEFvV7Wdru/RG90m7bpV5dqRt
         9bqgF/+gY1aOV7olcmyAa6XFpugNXLePsW+yQgkq6rieff0ScI1fUuXwRDdyhIvPK5kl
         zBPJofjeKEZm+z0heIIrFUVSImPhs1iXYqoQdq4zVP1YVcSl/O5oFGHBGlxBSfPZlqWX
         QSKapXg4x0ygbbPNzkDZNodBaBL1JdAIQffzLaVN90dV2Mdy6EV/wqPdI0iahEpK5h9B
         SfEg==
X-Gm-Message-State: AGi0Pub9nqPDtu/LrsIvhmIaQzaaP7bFmsvfwFwAU+qM3wIZQGhqLnDQ
        xae0A59xh01MemnOfhbkv+0=
X-Google-Smtp-Source: APiQypKsro8wjK4xTL2iHaRs1nV2makOkwiSA9zQ+y+DTWaEm6VBA1HeGxqxnp89G+j6RhEQBYILJg==
X-Received: by 2002:a37:6213:: with SMTP id w19mr3134388qkb.447.1586280222882;
        Tue, 07 Apr 2020 10:23:42 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id l7sm16781124qkb.47.2020.04.07.10.23.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2020 10:23:42 -0700 (PDT)
From:   Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
        id 1678C409A3; Tue,  7 Apr 2020 14:23:40 -0300 (-03)
Date:   Tue, 7 Apr 2020 14:23:40 -0300
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
Message-ID: <20200407172340.GF12003@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <20200407143014.GD11186@kernel.org>
 <20200407143551.GF11186@kernel.org>
 <10cc74ee-8587-8cdb-f85f-5724b370a2ce@linux.intel.com>
 <20200407163654.GB12003@kernel.org>
 <20200407165643.GD12003@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200407165643.GD12003@kernel.org>
X-Url:  http://acmel.wordpress.com
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Em Tue, Apr 07, 2020 at 01:56:43PM -0300, Arnaldo Carvalho de Melo escreveu:
> 
> But then, even with that attr.exclude_kernel set to 1 we _still_ get
> kernel samples, which looks like another bug, now trying with strace,
> which leads us to another rabbit hole:
> 
> [perf@five ~]$ strace -e perf_event_open -o /tmp/out.put perf top --stdio
> Error:
> You may not have permission to collect system-wide stats.
> 
> Consider tweaking /proc/sys/kernel/perf_event_paranoid,
> which controls use of the performance events system by
> unprivileged users (without CAP_PERFMON or CAP_SYS_ADMIN).
> 
> The current value is 2:
> 
>   -1: Allow use of (almost) all events by all users
>       Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK
> >= 0: Disallow ftrace function tracepoint by users without CAP_PERFMON or CAP_SYS_ADMIN
>       Disallow raw tracepoint access by users without CAP_SYS_PERFMON or CAP_SYS_ADMIN
> >= 1: Disallow CPU event access by users without CAP_PERFMON or CAP_SYS_ADMIN
> >= 2: Disallow kernel profiling by users without CAP_PERFMON or CAP_SYS_ADMIN
> 
> To make this setting permanent, edit /etc/sysctl.conf too, e.g.:
> 
> 	kernel.perf_event_paranoid = -1
> 
> [perf@five ~]$
> 
> If I remove that strace -e ... from the front, 'perf top' is back
> working as a non-cap_sys_admin user, just with cap_perfmon.
> 

So I couldn't figure it out so far why is that exclude_kernel is being
set to 1, as perf-top when no event is passed defaults to this to find
out what to use as a default event:

  perf_evlist__add_default(top.evlist)
     perf_evsel__new_cycles(true);
	struct perf_event_attr attr = {
                .type   = PERF_TYPE_HARDWARE,
                .config = PERF_COUNT_HW_CPU_CYCLES,
                .exclude_kernel = !perf_event_can_profile_kernel(),
        };

			perf_event_paranoid_check(1);
			        return perf_cap__capable(CAP_SYS_ADMIN) ||
				       perf_cap__capable(CAP_PERFMON) ||
				       perf_event_paranoid() <= max_level;


And then that second condition should hold true, it returns true, and
then .exclude_kernel should be set to !true -> zero.o

Now the wallclock says I need to stop being a programmer and turn into a
daycare provider for Pedro, cya!

- Arnaldo
