Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 484FA2F05DD
	for <lists+linux-man@lfdr.de>; Sun, 10 Jan 2021 08:49:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726414AbhAJHtU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Jan 2021 02:49:20 -0500
Received: from vmicros1.altlinux.org ([194.107.17.57]:44272 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725820AbhAJHtU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 10 Jan 2021 02:49:20 -0500
X-Greylist: delayed 400 seconds by postgrey-1.27 at vger.kernel.org; Sun, 10 Jan 2021 02:49:20 EST
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 3E59472C8B0;
        Sun, 10 Jan 2021 10:41:59 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id 2F65D7CC89F; Sun, 10 Jan 2021 10:41:59 +0300 (MSK)
Date:   Sun, 10 Jan 2021 10:41:59 +0300
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     Bruno Haible <bruno@clisp.org>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] chmod.2, lchmod.3: Document lchmod()
Message-ID: <20210110074159.GA20991@altlinux.org>
References: <39277473.ZaUlkdM7pu@omega>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <39277473.ZaUlkdM7pu@omega>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Sun, Jan 10, 2021 at 05:37:13AM +0100, Bruno Haible wrote:
> Hi,
> 
> lchmod (= the effect of fchmod with flag AT_SYMLINK_NOFOLLOW)
> is implemented since glibc 2.32, see
> https://sourceware.org/bugzilla/show_bug.cgi?id=14578
> https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=752dd17443e55a4535cb9e6baa4e550ede383540
> 
> Here is a patch to update the man pages accordingly.

Please note the important limitation of that implementation:
it doesn't work when /proc is not mounted, see
https://sourceware.org/bugzilla/show_bug.cgi?id=26401


-- 
ldv
