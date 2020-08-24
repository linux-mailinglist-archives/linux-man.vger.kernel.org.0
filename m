Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6ABDD24FA28
	for <lists+linux-man@lfdr.de>; Mon, 24 Aug 2020 11:53:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728513AbgHXJx0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Aug 2020 05:53:26 -0400
Received: from mx2.suse.de ([195.135.220.15]:48690 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729204AbgHXJxZ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 24 Aug 2020 05:53:25 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 2E9DDACDF;
        Mon, 24 Aug 2020 09:53:53 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
        id 162831E1316; Mon, 24 Aug 2020 11:53:23 +0200 (CEST)
Date:   Mon, 24 Aug 2020 11:53:23 +0200
From:   Jan Kara <jack@suse.cz>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] fanotify.7, fanotify_init.2: Document
 FAN_REPORT_DIR_FID
Message-ID: <20200824095323.GC24877@quack2.suse.cz>
References: <20200824080326.5012-1-amir73il@gmail.com>
 <20200824080326.5012-3-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200824080326.5012-3-amir73il@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon 24-08-20 11:03:25, Amir Goldstein wrote:
> Document fanotify_init(2) flag FAN_REPORT_DIR_FID and event info type
> FAN_EVENT_INFO_TYPE_DFID.
> 
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

The patch looks good to me. You can add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  man2/fanotify_init.2 | 35 +++++++++++++++++++++++++++++++++--
>  man7/fanotify.7      | 30 ++++++++++++++++++++++++++----
>  2 files changed, 59 insertions(+), 6 deletions(-)
> 
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index 54646e3c6..c58ae4493 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -1,4 +1,4 @@
> -.\" Copyright (C) 2013, Heinrich Schuchardt <xypron.glpk@gmx.de>
> +\" Copyright (C) 2013, Heinrich Schuchardt <xypron.glpk@gmx.de>
>  .\"
>  .\" %%%LICENSE_START(VERBATIM)
>  .\" Permission is granted to make and distribute verbatim copies of this
> @@ -191,7 +191,38 @@ is not permitted with this flag and will result in the error
>  .BR EINVAL .
>  See
>  .BR fanotify (7)
> -for additional information.
> +for additional details.
> +.TP
> +.BR FAN_REPORT_DIR_FID " (since Linux 5.9)"
> +Events for fanotify groups initialized with this flag will contain
> +(see exceptions below) additional information about a directory object
> +correlated to an event.
> +An additional record of type
> +.BR FAN_EVENT_INFO_TYPE_DFID
> +encapsulates the information about the directory object and is included
> +alongside the generic event metadata structure.
> +For events that occur on a non-directory object, the additional structure
> +includes a file handle that identifies the parent directory filesystem object.
> +Note that there is no guarantee that the directory filesystem object will be
> +found at the location described by the file handle information at the time
> +the event is received.
> +In combination with the flag
> +.BR FAN_REPORT_FID ,
> +two records may be reported with events that occur on a non-directory object,
> +one to identify the non-directory object itself and one to identify the parent
> +directory object.
> +Note that in some cases, a filesystem object does not have a parent,
> +for example, when an event occurs on an unlinked but open file.
> +In that case, with the
> +.BR FAN_REPORT_FID
> +flag, the event will be reported with only one record to identify the
> +non-directory object itself, because there is no directory associated with
> +the event. Without the
> +.BR FAN_REPORT_FID
> +flag, no event will be reported.
> +See
> +.BR fanotify (7)
> +for additional details.
>  .PP
>  The
>  .I event_f_flags
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index a7b219168..00fc56368 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -140,12 +140,13 @@ until either a file event occurs or the call is interrupted by a signal
>  (see
>  .BR signal (7)).
>  .PP
> -The use of the
> -.BR FAN_REPORT_FID
> -flag in
> +The use of one of the flags
> +.BR FAN_REPORT_FID ,
> +.BR FAN_REPORT_DIR_FID
> +in
>  .BR fanotify_init (2)
>  influences what data structures are returned to the event listener for each
> -event. Events reported to a group initialized with this flag will
> +event. Events reported to a group initialized with one of these flags will
>  use file handles to identify filesystem objects instead of file descriptors.
>  .TP
>  After a successful
> @@ -412,6 +413,19 @@ a single information record is expected to be attached to the event with
>  .I info_type
>  field value of
>  .BR FAN_EVENT_INFO_TYPE_FID .
> +When an fanotify file descriptor is created using the combination of
> +.BR FAN_REPORT_FID
> +and
> +.BR FAN_REPORT_DIR_FID ,
> +there may be two information records attached to the event. One with
> +.I info_type
> +field value of
> +.BR FAN_EVENT_INFO_TYPE_DFID ,
> +identifying a parent directory object, and one with
> +.I info_type
> +field value of
> +.BR FAN_EVENT_INFO_TYPE_FID ,
> +identifying a non-directory object.
>  The
>  .I fanotify_event_info_header
>  contains a
> @@ -469,6 +483,14 @@ field is
>  the
>  .IR file_handle
>  identifies the object correlated to the event.
> +If the value of
> +.I info_type
> +field is
> +.BR FAN_EVENT_INFO_TYPE_DFID ,
> +the
> +.IR file_handle
> +identifies the directory object correlated to the event or the parent directory
> +of the non-directory object correlated to the event.
>  .PP
>  The following macros are provided to iterate over a buffer containing
>  fanotify event metadata returned by a
> -- 
> 2.17.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
