Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D1575162FB3
	for <lists+linux-man@lfdr.de>; Tue, 18 Feb 2020 20:23:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726391AbgBRTXF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Feb 2020 14:23:05 -0500
Received: from namei.org ([65.99.196.166]:46582 "EHLO namei.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726296AbgBRTXE (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 18 Feb 2020 14:23:04 -0500
Received: from localhost (localhost [127.0.0.1])
        by namei.org (8.14.4/8.14.4) with ESMTP id 01IJLesW013028;
        Tue, 18 Feb 2020 19:21:40 GMT
Date:   Wed, 19 Feb 2020 06:21:40 +1100 (AEDT)
From:   James Morris <jmorris@namei.org>
To:     Alexey Budankov <alexey.budankov@linux.intel.com>
cc:     Serge Hallyn <serge@hallyn.com>,
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
        Andi Kleen <ak@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        Igor Lubashev <ilubashe@akamai.com>,
        Jiri Olsa <jolsa@redhat.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
        "linux-security-module@vger.kernel.org" 
        <linux-security-module@vger.kernel.org>,
        "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
        "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
        oprofile-list@lists.sf.net,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v7 01/12] capabilities: introduce CAP_PERFMON to kernel
 and user space
In-Reply-To: <f56fbb5c-1477-44d5-7346-85a1ca0869dc@linux.intel.com>
Message-ID: <alpine.LRH.2.21.2002190621180.10165@namei.org>
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com> <f56fbb5c-1477-44d5-7346-85a1ca0869dc@linux.intel.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 17 Feb 2020, Alexey Budankov wrote:

> 
> Introduce CAP_PERFMON capability designed to secure system performance
> monitoring and observability operations so that CAP_PERFMON would assist
> CAP_SYS_ADMIN capability in its governing role for performance
> monitoring and observability subsystems.


Acked-by: James Morris <jamorris@linux.microsoft.com>


-- 
James Morris
<jmorris@namei.org>

