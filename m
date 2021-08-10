Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 509513E851A
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 23:19:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233887AbhHJVT7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Aug 2021 17:19:59 -0400
Received: from mail.kernel.org ([198.145.29.99]:41460 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233874AbhHJVT6 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 10 Aug 2021 17:19:58 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 984EB60F55;
        Tue, 10 Aug 2021 21:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628630376;
        bh=CDErf29CK9M9eZwgIVrbzfgvYnmOFChi6qJWhU4L1yk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JEeetPXCWoNuip/nzCwHqRN7QTBTf5tN+wFRlET0ZZXt4u4WmA0aEgVlPO6KiTvK2
         IE8YelS7z4aGr5U+PrYVWlaFleDXeQ+sV12i/ivCBNbzYz2AEF8vw1ubcev4T4e+EH
         LaHdPtMXkuy2/W4W+pTOsJa3jetbOoj2BYeafpPWd2rlJhGOb10TcCPyoI6DFA0xKL
         qISgQ0QJeb99LJJp68YtsAFTkWWkGjGF9bpesbwjVJIxCo1DqkFSHf+nQOz1wBPkWR
         WgU5FygyE2Ww25Iq3H2NfTlgVxoVNnM6CxlAvnMo5SCuvonFBLEUwBDvSm0bQCtgLV
         hLKOrf44x90qQ==
Date:   Wed, 11 Aug 2021 00:19:33 +0300
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        Dave Hansen <dave.hansen@linux.intel.com>,
        Reinette Chatre <reinette.chatre@intel.com>
Subject: Re: [PATCH v7] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Message-ID: <20210810211933.5fq6hjwrxq57ksqu@kernel.org>
References: <20210810211616.172775-1-jarkko@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210810211616.172775-1-jarkko@kernel.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Aug 11, 2021 at 12:16:16AM +0300, Jarkko Sakkinen wrote:
> Cc: linux-man@vger.kernel.org
> Cc: linux-sgx@vger.kernel.org
> Cc: Dave Hansen <dave.hansen@linux.intel.com>
> Cc: Reinette Chatre <reinette.chatre@intel.com>
> Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
> ---
> 
> v7:
> * Added more meat about the address space and API.
> * Reorganized the text to have focus more on developer to have a big
>   picture of kernel provided interfaces.
> v6:
> * Small fixes based on Dave's and Reinette's feedback.
> * Extended the "Permissions" section to cover mmap()
> v5:
> * Taking away hardware concepts and focusing more on the interface.
> v4:
> * Did a heavy edit trying to streamline the story a bit and focus on
>   stuff important to the user (e.g. lighten up x86 details).
> v3:
> * Overhaul based on Michael's comments. Most likely needs to be refined
>   in various places but this is at least a small step forward for sure.
> v2:
> * Fixed the semantic newlines convention and various style errors etc.
>   that were reported by Alenjandro and Michael.
> * SGX was merged to v5.

Can be previewed with e.g. "man man7/sgx.7", and also "yelp man7/sgx.7"
works fine.

/Jarkko
