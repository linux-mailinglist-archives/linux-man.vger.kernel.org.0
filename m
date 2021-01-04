Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0432B2E9463
	for <lists+linux-man@lfdr.de>; Mon,  4 Jan 2021 12:56:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726278AbhADL4a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jan 2021 06:56:30 -0500
Received: from mx2.suse.de ([195.135.220.15]:46354 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726236AbhADL4a (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 4 Jan 2021 06:56:30 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id BAA14AEAE;
        Mon,  4 Jan 2021 11:55:48 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
        id 21F591E07F9; Mon,  4 Jan 2021 12:55:48 +0100 (CET)
Date:   Mon, 4 Jan 2021 12:55:48 +0100
From:   Jan Kara <jack@suse.cz>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org, Steve Grubb <sgrubb@redhat.com>
Subject: Re: [PATCH] fanotify.7: fix outdated description
Message-ID: <20210104115548.GC4018@quack2.suse.cz>
References: <20201124152109.30027-1-amir73il@gmail.com>
 <d698116e-4f7f-1b50-538f-7f5d83c9e697@gmail.com>
 <20201126132912.GE422@quack2.suse.cz>
 <32752c59-fd33-447d-a212-c255b6f32c0f@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <32752c59-fd33-447d-a212-c255b6f32c0f@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed 30-12-20 15:17:29, Michael Kerrisk (man-pages) wrote:
> On 11/26/20 2:29 PM, Jan Kara wrote:
> > On Thu 26-11-20 10:48:09, Michael Kerrisk (man-pages) wrote:
> >> On 11/24/20 4:21 PM, Amir Goldstein wrote:
> >>> Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> >>> ---
> >>>  man7/fanotify.7 | 7 ++++---
> >>>  1 file changed, 4 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> >>> index c4f5397e4..5804a1f30 100644
> >>> --- a/man7/fanotify.7
> >>> +++ b/man7/fanotify.7
> >>> @@ -29,11 +29,12 @@ fanotify \- monitoring filesystem events
> >>>  The fanotify API provides notification and interception of
> >>>  filesystem events.
> >>>  Use cases include virus scanning and hierarchical storage management.
> >>> -Currently, only a limited set of events is supported.
> >>> -In particular, there is no support for create, delete, and move events.
> >>> +In the original fanotify API, only a limited set of events was supported.
> >>> +In particular, there was no support for create, delete, and move events.
> >>> +The support for those events was added in Linux 5.1.
> >>>  (See
> >>>  .BR inotify (7)
> >>> -for details of an API that does notify those events.)
> >>> +for details of an API that did notify those events pre Linux 5.1.)
> >>>  .PP
> >>>  Additional capabilities compared to the
> >>>  .BR inotify (7)
> >>
> >> Thanks, Amir. Applied, with Jan's Reviewed-by.
> >>
> >> By the way, I see that there's still no documentation for
> >> FAN_AUDIT/FAN_ENABLE_AUDIT, added in:
> >>
> >>     commit de8cd83e91bc3ee212b3e6ec6e4283af9e4ab269
> >>     Author: Steve Grubb <sgrubb@redhat.com>
> >>     Date:   Mon Oct 2 20:21:39 2017 -0400
> >>
> >>         audit: Record fanotify access control decisions
> >>
> >>
> >> Can anyone help with that?
> > 
> > Thanks for a notification. If Steve doesn't beat me to it, I'll write the
> > doc likely next week.
> 
> Ping!

I've already sent it and Steve has acked it [1]. So the ball is on your
side ;).

								Honza

[1] https://lore.kernel.org/linux-man/4619055.31r3eYUQgx@x2

-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
