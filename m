Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF15B2DE2EE
	for <lists+linux-man@lfdr.de>; Fri, 18 Dec 2020 13:52:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726567AbgLRMwQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 07:52:16 -0500
Received: from mail.kernel.org ([198.145.29.99]:41264 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726540AbgLRMwQ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 18 Dec 2020 07:52:16 -0500
Date:   Fri, 18 Dec 2020 14:51:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1608295896;
        bh=v7i9oZe+Faa3d9HYVlijlswKw+o65sEt+QDkdoP+X/8=;
        h=From:To:Cc:Subject:References:In-Reply-To:From;
        b=T7rOVDz5g7xqvkShUvIhyTYYPYFGPN56iT7FkFvcJ9Qkl5zYLsfxWmFKJAfjNZdvJ
         lDrVZC+j527KUw9beWdZURSXLq3SrrS5XVY7kHk8uZ/hY8Ljsy3pvJSxrzVTkJzZXy
         KFWvllpeugWLWYUoo8q7Fy8TfA+cbmtcgYhi5gGlgQ0KV1DziAoDTkUGQ97MYyMAWb
         cjA3xMdvXT4j2P6Q5lgzDEpTTci5Zws6AdpjRwIV9isHhhziVM3hMsXIKu9q5wKUpH
         s71V5W9GDoPEi6Np9hgBXHY5K2qx9UGshEUPTVA9yLVB06j/+EbSgs/hv56Bc+0oe8
         bRVSxwmxswjvA==
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-sgx@vger.kernel.org, dave.hansen@linux.intel.com,
        x86@kernel.org
Subject: Re: [PATCH] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Message-ID: <20201218125131.GA28524@kernel.org>
References: <20201202071543.74866-1-jarkko@kernel.org>
 <f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com>
 <c698b115-2daa-c92b-da92-abe261a37222@gmail.com>
 <b57aa7d7-b4d0-6358-258c-45fa69e40df8@gmail.com>
 <1b818d58-4a82-4192-ab01-16a5ff2d7cfa@gmail.com>
 <678536be-b0a2-af9d-2f41-5f3ff7ee9669@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <678536be-b0a2-af9d-2f41-5f3ff7ee9669@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Dec 18, 2020 at 11:24:38AM +0100, Alejandro Colomar (man-pages) wrote:
> Hi Jarkko,
> 
> Linux 5.10 has been recently released.
> Do you have any updates for this patch?
> 
> Thanks,
> 
> Alex

Hi, I've been on a vacation this week. I'm planning to update during the
upcoming week.

/Jarkko
