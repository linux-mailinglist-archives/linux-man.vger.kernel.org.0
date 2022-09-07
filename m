Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A2F85AFCC0
	for <lists+linux-man@lfdr.de>; Wed,  7 Sep 2022 08:46:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229777AbiIGGqW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Sep 2022 02:46:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbiIGGqW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Sep 2022 02:46:22 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBA8A81B25
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 23:46:20 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id i9so3890755qka.0
        for <linux-man@vger.kernel.org>; Tue, 06 Sep 2022 23:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=689KraZyj89Wb8fV/A3j5kbR0MBmEb2V6ZOhpxMC2nQ=;
        b=SeT9W1WzMEqYnkQL/cVH7U3IBXQ399xuEQJ6zwrNogjslFnWBjRprc1198994eyiD2
         /OobyrnoTLHr3tjMrdyWs/xfU3SdtS9f7mEMMT/hi/k9luaCCNXrnr68Rd2NSaIgnfHm
         2iuLd3oPt4upsk04V6N91BL4+hVniS+PDqMHNrCBB5X5uqTEjLIZUk+Bq/14TxLKvgfU
         6RAt1CUMi+76KIgAmZK5t69EfcR7bHTPW2M96JLzLSFfyUaKVfBf+2HIwM7Sfpm1QZfW
         fftZm0eZd/FeFCfbEmIDol8CnWoncC+WhqaDiLtp0DwV0MucpX1Iea4njcQx+wGa1gLL
         RuxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=689KraZyj89Wb8fV/A3j5kbR0MBmEb2V6ZOhpxMC2nQ=;
        b=jRL679zKnfJ6C1r5tPCgEdDwK/5ZL3ae8MU7Z1AJRk1MiJ1n+FuIR8D8pOee+nCcV3
         AtQDthijb4ZSkTGmbG/seC42GGtgK/Zsj9d6aMw74PrEF1VF9Sb0sq5o2B72bDy0zp21
         qe/SQW81nR0EJzOUhpuJvISH5gXxUH54DJQv7jd0JRu7J9LOue2UQ+YqRr/JSs0lbeaJ
         SyEFgz3Le1Wn40dsXJ4Kpr1t5cv0JhlU4628DGPM805hAnvv+9nofD2BknuMdHpRpmuB
         8SbxbzULY9tGwSjQg1tPLl6dpjFqfhiryTSjPBltlBQrmAfzgQYI0jmdlD2cKzx+CzRw
         IQFA==
X-Gm-Message-State: ACgBeo2QkT7WAppbygR5KYPrVUvkDp9K+mI6OZ7WpXZoGEGRo3hc32Re
        dY98oxrA7ifY/a9duCAwk2I3kDS5ti52Cw==
X-Google-Smtp-Source: AA6agR7gabT5ifkrTEPY5dMfreg22xrjIQl17C9Vdh1FJiQeCNrObuKBx8Vo21fC9AA1WGgy+WfP3Q==
X-Received: by 2002:a05:620a:1904:b0:6b8:9cfd:2b24 with SMTP id bj4-20020a05620a190400b006b89cfd2b24mr1687629qkb.489.1662533179888;
        Tue, 06 Sep 2022 23:46:19 -0700 (PDT)
Received: from google.com (123.178.145.34.bc.googleusercontent.com. [34.145.178.123])
        by smtp.gmail.com with ESMTPSA id q19-20020ac84513000000b003435983a263sm11245950qtn.46.2022.09.06.23.46.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 23:46:19 -0700 (PDT)
Date:   Wed, 7 Sep 2022 06:46:16 +0000
From:   Matthew Bobrowski <repnop@google.com>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [RFC][PATCH] fanotify_mark.2: Document FAN_MARK_IGNORE
Message-ID: <Yxg+OAeugyp1R1FJ@google.com>
References: <20220904155113.2623371-1-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220904155113.2623371-1-amir73il@gmail.com>
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

Maybe some useful nits.

On Sun, Sep 04, 2022 at 06:51:13PM +0300, Amir Goldstein wrote:
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 757ad9159..e9303827c 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -146,12 +146,102 @@ capability.
>  The events in
>  .I mask
>  shall be added to or removed from the ignore mask.
> +Note that the flags
> +.B FAN_ONDIR ,
> +and
> +.B FAN_EVENT_ON_CHILD
> +have no effect in combination with this flag.
> +The effect of setting those flags in the mask

Is there anything wrong with explicitly specifying the exact flags
you're referring to here? Like, "is it those flags there?", or "is it
those flags over there?". Oh wait, you mean "it is those flags
there?".

I think it's best not describe flag usage and behavior of something
based on spatial proximity.

> +on ignoring events that are set in the ignore mask
> +is undefined and depend on the Linux kernel version.

Reading this sentence made me a little confused at first. Just
checking, what I understood was that the use of FAN_ONDIR or
FAN_EVENT_ON_CHILD when setting the ignore mask via
FAN_MARK_IGNORED_MASK leads to undefined behavior. Is my understanding
correct?

> +Specifically, prior to Linux 5.9,
> +.\" commit 497b0c5a7c0688c1b100a9c2e267337f677c198e
> +setting a mark mask on a file
> +and a mark with ignore mask on its parent directory
> +would not result in ignoring events on the file,
> +regardless of the
> +.B FAN_EVENT_ON_CHILD
> +flag in the parent directory's mark mask.
> +When the ignore mask is updated with the
> +.B FAN_MARK_IGNORED_MASK
> +flag,

