Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2E5421F624
	for <lists+linux-man@lfdr.de>; Tue, 14 Jul 2020 17:29:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726767AbgGNP1l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Jul 2020 11:27:41 -0400
Received: from mail.kernel.org ([198.145.29.99]:47622 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725884AbgGNP1k (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 14 Jul 2020 11:27:40 -0400
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E4F1F221EF;
        Tue, 14 Jul 2020 15:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1594740460;
        bh=QoYjwUwCr8iv3vS0vUx9ZHDJWPjQ+QNqL1IS1uCDfws=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IlF+/jEnPt4EseeRoIoPFjobQsVIxxHoMUxeaU6x4iPB5I+zcKXAo29Qsj3LrlSOt
         F6aKwji3bHjIa+iFYvuEuppwWSC+Pr6wSidVxI+lDpf5/hUfxbTwvOv1iYZzWp3Zte
         6KaHlCF6JXLRFZMGMOyPUXEr32zu95cx5ogg8TB4=
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
        id 1478540094; Tue, 14 Jul 2020 12:27:38 -0300 (-03)
Date:   Tue, 14 Jul 2020 12:27:38 -0300
From:   Arnaldo Carvalho de Melo <acme@kernel.org>
To:     Peter Zijlstra <peterz@infradead.org>
Cc:     Alexey Budankov <alexey.budankov@linux.intel.com>,
        Ravi Bangoria <ravi.bangoria@linux.ibm.com>,
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
Message-ID: <20200714152738.GB43671@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <76718dc6-5483-5e2e-85b8-64e70306ee1f@linux.ibm.com>
 <7776fa40-6c65-2aa6-1322-eb3a01201000@linux.intel.com>
 <20200710170911.GD7487@kernel.org>
 <0d2e2306-22b2-a730-dc3f-edb3538b6561@linux.intel.com>
 <20200713121746.GA7029@kernel.org>
 <0fadcf78-8b0e-ed03-a554-cc172b7d249c@linux.intel.com>
 <20200713185152.GA18094@kernel.org>
 <20200714105934.GU10769@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200714105934.GU10769@hirez.programming.kicks-ass.net>
X-Url:  http://acmel.wordpress.com
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Em Tue, Jul 14, 2020 at 12:59:34PM +0200, Peter Zijlstra escreveu:
> On Mon, Jul 13, 2020 at 03:51:52PM -0300, Arnaldo Carvalho de Melo wrote:
> 
> > > > diff --git a/kernel/events/core.c b/kernel/events/core.c
> > > > index 856d98c36f56..a2397f724c10 100644
> > > > --- a/kernel/events/core.c
> > > > +++ b/kernel/events/core.c
> > > > @@ -11595,7 +11595,7 @@ SYSCALL_DEFINE5(perf_event_open,
> > > >  		 * perf_event_exit_task() that could imply).
> > > >  		 */
> > > >  		err = -EACCES;
> > > > -		if (!ptrace_may_access(task, PTRACE_MODE_READ_REALCREDS))
> > > > +		if (!perfmon_capable() && !ptrace_may_access(task, PTRACE_MODE_READ_REALCREDS))
> > > >  			goto err_cred;
> > > >  	}

> > > >> makes monitoring simpler and even more secure to use since Perf tool need
> > > >> not to start/stop/single-step and read/write registers and memory and so on
> > > >> like a debugger or strace-like tool. What do you think?

> > > > I tend to agree, Peter?

> So this basically says that if CAP_PERFMON, we don't care about the
> ptrace() permissions? Just like how CAP_SYS_PTRACE would always allow
> the ptrace checks?

> I suppose that makes sense.

Yeah, it in fact addresses the comment right above it:

        if (task) {
                err = mutex_lock_interruptible(&task->signal->exec_update_mutex);
                if (err)
                        goto err_task;

                /*
                 * Reuse ptrace permission checks for now.
                 *
                 * We must hold exec_update_mutex across this and any potential
                 * perf_install_in_context() call for this new event to
                 * serialize against exec() altering our credentials (and the
                 * perf_event_exit_task() that could imply).
                 */
                err = -EACCES;
                if (!ptrace_may_access(task, PTRACE_MODE_READ_REALCREDS))
                        goto err_cred;
        }


that "for now" part :-)

Idea is to not require CAP_PTRACE for that, i.e. the attack surface for the
perf binary is reduced.

- Arnaldo
