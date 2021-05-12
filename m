Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17A6037B358
	for <lists+linux-man@lfdr.de>; Wed, 12 May 2021 03:16:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229920AbhELBRh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 21:17:37 -0400
Received: from mail.kernel.org ([198.145.29.99]:60746 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229736AbhELBRg (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 11 May 2021 21:17:36 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3C9356190A;
        Wed, 12 May 2021 01:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1620782189;
        bh=E039wsw66f7QgXI0C1OyQuv4VacGIgu8a8ckxigM6AY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Q5odwE1pHnfzy4+RDp5lsykzlE9V/5gplXnVwd12XayfGEXFkoaCzCOZd3OtNiwtB
         s15sMYIr4B9dTCWnWRnvWBY6gw38kGi2vWqTe6mL+rfrI5Lh2NiYfgHqxYU1Wftdct
         oGEi1sIFujV1kEO1SLE1cP9HARxi4QZgFR/0v0R2JYZ6O7Lvoaey3K4gnyvThLZPCP
         ygVfkvRwvxB50wyc9uKyr9VyVeg5+WAPwSOswWyjOKF3df9j2GmTEr480CWKhBG22n
         PogvkDnhtKPEozZ/x9DDTO6QSp9B+4+BE+vlJwNswFGH4oNzjJCm/FKTV58po2qcYE
         BM3ISiqqnExyg==
Date:   Wed, 12 May 2021 04:16:27 +0300
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     Reinette Chatre <reinette.chatre@intel.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-sgx@vger.kernel.org, dave.hansen@linux.intel.com
Subject: Re: [PATCH v5] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Message-ID: <YJssa9DyboM8nWXL@kernel.org>
References: <20210510145235.8056-1-jarkko@kernel.org>
 <7ea35a75-a75d-4071-cbf7-f43c672a5a45@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7ea35a75-a75d-4071-cbf7-f43c672a5a45@intel.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, May 11, 2021 at 01:22:10PM -0700, Reinette Chatre wrote:
> Hi Jarkko,
> 
> On 5/10/2021 7:52 AM, Jarkko Sakkinen wrote:
> 
> ...
> 
> > +There is a hardware constraint that the enclave size must be a power of two,
> > +and the base address must be a multiple of the size.
> > +This can lead to reserving a large region than required by the payload,
> 
> a large region than required -> a larger region than required ?
> 
> > +but the address space can be obviously trimmed after the enclave has been
> 
> can be obviously trimmed -> can be trimmed ?
> 
> > +constructed on,
> 
> constructed on -> constructed ?
> 
> > +with a sequence of
> > +.BR mmap(MAP_FIXED)
> > +calls.
> > +.PP
> > +A process can access enclave by entering into its address space through
> > +a set of entry points,
> > +which must be defined during the construction process.
> > +This requires a complex sequence of CPU instructions,
> > +and kernel assisted exception handling,
> > +encapsulated into
> > +.BR vsgx_enter_enclave
> > +vDSO interface,
> > +provided and documented by
> > +.IR <asm/sgx.h>.
> 
> This is not clear to me. This is written as though vsgx_enter_enclave is
> something very specific that is documented in <asm/sgx.h>. Should it perhaps
> be vdso_sgx_enter_enclave_t instead? Am I missing where vsgx_enter_enclave
> is defined? I expect a reader of this man page may want to search for the
> term "vsgx_enter_enclave" after reading the above.

Yeah, it's now incorrect. I'll fix this. Thanks for pointing out.

> 
> > +.SS Permissions
> > +In order to build an enclave, a process must be able to call
> > +.IR mmap (2)
> > +with
> > +.IR PROT_EXEC
> > +set.
> > +Like for any other type of executable,
> > +the page permissions must be set appropriately.
> > +For this reason,
> > +.I /dev/sgx_enclave
> > +must reside in a partition,
> > +which is not mounted as no-exec,
> > +in order to be usable,
> > +as
> > +.IR mmap(2)
> > +denies
> > +.IR PROT_EXEC
> > +otherwise.
> > +.SH VERSIONS
> > +The SGX feature was added in Linux 5.11.
> > +.SH SEE ALSO
> > +.BR ioctl (2),
> > +.BR mmap() (2),
> 
> mmap() (2) -> mmap (2) ?
> 
> > +.BR mprotect (2)
> > 
> 
> Reinette

Also, other remarks make sense to me, thanks.

/Jarkko
