Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B90C35B0229
	for <lists+linux-man@lfdr.de>; Wed,  7 Sep 2022 12:55:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbiIGKzo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Sep 2022 06:55:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbiIGKzn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Sep 2022 06:55:43 -0400
Received: from mail-vk1-xa2f.google.com (mail-vk1-xa2f.google.com [IPv6:2607:f8b0:4864:20::a2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAFC746239
        for <linux-man@vger.kernel.org>; Wed,  7 Sep 2022 03:55:42 -0700 (PDT)
Received: by mail-vk1-xa2f.google.com with SMTP id i67so6863290vkb.2
        for <linux-man@vger.kernel.org>; Wed, 07 Sep 2022 03:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=M+A+hJTLK1hlELl3TbxhcnQOrXgjzO9shNTYJPSnk+g=;
        b=b73pDZDBjVhZQT9/Q7o4mE32wgVGCuQnFKJacCad8sj/LtjJF8SQZtlwpss2HYonmb
         u4Dt/V1H+qU/PPzXWe2fG+bTf5cqu6PtaI1LF+UNdz7eP8sc6E/8MnMPDucB5D+EdyA4
         5ehTdgdHm36jcbdJA25bbi/0iqlJpqkJ3cIIxVr8V5Dap2YCuU7pmpcGcDS9y2SCtI1v
         KgVFS4qZWf7XptrOMLOSCcZAfhSYDWd8q211QjpPuIxcdRtyNHaL6ubtS9DBR85/XvpI
         u1VnKPyhGLKK0U/RESRmmRqZyVGRRrX37hXohODlDZgBOHzvogGZC68pvORqbXQLxRKA
         9/gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=M+A+hJTLK1hlELl3TbxhcnQOrXgjzO9shNTYJPSnk+g=;
        b=2T4Wf2aqzStKXiUc0Yyb39LHB4H5Fx+O3nU2WGoBR8ssN+oVBub5RCHKBJHObVVDfV
         iRHW1qMphXqj5L/4OiSDhzvEZ69C1bX+bsh6TZvL4o7O9KFlRccfJibfSTAyW0UIQmWe
         LfdlOTwDEU0njH3SxesDFeS2lG+gHgRtnGkPDerOJsvb0+EsLQgpQfKBhhnzKoJaI7Ms
         6pgAKKD7Tpxoq9IB8Fwf1CegoDqOjQMpAdRRAF6t8UD9u/TTngsbzTQjaMCF7N9rvKn7
         5WCr324spnmbv0skOTQwWMiDDmunk4W+qqrhZfT9T5b8rDPwtvXo+2LM3pyR3Zw17xl4
         tjuw==
X-Gm-Message-State: ACgBeo25rFCv98jfSSe5L6p2C9M/0IVpSqoq6Z85zJj6dBvETAxbcaM3
        D+LXrhxjxUh1pH6QGiAbNhWHe8Zp4WHdW7Qkoos=
X-Google-Smtp-Source: AA6agR6n2y4Zso2bTTShqPYlnlO8H//LRG61WlBTBQAanFnhrXOsDrFhP5wvz2qgrBiq16O4a88sX1FK1wEWRtB+028=
X-Received: by 2002:a1f:5c16:0:b0:39e:c313:cb5b with SMTP id
 q22-20020a1f5c16000000b0039ec313cb5bmr509406vkb.25.1662548141655; Wed, 07 Sep
 2022 03:55:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220904155113.2623371-1-amir73il@gmail.com> <Yxg+OAeugyp1R1FJ@google.com>
In-Reply-To: <Yxg+OAeugyp1R1FJ@google.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Wed, 7 Sep 2022 13:55:30 +0300
Message-ID: <CAOQ4uxgTxAqv-W7Ds+K0Mh=0v-tfS0VGxkJ6bGWwVqSQkTtNew@mail.gmail.com>
Subject: Re: [RFC][PATCH] fanotify_mark.2: Document FAN_MARK_IGNORE
To:     Matthew Bobrowski <repnop@google.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Jan Kara <jack@suse.cz>, linux-man <linux-man@vger.kernel.org>
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

On Wed, Sep 7, 2022 at 9:46 AM Matthew Bobrowski <repnop@google.com> wrote:
>
> Maybe some useful nits.

Definitely useful.
Thanks!

>
> On Sun, Sep 04, 2022 at 06:51:13PM +0300, Amir Goldstein wrote:
> > diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> > index 757ad9159..e9303827c 100644
> > --- a/man2/fanotify_mark.2
> > +++ b/man2/fanotify_mark.2
> > @@ -146,12 +146,102 @@ capability.
> >  The events in
> >  .I mask
> >  shall be added to or removed from the ignore mask.
> > +Note that the flags
> > +.B FAN_ONDIR ,
> > +and
> > +.B FAN_EVENT_ON_CHILD
> > +have no effect in combination with this flag.
> > +The effect of setting those flags in the mask
>
> Is there anything wrong with explicitly specifying the exact flags
> you're referring to here? Like, "is it those flags there?", or "is it
> those flags over there?". Oh wait, you mean "it is those flags
> there?".
>
> I think it's best not describe flag usage and behavior of something
> based on spatial proximity.
>

ok.

> > +on ignoring events that are set in the ignore mask
> > +is undefined and depend on the Linux kernel version.
>
> Reading this sentence made me a little confused at first. Just

Yeh, it's a badly phrased sentence.
I tried to improve it a bit:

 .B FAN_MARK_IGNORED_MASK
 The events in
 .I mask
 shall be added to or removed from the ignore mask.
+Note that the flags
+.B FAN_ONDIR ,
+and
+.B FAN_EVENT_ON_CHILD
+have no effect in combination with this flag.
+The effect of setting the flags
+.B FAN_ONDIR ,
+and
+.B FAN_EVENT_ON_CHILD
+in the mark mask
+on the events that are set in the ignore mask
+is undefined and depends on the Linux kernel version.
+Specifically, prior to Linux 5.9,

I would love to get suggestions for improvement.

> checking, what I understood was that the use of FAN_ONDIR or
> FAN_EVENT_ON_CHILD when setting the ignore mask via
> FAN_MARK_IGNORED_MASK leads to undefined behavior. Is my understanding
> correct?
>

Not exactly.
Setting those flags in the ignore mask has no effect
(as mentioned above).
Setting those flags in the mask has undefined behavior
w.r.t whether the events on a directory or on a child will
be ignored, when said events are in the ignore mask.

See the "Specifically" clause below.

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
> > +flag,
>
> I'd just allow this sentence to flow without the use of comma after
> flag.

ok.

>
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
> > +and
> > +.B FAN_EVENT_ON_CHILD
> > +flags take effect on the ignore mask.
> > +Specifically, unless
>                         ^
>                         the
>

ok.

> > +.B FAN_ONDIR
> > +flag is set with
> > +.BR FAN_MARK_IGNORE ,
> > +events on directories will not be ignored
>                                             ^
>                                             .
>
> > +and if the flag
>
> I'd start a new sentence here.

ok.

>
> > +.B FAN_EVENT_ON_CHILD
> > +is set,
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
> > +will result in getting only events for creation of sub-directories.
>                                          ^
>                                          the

ok.

>
> > +When using this flag to add to an ignore mask
> > +of a mount, filesystem, or directory inode mark,
> > +the
> > +.B FAN_MARK_IGNORED_SURV_MODIFY
> > +flag must be specified.
> > +Failure to do so will results with
> > +.B EINVAL
> > +or
> > +.B EISDIR
> > +error.
> >  .TP
> >  .B FAN_MARK_IGNORED_SURV_MODIFY
> >  The ignore mask shall survive modify events.
> >  If this flag is not set,
> >  the ignore mask is cleared when a modify event occurs
> >  for the ignored file or directory.
> > +This flag cannot be removed from a mark once set.
> > +When the ignore mask is updated without this flag,
>                                                     ^
> Don't think the comma is needed here.

ok.

FYI, I pushed the fixes to:

https://github.com/amir73il/man-pages/commits/fan_mark_ignore

If you want to review them there and provide your RVB,
because I don't intend to post v2 before v6.0 release.

Thanks,
Amir.
