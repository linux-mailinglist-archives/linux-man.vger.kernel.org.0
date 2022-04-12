Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19D2A4FEA3F
	for <lists+linux-man@lfdr.de>; Wed, 13 Apr 2022 01:16:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229437AbiDLXSb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Apr 2022 19:18:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbiDLXS1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 12 Apr 2022 19:18:27 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4582BBF510
        for <linux-man@vger.kernel.org>; Tue, 12 Apr 2022 16:14:48 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id bg24so200706pjb.1
        for <linux-man@vger.kernel.org>; Tue, 12 Apr 2022 16:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Tdn9Lqlen1kexBRYzAQDW8IklEVG9B8rDYGLMPdNLo4=;
        b=Vdn0AThpCZw0z/QtTAdiRrYHZQRvuehvVtYlvD7oGenZYmxt0PCiXloxd8/b1RgJId
         EPtcrl+xwSQFojajz6LFEIupH0Kw0+rU+W/js9OxAbz1q9r5KslcatOB5Vsl//L642i3
         T2RSc8YBKR1+MuodcJzVZnA9HeHXKVD3DD3iOUT3WpRBocWn5XYz8NkvxlSU6/4gbwar
         RFJFyjEP5hkegbChVz8emfM+OR+aHBV3Nx1gs4twFZzLo3ztQMlYFH/v1fAUcn4SuBYE
         RTL9om/cUIt+u2fCrauYRFsOchNZUoEIEOE3m/8nWA3SGYYZFzyXBCYiA7aDKUr1zjAh
         g+Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Tdn9Lqlen1kexBRYzAQDW8IklEVG9B8rDYGLMPdNLo4=;
        b=mH6Cql4L/PBO+prRQvqV+C6EkNw5JbfeoRNFHQXD9jc6YTar1q7RjcNWR35DB8lXnL
         6B6uClNKYvmEtpHRGdrLw5IXN39BfQmzv0/NbmlyQ/qMwsEfno/kZ4KMq5ZR+G5a9K/U
         igN8qSe9UuvQdz8abwGmgjbo8NdMami55vMDwRzImCjUKoPWQHK7y+GkfGEH0Hu7rbe3
         2RuIJzjNZv6hGvS88fdtEsm7hXtDjBToBMFpfhJIerZtiXrJHcpRbCVdbB2dKooBtgbY
         3Cipd+LUJyWEX4tKNvUr7KH8Gt+6qEoPPgzrLYvU7yokJqctmy/RQl2Qb/PclePxF8mE
         IgGg==
X-Gm-Message-State: AOAM532WC73O+jkfbM7vVgj2SjpbKSSDEkfWAlkmhWetad/hnQqZDuYZ
        UlMXdUCsGtGZ1KpxjbAlLM7eNkIQEy7idw==
X-Google-Smtp-Source: ABdhPJySZV+OIurg9YZsVKyQphd02SWo7JROrDiQqDXaVpHVLhN2cRetpyOznJFfPC1nYFtRhwfTDQ==
X-Received: by 2002:a17:90b:4c08:b0:1cb:9c94:94f9 with SMTP id na8-20020a17090b4c0800b001cb9c9494f9mr7552530pjb.74.1649805287482;
        Tue, 12 Apr 2022 16:14:47 -0700 (PDT)
Received: from google.com ([2401:fa00:9:211:7ffa:5afe:e07f:12e1])
        by smtp.gmail.com with ESMTPSA id e14-20020a62aa0e000000b00505c05545f8sm8232066pff.108.2022.04.12.16.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Apr 2022 16:14:46 -0700 (PDT)
