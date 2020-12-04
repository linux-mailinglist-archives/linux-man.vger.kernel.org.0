Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDF8B2CE56E
	for <lists+linux-man@lfdr.de>; Fri,  4 Dec 2020 02:57:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726037AbgLDBzt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Dec 2020 20:55:49 -0500
Received: from mail.kernel.org ([198.145.29.99]:57940 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725885AbgLDBzt (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 3 Dec 2020 20:55:49 -0500
Date:   Fri, 4 Dec 2020 03:55:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1607046908;
        bh=1EBAEgi/GdqMHwgkXccqcj/tzFjO4VDB3yBUOdqh4GA=;
        h=From:To:Cc:Subject:References:In-Reply-To:From;
        b=RekxbN+XyNXoMrFnx3fd9QHKhP2rcofkFcFwckWWIAIBqVVpoqGh7M+uuA/lwjTpO
         G0ouTfgqL2EW5br5+A9hByk7ZkE6edKGSRiZm1FOTUzAEAstCyb9hvAyW3wTX4rCed
         4KgQEI7PxnDvA6YnpH96cotwKURSkgtz2TH3nfLVsq5hCVMeeFEZSuOq7MNOC43B3x
         k4NAgnUjwfiQobuDez3bu5l0+056C0fQK/fhun0uqxh4f80zNWe6zSmibUh8U5SoGt
         uh0HcH9QmREQ1DYqUvEQdu2AlzO3o9MctktYbnzwaeENXnJ7glUA0NE1EqaFnQ4Uxv
         hlFBw4XoDNghQ==
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, linux-sgx@vger.kernel.org,
        Dave Hansen <dave.hansen@linux.intel.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Message-ID: <20201204015503.GA146985@kernel.org>
References: <20201202071543.74866-1-jarkko@kernel.org>
 <CAKgNAkhROLJMmfAUiDCQhW0LCck08sF8jnYVJhSircxA059wXg@mail.gmail.com>
 <20201202171742.GA91954@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201202171742.GA91954@kernel.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Dec 02, 2020 at 07:17:42PM +0200, Jarkko Sakkinen wrote:
> On Wed, Dec 02, 2020 at 11:37:01AM +0100, Michael Kerrisk (man-pages) wrote:
> > Hi Jarkko,
> > 
> > Thanks for the page. I'll have some more comments later, most likely.
> > But to begin with, are there any other manual pages that should be
> > listed in a SEE ALSO section for this manual page, and are there any
> > pages in man-pages that you think should refer to this page in their
> > SEE ALSO sections?
> 
> Thanks for quick response.
> 
> SGX does not declare any syscalls but it does have an ioctl API and
> a vDSO.
> 
> I think one thing that the man page is missing is SIGSEGV handling.
> When user space directly invokes ENCLU[EENTER], then the exceptions
> inside are recognized through SIGSEV. This should be probably added,
> and then "SEE ALSO" should point out to sigaction().

Obviously I need to have references to mmap() and mprotect() too.

Ignoring everything else related to this feature and simplify the
concept, in SGX you build an enclave yet to be mapped memory, then
mmap() it and possibly mprotect() it. When you build an enclave, you
assign permissions to each page, and there's an invariant in the kernel
implementation that mmap/mprotect() permissions are not allowed to
surpass the intended permissions. The implementation is multi-process
by nature, i.e. one process can build an enclave and other process can
just map it (e.g. getting fd through fork or SCM_RIGHTS).

Hmm... that would be a good paragraph for my man page (with editing of
course) before any other details, when describing enclave construction
:-)

/Jarkko
