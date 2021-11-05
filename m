Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE9AF4462C5
	for <lists+linux-man@lfdr.de>; Fri,  5 Nov 2021 12:34:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229884AbhKELgz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Nov 2021 07:36:55 -0400
Received: from smtp-out1.suse.de ([195.135.220.28]:57718 "EHLO
        smtp-out1.suse.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229785AbhKELgy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Nov 2021 07:36:54 -0400
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
        by smtp-out1.suse.de (Postfix) with ESMTP id AA2D72171F;
        Fri,  5 Nov 2021 11:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1636112054; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=7x8HuQOaXXyDEyKCGiQPpKxZCRB5SjZv0okZH+Lgdcc=;
        b=xbI4NEU4VXaXBrXL73m3d8akuCXjoDU64gbtaVw3MjFMfeI2kcz2Rj4rwYZJavMb2dCpb+
        Yh6L3cENdFSwhGiWN+BORRs8+C/rLBXqcWbYepSihTle9JpHqbSyQ5EqzYm9ze55yc8u78
        pgT2ZJ8laHKO/MgIRHKYdDlNw2xY/f0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1636112054;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=7x8HuQOaXXyDEyKCGiQPpKxZCRB5SjZv0okZH+Lgdcc=;
        b=D1i+q6SFPr0uQPWJpY7bwaJLD+10+ZDv/Db+fXjgXprRnDWox7JX+EESSb4xIOqVHK3slm
        tIMNMVZagYG+4PAg==
Received: from quack2.suse.cz (unknown [10.163.28.18])
        by relay2.suse.de (Postfix) with ESMTP id 9A18F2C14A;
        Fri,  5 Nov 2021 11:34:14 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
        id 7172C1E0BBA; Fri,  5 Nov 2021 12:34:14 +0100 (CET)
Date:   Fri, 5 Nov 2021 12:34:14 +0100
From:   Jan Kara <jack@suse.cz>
To:     "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Jan Kara <jack@suse.cz>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Message-ID: <20211105113414.GB26497@quack2.suse.cz>
References: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <617F6138.5040601@fujitsu.com>
 <61825419.1080502@fujitsu.com>
 <6182568B.30705@fujitsu.com>
 <3dfbc2c2-72d9-89f2-1c72-e54ab2f610e7@gmail.com>
 <6183302D.8080102@fujitsu.com>
 <20211104105308.GB10060@quack2.suse.cz>
 <e3dbb664-6745-e7d2-e414-268cea320df3@gmail.com>
 <61849F99.80502@fujitsu.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <61849F99.80502@fujitsu.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri 05-11-21 03:05:44, xuyang2018.jy@fujitsu.com wrote:
> ps:I also increase ltp quotactl coverage to cover quotactl_fd syscall. I 
> would appreciate it if you could review my ltp quotactl/quotactl_fd patchset
> https://patchwork.ozlabs.org/project/ltp/list/?series=269166

From a quick look the patches look fine. Just one thing I've noticed - you
seem to open "mntpoint/testfile" so that you have 'fd' to pass to
quotactl_fd(). Why don't you just open "mntpoint" directly?

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
