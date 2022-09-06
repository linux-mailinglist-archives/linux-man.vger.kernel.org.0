Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEB005AE64B
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 13:13:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234468AbiIFLNp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 07:13:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233563AbiIFLNp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 07:13:45 -0400
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FDC179620
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 04:13:44 -0700 (PDT)
Received: by mail-vs1-xe33.google.com with SMTP id k66so11260551vsc.11
        for <linux-man@vger.kernel.org>; Tue, 06 Sep 2022 04:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=aD4R1i8jwZ7eX2+2Yd7Vkzuo8plDzyyI/F9+fXiPjz0=;
        b=q6eokNyCmZLD60QzvsJ54YSdpiZq+fHGYgAOaLDdAzjpt+NoQ0NG7MviUJn+I2PUKN
         Soz6uQk+DGn0dh1IBA+CrjAfKtg2DcEmaX+1eRYFVzlfBgHar8BirWm+2S3lXS+HGrPm
         s7srZUwse2wHOoCTKU4KS7pWcInf9SXyPkqowzbsVhYc+VDCMmj7Pg/BPDln7tWKnZFa
         OtO5Z88RT7sAiWXHZ2OoaeSUzWNwUNNqMSI46yqta7tQZPo4q/4npyXhbop1I4u/3wwi
         o79j/fzgswSQNnYJURkcLxWYUxSNNLt+utk9bJIPmSCRvjXYs/mgBSZokgdGo20MXEon
         qGOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=aD4R1i8jwZ7eX2+2Yd7Vkzuo8plDzyyI/F9+fXiPjz0=;
        b=7hu7MjsbQk5rPVdWxWcNZmcUsj6J5i6yVgImemHSFGCK1XnVzw2RaWZ+VrXdiotjFe
         nCPH39cjm7TOGU4eFQQkK4ohWvtIJWP5Z4i8lAg5tuSahjBH2NFuNyc5alzBDc1Y150y
         HMNVeLolZr09pnVCKuz2NvxERcteCacc4vUgdEiZZq+2UtgZKvOyEskFvx0ScEKjfqSW
         2b2N18NClo2mSY5jYounr8QltmlmlJAI8jK5OCrQsciqSB+eRtjxsRKIqYKPvBdiidG1
         SdcrTBdTpLPFqTxP0Vwjm9aelIZc0rQ6NtMySPH4HhhSHARNynnTtD06WlZTTHH2xDIc
         IiQg==
X-Gm-Message-State: ACgBeo1GpBDT8fM9s0/rhPCqgCP0ZoAFAqv2G612JROgFDFIbKL7BGCV
        5iAU2vP0KrW0DCp05vAau+jaTlJVQ/mBwOZA+UqndhG595I=
X-Google-Smtp-Source: AA6agR6A7v40aA+FWV/mBA2xn2vB/VD0PDEIapTqvNjYTK0LTzRBRl0fV5y+XqaFzD7XYc4E48IdoYHiTV+NmBwTwD4=
X-Received: by 2002:a67:a649:0:b0:390:88c5:6a91 with SMTP id
 r9-20020a67a649000000b0039088c56a91mr16007064vsh.3.1662462823265; Tue, 06 Sep
 2022 04:13:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220904155113.2623371-1-amir73il@gmail.com> <20220906094838.7tjroxwb4hwy7qrp@quack3>
In-Reply-To: <20220906094838.7tjroxwb4hwy7qrp@quack3>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Tue, 6 Sep 2022 14:13:31 +0300
Message-ID: <CAOQ4uxhYmMyjWEdzYvKxBqw=-88wB=LarWTFUE=u5mFrJD7CVw@mail.gmail.com>
Subject: Re: [RFC][PATCH] fanotify_mark.2: Document FAN_MARK_IGNORE
To:     Jan Kara <jack@suse.cz>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
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

On Tue, Sep 6, 2022 at 12:48 PM Jan Kara <jack@suse.cz> wrote:
>
> On Sun 04-09-22 18:51:13, Amir Goldstein wrote:
> > A new flavor of FAN_MARK_IGNORED_MASK that helps to resolve the
> > ambiguity around the combination of event flags and ignore mask.
> >
> > It is also more strict in the events and flags allowed to be
> > set in a non-directory inode mark mask and it mandates the use
> > of FAN_MARK_IGNORED_SURV_MODIFY flag on filesystem, mount and
> > directory inode marks.
> >
> > Signed-off-by: Amir Goldstein <amir73il@gmail.com>
>
> <snip>
>
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
> > +.B FAN_ONDIR
> > +flag is set with
> > +.BR FAN_MARK_IGNORE ,
> > +events on directories will not be ignored
> > +and if the flag
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
> > +When using this flag to add to an ignore mask
> > +of a mount, filesystem, or directory inode mark,
> > +the
> > +.B FAN_MARK_IGNORED_SURV_MODIFY
> > +flag must be specified.
>
> Perhaps a short rationaly why this flag is required would be good here?

Here is a bit much IMO.
I will add it to the next section.
How's that?

 .B FAN_MARK_IGNORED_SURV_MODIFY
 The ignore mask shall survive modify events.
 If this flag is not set,
 the ignore mask is cleared when a modify event occurs
-for the ignored file or directory.
+on the marked object.
+Omitting this flag is typically used to suppress events
+(e.g.,
+.BR FAN_OPEN )
+for a specific file,
+until that specific file's content has been modified.
+It is far less useful to suppress events
+on an entire filesystem,
+or mount,
+or on all files inside a directory,
+until some file's content has been modified.
+For this reason,
+the
+.B FAN_MARK_IGNORE
+flag requires the
+.B FAN_MARK_IGNORED_SURV_MODIFY
+flag on a mount,
+filesystem,
+or directory inode mark.
+This flag cannot be removed from a mark once set.
+When the ignore mask is updated without this flag,
+on a mark that was previously updated with the
+.B FAN_MARK_IGNORE
+and
+.B FAN_MARK_IGNORED_SURV_MODIFY
+flags,
+the update fails with
+.B EEXIST
+error.
+.TP
+.B FAN_MARK_IGNORE_SURV
+This is a synonym for
+.RB ( FAN_MARK_IGNORE | FAN_MARK_IGNORED_SURV_MODIFY ).
 .TP


>
> > +Failure to do so will results with
> > +.B EINVAL
> > +or
> > +.B EISDIR
> > +error.
>
> <snip>
>
> > +.TP
> > +.B EISDIR
> > +.I flags
> > +contains
> > +.BR FAN_MARK_IGNORE ,
> > +and
> > +.BR FAN_MARK_IGNORED_SURV_MODIFY ,
>
> I think it should rather be "but does not contain
> FAN_MARK_IGNORED_SURV_MODIFY", shouldn't it?
>

Yes. Good catch!

Thanks,
Amir.
