Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8189421EE8E
	for <lists+linux-man@lfdr.de>; Tue, 14 Jul 2020 13:00:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726817AbgGNLAA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Jul 2020 07:00:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726534AbgGNK77 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Jul 2020 06:59:59 -0400
Received: from merlin.infradead.org (merlin.infradead.org [IPv6:2001:8b0:10b:1231::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F5F9C061755;
        Tue, 14 Jul 2020 03:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=KCn+kBkY41F8RAgWcwTEUNO45YXItqYO+Iu35+qvwg0=; b=uWSIo5ytqOEjoxKysyDcE0PzIr
        3zYDDQNcSq1GT1+ymnYDW8VImOa65X2m7iJ18QceLqoGgZAFN3pz2Iqm2g666/7X6BiV2p0MD9Uha
        1A2hvnp78AssVI56e53PbylkRhVW7b3cBci4X/oqvn3uOVFkFlRAbjoOkIiBhsPCY6As3BQtlTv/h
        TPZl/ufHiOsWClJXnK/3uQVbm8NSyW738l10nTqejGk44g1x3I+UA1CoTSCUTrTBj54ZO4C4raeN8
        VT8vvrZ70FUDuRNNEGUSWYPEjKskqgjUwM07JBLoF9qjIjHCpZI2IpvoziP5sRcOAFB/JJ8l9xk4J
        rXv6V17Q==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
        by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
        id 1jvIev-00015n-SH; Tue, 14 Jul 2020 10:59:38 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (Client did not present a certificate)
        by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 31B1D300130;
        Tue, 14 Jul 2020 12:59:34 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
        id 162DD28B91060; Tue, 14 Jul 2020 12:59:34 +0200 (CEST)
Date:   Tue, 14 Jul 2020 12:59:34 +0200
From:   Peter Zijlstra <peterz@infradead.org>
To:     Arnaldo Carvalho de Melo <acme@kernel.org>
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
Message-ID: <20200714105934.GU10769@hirez.programming.kicks-ass.net>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <76718dc6-5483-5e2e-85b8-64e70306ee1f@linux.ibm.com>
 <7776fa40-6c65-2aa6-1322-eb3a01201000@linux.intel.com>
 <20200710170911.GD7487@kernel.org>
 <0d2e2306-22b2-a730-dc3f-edb3538b6561@linux.intel.com>
 <20200713121746.GA7029@kernel.org>
 <0fadcf78-8b0e-ed03-a554-cc172b7d249c@linux.intel.com>
 <20200713185152.GA18094@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200713185152.GA18094@kernel.org>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jul 13, 2020 at 03:51:52PM -0300, Arnaldo Carvalho de Melo wrote:

> > > diff --git a/kernel/events/core.c b/kernel/events/core.c
> > > index 856d98c36f56..a2397f724c10 100644
> > > --- a/kernel/events/core.c
> > > +++ b/kernel/events/core.c
> > > @@ -11595,7 +11595,7 @@ SYSCALL_DEFINE5(perf_event_open,
> > >  		 * perf_event_exit_task() that could imply).
> > >  		 */
> > >  		err = -EACCES;
> > > -		if (!ptrace_may_access(task, PTRACE_MODE_READ_REALCREDS))
> > > +		if (!perfmon_capable() && !ptrace_may_access(task, PTRACE_MODE_READ_REALCREDS))
> > >  			goto err_cred;
> > >  	}
> > > 
> > >> makes monitoring simpler and even more secure to use since Perf tool need
> > >> not to start/stop/single-step and read/write registers and memory and so on
> > >> like a debugger or strace-like tool. What do you think?
> > > 
> > > I tend to agree, Peter?

So this basically says that if CAP_PERFMON, we don't care about the
ptrace() permissions? Just like how CAP_SYS_PTRACE would always allow
the ptrace checks?

I suppose that makes sense.
