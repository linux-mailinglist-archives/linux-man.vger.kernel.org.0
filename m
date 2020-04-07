Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4A6971A1263
	for <lists+linux-man@lfdr.de>; Tue,  7 Apr 2020 19:03:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726484AbgDGRCz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Apr 2020 13:02:55 -0400
Received: from mail-qt1-f196.google.com ([209.85.160.196]:38743 "EHLO
        mail-qt1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726352AbgDGRCz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Apr 2020 13:02:55 -0400
Received: by mail-qt1-f196.google.com with SMTP id 13so1368847qtt.5;
        Tue, 07 Apr 2020 10:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=lubV0uwS0PhaWFReAExDn03E2JRmyIjYgI8tq8wZYAQ=;
        b=JCYoQl/UYv0xHlgxUuvhhP4MOXQA+ieQOLJF3zFXnBOpzmA1+M7u5cEq/4SXoVlKHA
         vG7Vnff6kUfGNwU8ABUNHSlWWr8xinfhLsY9xN2bEhodwCk+ntG6LWZ2im/W4qpeC/Y2
         Goqf3F/GVrC29eZKjFNZa4QH40w4+TICPssQUEdH+rah3tVRnVGLdGzQojywsg3Rg4Rp
         BSEtqINsTmi1269DWkTqWCJh27IH2s3C9EtbSSDbfQ99Uyqcuitw8b/YgkVK78gOfPJm
         m3bnsqVxqhU3kGpsafXZ8+ntdH/PCCyhX+QAyV1+MIAPspwP6+cjgCLryU9wGt6n3F4F
         Y7FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lubV0uwS0PhaWFReAExDn03E2JRmyIjYgI8tq8wZYAQ=;
        b=VAkeZcMtRfzELFxlLh1KWlw58rUBypq06cq6L9AWUd/D9BccvdG894jviWyTrkMdBl
         zDTCpqso+T23T9t/xTblNCLtHYd7ApxndcZW5WoX9ESkgEs1almfmlIoAXdSMU6vbBnh
         QUG5ObFxNrPyeiswCCWdlIoFRMsF8/5dIw516LOX79BXppF40+Jc5Ou1hQvZ3B/EUTQS
         QAfgThz4/RhupoaxfB3HjGclMiLmyHZLlTNCFF051RQA599sn/1/2v6KTU2tIzxXiefQ
         ndqdjzyjtoMOs+CW/w/2hqKTP/sy27+JjPQ8yTdupOKRIoCMENpCJxaIT1u9whqHbh+J
         vwog==
X-Gm-Message-State: AGi0PuZQFYqRufd3E1LpDHfx3yX8yzZs+EV65sFEIxgZ4XPp38n9HsRI
        YOGJqQbqTmB60QcwlXNEcNuPVoN5ygV1mg==
X-Google-Smtp-Source: APiQypIjHnuzXuojSCppJsD78fxYKavB67p37aAGYyRBiBhjYwH4oUBe/V7etaIxr/j9xhiuNfUR5w==
X-Received: by 2002:ac8:23af:: with SMTP id q44mr3292106qtq.54.1586278973911;
        Tue, 07 Apr 2020 10:02:53 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id r40sm18041660qtc.39.2020.04.07.10.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2020 10:02:53 -0700 (PDT)
From:   Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
        id 2B1C8409A3; Tue,  7 Apr 2020 14:02:51 -0300 (-03)
Date:   Tue, 7 Apr 2020 14:02:51 -0300
To:     Alexey Budankov <alexey.budankov@linux.intel.com>
Cc:     Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
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
Message-ID: <20200407170251.GE12003@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <20200407143014.GD11186@kernel.org>
 <20200407143551.GF11186@kernel.org>
 <10cc74ee-8587-8cdb-f85f-5724b370a2ce@linux.intel.com>
 <20200407163654.GB12003@kernel.org>
 <85da1e42-2cf2-98ca-1e0c-2cf3469b7d30@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <85da1e42-2cf2-98ca-1e0c-2cf3469b7d30@linux.intel.com>
X-Url:  http://acmel.wordpress.com
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Em Tue, Apr 07, 2020 at 07:52:56PM +0300, Alexey Budankov escreveu:
> 
> On 07.04.2020 19:36, Arnaldo Carvalho de Melo wrote:
> > Em Tue, Apr 07, 2020 at 05:54:27PM +0300, Alexey Budankov escreveu:
> >> Could makes sense adding cap_ipc_lock to the binary to isolate from this:

> >> kernel/events/core.c: 6101
> >> 	if ((locked > lock_limit) && perf_is_paranoid() &&
> >> 		!capable(CAP_IPC_LOCK)) {
> >> 		ret = -EPERM;
> >> 		goto unlock;
> >> 	}

> > That did the trick, I'll update the documentation and include in my
> > "Committer testing" section:
 
> Looks like top mode somehow reaches perf mmap limit described here [1].
> Using -m option solves the issue avoiding cap_ipc_lock on my 8 cores machine:
> perf top -e cycles -m 1

So this would read better?

diff --git a/Documentation/admin-guide/perf-security.rst b/Documentation/admin-guide/perf-security.rst
index ed33682e26b0..d44dd24b0244 100644
--- a/Documentation/admin-guide/perf-security.rst
+++ b/Documentation/admin-guide/perf-security.rst
@@ -127,8 +127,8 @@ taken to create such groups of privileged Perf users.
 
 ::
 
-   # setcap "cap_perfmon,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
-   # setcap -v "cap_perfmon,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
+   # setcap "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
+   # setcap -v "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
    perf: OK
    # getcap perf
    perf = cap_sys_ptrace,cap_syslog,cap_perfmon+ep
@@ -140,6 +140,10 @@ i.e.:
 
    # setcap "38,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
 
+Note that you may need to have 'cap_ipc_lock' in the mix for tools such as
+'perf top', alternatively use 'perf top -m N', to reduce the memory that
+it uses for the perf ring buffer, see the memory allocation section below.
+
 As a result, members of perf_users group are capable of conducting
 performance monitoring and observability by using functionality of the
 configured Perf tool executable that, when executes, passes perf_events