Date:   Wed, 13 Apr 2022 09:14:36 +1000
From:   Matthew Bobrowski <repnop@google.com>
To:     Gabriel Krisman Bertazi <krisman@collabora.com>
Cc:     amir73il@gmail.com, jack@suse.cz, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com
Subject: Re: [PATCH v4] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
Message-ID: <YlYHjTvlr3W66TA2@google.com>
References: <YlDCh1OEVxSgu2L9@google.com>
 <CAOQ4uxjpwZs8Jg-cZ5yWqUis=FA=+g+ycjdBchz0kzKBhs6HxQ@mail.gmail.com>
 <YlSzOaBTLA+LqOhU@google.com>
 <87bkx7xj3q.fsf@collabora.com>
 <YlTKQWTwWY45g9Ws@google.com>
 <87lewacf0r.fsf_-_@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87lewacf0r.fsf_-_@collabora.com>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Apr 12, 2022 at 02:50:28PM -0400, Gabriel Krisman Bertazi wrote:
> 
> FAN_FS_ERROR is a new event for fanotify to report filesystem errors.
> This documents how to use the feature and specific caveats.
> 
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
>
> + Michael, linux-man
> 
> Matthew,
> 
> as discussed, this is rebased on top of the PIDFD documentation: commit
> 207080c7f7f5 ("fanotify: Document FAN_REPORT_PIDFD Feature").

Mostly looks OK. I've left a couple suggestions that I think could be
adopted.

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
> 
> ---
>  man2/fanotify_mark.2 | 28 +++++++++++++++++++
>  man7/fanotify.7      | 64 ++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 92 insertions(+)
> 
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 9a45cbb77893..8f9bb863980b 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -203,6 +203,27 @@ Create an event when a marked file or directory itself is deleted.
>  An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
> +.BR FAN_FS_ERROR " (since Linux 5.16)"
> +.\" commit 9709bd548f11a092d124698118013f66e1740f9b
> +Create an event when a filesystem error is detected.
> +An fanotify group that identifies filesystem objects by file handles
> +is required.
> +.IP
> +An additional information record of type
> +.BR FAN_EVENT_INFO_TYPE_ERROR
> +is returned for each event in the read buffer.
> +.IP

I'd update this to:

Create an event when a filesystem error is detected.
An additional information record of type
.B FAN_EVENT_INFO_TYPE_ERROR
is returned for each event in the read buffer.
An fanotify group that identifies filesystem objects by file handles
is required.

> +Events of such type are dependent on support
> +from the underlying filesystem.
> +At the time of this writing,

At the time of writing,

> +only the
> +.B ext4
> +filesystem supports this feature.
> +.IP
> +See
> +.BR fanotify (7)
> +for additional details.
> +.TP
>  .BR FAN_MOVED_FROM " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been moved from a marked
> @@ -391,6 +412,13 @@ and mask contains a flag for permission events
>  or
>  .BR FAN_ACCESS_PERM ).
>  .TP
> +.B EINVAL
> +The group was initialized without
> +.B FAN_REPORT_FID
> +but one or more events in
> +.I mask
> +require it.
> +.TP

I'd update this to:

The fanotify group was initialized without
.BR FAN_REPORT_FID .
One or more event types specified in the
.I mask
require it.

>  .B ENODEV
>  The filesystem object indicated by
>  .I pathname
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index 57dd2b040380..59c928cf233f 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -217,6 +217,25 @@ struct fanotify_event_info_pidfd {
>  .EE
>  .in
>  .PP
> +In case of a
> +.B FAN_FS_ERROR
> +event,
> +an additional record describing the error that occurred
                ^
		information

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

This is just for my understanding. So, it isn't until the event
listener reads and clears the FAN_FS_ERROR event from the event queue
that you're able to receive subsequent filesystem errors for
potentially different objects on the same filesystem. Based on this,
it sounds like if there were to be two separate objects on the same
filesystem that experienced some kind of error at the same time, then
only one of those errors encoded in FAN_FS_ERROR would be returned?

> +Extra error messages are suppressed and accounted for
> +in the
> +.I error_count
> +field of the existing FAN_FS_ERROR event record,
> +but details about the errors are lost.
> +.PP
> +Errors types reported by FAN_FS_ERROR are generic errno values

I'd update this to:

Errors reported by FAN_FS_ERROR ...

> +but not all kinds of errors types are reported by all filesystems.
                        ^
			s/errors/error

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

/M
