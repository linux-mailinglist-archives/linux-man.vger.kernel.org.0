Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AC6752F953
	for <lists+linux-man@lfdr.de>; Sat, 21 May 2022 08:40:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235940AbiEUGki (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 May 2022 02:40:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230493AbiEUGkh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 May 2022 02:40:37 -0400
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CCCC15BAFE
        for <linux-man@vger.kernel.org>; Fri, 20 May 2022 23:40:36 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id j6so9368772qkp.9
        for <linux-man@vger.kernel.org>; Fri, 20 May 2022 23:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=J1kOx2zab3bqM5JYLX3sopoRcplT5iCrgSDVWy5fdd8=;
        b=oadUw4E5jzPv7zw6T/dy6Am+ahBd/wK0VB8EgCQNFn5yl1TPfBTpw4BpW3M885N1lr
         KHg7CDdVRB7T2XItymk4GHIHjqwUluhTWXEmXFHz5opLEWT13FQRm2IxHXlJi0Qr6psq
         dJDCZ3EBtlo+l93vqGUjoMko6vxYyOMDbSA8X/X2XvVkPewf40prhq6ySJZL3bYKDgm1
         s4N3pM6n5R0bf820sKisCX3FocZoTiKBrPJ48yTWTCaY/ttNZI3V6OsQ/g12z0vI4fTt
         0RIXjJoDh7y8BhAe9PBC/0jg6+L6sy6DhxK3bjh9sRzhyzbwL4ILl1PjGe4eca95FRwm
         GSYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=J1kOx2zab3bqM5JYLX3sopoRcplT5iCrgSDVWy5fdd8=;
        b=VHtdsCToaP2bYqz4svGSUsG4Eac/PV232tN74U3jEMZOp2QmbTVZstUH8w5qP14NS2
         PqVBZczWWCzfHXSL3DBWtN7pF93L83jV+k30mH2j5jnx1AzPonlJYjW/nVKy3rBDFS8o
         LR3zm+RGaEWDPEld2senWjP+By8oxs9meKYkOxeQTPU4Wx9fDTZX7xCPTqu+nxkCu0wy
         bPKsY9wtwbSc4jrWcq75YPx0u+4itrz7kjsTA2f/yQfGZCpFr0i6RD1G1l0nfoCDbByZ
         V2hORCwvDbCjlI8XSYAG3AlITOct7opS92evsToFELhnKzXry/NfejohV9w4+kJRtE8n
         VWHg==
X-Gm-Message-State: AOAM530K3UVgkYc2riJzVVcmkn9ETNSRVDluWPlU39lMwNoV6JXfVmTQ
        RcWV1XayLYm3iqvpwAX70X7+s9rO47uSxeFEgamNdO/S
X-Google-Smtp-Source: ABdhPJyMjcM0us9T84kKdmiu2fuoAIkeRO9XXvZaaySur1uizIPtndyoG/r+9KTlpYF12uVIYa6aez+hUZ+AfOWDWFQ=
X-Received: by 2002:a37:8846:0:b0:6a0:f6f1:a015 with SMTP id
 k67-20020a378846000000b006a0f6f1a015mr8586482qkd.386.1653115235234; Fri, 20
 May 2022 23:40:35 -0700 (PDT)
MIME-Version: 1.0
References: <20220520180935.37796-1-krisman@collabora.com>
In-Reply-To: <20220520180935.37796-1-krisman@collabora.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Sat, 21 May 2022 09:40:23 +0300
Message-ID: <CAOQ4uxjd-xKz1=Z+165s4hX0aiBsbui2_+JAqaGr0AT0z5+scg@mail.gmail.com>
Subject: Re: [PATCH RESEND v5] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
To:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[adding correct address of Alejandro]

On Fri, May 20, 2022 at 9:09 PM Gabriel Krisman Bertazi
<krisman@collabora.com> wrote:
>
> FAN_FS_ERROR is a new event for fanotify to report filesystem errors
> that might lead to some corruption.
> This documents how to use the feature and specific caveats.
>
> Reviewed-by: Jan Kara <jack@suse.cz>
> Reviewed-by: Amir Goldstein <amir73il@gmail.com>
> Reviewed-by: Matthew Bobrowski <repnop@google.com>
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
>
> ---
> as discussed this is rebased on top of the PIDFD documentation: commit
> 207080c7f7f5 ("fanotify: Document FAN_REPORT_PIDFD Feature")

Which commit is that? From my tree?
Anyway, I see that Matthew has posted v4 since and Alejandro followed with v5.

Pushed v5 to fanotify_pidfd branch in my tree [1]
and this patch of yours (applies with no conflicts) to branch
fan-fs-error in my tree.

I also pushed branches fanotify_target_fid and fan_rename with a minor
update to include ENOTDIR error that was added in v5.18-rc7 and v5.17.9.

Matthew, the ENOTDIR change is minor so I kept your Reviewed-by.
Please ACK.

Thanks,
Amir.

[1] https://github.com/amir73il/man-pages



>
> changes since v5:
>  (matthew)
>  - typo fix
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
>  man2/fanotify_mark.2 | 30 +++++++++++++++++++++
>  man7/fanotify.7      | 64 ++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 94 insertions(+)
>
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 9a45cbb77893..3dc538b7f84b 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -203,6 +203,29 @@ Create an event when a marked file or directory itself is deleted.
>  An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
> +.BR FAN_FS_ERROR " (since Linux 5.16)"
> +.\" commit 9709bd548f11a092d124698118013f66e1740f9b
> +Create an event when a filesystem error
> +leading to inconsistent filesystem metadata is detected.
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
> @@ -391,6 +414,13 @@ and mask contains a flag for permission events
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
> 2.36.1
>
