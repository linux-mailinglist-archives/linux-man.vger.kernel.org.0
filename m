Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3B463419E0
	for <lists+linux-man@lfdr.de>; Fri, 19 Mar 2021 11:26:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbhCSKZm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 06:25:42 -0400
Received: from mx2.suse.de ([195.135.220.15]:54538 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229618AbhCSKZe (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 19 Mar 2021 06:25:34 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 469A5AEAC;
        Fri, 19 Mar 2021 10:25:33 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
        id B3CB61F2B5B; Fri, 19 Mar 2021 11:25:32 +0100 (CET)
Date:   Fri, 19 Mar 2021 11:25:32 +0100
From:   Jan Kara <jack@suse.cz>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 0/2] fanotify man page updates for v5.13
Message-ID: <20210319102532.GA4910@quack2.suse.cz>
References: <20210318160817.3586288-1-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210318160817.3586288-1-amir73il@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu 18-03-21 18:08:15, Amir Goldstein wrote:
> Hi Michael,
> 
> Following are updated for changes queued for v5.13 [1]:
> - Unprivileged fanotify listener
> - Configurable limits
> 
> It is still pretty early in the development cycle, but I am posting
> them early for review.

The manpage updates look good to me. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

									Honza

> 
> Thanks,
> Amir.
> 
> [1] https://lore.kernel.org/linux-fsdevel/20210304112921.3996419-1-amir73il@gmail.com/
> 
> Amir Goldstein (1):
>   fanotify_init.2, fanotify_mark.2, fanotify.7: Configurable limits
> 
> Matthew Bobrowski (1):
>   fanotify_init.2, fanotify_mark.2: Document unprivileged listener
> 
>  man2/fanotify_init.2 | 99 ++++++++++++++++++++++++++++++++++++--------
>  man2/fanotify_mark.2 | 14 ++++++-
>  man7/fanotify.7      | 35 +++++++++++++++-
>  3 files changed, 127 insertions(+), 21 deletions(-)
> 
> -- 
> 2.25.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
