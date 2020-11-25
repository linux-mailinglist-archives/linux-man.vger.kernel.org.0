Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C04402C3F58
	for <lists+linux-man@lfdr.de>; Wed, 25 Nov 2020 12:53:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727019AbgKYLxF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Nov 2020 06:53:05 -0500
Received: from mx2.suse.de ([195.135.220.15]:58950 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726242AbgKYLxF (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 25 Nov 2020 06:53:05 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 16B39AC41;
        Wed, 25 Nov 2020 11:53:04 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
        id AD5661E130F; Wed, 25 Nov 2020 12:53:03 +0100 (CET)
Date:   Wed, 25 Nov 2020 12:53:03 +0100
From:   Jan Kara <jack@suse.cz>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] fanotify.7: fix outdated description
Message-ID: <20201125115303.GD16944@quack2.suse.cz>
References: <20201124152109.30027-1-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201124152109.30027-1-amir73il@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue 24-11-20 17:21:09, Amir Goldstein wrote:
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Looks good to me. You can add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  man7/fanotify.7 | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index c4f5397e4..5804a1f30 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -29,11 +29,12 @@ fanotify \- monitoring filesystem events
>  The fanotify API provides notification and interception of
>  filesystem events.
>  Use cases include virus scanning and hierarchical storage management.
> -Currently, only a limited set of events is supported.
> -In particular, there is no support for create, delete, and move events.
> +In the original fanotify API, only a limited set of events was supported.
> +In particular, there was no support for create, delete, and move events.
> +The support for those events was added in Linux 5.1.
>  (See
>  .BR inotify (7)
> -for details of an API that does notify those events.)
> +for details of an API that did notify those events pre Linux 5.1.)
>  .PP
>  Additional capabilities compared to the
>  .BR inotify (7)
> -- 
> 2.17.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
