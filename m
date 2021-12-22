Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5871047CA75
	for <lists+linux-man@lfdr.de>; Wed, 22 Dec 2021 01:39:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235229AbhLVAjI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Dec 2021 19:39:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234160AbhLVAjH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Dec 2021 19:39:07 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F8D8C061574;
        Tue, 21 Dec 2021 16:39:07 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id A7760B81A43;
        Wed, 22 Dec 2021 00:39:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC794C36AE9;
        Wed, 22 Dec 2021 00:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1640133544;
        bh=M6gBu5PznHBo4KKDniMEoCRoA9ky61/ubPU1ZfzuUx4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=J2UZF/cmZc3nWKebMY1bBUq2bhsVQ1yJ7OLihAQp3nYu1MbrMxtF2BWKzXWo4hjVS
         Eg17zYny4ceStuWcWMNeYgbrQSXTgaCGx0aL9bn7CChUkLTp6ncCB94y76kHJxp+tL
         VJPDB5wBj2JOzSOEn+Vk3eFd2Ajhns09CIgj8Mfw/CIoU+QCxUpxDxXa5aHw75jWYH
         RlxaWZEk2NxkGKOq+GJrxUkFnxgj5VxkhH0h5Bid3hq1UgmndWWmHHN4j56FQ4jhqn
         oJfIz13oU6V3Gt8c0uGoLs5xnh+Zxtkp1Rh3QU3k/tmeiyZGETNneKE6lCc4KnzBTN
         Foc8yL/1mtRAw==
Date:   Wed, 22 Dec 2021 02:39:02 +0200
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     Reinette Chatre <reinette.chatre@intel.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        dave.hansen@linux.intel.com, nathaniel@profian.com
Subject: Re: [PATCH v10] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Message-ID: <YcJzpqa9RNzg+Vim@iki.fi>
References: <20211130175007.22903-1-jarkko@kernel.org>
 <8f84b8e8-b478-bb81-4aa8-536df882a144@intel.com>
 <e998dddb2efd158ac14dc3c5393efe882ca62d16.camel@kernel.org>
 <3af1d311-7ef8-1b67-fcae-5cd15be02606@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3af1d311-7ef8-1b67-fcae-5cd15be02606@intel.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Dec 13, 2021 at 11:51:36AM -0800, Reinette Chatre wrote:
> Hi Jarkko,
> 
> On 12/11/2021 7:19 AM, Jarkko Sakkinen wrote:
> > On Wed, 2021-12-08 at 14:11 -0800, Reinette Chatre wrote:
> > > On 11/30/2021 9:50 AM, Jarkko Sakkinen wrote:
> 
> ...
> 
> > > > +.SH SYNOPSIS
> > > > +.EX
> > > > +.B #include <asm/sgx.h>
> > > > +.PP
> > > > +.IB enclave " = open(""/dev/sgx_enclave", " O_RDWR);"
> > > 
> > > I view the man page output using "man -l man7/sgx.7" and when I do so
> > > the above line is unbalanced: "enclave" and (unexpectedly) the comma are
> > > underlined and the line is displayed with a single instance of a double
> > > quote: enclave = open("/dev/sgx_enclave, O_RDWR);
> > 
> > After some trial and error, and looking at symlink.7, this seems to
> > fix it:
> > 
> > -.IB enclave " = open(""/dev/sgx_enclave", " O_RDWR);"
> > +.IB enclave " = open(""/dev/sgx_enclave"", O_RDWR);"
> > 
> > Does this fix for you?
> 
> Yes, thank you. When looking at your updated patch I see that only enclave
> is underlined and the quotes are matching.
> 
> ...
> 
> > > > +is called with higher protections than those defined during the build,
> > > > +it will return
> > > > +.B -EACCES.
> > > > +If
> > > > +.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES)
> > > > +is called after
> > > > +.BR mmap (2)
> > > > +with lower protections,
> > > > +the caller receives
> > > > +.BR SIGBUS,
> > > > +once it accesses the page for the first time.
> > > > +.SH VERSIONS
> > > > +The SGX feature was added in Linux 5.11.
> > > 
> > > This does not document the SGX_IOC_VEPC_REMOVE ioctl that was added in
> > > v5.16. How do you envision additions to this page as new features are
> > > added to the Linux support of SGX?
> > 
> > I started this before any of KVM stuff was in upstream. It'd be better
> > to get the basic ioctl's done first. I cannot really give estimate for
> > vepc at this point.
> 
> SGX_IOC_VEPC_REMOVE_ALL can be found in v5.16.

I'd get the basic API documentation ready first and continue to that after
it is final.

> > For future features (e.g. SGX2), the expectation is that the feature is
> > supported by an associated man page update.
> > 
> 
> ok, thank you.
> 
> Reinette

/Jarkko
