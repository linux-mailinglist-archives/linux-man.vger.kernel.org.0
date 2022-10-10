Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 947585FA319
	for <lists+linux-man@lfdr.de>; Mon, 10 Oct 2022 20:02:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229454AbiJJSCi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Oct 2022 14:02:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbiJJSCi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Oct 2022 14:02:38 -0400
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F64E63FC7
        for <linux-man@vger.kernel.org>; Mon, 10 Oct 2022 11:02:37 -0700 (PDT)
Received: by mail-vs1-xe2a.google.com with SMTP id v68so11095069vsb.1
        for <linux-man@vger.kernel.org>; Mon, 10 Oct 2022 11:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Iynm/xQl8JF9A8UKLY3rHCgcfQoa9ZJBk4/PD3t8KXY=;
        b=lg2CBQtlwDX2wVUy1Tx/cPEJlct25lpQCs9FR0QS4V9Elg5sZ41Z4BH21mNS1ZgUoy
         steNds1HifTsa63kUZkyMcLtTQ0BXqcvBtTASSujC3Zok63/gs3TcyeIpytiekeuGtNQ
         0tvyt/yiEHud6wyRoNFAorzaPdrdDp45c5I2/+L5IXqnDpYCEA5PegcRmpEHpqkm7Yii
         cLgUn+i0qAhZSKUvd3v4Zw5NJ7v7BmeGDXujEOtIA1lnzy95tRYZSsLHYTuG25QEKPad
         AC5v0MTJpEaTlH6U9bVMnnhq0UGhNjcPRDVY10YbM1GVYjW+jsph+KPFvo66U26TJPyt
         CAqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Iynm/xQl8JF9A8UKLY3rHCgcfQoa9ZJBk4/PD3t8KXY=;
        b=fa1OfITu8R4tZHoTAUOPvkSO1RdKvlvHPkaaTnz/hF3oRay0ZOOfRkXY+gS4h8UHL4
         gL741jMb1ANxEpaTRD/8i+c1hbNYRmg0zZ7BVaMM3quemA4Qqs6+B7MX7ZSekh3qBST0
         K+hUa5FUhHBZeDglXmSYtvRr7WZviNdyCBNfLQkqf5hy21b0RjOnH8sHU/oe7O8kxZOb
         W3w//4oXogUomfNtyLlCR0YeoJFNeS6Cz5sDbHZth620z7cVR0nIKP5xA/527ixJvdn4
         LBBiyz0Q4Yo5qyYqjCQmlyeDiZi/+qYLyk/AQGzo0XFTuQ42s8Ww33uy/FsXCIebO8t9
         Lxqg==
X-Gm-Message-State: ACrzQf3c8kLUf2qyoBEeS24i9S4GEF6H9Mkm5kUq+bI2mbndgYUgDftX
        SgW9WwE2G8aFhk69JnaSxZ1SPgr0O7ELhUYunwM=
X-Google-Smtp-Source: AMsMyM4AAnpgpAH4BjGmhkFQOL7fgzi1jq58b7BgzZ+TjuiDDLCqoqF2KzaYP53zRIuI0h9KIg9+LDRhNHbsjWP5wug=
X-Received: by 2002:a67:c099:0:b0:39b:342:3c0d with SMTP id
 x25-20020a67c099000000b0039b03423c0dmr9632488vsi.3.1665424956227; Mon, 10 Oct
 2022 11:02:36 -0700 (PDT)
