Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AD6E1B5A6C
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2020 13:23:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727906AbgDWLXy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 07:23:54 -0400
Received: from mx2.suse.de ([195.135.220.15]:57308 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727069AbgDWLXy (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 23 Apr 2020 07:23:54 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx2.suse.de (Postfix) with ESMTP id 4CBE7B120;
        Thu, 23 Apr 2020 11:23:52 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
        id 8320A1E1293; Thu, 23 Apr 2020 13:23:52 +0200 (CEST)
Date:   Thu, 23 Apr 2020 13:23:52 +0200
From:   Jan Kara <jack@suse.cz>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Heinrich Schuchardt <xypron.glpk@gmx.de>,
        Amir Goldstein <amir73il@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, alexandermv@gmail.com,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        Jan Kara <jack@suse.cz>
Subject: Re: Kernel bugzilla 198569: fanotify_mark() and FAN_Q_OVERFLOW
Message-ID: <20200423112352.GM3737@quack2.suse.cz>
References: <CAKgNAkjshc5bjT2gc7wBU6nkq1BxrcV6mEs6JSuepxFjHtupOA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkjshc5bjT2gc7wBU6nkq1BxrcV6mEs6JSuepxFjHtupOA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael!

On Thu 23-04-20 12:36:26, Michael Kerrisk (man-pages) wrote:
> Would you be able to take a look at
> https://bugzilla.kernel.org/show_bug.cgi?id=198569
> 
> It relates to some text you added to the fanotify_mark(2) manual page:
> 
>        FAN_Q_OVERFLOW
>               Create an event when an overflow of the event queue occurs.
>               The size of the event queue is limited to 16384 entries  if
>               FAN_UNLIMITED_QUEUE is not set in fanotify_init(2).
> 
> This was in the following commit
> 
> [[
> commit 5d730f864a6603b090cd1078668cede05d02b8c4
> Author: Heinrich Schuchardt <xypron.glpk@gmx.de>
> Date:   Tue Nov 8 23:13:38 2016 +0100
> 
>     fanotify_mark.2: Mention FAN_Q_OVERFLOW
> 
>     To receive overflow events it is necessary to set this bit
>     in fanotify_mark().
> ]]
> 
> As far as I can see, FAN_Q_OVERFLOW (test program, reading the kernel
> source) is only an output flag. But on the other hand, I know you are
> generally careful, so I wonder if something changed (though, at a
> quick glance, I could not see evidence that it has).

Yeah, the manpage is wrong AFAICT. FAN_Q_OVERFLOW is not accepted in the
input mask. It is only output event flag.

								Honza

-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
