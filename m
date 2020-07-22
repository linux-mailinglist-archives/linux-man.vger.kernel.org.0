Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EE76229770
	for <lists+linux-man@lfdr.de>; Wed, 22 Jul 2020 13:30:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729026AbgGVLaO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Jul 2020 07:30:14 -0400
Received: from mail.kernel.org ([198.145.29.99]:41152 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726146AbgGVLaN (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 22 Jul 2020 07:30:13 -0400
Received: from quaco.ghostprotocols.net (unknown [177.17.3.185])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C477920771;
        Wed, 22 Jul 2020 11:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1595417413;
        bh=zDKW70gtRYBxNcRCZwDBVRBmBO9V/xhxwmi6E5qgeqE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=htoisg+wZdskpQ/VrgTFuIOfe53U2SVfcUrgbJ0WUpoTdx7adkZV3fZuTgsIX6yNS
         XX+nyH+atCe+njcnvvGEHBzF+V5JRL740v6n6OR34r/Zqk23V2R5EolNHDFe4Ar8Zh
         uRfa4vGIjhKbvsTiW//KPMTRhzn2BI6+Hbt3ZhbI=
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
        id 16F77404B1; Wed, 22 Jul 2020 08:30:08 -0300 (-03)
Date:   Wed, 22 Jul 2020 08:30:07 -0300
From:   Arnaldo Carvalho de Melo <acme@kernel.org>
To:     Alexey Budankov <alexey.budankov@linux.intel.com>
Cc:     Peter Zijlstra <peterz@infradead.org>,
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
Message-ID: <20200722113007.GI77866@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <76718dc6-5483-5e2e-85b8-64e70306ee1f@linux.ibm.com>
 <7776fa40-6c65-2aa6-1322-eb3a01201000@linux.intel.com>
 <20200710170911.GD7487@kernel.org>
 <0d2e2306-22b2-a730-dc3f-edb3538b6561@linux.intel.com>
 <20200713121746.GA7029@kernel.org>
 <0fadcf78-8b0e-ed03-a554-cc172b7d249c@linux.intel.com>
 <20200713185152.GA18094@kernel.org>
 <8d6030a4-ff2c-230c-c36e-d0a8c68832ac@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8d6030a4-ff2c-230c-c36e-d0a8c68832ac@linux.intel.com>
X-Url:  http://acmel.wordpress.com
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Em Tue, Jul 21, 2020 at 04:06:34PM +0300, Alexey Budankov escreveu:
> 
> On 13.07.2020 21:51, Arnaldo Carvalho de Melo wrote:
> > Em Mon, Jul 13, 2020 at 03:37:51PM +0300, Alexey Budankov escreveu:
> >>
> >> On 13.07.2020 15:17, Arnaldo Carvalho de Melo wrote:
> >>> Em Mon, Jul 13, 2020 at 12:48:25PM +0300, Alexey Budankov escreveu:
> >> If it had that patch below then message change would not be required.

> > Sure, but the tool should continue to work and provide useful messages
> > when running on kernels without that change. Pointing to the document is
> > valid and should be done, that is an agreed point. But the tool can do
> > some checks, narrow down the possible causes for the error message and
> > provide something that in most cases will make the user make progress.

> >> However this two sentences in the end of whole message would still add up:
> >> "Please read the 'Perf events and tool security' document:
> >>  https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html"

> > We're in violent agreement here. :-)
 
> Here is the message draft mentioning a) CAP_SYS_PTRACE, for kernels prior
> v5.8, and b) Perf security document link. The plan is to send a patch extending
> perf_events with CAP_PERFMON check [1] for ptrace_may_access() and extending
> the tool with this message.
 
> "Access to performance monitoring and observability operations is limited.
>  Enforced MAC policy settings (SELinux) can limit access to performance
>  monitoring and observability operations. Inspect system audit records for
>  more perf_event access control information and adjusting the policy.
>  Consider adjusting /proc/sys/kernel/perf_event_paranoid setting to open
>  access to performance monitoring and observability operations for processes
>  without CAP_PERFMON, CAP_SYS_PTRACE or CAP_SYS_ADMIN Linux capability.
>  More information can be found at 'Perf events and tool security' document:
>  https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html
>  perf_event_paranoid setting is -1:
>      -1: Allow use of (almost) all events by all users
>            Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK
>  >= 0: Disallow raw and ftrace function tracepoint access
>  >= 1: Disallow CPU event access
>  >= 2: Disallow kernel profiling
>  To make the adjusted perf_event_paranoid setting permanent preserve it
>  in /etc/sysctl.conf (e.g. kernel.perf_event_paranoid = <setting>)"

Looks ok! Lots of knobs to control access as one needs.

- Arnaldo
 
> Alexei
> 
> [1] https://lore.kernel.org/lkml/20200713121746.GA7029@kernel.org/
