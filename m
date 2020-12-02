Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F24D2CC374
	for <lists+linux-man@lfdr.de>; Wed,  2 Dec 2020 18:23:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730807AbgLBRVy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Dec 2020 12:21:54 -0500
Received: from mail.kernel.org ([198.145.29.99]:39488 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728741AbgLBRVx (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 2 Dec 2020 12:21:53 -0500
Date:   Wed, 2 Dec 2020 19:21:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1606929672;
        bh=7GtKhwCIPWuLrfpMFou365WY+20fixrIm6qGj81UOac=;
        h=From:To:Cc:Subject:References:In-Reply-To:From;
        b=VYByC6+uU4rtv1aJjLBTXMWy4OFRG7Vz8oN+2+xWVqBArMCtusyICotFTMTFpNoOG
         OSUFOLU83Mv2HFMocRugNydLHysxl1G5ubwPPv7wQ4UlkQnB05kXn2+E/ikq6bdv9o
         qx1Jp4xriKnbpzy4wqahtUIJxNcnZlbHHF6Ryihs=
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     "Alejandro Colomar (mailing lists; readonly)" 
        <alx.mailinglists@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-sgx@vger.kernel.org, dave.hansen@linux.intel.com,
        x86@kernel.org
Subject: Re: [PATCH] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Message-ID: <20201202172107.GB91954@kernel.org>
References: <20201202071543.74866-1-jarkko@kernel.org>
 <f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Dec 02, 2020 at 12:50:20PM +0100, Alejandro Colomar (mailing lists; readonly) wrote:
> Hi Jarkko,
> 
> Thanks for the page.
> 
> Adding to Michael's comment,
> here are a few things to fix (see below).
> 
> Michael, there's also a question for you (grep mtk).
> 
> Thanks,
> 
> Alex
> 
> On 12/2/20 8:15 AM, Jarkko Sakkinen wrote:
> > Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
> > ---
> >  man7/sgx.7 | 198 +++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 198 insertions(+)
> >  create mode 100644 man7/sgx.7
> > 
> > diff --git a/man7/sgx.7 b/man7/sgx.7
> > new file mode 100644
> > index 000000000..429c9b64d
> > --- /dev/null
> > +++ b/man7/sgx.7
> > @@ -0,0 +1,198 @@
> > +.\" Copyright (C) 2020 Intel Corporation
> > +.\"
> > +.\" %%%LICENSE_START(VERBATIM)
> > +.\" Permission is granted to make and distribute verbatim copies of this
> > +.\" manual provided the copyright notice and this permission notice are
> > +.\" preserved on all copies.
> > +.\"
> > +.\" Permission is granted to copy and distribute modified versions of this
> > +.\" manual under the conditions for verbatim copying, provided that the
> > +.\" entire resulting derived work is distributed under the terms of a
> > +.\" permission notice identical to this one.
> > +.\"
> > +.\" Since the Linux kernel and libraries are constantly changing, this
> > +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
> > +.\" responsibility for errors or omissions, or for damages resulting from
> > +.\" the use of the information contained herein.  The author(s) may not
> > +.\" have taken the same level of care in the production of this manual,
> > +.\" which is licensed free of charge, as they might when working
> > +.\" professionally.
> > +.\"
> > +.\" Formatted or processed versions of this manual, if unaccompanied by
> > +.\" the source, must acknowledge the copyright and authors of this work.
> > +.\" %%%LICENSE_END
> > +.\"
> > +.TH SGX 7 2020-12-02 "Linux" "Linux Programmer's Manual"
> > +.PP
> > +sgx - overview of Software Guard eXtensions
> > +.SH DESCRIPTION
> > +.PP
> > +Intel Software Guard eXtensions (SGX) allow user space applications to
> > +set aside private memory regions of code and data.
> > +These memory regions are called as enclaves.
> 
> wfix:
> 
> These memory regions are called enclaves.
> 
> > +.PP
> > +SGX must be enabled by the BIOS.
> > +If SGX appears to be unsupported on a system having the hardware
> 
> 1)
> s/having the hardware/having hardware/
> 
> 2)
> Please, use semantic newlines.
> 
> To understand 'semantic newlines',
> please have a look at
> man-pages(7)::STYLE GUIDE::Use semantic newlines
> 
> Basically, split lines at the most natural separation point,
> instead of just when the line gets over the margin.

OK, I'll look into that, thanks.

> > +support, ensure that SGX is enabled in the BIOS.
> > +If a BIOS presents a choice between \[lq]Enabled\[rq] and \[lq]Software
> 
> s/\\[lq]/\\(dq/g
> s/\\[rq]/\\(dq/g
> 
> Basically, we use \(dq for any double quotes, and we don't care about
> left or right.

OK.

> Michael (mtk):
> 
> I was searching to see if it was documented in man-pages(7),
> but I didn't find it.
> Should we add something under man-pages(7)::STYLE GUIDE::Generating
> optimal glyphs?
> 
> 
> > +Enabled\[rq] modes for SGX, choose \[lq]Enabled\[rq].
> > +.PP
> > +An enclave can be only entered at a fixed set of entry points.
> > +Each of them can hold a single hardware thread at a time.
> > +While the enclave is loaded from a regular binary file, only the threads
> > +inside the enclave can access its memory.
> > +.PP
> > +Although carved out of normal DRAM, enclave memory is marked in the
> > +system memory map as reserved and is not managed by the Linux memory
> > +manager.
> > +There may be several regions spread across the system.
> > +Each contiguous region is called an Enclave Page Cache (EPC) section.
> > +EPC sections are enumerated via CPUID.
> > +These regions are encrypted when they leave the LLC.
> > +.PP
> > +SGX is available only if the kernel was configured and built with the
> > +\f[B]CONFIG_X86_SGX\f[R] option.
> 
> Replace by:
> 
> [
> .B CONFIG_X86_SGX
> option.
> ]
> 
> > +The hardware support for SGX can be observed from
> > +\f[I]/proc/cpuinfo\f[R] with the \[lq]flags\[rq] field containing
> > +\[lq]sgx\[rq].
> 
> [
> .I /proc/cpuinfo
> with the \(dqflags\(dq field containing \(dqsgx\(dq.
> ]
> 
> > +.SS Enclave management
> > +.PP
> > +Enclave\[cq]s life-cycle starts by opening \f[I]/dev/sgx_enclave\f[R],
> 
> For single quotes (or apostrophe), please use '\(aq':
> 
> [
> Enclave\(aqs life ...
> ]
> 
> See man-pages(7)::STYLE GUIDE::Generating optimal glyphs

Thank you for the detailed feedback.

/Jarkko
