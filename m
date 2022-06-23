Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C32B25576A9
	for <lists+linux-man@lfdr.de>; Thu, 23 Jun 2022 11:34:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230346AbiFWJdt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Jun 2022 05:33:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbiFWJdt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Jun 2022 05:33:49 -0400
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8035488A7
        for <linux-man@vger.kernel.org>; Thu, 23 Jun 2022 02:33:47 -0700 (PDT)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
        by smtp-out2.suse.de (Postfix) with ESMTP id 4E8491FD84;
        Thu, 23 Jun 2022 09:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1655976826; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=8c/XyfJoUd1hQyR3P7X3Kc1Kq5pR2WDyQ7TUprgrwh4=;
        b=VBXRTqicVRb5f+K/8EDwMTrNJxOCk+bsWBJcdz6sVtdFc/6qOK3dh+iQx37gbbIoTiCuFM
        ElUNRPXNHNm3hdw7oe3jHFGVusk3/UKAWVdnD+9fhmvfhgd6LyEtx8z1ELoPYny1dftp7W
        mddmreV8Xflbfe4lsGQAdY9uapCSkcc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1655976826;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=8c/XyfJoUd1hQyR3P7X3Kc1Kq5pR2WDyQ7TUprgrwh4=;
        b=TXkZNiNUOfugTy731cWRqtTqM/IdQzBuwDwKs2H4nk8DEMst1vQP4BKlH0uoPQRHRWFIPO
        RdEVmScSnFQFjjAA==
Received: from quack3.suse.cz (unknown [10.100.224.230])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by relay2.suse.de (Postfix) with ESMTPS id 7717B2C142;
        Thu, 23 Jun 2022 09:33:40 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
        id DD97AA062B; Thu, 23 Jun 2022 11:33:45 +0200 (CEST)
Date:   Thu, 23 Jun 2022 11:33:45 +0200
From:   Jan Kara <jack@suse.cz>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] fanotify.7, fanotify_init.2: Document
 FAN_REPORT_TARGET_FID
Message-ID: <20220623093345.4f564b5sbmc7y5hw@quack3.lan>
References: <20220622164153.2188751-1-amir73il@gmail.com>
 <20220622164153.2188751-2-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220622164153.2188751-2-amir73il@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed 22-06-22 19:41:52, Amir Goldstein wrote:
