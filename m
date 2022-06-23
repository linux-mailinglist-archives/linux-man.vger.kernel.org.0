Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CBE75576B7
	for <lists+linux-man@lfdr.de>; Thu, 23 Jun 2022 11:36:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230167AbiFWJf7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Jun 2022 05:35:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229761AbiFWJf6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Jun 2022 05:35:58 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 807684968F
        for <linux-man@vger.kernel.org>; Thu, 23 Jun 2022 02:35:57 -0700 (PDT)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
        by smtp-out1.suse.de (Postfix) with ESMTP id 3FF6821CF7;
        Thu, 23 Jun 2022 09:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1655976956; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=SF+95Gkc2vbBIb3oQwBi0/7JbUGNmBGA4/7nOOImT9A=;
        b=mybJOQujf186FT4XQWRxo+GYe23iYbXT5uI915zp8pOioweLUt9ys/MvCXymAljBhFNEFm
        yp3P7kfKpCejKZNaHzpukb9v1W/0WpqeVw5z6pT/EfRH41Y4rWQ/P1b7ixUVOjlUGRakkm
        TxWnVAEZQpwrNNLTBPpAXcV5PgpU7Bo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1655976956;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=SF+95Gkc2vbBIb3oQwBi0/7JbUGNmBGA4/7nOOImT9A=;
        b=jJZqrAUiijShOclxWB91P8H5ZudUabKVWWe+dHDpLcNj8FjIdIAapGnmViHacC8nq+/Hw4
        Gpn/7WZDNdHscoAQ==
Received: from quack3.suse.cz (unknown [10.100.224.230])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by relay2.suse.de (Postfix) with ESMTPS id 6BEA82C142;
        Thu, 23 Jun 2022 09:35:50 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
        id CD9AEA062B; Thu, 23 Jun 2022 11:35:55 +0200 (CEST)
Date:   Thu, 23 Jun 2022 11:35:55 +0200
From:   Jan Kara <jack@suse.cz>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] fanotify.7, fanotify_init.2, fanotify_mark.2:
 Document FAN_RENAME
Message-ID: <20220623093555.fnop56gjdw3bsuwj@quack3.lan>
References: <20220622164153.2188751-1-amir73il@gmail.com>
 <20220622164153.2188751-3-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220622164153.2188751-3-amir73il@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed 22-06-22 19:41:53, Amir Goldstein wrote:
> FAN_RENAME is a new event type that includes information about
> both old and new directory entries.
> 
> It is a successor of the two separate FAN_MOVED_TO/FROM events,
> but those event types are still supported.
> 
> Reviewed-by: Matthew Bobrowski <repnop@google.com>
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Looks good. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  man2/fanotify_init.2 | 25 +++++++++++++++++++------
>  man2/fanotify_mark.2 | 16 ++++++++++++++++
>  man7/fanotify.7      |  6 +++++-
>  3 files changed, 40 insertions(+), 7 deletions(-)
> 
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index ac4d3a305..810f3fc73 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -173,8 +173,9 @@ Additionally, it may be used for applications monitoring a directory or a
>  filesystem that are interested in the directory entry modification events
>  .BR FAN_CREATE ,
>  .BR FAN_DELETE ,
> -and
>  .BR FAN_MOVE ,
> +and
> +.BR FAN_RENAME ,
>  or in events such as
>  .BR FAN_ATTRIB ,
>  .BR FAN_DELETE_SELF ,
> @@ -257,6 +258,15 @@ For the directory entry modification events
>  and
>  .BR FAN_MOVE ,
>  the reported name is that of the created/deleted/moved directory entry.
> +The event
> +.B FAN_RENAME
> +may contain two information records.
> +One of type
> +.B FAN_EVENT_INFO_TYPE_OLD_DFID_NAME
> +identifying the old directory entry,
> +and another of type
> +.B FAN_EVENT_INFO_TYPE_NEW_DFID_NAME
> +identifying the new directory entry.
>  For other events that occur on a directory object, the reported file handle
>  is that of the directory object itself and the reported name is '.'.
>  For other events that occur on a non-directory object, the reported file handle
> @@ -301,14 +311,17 @@ will be returned.
>  For the directory entry modification events
>  .BR FAN_CREATE ,
>  .BR FAN_DELETE ,
> -and
>  .BR FAN_MOVE ,
> +and
> +.BR FAN_RENAME ,
>  an additional record of type
>  .BR FAN_EVENT_INFO_TYPE_FID ,
> -is reported in addition to the information record of type
> -.B FAN_EVENT_INFO_TYPE_DFID
> -or
> -.BR FAN_EVENT_INFO_TYPE_DFID_NAME .
> +is reported in addition to the information records of type
> +.BR FAN_EVENT_INFO_TYPE_DFID ,
> +.BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
> +.BR FAN_EVENT_INFO_TYPE_OLD_DFID_NAME ,
> +and
> +.BR FAN_EVENT_INFO_TYPE_NEW_DFID_NAME .
>  The additional record includes a file handle
>  that identifies the filesystem child object
>  that the directory entry is referring to.
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index eeaddd173..66c704c19 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -240,6 +240,19 @@ directory.
>  An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
> +.BR FAN_RENAME " (since Linux 5.17)"
> +.\" commit 8cc3b1ccd930fe6971e1527f0c4f1bdc8cb56026
> +This event contains the same information provided by events
> +.B FAN_MOVED_FROM
> +and
> +.BR FAN_MOVED_TO ,
> +however is represented by a single event with up to two information records.
> +An fanotify group that identifies filesystem objects by file handles
> +is required.
> +If the filesystem object to be marked is not a directory, the error
> +.B ENOTDIR
> +shall be raised.
> +.TP
>  .BR FAN_MOVE_SELF " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a marked file or directory itself has been moved.
> @@ -472,6 +485,9 @@ and
>  and
>  .I pathname
>  do not specify a directory.
> +This error will also be returned when trying to set the event
> +.B FAN_RENAME
> +in the mask of a non directory inode mark.
>  For an fanotify group that was initialized with flag
>  .BR FAN_REPORT_TARGET_FID ,
>  this error will also be returned
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index 5f2c01408..47e104b1b 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -391,6 +391,9 @@ A watched file or directory was deleted.
>  .B FAN_FS_ERROR
>  A filesystem error was detected.
>  .TP
> +.B FAN_RENAME
> +A file or directory has been moved to or from a watched parent directory.
> +.TP
>  .B FAN_MOVED_FROM
>  A file or directory has been moved from a watched parent directory.
>  .TP
> @@ -556,8 +559,9 @@ identifying a child object.
>  Note that for the directory entry modification events
>  .BR FAN_CREATE ,
>  .BR FAN_DELETE ,
> -and
>  .BR FAN_MOVE ,
> +and
> +.BR FAN_RENAME ,
>  an information record identifying the created/deleted/moved child object
>  is reported only if an fanotify group was initialized with the flag
>  .BR FAN_REPORT_TARGET_FID.
> -- 
> 2.25.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
