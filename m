Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8ED849F074
	for <lists+linux-man@lfdr.de>; Fri, 28 Jan 2022 02:19:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345006AbiA1BTo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 27 Jan 2022 20:19:44 -0500
Received: from dfw.source.kernel.org ([139.178.84.217]:55362 "EHLO
        dfw.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345005AbiA1BTo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 27 Jan 2022 20:19:44 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8BBA461D9C;
        Fri, 28 Jan 2022 01:19:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F604C340E4;
        Fri, 28 Jan 2022 01:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643332783;
        bh=uCxmkv3MsmS5VB5Uv/OVhQoVUNbJy7UDQlZjt6hiAaI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Swp5wEsyaGBL3jZu+pBH5cFfI4d70W75jYObACPQbTGg9lj/atw+rrc7pVpGGF6o+
         8W5k1cT5aCX6p62R3VhjXh2zllx+rN5XQYbIevJTb77PKkyi6CyYWWQ61PJHHBf+2o
         F2wCt8Lzeiki030oNfCJ25eGkyRv7hvwYjfE1UPUv0kKKwKoFFkWqz0raXKAUZpN85
         I2ZT4KILVb7Bs9gMPYS+mzZrtOx6d2jn9V6em+NKZtZBbGP+Op41irXFAm4BbHYf87
         rDdVQ2Wbj3meNvLLXCLaFto9HvsYsliDteQ53NH5UCC5bpXUvwdoS408nIw2/dJKjf
         tDEz7XiRRKqSA==
Date:   Fri, 28 Jan 2022 03:19:18 +0200
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        Dave Hansen <dave.hansen@linux.intel.com>,
        nathaniel@profian.com, Michael Kerrisk <mtk.manpages@gmail.com>,
        Reinette Chatre <reinette.chatre@intel.com>
Subject: Re: [PATCH v11] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Message-ID: <YfNElmmBbkw1Xpfy@iki.fi>
References: <20211211153320.17438-1-jarkko@kernel.org>
 <c58f3951-282c-ef66-fc62-844da06c5af4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c58f3951-282c-ef66-fc62-844da06c5af4@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Dec 17, 2021 at 02:50:56AM +0100, Alejandro Colomar (man-pages) wrote:
> Hi Jarkko,
> 
> Please see some comments below.
> 
> Thanks,
> Alex

Thank you. I've addressed all the comments below. However, I feel that
/dev/sgx_provision is not properly documented at all. I also think that
Reinette's argument for v10 was fair that "remove VEPC" ioctl that QEMU
uses should not be left out from the initial patch set.

I'm implementing user space that doest attestation, so I rather write a
proper description of the attestation, once it is working, rather than add
to the number of review rounds.

BR, Jarkko