MIME-Version: 1.0
References: <20221007061328.1326041-1-amir73il@gmail.com> <96aeae1d-ee98-4bc4-6e82-60f902bdcf96@gmail.com>
In-Reply-To: <96aeae1d-ee98-4bc4-6e82-60f902bdcf96@gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Mon, 10 Oct 2022 21:02:24 +0300
Message-ID: <CAOQ4uxgqdhMgYZT3-6q+_=P_9Y7no9FopQ9nq2acPhSuEss34Q@mail.gmail.com>
Subject: Re: [PATCH v2] fanotify_mark.2: Document FAN_MARK_IGNORE
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Oct 8, 2022 at 2:43 AM Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Hi Amir!
>
> On 10/7/22 08:13, Amir Goldstein wrote:
> > A new flavor of FAN_MARK_IGNORED_MASK that helps to resolve the
> > ambiguity around the combination of event flags and ignore mask.
> >
> > It is also more strict in the events and flags allowed to be
> > set in a non-directory inode mark mask and it mandates the use
> > of FAN_MARK_IGNORED_SURV_MODIFY flag on filesystem, mount and
> > directory inode marks.
> >
> > Reviewed-by: Jan Kara <jack@suse.cz>
> > Reviewed-by: Matthew Bobrowski <repnop@google.com>
> > Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> > ---
> >
> > Hi Alex,
> >
> > This is the fanotify man page update for the 6.0 release.
> >
> > Thanks,
> > Amir.
> >
> > Changes since [v1]:
> > - Address review comments by Jan and Matthew
> >
> > [v1] https://lore.kernel.org/linux-man/20220904155113.2623371-1-amir73il@gmail.com/
>
> Thanks!  The semantic newline usage is very good! ;)
> See some small formatting comments below.
>
> Cheers,
>
> Alex
>
> >
> >   man2/fanotify_mark.2 | 177 ++++++++++++++++++++++++++++++++++++++++++-
> >   1 file changed, 175 insertions(+), 2 deletions(-)
> >
> > diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> > index b9b3357e2..f08ee2069 100644
> > --- a/man2/fanotify_mark.2
> > +++ b/man2/fanotify_mark.2
> > @@ -146,12 +146,130 @@ capability.
> >   The events in
> >   .I mask
> >   shall be added to or removed from the ignore mask.
> > +Note that the flags
> > +.B FAN_ONDIR ,
> > +and
> > +.B FAN_EVENT_ON_CHILD
> > +have no effect when provided with this flag.
> > +The effect of setting the flags
> > +.B FAN_ONDIR ,
>
> s/B/BR/
>
> bold roman (alternating)
>
> > +and
> > +.B FAN_EVENT_ON_CHILD
> > +in the mark mask
> > +on the events that are set in the ignore mask
> > +is undefined and depends on the Linux kernel version.
> > +Specifically, prior to Linux 5.9,
> > +.\" commit 497b0c5a7c0688c1b100a9c2e267337f677c198e
> > +setting a mark mask on a file
> > +and a mark with ignore mask on its parent directory
> > +would not result in ignoring events on the file,
> > +regardless of the
> > +.B FAN_EVENT_ON_CHILD
> > +flag in the parent directory's mark mask.
> > +When the ignore mask is updated with the
> > +.B FAN_MARK_IGNORED_MASK
> > +flag
> > +on a mark that was previously updated with the
> > +.B FAN_MARK_IGNORE
> > +flag,
> > +the update fails with
> > +.B EEXIST
> > +error.
> > +.TP
> > +.BR FAN_MARK_IGNORE " (since Linux 6.0)"
> > +.\" commit e252f2ed1c8c6c3884ab5dd34e003ed21f1fe6e0
> > +This flag has a similar effect as setting the
> > +.B FAN_MARK_IGNORED_MASK
> > +flag.
> > +The events in
> > +.I mask
> > +shall be added to or removed from the ignore mask.
> > +Unlike the
> > +.B FAN_MARK_IGNORED_MASK
> > +flag,
> > +this flag also has the effect that the
> > +.B FAN_ONDIR ,
>
> bold roman
>
> > +and
> > +.B FAN_EVENT_ON_CHILD
> > +flags take effect on the ignore mask.
> > +Specifically, unless the
> > +.B FAN_ONDIR
> > +flag is set with
> > +.BR FAN_MARK_IGNORE ,
> > +events on directories will not be ignored.
> > +If the flag
> > +.B FAN_EVENT_ON_CHILD
> > +is set with
> > +.BR FAN_MARK_IGNORE ,
> > +events on children will be ignored.
> > +For example,
> > +a mark on a directory with combination of
> > +a mask with
> > +.B FAN_CREATE
> > +event
> > +and
> > +.B FAN_ONDIR
> > +flag
> > +and an ignore mask with
> > +.B FAN_CREATE
> > +event
> > +and without
> > +.B FAN_ONDIR
> > +flag,
> > +will result in getting only
> > +the events for creation of sub-directories.
> > +When using the
> > +.B FAN_MARK_IGNORE
> > +flag to add to an ignore mask
> > +of a mount,
> > +filesystem,
> > +or directory inode mark,
> > +the
> > +.B FAN_MARK_IGNORED_SURV_MODIFY
> > +flag must be specified.
> > +Failure to do so will results with
> > +.B EINVAL
> > +or
> > +.B EISDIR
> > +error.
> >   .TP
> >   .B FAN_MARK_IGNORED_SURV_MODIFY
> >   The ignore mask shall survive modify events.
> >   If this flag is not set,
> >   the ignore mask is cleared when a modify event occurs
> > -for the ignored file or directory.
> > +on the marked object.
> > +Omitting this flag is typically used to suppress events
> > +(e.g.,
> > +.BR FAN_OPEN )
> > +for a specific file,
> > +until that specific file's content has been modified.
> > +It is far less useful to suppress events
> > +on an entire filesystem,
> > +or mount,
> > +or on all files inside a directory,
> > +until some file's content has been modified.
> > +For this reason,
> > +the
> > +.B FAN_MARK_IGNORE
> > +flag requires the
> > +.B FAN_MARK_IGNORED_SURV_MODIFY
> > +flag on a mount,
> > +filesystem,
> > +or directory inode mark.
> > +This flag cannot be removed from a mark once set.
> > +When the ignore mask is updated without this flag
> > +on a mark that was previously updated with the
> > +.B FAN_MARK_IGNORE
> > +and
> > +.B FAN_MARK_IGNORED_SURV_MODIFY
> > +flags,
> > +the update fails with
> > +.B EEXIST
> > +error.
> > +.TP
> > +.B FAN_MARK_IGNORE_SURV
> > +This is a synonym for
> > +.RB ( FAN_MARK_IGNORE | FAN_MARK_IGNORED_SURV_MODIFY ).
>
> I'm not sure if I'd format this as code (italics) right?,
> rather than separate constant names.
>
> Please check the below paragraphs from man-pages(7),
> and I'll leave the decission up to you.
>

I kind of like it the way it is, which is also consistent with similar
constructs in fanotify_init.2.

Would you like me to post v3 for the 2 minor formatting fixes?
Or will you make them on commit?

Thanks,
Amir.
