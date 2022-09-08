Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00D0F5B1100
	for <lists+linux-man@lfdr.de>; Thu,  8 Sep 2022 02:26:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229889AbiIHA0v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Sep 2022 20:26:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230159AbiIHA0q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Sep 2022 20:26:46 -0400
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com [IPv6:2607:f8b0:4864:20::f35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3158C165C
        for <linux-man@vger.kernel.org>; Wed,  7 Sep 2022 17:26:44 -0700 (PDT)
Received: by mail-qv1-xf35.google.com with SMTP id o13so6220569qvw.12
        for <linux-man@vger.kernel.org>; Wed, 07 Sep 2022 17:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=zmhjAOxZEZTllZ45Tfs31tOCvzxdS3uD7T2k/Innnnc=;
        b=AO3vTGoFkuvYqmQd7B+IGwllvsqtArMFoivT3okCUTST/+5aM6fwrHwIeykARjeOlq
         HsKN7/e7UIZJ0iqR4XuSyzroWwlVwIjZEgz1TMlDBywujOeq4ZoSC+AyvYhiM345CEoa
         FdoxXMVGQcKO9Hcadmykk2u7Ah3C3VOfj28j3fw8KHl/Cw781vFiK+5AGyPcwNakaerv
         3BXeJ7UdVXXlf66F9KtGJIvOiRUihh7vNvzZnCv/1TxCANZWaDb/TbgzRnEM3PXoKry3
         t4bEnyr1NPcLMNndzj5OzMPQRDYkRG7Neg7fMMV3YfZKymZpWr814IbsAJZhd/zHjzzL
         +1Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=zmhjAOxZEZTllZ45Tfs31tOCvzxdS3uD7T2k/Innnnc=;
        b=AoBCi4eLlXquBUGu5HJgBoq4WGBQN+sB3QsOFOcGkHaul27zmN97ULPlO0XXgpz1sH
         YpBLOsZc4mMG4+3vu2k5K4/GGa68vBelTqZj0ce3K3wUaqms3HhyecewH191z3Lz1hwS
         AxsNZ5f0R5PZMi5He8d2r3TPMMGC9qwIr5VQt56ku9oqDr+p8KmNX/KRszFnac86eBx+
         4w3B6muSg/rr+JZNaG2damxCqTu6LWvsNtOLOBBqWBpy3hWpFpuZVvZojMcv1tnXEPFE
         CsEWAtLF9GTMdqT4p5pE6IlTfufUKV48zeruzMPSbKPjz+UmZgAvs6feW/Km/jllUFou
         MDdA==
X-Gm-Message-State: ACgBeo1MNuhCJBXsoxVqxrIscH29zJJy36WaOgLhZ85QAyNOWEWjVqMI
        kZBpZr775WdFgonbonJAP138rw==
X-Google-Smtp-Source: AA6agR74JGCya8aDmAIXpJW8lDPnkakandSxqYSeD1pSSTgUQiLZHOX92KlGXmz0QQVenEtWwnhZyw==
X-Received: by 2002:ad4:418b:0:b0:4aa:3b02:dba6 with SMTP id e11-20020ad4418b000000b004aa3b02dba6mr5433687qvp.7.1662596803699;
        Wed, 07 Sep 2022 17:26:43 -0700 (PDT)
Received: from google.com (123.178.145.34.bc.googleusercontent.com. [34.145.178.123])
        by smtp.gmail.com with ESMTPSA id x11-20020ac87ecb000000b0031ee918e9f9sm13612852qtj.39.2022.09.07.17.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 17:26:43 -0700 (PDT)
Date:   Thu, 8 Sep 2022 00:26:40 +0000
From:   Matthew Bobrowski <repnop@google.com>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Jan Kara <jack@suse.cz>, linux-man <linux-man@vger.kernel.org>
Subject: Re: [RFC][PATCH] fanotify_mark.2: Document FAN_MARK_IGNORE
Message-ID: <Yxk2wNx0MK333sks@google.com>
References: <20220904155113.2623371-1-amir73il@gmail.com>
 <Yxg+OAeugyp1R1FJ@google.com>
 <CAOQ4uxgTxAqv-W7Ds+K0Mh=0v-tfS0VGxkJ6bGWwVqSQkTtNew@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOQ4uxgTxAqv-W7Ds+K0Mh=0v-tfS0VGxkJ6bGWwVqSQkTtNew@mail.gmail.com>
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

On Wed, Sep 07, 2022 at 01:55:30PM +0300, Amir Goldstein wrote:
> On Wed, Sep 7, 2022 at 9:46 AM Matthew Bobrowski <repnop@google.com> wrote:
> >
> > Maybe some useful nits.
> 
> Definitely useful.
> Thanks!
> 
> >
> > On Sun, Sep 04, 2022 at 06:51:13PM +0300, Amir Goldstein wrote:
> > > diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> > > index 757ad9159..e9303827c 100644
> > > --- a/man2/fanotify_mark.2
> > > +++ b/man2/fanotify_mark.2
> > > @@ -146,12 +146,102 @@ capability.
> > >  The events in
> > >  .I mask
> > >  shall be added to or removed from the ignore mask.
> > > +Note that the flags
> > > +.B FAN_ONDIR ,
> > > +and
> > > +.B FAN_EVENT_ON_CHILD
> > > +have no effect in combination with this flag.
> > > +The effect of setting those flags in the mask
> >
> > Is there anything wrong with explicitly specifying the exact flags
> > you're referring to here? Like, "is it those flags there?", or "is it
> > those flags over there?". Oh wait, you mean "it is those flags
> > there?".
> >
> > I think it's best not describe flag usage and behavior of something
> > based on spatial proximity.
> >
> 
> ok.
> 
> > > +on ignoring events that are set in the ignore mask
> > > +is undefined and depend on the Linux kernel version.
> >
> > Reading this sentence made me a little confused at first. Just
> 
> Yeh, it's a badly phrased sentence.
> I tried to improve it a bit:
> 
>  .B FAN_MARK_IGNORED_MASK
>  The events in
>  .I mask
>  shall be added to or removed from the ignore mask.
> +Note that the flags
> +.B FAN_ONDIR ,
> +and
> +.B FAN_EVENT_ON_CHILD
> +have no effect in combination with this flag.
> +The effect of setting the flags
> +.B FAN_ONDIR ,
> +and
> +.B FAN_EVENT_ON_CHILD
> +in the mark mask
> +on the events that are set in the ignore mask
> +is undefined and depends on the Linux kernel version.
> +Specifically, prior to Linux 5.9,
> 
> I would love to get suggestions for improvement.
> 
> > checking, what I understood was that the use of FAN_ONDIR or
> > FAN_EVENT_ON_CHILD when setting the ignore mask via
> > FAN_MARK_IGNORED_MASK leads to undefined behavior. Is my understanding
> > correct?
> >
> 
> Not exactly.
> Setting those flags in the ignore mask has no effect
> (as mentioned above).
> Setting those flags in the mask has undefined behavior
> w.r.t whether the events on a directory or on a child will
> be ignored, when said events are in the ignore mask.
> 
> See the "Specifically" clause below.
> 
> > > +Specifically, prior to Linux 5.9,
> > > +.\" commit 497b0c5a7c0688c1b100a9c2e267337f677c198e
> > > +setting a mark mask on a file
> > > +and a mark with ignore mask on its parent directory
> > > +would not result in ignoring events on the file,
> > > +regardless of the
> > > +.B FAN_EVENT_ON_CHILD
> > > +flag in the parent directory's mark mask.
> > > +When the ignore mask is updated with the
> > > +.B FAN_MARK_IGNORED_MASK
> > > +flag,
> >
> > I'd just allow this sentence to flow without the use of comma after
> > flag.
> 
> ok.
> 
> >
> > > +on a mark that was previously updated with the
> > > +.B FAN_MARK_IGNORE
> > > +flag,
> > > +the update fails with
> > > +.B EEXIST
> > > +error.
> > > +.TP
> > > +.BR FAN_MARK_IGNORE " (since Linux 6.0)"
> > > +.\" commit e252f2ed1c8c6c3884ab5dd34e003ed21f1fe6e0
> > > +This flag has a similar effect as setting the
> > > +.B FAN_MARK_IGNORED_MASK
> > > +flag.
> > > +The events in
> > > +.I mask
> > > +shall be added to or removed from the ignore mask.
> > > +Unlike the
> > > +.B FAN_MARK_IGNORED_MASK
> > > +flag,
> > > +this flag also has the effect that the
> > > +.B FAN_ONDIR ,
> > > +and
> > > +.B FAN_EVENT_ON_CHILD
> > > +flags take effect on the ignore mask.
> > > +Specifically, unless
> >                         ^
> >                         the
> >
> 
> ok.
> 
> > > +.B FAN_ONDIR
> > > +flag is set with
> > > +.BR FAN_MARK_IGNORE ,
> > > +events on directories will not be ignored
> >                                             ^
> >                                             .
> >
> > > +and if the flag
> >
> > I'd start a new sentence here.
> 
> ok.
> 
> >
> > > +.B FAN_EVENT_ON_CHILD
> > > +is set,
> > > +events on children will be ignored.
> > > +For example,
> > > +a mark on a directory with combination of
> > > +a mask with
> > > +.B FAN_CREATE
> > > +event
> > > +and
> > > +.B FAN_ONDIR
> > > +flag
> > > +and an ignore mask with
> > > +.B FAN_CREATE
> > > +event
> > > +and without
> > > +.B FAN_ONDIR
> > > +flag,
> > > +will result in getting only events for creation of sub-directories.
> >                                          ^
> >                                          the
> 
> ok.
> 
> >
> > > +When using this flag to add to an ignore mask
> > > +of a mount, filesystem, or directory inode mark,
> > > +the
> > > +.B FAN_MARK_IGNORED_SURV_MODIFY
> > > +flag must be specified.
> > > +Failure to do so will results with
> > > +.B EINVAL
> > > +or
> > > +.B EISDIR
> > > +error.
> > >  .TP
> > >  .B FAN_MARK_IGNORED_SURV_MODIFY
> > >  The ignore mask shall survive modify events.
> > >  If this flag is not set,
> > >  the ignore mask is cleared when a modify event occurs
> > >  for the ignored file or directory.
> > > +This flag cannot be removed from a mark once set.
> > > +When the ignore mask is updated without this flag,
> >                                                     ^
> > Don't think the comma is needed here.
> 
> ok.
> 
> FYI, I pushed the fixes to:
> 
> https://github.com/amir73il/man-pages/commits/fan_mark_ignore

One optional suggestion, but apart from that the refactoring LGTM.

Reviewed-by: Matthew Bobrowski <repnop@google.com>

/M
