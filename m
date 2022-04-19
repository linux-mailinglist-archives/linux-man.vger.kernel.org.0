Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71483507606
	for <lists+linux-man@lfdr.de>; Tue, 19 Apr 2022 19:06:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355343AbiDSRI2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Apr 2022 13:08:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355736AbiDSRIK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Apr 2022 13:08:10 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFB0E17AB3
        for <linux-man@vger.kernel.org>; Tue, 19 Apr 2022 10:05:21 -0700 (PDT)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
        by smtp-out1.suse.de (Postfix) with ESMTP id 2FD72210EC;
        Tue, 19 Apr 2022 17:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1650387920; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=oTMzLuNAGNIC09l7Rjada8XJKYwDWj6CDJ/4AhtwFKo=;
        b=CNBSyAz+eerjNQeEfA1kzicxqRYawbQI0xHK2Qct+TAsibXrvZ4Gnb08LQut0Uzlntgfsz
        xI+ypGZHB59QELMaXqook30yt+LcyJfvp8CWJ2d1Sqa/Y1dA0trA8lQvrLUCT6zLls/LVL
        lE/5OMHSJgJfEgXypIsvbe5lXSllUUg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1650387920;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=oTMzLuNAGNIC09l7Rjada8XJKYwDWj6CDJ/4AhtwFKo=;
        b=jBhQ9gzUIHHoBi9QkPhtI2Inj0DpjCXo1mqF/Mq7CNQzeXnU6dxvJw0EmHWXiXJA5zyIJh
        WbxgmRy75PXGZXDA==
Received: from quack3.suse.cz (unknown [10.100.224.230])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by relay2.suse.de (Postfix) with ESMTPS id 0AD332C141;
        Tue, 19 Apr 2022 17:05:20 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
        id A6362A0620; Tue, 19 Apr 2022 19:05:19 +0200 (CEST)
Date:   Tue, 19 Apr 2022 19:05:19 +0200
From:   Jan Kara <jack@suse.cz>
To:     Gabriel Krisman Bertazi <krisman@collabora.com>
Cc:     repnop@google.com, mtk.manpages@gmail.com,
        Amir Goldstein <amir73il@gmail.com>, Jan Kara <jack@suse.cz>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v5] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
Message-ID: <20220419170519.v4e2u4iijbqskuqw@quack3.lan>
References: <20220418163933.256771-1-krisman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220418163933.256771-1-krisman@collabora.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon 18-04-22 12:39:33, Gabriel Krisman Bertazi wrote:
> FAN_FS_ERROR is a new event for fanotify to report filesystem errors
> that might lead to some corruption.
> This documents how to use the feature and specific caveats.
> 
> To: Michael Kerrisk <mtk.manpages@gmail.com>
> Cc: Amir Goldstein <amir73il@gmail.com>
> Cc: Jan Kara <jack@suse.cz>
> Cc: Matthew Bobrowski <repnop@google.com>
> Cc: linux-man@vger.kernel.org
> Reviewed-by: Amir Goldstein <amir73il@gmail.com>
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>

