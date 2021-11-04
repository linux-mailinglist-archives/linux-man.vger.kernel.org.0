Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A7734451C4
	for <lists+linux-man@lfdr.de>; Thu,  4 Nov 2021 11:53:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230344AbhKDKzr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Nov 2021 06:55:47 -0400
Received: from smtp-out2.suse.de ([195.135.220.29]:39552 "EHLO
        smtp-out2.suse.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230148AbhKDKzr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Nov 2021 06:55:47 -0400
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
        by smtp-out2.suse.de (Postfix) with ESMTP id 80EE91FD33;
        Thu,  4 Nov 2021 10:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1636023188; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=6LtDRif56czXALUO9uPF6tgYiF3MYTIbhVudrbdYzE8=;
        b=zFPpoUPRgYh7jRq0+6YfkENtt9PP5xH5PXBPWm8mUgJVF7WYMyURQrx8OVr2QojSvw0OkT
        HY5+65IDk+7LqIYodp6l7kjeMHW2+Qwa7LJvuDHRSF8sLKOGLsTX4CN7PJ1k+zoRFW5Up/
        SOcvh3+CPz6eoryyflzJMWj9QCHAwn8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1636023188;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=6LtDRif56czXALUO9uPF6tgYiF3MYTIbhVudrbdYzE8=;
        b=dvG26M+QM2Yl0J1y3hf/pDD1sru1NozyhU+EF+7WCi7szdNt4M//JWAMAf5ICn3V56JucP
        7CJpbKqK5wcA7BCg==
Received: from quack2.suse.cz (unknown [10.163.28.18])
        by relay2.suse.de (Postfix) with ESMTP id 7006D2C144;
        Thu,  4 Nov 2021 10:53:08 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
        id 327991E1265; Thu,  4 Nov 2021 11:53:08 +0100 (CET)
Date:   Thu, 4 Nov 2021 11:53:08 +0100
From:   Jan Kara <jack@suse.cz>
To:     "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Jan Kara <jack@suse.cz>
Subject: Re: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Message-ID: <20211104105308.GB10060@quack2.suse.cz>
References: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <617F6138.5040601@fujitsu.com>
 <61825419.1080502@fujitsu.com>
 <6182568B.30705@fujitsu.com>
 <3dfbc2c2-72d9-89f2-1c72-e54ab2f610e7@gmail.com>
 <6183302D.8080102@fujitsu.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6183302D.8080102@fujitsu.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu 04-11-21 00:58:02, xuyang2018.jy@fujitsu.com wrote:
> >>>>> This patch[1] is designed to fix bug for Q_XQUOTARM ioctl not for
> >>>>> introduced.
> >>>>> So remove it.
> >>>>>
> >>>>> [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9da93f9b7c
> >>>>>
> >>>>>
> >>>>> Signed-off-by: Yang Xu<xuyang2018.jy@fujitsu.com>
> >>>>> ---
> >>>>> man2/quotactl.2 | 3 +--
> >>>>> 1 file changed, 1 insertion(+), 2 deletions(-)
> >>>>>
> >>>>> diff --git a/man2/quotactl.2 b/man2/quotactl.2
> >>>>> index d22d8c584..46f77a8b1 100644
> >>>>> --- a/man2/quotactl.2
> >>>>> +++ b/man2/quotactl.2
> >>>>> @@ -651,8 +651,7 @@ The
> >>>>> .I id
> >>>>> argument is ignored.
> >>>>> .TP
> >>>>> -.B Q_XQUOTARM " (since Linux 3.16)"
> >>>>> -.\" 9da93f9b7cdf8ab28da6b364cdc1fafc8670b4dc
> >
> > Okay. Since you added that line (man-pages commit ae848b1d80), I'm fine
> > removing it. Was it a mistake? The commit message of that commit is a
> > bit unrelated to Q_XQUOTARM, isn't it?
> Yes.

Well, that commit fixed Q_XQUOTARM quotactl. Previously it was supported
but it was buggy and not actually doing the desired functionality in some
cases. So the description kind of make sense but it is not quite accurate -
maybe we should just move the note to NOTES section?

> > Maybe a better fix would be to replace the kernel version and the commit
> > hash when it was really added?
> Yes, but I can't find this commit hash and it seems been supported since 
> long time ago.

Yeah, AFAIK Q_XQUOTARM is there in principle since XFS was introduced in
the linux kernel so around 2001. No point of mentioning that in the manpage
IMO.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
