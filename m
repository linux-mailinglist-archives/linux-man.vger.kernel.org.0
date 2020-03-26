Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2E1EE194D42
	for <lists+linux-man@lfdr.de>; Fri, 27 Mar 2020 00:30:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727701AbgCZXaa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Mar 2020 19:30:30 -0400
Received: from namei.org ([65.99.196.166]:43756 "EHLO namei.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726954AbgCZXaa (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 26 Mar 2020 19:30:30 -0400
Received: from localhost (localhost [127.0.0.1])
        by namei.org (8.14.4/8.14.4) with ESMTP id 02QNSlWb015673;
        Thu, 26 Mar 2020 23:28:47 GMT
Date:   Fri, 27 Mar 2020 10:28:47 +1100 (AEDT)
From:   James Morris <jmorris@namei.org>
To:     Serge Hallyn <serge@hallyn.com>
cc:     Alexey Budankov <alexey.budankov@linux.intel.com>,
        Stephen Smalley <sds@tycho.nsa.gov>,
        Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Ingo Molnar <mingo@kernel.org>,
        "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Will Deacon <will@kernel.org>,
        Paul Mackerras <paulus@samba.org>,
        Helge Deller <deller@gmx.de>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-man@vger.kernel.org, Andi Kleen <ak@linux.intel.com>,
        "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
        "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
        "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
        Igor Lubashev <ilubashe@akamai.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Stephane Eranian <eranian@google.com>,
        "linux-security-module@vger.kernel.org" 
        <linux-security-module@vger.kernel.org>,
        oprofile-list@lists.sf.net, Jiri Olsa <jolsa@redhat.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: [Intel-gfx] [PATCH v7 00/12] Introduce CAP_PERFMON to secure
 system performance monitoring and observability
In-Reply-To: <20200302001913.GA21145@sl>
Message-ID: <alpine.LRH.2.21.2003271026290.14767@namei.org>
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com> <3ae0bed5-204e-de81-7647-5f0d8106cd67@linux.intel.com> <20200302001913.GA21145@sl>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, 1 Mar 2020, Serge Hallyn wrote:

> Thanks, this looks good to me, in keeping with the CAP_SYSLOG break.
> 
> Acked-by: Serge E. Hallyn <serge@hallyn.com>
> 
> for the set.
> 
> James/Ingo/Peter, if noone has remaining objections, whose branch
> should these go in through?
> 
> thanks,
> -serge
> 
> On Tue, Feb 25, 2020 at 12:55:54PM +0300, Alexey Budankov wrote:
> > 
> > Hi,
> > 
> > Is there anything else I could do in order to move the changes forward
> > or is something still missing from this patch set?
> > Could you please share you mind?

Alexey,

It seems some of the previous Acks are not included in this patchset, e.g. 
https://lkml.org/lkml/2020/1/22/655

Every patch needs a Reviewed-by or Acked-by from maintainers of the code 
being changed.

You have enough from the security folk, but I can't see any included from 
the perf folk.


-- 
James Morris
<jmorris@namei.org>

