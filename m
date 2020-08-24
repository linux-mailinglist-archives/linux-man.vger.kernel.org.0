Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4F6C24FADB
	for <lists+linux-man@lfdr.de>; Mon, 24 Aug 2020 12:00:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726673AbgHXKAw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Aug 2020 06:00:52 -0400
Received: from mx2.suse.de ([195.135.220.15]:58656 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728472AbgHXKAt (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 24 Aug 2020 06:00:49 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 03DB9AA55;
        Mon, 24 Aug 2020 10:01:18 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
        id DDC2E1E1316; Mon, 24 Aug 2020 12:00:47 +0200 (CEST)
Date:   Mon, 24 Aug 2020 12:00:47 +0200
From:   Jan Kara <jack@suse.cz>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] fanotify.7, fanotify_init.2: Document FAN_REPORT_NAME
Message-ID: <20200824100047.GD24877@quack2.suse.cz>
References: <20200824080326.5012-1-amir73il@gmail.com>
 <20200824080326.5012-4-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200824080326.5012-4-amir73il@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon 24-08-20 11:03:26, Amir Goldstein wrote:
> Document fanotify_init(2) flag FAN_REPORT_NAME and the format of the
> event info type FAN_EVENT_INFO_TYPE_DFID_NAME.
> 
> The fanotify_fid.c example is extended to also report the name of the
> created file or sub-directory.
> 
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Just one spelling fix below. Otherwise feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza


> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index c58ae4493..a2e2a17fc 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -223,6 +223,60 @@ flag, no event will be reported.
>  See
>  .BR fanotify (7)
>  for additional details.
> +.TP
> +.BR FAN_REPORT_NAME " (since Linux 5.9)"
> +Events for fanotify groups initialized with this flag will contain additional
> +information about the name of the directory entry correlated to an event.
> +This flag must be provided in conjunction with the flag
> +.BR FAN_REPORT_DIR_FID .
> +Providing this flag value without
> +.BR FAN_REPORT_DIR_FID
> +will result in the error
> +.BR EINVAL .
> +This flag may be combined with the flag
> +.BR FAN_REPORT_FID .
> +An additional record of type
> +.BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
> +which encapsulates the information about the directory entry is included
> +alongside the generic event metadata structure and substitutes the additional
> +information record of type
> +.BR FAN_EVENT_INFO_TYPE_DFID .
> +The additional record includes a file handle that identifies a directory
> +filesystem object followed by a name that identifies an entry in that
> +directory.
> +For the directory entry modification events
> +.BR FAN_CREATE ,
> +.BR FAN_DELETE ,
> +and
> +.BR FAN_MOVE ,
> +the reported name is that of the created/deleted/moved directory entry.
> +For other events that occur on a directory object, the reported file handle
> +is that of the directory object itself and the reported name is '.'.
> +For other events that occur on a non-directory object, the reported file handle
> +is that of the parent directory object and the reported name is the name of a
> +directory entry where the object was located at the time of the event.
> +The rational behind this logic is that the reported directory file handle can
       ^^^^^^^ rationale
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
