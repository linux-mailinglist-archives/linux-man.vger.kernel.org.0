Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C8E530C84A
	for <lists+linux-man@lfdr.de>; Tue,  2 Feb 2021 18:49:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234114AbhBBRrh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Feb 2021 12:47:37 -0500
Received: from mail.kernel.org ([198.145.29.99]:49956 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237711AbhBBRpa (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 2 Feb 2021 12:45:30 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id AD4AA64F5F;
        Tue,  2 Feb 2021 17:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1612287890;
        bh=Huh4himrnJQ9obbj+IIUqJHftGB0fTq9/gaoWoFoc8M=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XeTIuUro/lvwI0+pDd0IkXmDHc/a/0SDf4bKyjzkRij/oL9naQF+fRAijRV8SiMke
         T07TJ3/Rr/uYFk9zQ+cDsVaewBxeJSroIAx3t87Y4KrkmUXg9GdqdG2Zw5QTuDeYIP
         yQxzs7hhB+ox8NyhUkY0daLhFAePskxdWyZwHTSAHeRY90MoYjiUMUpQ02pe19XdK2
         x9vx/yGMLRtxotWolxRjnjxDeRniDmyR9OT95EH+Rfu3ZRNumRmtcHz4O0upt4bxmI
         hZWwSROwB0myc+j2R+w5M40tyDmxBESaoIXf4lZUsn92wsGGVMTxCZmXAgohc/39jT
         2n6cBQM7ppjfw==
Date:   Tue, 2 Feb 2021 19:44:42 +0200
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        dave.hansen@linux.intel.com
Subject: Re: [PATCH v2] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Message-ID: <YBmPiqfHLz5JV57y@kernel.org>
References: <20201222004108.49159-1-jarkko@kernel.org>
 <16f13aee-a966-ecd4-6f08-d9d7b0e869f3@gmail.com>
 <YAli9syKOwVTYeh6@kernel.org>
 <cb04f65c-7598-e5c0-6aa9-421b8e37c8db@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cb04f65c-7598-e5c0-6aa9-421b8e37c8db@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Jan 21, 2021 at 03:33:05PM +0100, Michael Kerrisk (man-pages) wrote:
> Hi Jarko,

Jarkko :-)

> On 1/21/21 12:18 PM, Jarkko Sakkinen wrote:
> > On Tue, Dec 22, 2020 at 07:53:24PM +0100, Michael Kerrisk (man-pages) wrote:
> >>> * Fixed the semantic newlines convention and various style errors etc.
> >>>   that were reported by Alenjandro and Michael.
> 
> s/Alenjandro/Alejandro/  :-)

Just had to mention the typo above because of this, sorry :-) I'll
fix this.

> > So the thing is that there is reserved memory, consider it as a bit like
> > VRAM. This memory can be oversubscribed. Then when you create an enclave
> > you consume these pages. When running out of them, the kernel swaps pages
> > from enclaves across the system currently based on a trivial FIFO policy.
> > So these regions define kind of the memory pool for all enclaves running in
> > the system.
> 
> SO, is there some suitable change for the manual page text?

What if I just edit it from this? I think the video RAM comparison makes
this common sense understandable. There's restricted memory shared by
processes and managed by the kernel.

/Jarkko