I'd just allow this sentence to flow without the use of comma after
flag.

> +on a mark that was previously updated with the
> +.B FAN_MARK_IGNORE
> +flag,
> +the update fails with
> +.B EEXIST
> +error.
> +.TP
> +.BR FAN_MARK_IGNORE " (since Linux 6.0)"
> +.\" commit e252f2ed1c8c6c3884ab5dd34e003ed21f1fe6e0
> +This flag has a similar effect as setting the
> +.B FAN_MARK_IGNORED_MASK
> +flag.
> +The events in
> +.I mask
> +shall be added to or removed from the ignore mask.
> +Unlike the
> +.B FAN_MARK_IGNORED_MASK
> +flag,
> +this flag also has the effect that the
> +.B FAN_ONDIR ,
> +and
> +.B FAN_EVENT_ON_CHILD
> +flags take effect on the ignore mask.
> +Specifically, unless
			^
			the

> +.B FAN_ONDIR
> +flag is set with
> +.BR FAN_MARK_IGNORE ,
> +events on directories will not be ignored
					    ^
					    .
					    
> +and if the flag

I'd start a new sentence here.

> +.B FAN_EVENT_ON_CHILD
> +is set,
> +events on children will be ignored.
> +For example,
> +a mark on a directory with combination of
> +a mask with
> +.B FAN_CREATE
> +event
> +and
> +.B FAN_ONDIR
> +flag
> +and an ignore mask with
> +.B FAN_CREATE
> +event
> +and without
> +.B FAN_ONDIR
> +flag,
> +will result in getting only events for creation of sub-directories.
  	       	  	       	      	 ^
					 the
					 
> +When using this flag to add to an ignore mask
> +of a mount, filesystem, or directory inode mark,
> +the
> +.B FAN_MARK_IGNORED_SURV_MODIFY
> +flag must be specified.
> +Failure to do so will results with
> +.B EINVAL
> +or
> +.B EISDIR
> +error.
>  .TP
>  .B FAN_MARK_IGNORED_SURV_MODIFY
>  The ignore mask shall survive modify events.
>  If this flag is not set,
>  the ignore mask is cleared when a modify event occurs
>  for the ignored file or directory.
> +This flag cannot be removed from a mark once set.
> +When the ignore mask is updated without this flag,
						    ^
Don't think the comma is needed here.

> +on a mark that was previously updated with the
> +.B FAN_MARK_IGNORE
> +and
> +.B FAN_MARK_IGNORED_SURV_MODIFY
> +flags,
> +the update fails with
> +.B EEXIST
> +error.
> +.TP
> +.B FAN_MARK_IGNORE_SURV
> +This is a synonym for
> +.RB ( FAN_MARK_IGNORE | FAN_MARK_IGNORED_SURV_MODIFY ).
>  .PP
>  .TP
>  .BR FAN_MARK_EVICTABLE " (since Linux 5.19)"
> @@ -459,6 +549,32 @@ and the user attempted to update the mark with
>  .B FAN_MARK_EVICTABLE
>  flag.
>  .TP
> +.B EEXIST
> +The filesystem object indicated by
> +.I dirfd
> +and
> +.I pathname
> +has a mark that was updated with the
> +.B FAN_MARK_IGNORE
> +flag,
> +and the user attempted to update the mark with
> +.B FAN_MARK_IGNORED_MASK
> +flag.
> +.TP
> +.B EEXIST
> +The filesystem object indicated by
> +.I dirfd
> +and
> +.I pathname
> +has a mark that was updated with the
> +.B FAN_MARK_IGNORE
> +and
> +.B FAN_MARK_IGNORED_SURV_MODIFY
> +flags,
> +and the user attempted to update the mark only with
> +.B FAN_MARK_IGNORE
> +flag.
> +.TP
>  .B EINVAL
>  An invalid value was passed in
>  .I flags
> @@ -484,8 +600,33 @@ but one or more event types specified in the
>  .I mask
>  require it.
>  .TP
> +.B EINVAL
> +.I flags
> +contains
> +.BR FAN_MARK_IGNORE ,
> +and either
> +.B FAN_MARK_MOUNT
> +or
> +.BR FAN_MARK_FILESYSTEM ,
> +but does not contain
> +.BR FAN_MARK_IGNORED_SURV_MODIFY .
> +.TP
> +.B EISDIR
> +.I flags
> +contains
> +.BR FAN_MARK_IGNORE ,
> +and
> +.BR FAN_MARK_IGNORED_SURV_MODIFY ,
> +and
> +.I dirfd
> +and
> +.I pathname
> +specify a directory.
> +.TP
>  .B ENODEV
>  The filesystem object indicated by
> +.I dirfd
> +and
>  .I pathname
>  is not associated with a filesystem that supports
>  .I fsid
> @@ -547,8 +688,12 @@ and
>  do not specify a directory.
>  .TP
>  .B ENOTDIR
> -The fanotify group was initialized with flag
> +.I flags
> +contains
> +.BR FAN_MARK_IGNORE ,
> +or the fanotify group was initialized with flag
>  .BR FAN_REPORT_TARGET_FID ,
> +and
>  .I mask
>  contains directory entry modification events
>
> -- 
> 2.25.1
>

/M
