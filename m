Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E223055B2A4
	for <lists+linux-man@lfdr.de>; Sun, 26 Jun 2022 17:48:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231388AbiFZPbv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Jun 2022 11:31:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbiFZPbv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Jun 2022 11:31:51 -0400
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4FA4FD21
        for <linux-man@vger.kernel.org>; Sun, 26 Jun 2022 08:31:49 -0700 (PDT)
Received: by mail-vs1-xe2d.google.com with SMTP id 63so6780625vsv.10
        for <linux-man@vger.kernel.org>; Sun, 26 Jun 2022 08:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4649cVEtolAb61xjzDjMXIK/T1Xdfg0mJ70t7xMMPLU=;
        b=WOfxZr194j1uVISxuiGpb7jSQRCDuN34ESKS7KlXhG0wIdsyMPKBDYSbEuDB51rAwf
         +w7zpOj/oJckzPagnZf7I/g0vQHRgL7XrnTJ4kTKXTU257RyEcumn0iyKrjt4BF1mfZq
         qao5DQe1AMUt2SFIZ9dHukj+N8nRmoh04dZcHtCZpo+EOyyuSqadOkQ5CA9YUwUbOmv6
         mpb0ytZYYAvtPq/7K92+HKopIgal482sn32beqNTE+g2W1/0QOtq5Ipb1kKlhZUdST+9
         MMN55f+GKoVmUHatMwrGAmP41zzcoWXALSWvXk/N2j+NHaUAaOQRnk55jePNDR9xvHVM
         6Gbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4649cVEtolAb61xjzDjMXIK/T1Xdfg0mJ70t7xMMPLU=;
        b=IL44rX6tSx4zGQGmwvjnojbdbK7N81e/92Ad7fnKt2j4T7Ac4HhzgUVAc6dVZPWd9g
         xPc5cS3cG03IbxZqi1gAg4iUiyYkode/DiWZE6LpCQBnMJp1r9sKkvqA68D1S4gsG5SP
         3MVky71bu6oL0pttPWA4PoGtMueJ1UTM+MeL+EaJZx0g5H6KHrTB4Hs2vSTylKemmXYb
         qtUFzdXBIOIjJMAOTRS/qbfvbBbYfzYI+X5z+HztwztZea51nBWFfbmT95KWZzD54qA+
         7zHC1qPLOwjE7p/OEtrM5AcED4g0v25iKk9UuuDImLKcejRLXgNSPVQSHkcaiGBmc3tM
         asfQ==
X-Gm-Message-State: AJIora88Yx5HjmUbSiEWd8mh3sTJk5JilaJ+gIZ0OvttYnkryemaFIGD
        V7TuVZocflNjmScNPpcCSgIAviM5gySSM8xQTk8=
X-Google-Smtp-Source: AGRyM1ukd5H3oAClgAcgKKN+hxMSEsTy0RnTfLVOpvLvAzFPVKcZMfkg9BLieOCX8NaQz3Z5GQTb8u2/gtOInCNClW0=
X-Received: by 2002:a67:c113:0:b0:354:3ef9:3f79 with SMTP id
 d19-20020a67c113000000b003543ef93f79mr2968580vsj.3.1656257509024; Sun, 26 Jun
 2022 08:31:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220622164153.2188751-1-amir73il@gmail.com> <20220622164153.2188751-2-amir73il@gmail.com>
In-Reply-To: <20220622164153.2188751-2-amir73il@gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Sun, 26 Jun 2022 18:31:37 +0300
Message-ID: <CAOQ4uxjYnK4phEuyotFCwCcdjx4sAJsZtaNabCxAgfUBe9+V5g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] fanotify.7, fanotify_init.2: Document FAN_REPORT_TARGET_FID
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man <linux-man@vger.kernel.org>
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

On Wed, Jun 22, 2022 at 7:41 PM Amir Goldstein <amir73il@gmail.com> wrote:
>
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

Alex,

I hope the reviewers won't mind, but because we are adding more
reasons of ENOTDIR
later on, I think this section would look better with every ENOTDIR
reason in a paragraph
of its own, like this:

.TP
.B ENOTDIR
.I flags
contains
.BR FAN_MARK_ONLYDIR ,
and
.I dirfd
and
.I pathname
do not specify a directory.
.TP
.B ENOTDIR
The fanotify group was initialized with flag
.BR FAN_REPORT_TARGET_FID ,
.I mask
contains directory entry modification events
(e.g.,
.BR FAN_CREATE ,
.BR FAN_DELETE ) ,
and
.I dirfd
and
.I pathname
do not specify a directory.
.TP

The end result [1] after the following FAN_RENAME patch looks like this:

       ENOTDIR
              flags contains FAN_MARK_ONLYDIR, and dirfd and pathname
do not specify a directory.

       ENOTDIR
              mask contains FAN_RENAME, and dirfd and pathname do not
specify a directory.

       ENOTDIR
              The fanotify group was initialized with flag
FAN_REPORT_TARGET_FID, mask contains
              directory entry modification events (e.g., FAN_CREATE,
FAN_DELETE), and dirfd and
              pathname do not  specify  a directory.

BTW, I could not figure out what causes the line break after ENOTDIR.
Other errors look similarly formatted and don't have this line break.

Thanks,
Amir.

[1] https://github.com/amir73il/man-pages/commits/fan_rename
