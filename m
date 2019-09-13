Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 252E3B2399
	for <lists+linux-man@lfdr.de>; Fri, 13 Sep 2019 17:40:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388129AbfIMPkT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 11:40:19 -0400
Received: from vmicros1.altlinux.org ([194.107.17.57]:49550 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730354AbfIMPkT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 11:40:19 -0400
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 0E9D572CCAE;
        Fri, 13 Sep 2019 18:40:16 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id F16E67CCB47; Fri, 13 Sep 2019 18:40:15 +0300 (MSK)
Date:   Fri, 13 Sep 2019 18:40:15 +0300
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Elvira Khabirova <lineprinter@altlinux.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] ptrace.2: document struct ptrace_syscall_info
Message-ID: <20190913154013.GA23393@altlinux.org>
References: <20190902123858.GA8956@altlinux.org>
 <0eb09cbc-8035-ee82-9c75-6525d91e7138@gmail.com>
 <20190911173807.GA25385@altlinux.org>
 <226a075d-5486-85fa-eee4-f13db6ee5448@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <226a075d-5486-85fa-eee4-f13db6ee5448@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Sep 12, 2019 at 11:17:52AM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Dmitry,
> 
> On 9/11/19 7:38 PM, Dmitry V. Levin wrote:
> > Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>
> > ---
> >  man2/ptrace.2 | 51 ++++++++++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 50 insertions(+), 1 deletion(-)
> > 
> > diff --git a/man2/ptrace.2 b/man2/ptrace.2
> > index ff897bb19..b030247e6 100644
> > --- a/man2/ptrace.2
> > +++ b/man2/ptrace.2
> > @@ -1026,7 +1026,56 @@ If the size of the data to be written by the kernel exceeds the size
> >  specified by the
> >  .I addr
> >  argument, the output data is truncated.
> > -.\" FIXME Document 'struct ptrace_syscall_info'
> > +.IP
> > +The
> > +.I ptrace_syscall_info
> > +structure contains the following fields:
> > +.IP
> > +.in
> > +.EX
> > +struct ptrace_syscall_info {
> > +    __u8 op;                    /* PTRACE_SYSCALL_INFO_* value
> > +                                   describing the kind
> > +                                   of system call stop,
> > +                                   see <linux/ptrace.h> */
> > +    __u32 arch;                 /* AUDIT_ARCH_* value,
> > +                                   see seccomp(2) */
> > +    __u64 instruction_pointer;  /* CPU instruction pointer */
> > +    __u64 stack_pointer;        /* CPU stack pointer */
> > +    union {
> > +        struct {
> > +            __u64 nr;           /* System call number */
> > +            __u64 args[6];      /* System call arguments */
> > +        } entry;                /* Information specific to
> > +                                   system call entry stops */
> > +        struct {
> > +            __s64 rval;         /* System call return value */
> > +            __u8 is_error;      /* System call error flag */
> > +        } exit;                 /* Information specific to
> > +                                   system call exit stops */
> > +        struct {
> > +            __u64 nr;           /* System call number */
> > +            __u64 args[6];      /* System call arguments */
> > +            __u32 ret_data;     /* The SECCOMP_RET_DATA portion
> > +                                   of SECCOMP_RET_TRACE return
> > +                                   value */
> > +        } seccomp;              /* Information specific to
> > +                                   PTRACE_EVENT_SECCOMP stops */
> > +    };
> > +};
> > +.EE
> > +.in
> > +.IP
> > +.IR op ,
> > +.IR arch ,
> > +.IR instruction_pointer ,
> > +and
> > +.I stack_pointer
> > +fields are defined for all kinds of ptrace system call stops.
> > +The rest of the structure is a union, one should read only those fields
> > +that are meaningful for the kind of system call stop specified by the
> > +.IR op
> > +field.
> >  .\"
> >  .SS Death under ptrace
> >  When a (possibly multithreaded) process receives a killing signal
> 
> Thanks. I've applied, and done some light editing.
> 
> I also added some pieces. Could you please take a look at commits
> f04534d22c69 [1] and 227a3682312 [2] let me know if they are okay.

Thanks.  The only thing that needs correction is
"Boolean: is rval != 0?" comment about is_error field.

In fact, is_error is a boolean that tells whether rval field
contains a non-error return value (e.g. file descriptor) or
an error value (e.g. -ERRORCODE).


-- 
ldv
