Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1931E446296
	for <lists+linux-man@lfdr.de>; Fri,  5 Nov 2021 12:20:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232186AbhKELXb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Nov 2021 07:23:31 -0400
Received: from smtp-out2.suse.de ([195.135.220.29]:56206 "EHLO
        smtp-out2.suse.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232115AbhKELX3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Nov 2021 07:23:29 -0400
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
        by smtp-out2.suse.de (Postfix) with ESMTP id D05831FD48;
        Fri,  5 Nov 2021 11:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1636111248; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=xLMUMwf+dJow9Ygs9FxhquW13EKk1m2bdGQ/sYbpr54=;
        b=UV4dPulYwcMMu7YjQdNN6VL0PVKEvWBUerdZ3RQUxKAHFbXgCawSQ+CtDFtN6uTg6R8lDK
        Oan0ssCCgiJulNT0p3nHr0xaX+cPDXy7FFOv9ZsWhm9vBLgL8JAvnLaaUIWX0X7YuxkitN
        DjtYXC010WGL+YRqaYCpzGs9Wi2qZWQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1636111248;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=xLMUMwf+dJow9Ygs9FxhquW13EKk1m2bdGQ/sYbpr54=;
        b=p3MprFNJ4c2926ooN0lp4fWE4i5OBvmrl62V/YeeEY4/wJ3psJ2hCAGngrUB4IyVV38x4V
        VASEOzMMX5zNi+Aw==
Received: from quack2.suse.cz (unknown [10.163.28.18])
        by relay2.suse.de (Postfix) with ESMTP id C0AF0A3B90;
        Fri,  5 Nov 2021 11:20:48 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
        id 8D2FD1E0BBA; Fri,  5 Nov 2021 12:20:45 +0100 (CET)
Date:   Fri, 5 Nov 2021 12:20:45 +0100
From:   Jan Kara <jack@suse.cz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Message-ID: <20211105112045.GA26497@quack2.suse.cz>
References: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <617F6138.5040601@fujitsu.com>
 <61825419.1080502@fujitsu.com>
 <6182568B.30705@fujitsu.com>
 <3dfbc2c2-72d9-89f2-1c72-e54ab2f610e7@gmail.com>
 <6183302D.8080102@fujitsu.com>
 <20211104105308.GB10060@quack2.suse.cz>
 <e3dbb664-6745-e7d2-e414-268cea320df3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e3dbb664-6745-e7d2-e414-268cea320df3@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu 04-11-21 21:10:12, Alejandro Colomar (man-pages) wrote:
> On 11/4/21 11:53, Jan Kara wrote:
> > On Thu 04-11-21 00:58:02, xuyang2018.jy@fujitsu.com wrote:
> > > > > > > > This patch[1] is designed to fix bug for Q_XQUOTARM ioctl not for
> > > > > > > > introduced.
> > > > > > > > So remove it.
> > > > > > > > 
> > > > > > > > [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9da93f9b7c
> > > > > > > > 
> > > > > > > > 
> > > > > > > > Signed-off-by: Yang Xu<xuyang2018.jy@fujitsu.com>
> > > > > > > > ---
> > > > > > > > man2/quotactl.2 | 3 +--
> > > > > > > > 1 file changed, 1 insertion(+), 2 deletions(-)
> > > > > > > > 
> > > > > > > > diff --git a/man2/quotactl.2 b/man2/quotactl.2
> > > > > > > > index d22d8c584..46f77a8b1 100644
> > > > > > > > --- a/man2/quotactl.2
> > > > > > > > +++ b/man2/quotactl.2
> > > > > > > > @@ -651,8 +651,7 @@ The
> > > > > > > > .I id
> > > > > > > > argument is ignored.
> > > > > > > > .TP
> > > > > > > > -.B Q_XQUOTARM " (since Linux 3.16)"
> > > > > > > > -.\" 9da93f9b7cdf8ab28da6b364cdc1fafc8670b4dc
> 
> I applied the patch.
> 
> > > > 
> > > > Okay. Since you added that line (man-pages commit ae848b1d80), I'm fine
> > > > removing it. Was it a mistake? The commit message of that commit is a
> > > > bit unrelated to Q_XQUOTARM, isn't it?
> > > Yes.
> > 
> > Well, that commit fixed Q_XQUOTARM quotactl. Previously it was supported
> > but it was buggy and not actually doing the desired functionality in some
> > cases. So the description kind of make sense but it is not quite accurate -
> > maybe we should just move the note to NOTES section?
> 
> I think we better add a BUGS section.  Don't you?
> Unless you think it isn't important enough.  How likely is it that
> Q_XQUOTARM was used in kernels before 3.16 and a BUGS section will help fix
> the bug?  And how likely is it that someone will use it in the future for
> kernels before 3.16?  How important/dangerous was the bug?
> 
> Maybe add something simpler such as "(buggy until Linux 3.16)" so that no
> one uses it in older kernels but doesn't use as much space as a new BUGS
> section?

Yeah, "(buggy until Linux 3.16)" sounds good to me.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
