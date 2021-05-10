Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7AB6F379602
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:33:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232566AbhEJRes (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:34:48 -0400
Received: from mail.kernel.org ([198.145.29.99]:33260 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233149AbhEJReR (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 10 May 2021 13:34:17 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id B04DC61108;
        Mon, 10 May 2021 17:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1620667992;
        bh=OihwLjYhFxpIKVWk1w1YOQ6XDbFRdt9ImR5C52cpPrI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BPQMsGt0zB+fo8qmd+KTlPgbfTulR2lovBFtjlgJqJWD2hB3lMNeWQRUzpBSrDsmz
         2AQPPDSgrJJtOEGzkz6thwdBlk6gg7MDNQfvxMW272+fGdDZ1MK/XRe9nhy7KXYK12
         nJPXELX+7l4p/3rpGF/DQbfKc9a3RaoJuQd8OKYa+QJhqqLYr3zGQrdXZ7gFO9MCqw
         gnM84PW79PQK9MIgAuj9mZ4WaIrOuifP2Cawe8CGa8YkuDOc0yrXg2NQxCOtTObkzt
         mnXSBzFlMJIIdbCSFNyufvt3p6jHow2nSyMXaCAJc4l65+wyNk/Hgp79U531OUumP6
         JsUqam24eWKMA==
Date:   Mon, 10 May 2021 20:33:09 +0300
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     Dave Hansen <dave.hansen@intel.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-sgx@vger.kernel.org, dave.hansen@linux.intel.com
Subject: Re: [PATCH v5] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Message-ID: <YJluVfQ2TeO1N/KZ@kernel.org>
References: <20210510145235.8056-1-jarkko@kernel.org>
 <3072f586-4200-a0a1-8c85-fca0102e7913@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3072f586-4200-a0a1-8c85-fca0102e7913@intel.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, May 10, 2021 at 07:58:27AM -0700, Dave Hansen wrote:
> On 5/10/21 7:52 AM, Jarkko Sakkinen wrote:
> > +This can lead to reserving a large region than required by the payload,
> > +but the address space can be obviously trimmed after the enclave has been
> > +constructed on,
> > +with a sequence of
> > +.BR mmap(MAP_FIXED)
> > +calls.
> 
> Sorry if I missed this previously.
> 
> But, do we really intend to suggest the use of mmap(MAP_FIXED) for this?
>  What's the harm in leaving a non-populated piece of address space of
> mmap()'d /dev/sgx_enclave?

Probably most of the time: not much. Especially since we support 64-bit
only.

Maybe it should be relaxed a bit?

/Jarkko