> FAN_REPORT_TARGET_FID adds an information record about the child
> to directory entry modification events (create/delete/move).
> 
> This flag also adds sanity checks that directory modification events
> (create,delete,moved) cannot be set in mask of a non-dir inode mark.
> 
> Note that while FAN_REPORT_TARGET_FID was merged to v5.17, the sanity
> checks resulting in ENOTDIR were merged as fix commit ceaf69f8eadc
> ("fanotify: do not allow setting dirent events in mask of non-dir")
> to v5.18 and backported to v5.17.9.
> 
> Reviewed-by: Matthew Bobrowski <repnop@google.com>
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Looks good. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  man2/fanotify_init.2 | 40 +++++++++++++++++++++++++++++++++++++---
>  man2/fanotify_mark.2 |  8 ++++++++
>  man7/fanotify.7      | 27 +++++++++++++--------------
>  3 files changed, 58 insertions(+), 17 deletions(-)
> 
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index 9abec5fca..ac4d3a305 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -182,9 +182,11 @@ and
>  .BR FAN_MOVE_SELF .
>  All the events above require an fanotify group that identifies filesystem
>  objects by file handles.
> -Note that for the directory entry modification events the reported file handle
> -identifies the modified directory and not the created/deleted/moved child
> -object.
> +Note that without the flag
> +.BR FAN_REPORT_TARGET_FID ,
> +for the directory entry modification events,
> +there is an inforamtion record that identifies the modified directory
> +and not the created/deleted/moved child object.
>  The use of
>  .B FAN_CLASS_CONTENT
>  or
> @@ -282,6 +284,38 @@ for additional details.
>  .B FAN_REPORT_DFID_NAME
>  This is a synonym for
>  .RB ( FAN_REPORT_DIR_FID | FAN_REPORT_NAME ).
> +.TP
> +.BR FAN_REPORT_TARGET_FID " (since Linux 5.17)"
> +.\" commit d61fd650e9d206a71fda789f02a1ced4b19944c4
> +Events for fanotify groups initialized with this flag
> +will contain additional information about the child
> +correlated with directory entry modification events.
> +This flag must be provided in conjunction with the flags
> +.BR FAN_REPORT_FID ,
> +.B FAN_REPORT_DIR_FID
> +and
> +.BR FAN_REPORT_NAME .
> +or else the error
> +.B EINVAL
> +will be returned.
> +For the directory entry modification events
> +.BR FAN_CREATE ,
> +.BR FAN_DELETE ,
> +and
> +.BR FAN_MOVE ,
> +an additional record of type
> +.BR FAN_EVENT_INFO_TYPE_FID ,
> +is reported in addition to the information record of type
> +.B FAN_EVENT_INFO_TYPE_DFID
> +or
> +.BR FAN_EVENT_INFO_TYPE_DFID_NAME .
> +The additional record includes a file handle
> +that identifies the filesystem child object
> +that the directory entry is referring to.
> +.TP
> +.B FAN_REPORT_DFID_NAME_TARGET
> +This is a synonym for
> +.RB ( FAN_REPORT_DFID_NAME | FAN_REPORT_FID | FAN_REPORT_TARGET_FID ).
>  .PP
>  .TP
>  .BR FAN_REPORT_PIDFD " (since Linux 5.15)"
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 3dc538b7f..eeaddd173 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -472,6 +472,14 @@ and
>  and
>  .I pathname
>  do not specify a directory.
> +For an fanotify group that was initialized with flag
> +.BR FAN_REPORT_TARGET_FID ,
> +this error will also be returned
> +when trying to set directory entry modification events
> +(e.g.,
> +.BR FAN_CREATE ,
> +.BR FAN_DELETE )
> +in the mask of a non directory inode mark.
>  .TP
>  .B EOPNOTSUPP
>  The object indicated by
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index f4d391603..5f2c01408 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -171,14 +171,14 @@ alongside the generic
>  structure.
>  For example,
>  if a notification group is initialized with
> -.B FAN_REPORT_FID
> +.B FAN_REPORT_TARGET_FID
>  and
>  .BR FAN_REPORT_PIDFD ,
> -then an event listener should also expect to receive both
> +then an event listener should expect to receive up to two
>  .I fanotify_event_info_fid
> -and
> +information records and one
>  .I fanotify_event_info_pidfd
> -structures alongside the generic
> +information record alongside the generic
>  .I fanotify_event_metadata
>  structure.
>  Importantly,
> @@ -552,7 +552,15 @@ identifying a parent directory object, and one with
>  .I info_type
>  field value of
>  .BR FAN_EVENT_INFO_TYPE_FID ,
> -identifying a non-directory object.
> +identifying a child object.
> +Note that for the directory entry modification events
> +.BR FAN_CREATE ,
> +.BR FAN_DELETE ,
> +and
> +.BR FAN_MOVE ,
> +an information record identifying the created/deleted/moved child object
> +is reported only if an fanotify group was initialized with the flag
> +.BR FAN_REPORT_TARGET_FID.
>  .TP
>  .I fsid
>  This is a unique identifier of the filesystem containing the object
> @@ -572,15 +580,6 @@ filesystem as returned by
>  It can be used to uniquely identify a file on a filesystem and can be
>  passed as an argument to
>  .BR open_by_handle_at (2).
> -Note that for the directory entry modification events
> -.BR FAN_CREATE ,
> -.BR FAN_DELETE ,
> -and
> -.BR FAN_MOVE ,
> -the
> -.I file_handle
> -identifies the modified directory and not the created/deleted/moved child
> -object.
>  If the value of
>  .I info_type
>  field is
> -- 
> 2.25.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