Looks good to me. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> 
> ---
> Matthew,
> 
> as discussed this is rebased on top of the PIDFD documentation: commit
> 207080c7f7f5 ("fanotify: Document FAN_REPORT_PIDFD Feature")
> 
> changes since v4:
>  (Matthew)
>  - Grammar fixes
>  - Reword sections
>  (Jan)
>  - Explain fs error only apply to some errors
>  (Amir)
>  - Clarify what supported by ext4 means.
> 
> Changes since v3:
>  (Matthew)
>  - Rewording and fixes from github)
>  (amir)
>  - 5.15 -> 5.16
> 
> Changes since v2:
>   (matthew)
>     - Grammar
>     - List filesystems that support the feature
>     - file system -> filesystem
> Changes since v1:
> (Matthew)
>   - Grammar fixes
>   - Don't use the term "submitted" for events sent to the listener
>   - Clarify the kind of information that is file system specific
> ---
>  man2/fanotify_mark.2 | 31 +++++++++++++++++++++
>  man7/fanotify.7      | 64 ++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 95 insertions(+)
> 
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 9a45cbb77893..0bdee67850fb 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -203,6 +203,30 @@ Create an event when a marked file or directory itself is deleted.
>  An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
> +.BR FAN_FS_ERROR " (since Linux 5.16)"
> +.\" commit 9709bd548f11a092d124698118013f66e1740f9b
> +Create an event when a filesystem error
> +leading to inconsisted filesystem metadata
> +is detected.
> +An additional information record of type
> +.B FAN_EVENT_INFO_TYPE_ERROR
> +is returned for each event in the read buffer.
> +An fanotify group that identifies filesystem objects by file handles
> +is required.
> +.IP
> +Events of such type are dependent on support
> +from the underlying filesystem.
> +At the time of writing,
> +only the
> +.B ext4
> +filesystem reports
> +.B FAN_FS_ERROR
> +events.
> +.IP
> +See
> +.BR fanotify (7)
> +for additional details.
> +.TP
>  .BR FAN_MOVED_FROM " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been moved from a marked
> @@ -391,6 +415,13 @@ and mask contains a flag for permission events
>  or
>  .BR FAN_ACCESS_PERM ).
>  .TP
> +.B EINVAL
> +The group was initialized without
> +.B FAN_REPORT_FID
> +but one or more event types specified in the
> +.I mask
> +require it.
> +.TP
>  .B ENODEV
>  The filesystem object indicated by
>  .I pathname
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index 57dd2b040380..3dc4113a551c 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -217,6 +217,25 @@ struct fanotify_event_info_pidfd {
>  .EE
>  .in
>  .PP
> +In case of a
> +.B FAN_FS_ERROR
> +event,
> +an additional information record describing the error that occurred
> +is returned alongside the generic
> +.I fanotify_event_metadata
> +structure within the read buffer.
> +This structure is defined as follows:
> +.PP
> +.in +4n
> +.EX
> +struct fanotify_event_info_error {
> +    struct fanotify_event_info_header hdr;
> +    __s32 error;
> +    __u32 error_count;
> +};
> +.EE
> +.in
> +.PP
>  All information records contain a nested structure of type
>  .IR fanotify_event_info_header .
>  This structure holds meta-information about the information record
> @@ -358,6 +377,9 @@ A child file or directory was deleted in a watched parent.
>  .B FAN_DELETE_SELF
>  A watched file or directory was deleted.
>  .TP
> +.B FAN_FS_ERROR
> +A filesystem error was detected.
> +.TP
>  .B FAN_MOVED_FROM
>  A file or directory has been moved from a watched parent directory.
>  .TP
> @@ -630,6 +652,25 @@ Once the event listener has dealt with an event and the pidfd is no
>  longer required, the pidfd should be closed via
>  .BR close(2) .
>  .PP
> +The fields of the
> +.I fanotify_event_info_error
> +structure are as follows:
> +.TP
> +.I hdr
> +This is a structure of type
> +.IR fanotify_event_info_header .
> +The
> +.I info_type
> +field is set to
> +.BR FAN_EVENT_INFO_TYPE_ERROR .
> +.TP
> +.I error
> +Identifies the type of error that occurred.
> +.TP
> +.I error_count
> +This is a counter of the number of errors suppressed
> +since the last error was read.
> +.PP
>  The following macros are provided to iterate over a buffer containing
>  fanotify event metadata returned by a
>  .BR read (2)
> @@ -719,6 +760,29 @@ field.
>  In that case, the audit subsystem will log information about the access
>  decision to the audit logs.
>  .\"
> +.SS Monitoring filesystems for errors
> +A single FAN_FS_ERROR event is stored per filesystem at once.
> +Extra error messages are suppressed and accounted for
> +in the
> +.I error_count
> +field of the existing FAN_FS_ERROR event record,
> +but details about the errors are lost.
> +.PP
> +Errors reported by FAN_FS_ERROR are generic errno values
> +but not all kinds of error types are reported by all filesystems.
> +.PP
> +Errors not directly related to a file (i.e. super block corruption)
> +are reported with an invalid
> +.IR file_handle .
> +For these errors, the
> +.I file_handle
> +will have the field
> +.I handle_type
> +set to
> +.BR FILEID_INVALID ,
> +and the handle buffer size set to
> +.BR 0 .
> +.\"
>  .SS Closing the fanotify file descriptor
>  When all file descriptors referring to the fanotify notification group are
>  closed, the fanotify group is released and its resources
> -- 
> 2.35.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
