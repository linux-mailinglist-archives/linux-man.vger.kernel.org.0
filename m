Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DD0353228F
	for <lists+linux-man@lfdr.de>; Tue, 24 May 2022 07:41:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232788AbiEXFlK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 May 2022 01:41:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234516AbiEXFlA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 May 2022 01:41:00 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD10590CC9
        for <linux-man@vger.kernel.org>; Mon, 23 May 2022 22:40:58 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id gg20so15883062pjb.1
        for <linux-man@vger.kernel.org>; Mon, 23 May 2022 22:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=z34u3J0FMsL8vaPGHtJsRGg9WQLRq1Q5BOLtsQ3IEYE=;
        b=NjdTu6YrpocLT4eBEp90PHD9N+Yd94JNhj9EM7jjVxJh0ccDlXcqvCVcD7Y7NDIBH3
         XBv7/T4TUcPALa4id87Ld0S2qreaCGQ7Wj/aBGAtHHYoXtIcl+FrVo+pFTTMWKH/F4AA
         rotgkH8mGV0NibQM4NeJEBNgI0lPMEYI0TFgmOdsyrJRf0rB82e8gFhHM5QetQEp3nk4
         VbRhYsU+uDfZ2l17dW/xsdFUvnnn3h5JmQwazRalCFr51/nZrX/rSzckpzpVk0iF060B
         hRUSNqcF6GNK0PTzaEyUNNCBwS9EBopI9AOQ7HQSybv05IeyynzaaujOVznyExQYrTrb
         jo9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=z34u3J0FMsL8vaPGHtJsRGg9WQLRq1Q5BOLtsQ3IEYE=;
        b=byMZcIdMazmDowuAg2rbyhZpE5SGhY5u9KaREwDqXjkSw9aNvKr3xyFyqL1krKugqG
         +Mip0n5vFO7jf1pVhpSUG+fgnDz1YHXWmdkT3IemBvFm/s8nelsuc1PKe3mpN/Cd83i/
         gCe47PVabBWRo7M4JVkBxAzUDUHChwrDaGwqzt9x4wRiHN+0Ho/ig9K0ypF4txnhyRwJ
         QJ1igROmFY1Ec/ezRlMRbPGbSNGwTG44oPB/A9SbhrgLUtgrstsSgxBaO4PLqv2qv0FV
         7175ngDX9U5MYhhDN3V190AiCpm715zl/HfOX7Hw50OYPys2jbdQL2iZP0QsscWFJYF5
         3rZw==
X-Gm-Message-State: AOAM531/gUA6Redp0LmCuDUKYTflAGtBGNZSgThCi8o5ioRrwhKbMI8Y
        CvrwTk2mEICS1H6Y5UyERM/62g==
X-Google-Smtp-Source: ABdhPJz79zDhG5MD0BltsZCtu7n5Q4u+T6rTsgaEAyb6kIySfJhsZNmORK95t6D5Yav4FMlTEgu/jA==
X-Received: by 2002:a17:90a:4417:b0:1ca:a861:3fbf with SMTP id s23-20020a17090a441700b001caa8613fbfmr2888730pjg.80.1653370858118;
        Mon, 23 May 2022 22:40:58 -0700 (PDT)
Received: from google.com ([2401:fa00:9:211:7819:7a08:e8dd:fe8f])
        by smtp.gmail.com with ESMTPSA id w3-20020a17090a460300b001cd4989ff42sm716340pjg.9.2022.05.23.22.40.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 May 2022 22:40:57 -0700 (PDT)
Date:   Tue, 24 May 2022 15:40:47 +1000
From:   Matthew Bobrowski <repnop@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, jack@suse.cz, amir73il@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v4] fanotify: Document FAN_REPORT_PIDFD Feature
Message-ID: <Yoxv32sx3OYo4pLh@google.com>
References: <1af583adb1f368c51f1976db7bf3a27530cdc06f.1650408011.git.repnop@google.com>
 <60295764-e14c-9570-8ed3-3975c913e72c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <60295764-e14c-9570-8ed3-3975c913e72c@gmail.com>
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

On Sat, May 14, 2022 at 03:12:33PM +0200, Alejandro Colomar wrote:
> Hi Matthew,
> 
> On 4/20/22 00:43, Matthew Bobrowski wrote:
> > Update the fanotify API documentation to include details on the new
> > FAN_REPORT_PIDFD feature. This patch also includes a generic section
> > describing the concept of information records which are supported by
> > the fanotify API.
> > 
> > Signed-off-by: Matthew Bobrowski <repnop@google.com>
> > Reviewed-by: Jan Kara <jack@suse.cz>
> > Reviewed-by: Amir Goldstein <amir73il@gmail.com>
> > ---
> > 
> > Changes in v4:
> > 
> > * Applied style and grammatical suggestions by Alejandro Colomar
> >    [0]. This includes the use of Oxford-style commas and semantic
> >    newlines.
> 
> I've further edited the patch a bit (only whitespace) regarding semantic
> newlines.  I'll send it as a reply to this patch in a moment.
> 
> Apart from that, I couldn't understand a paragraph.  See below.
> > +This is a process file descriptor that refers to the process
> > +responsible for generating the event.
> > +The returned process file descriptor is no different from one which
> > +could be obtained manually if
> > +.BR pidfd_open (2)
> > +were to be called on
> > +.IR fanotify_event_metadata.pid .
> 
> 
> > +In the instance that an error is encountered during pidfd creation for
> > +one of two possible error types represented by a negative integer
> > +value may be returned in this
> > +.I pidfd
> > +field.
> 
> I couldn't understand the paragraph above.  Could you maybe rephrase it a
> bit?  Maybe add some commas?

I had a read through it and if we drop "for" from that sentence and
add a comma after "creation", then I think this sentence reads
perfectly fine. Having said that, is it necessarsy for me to resend
version 6 (with your semantic newline modifications in addition to
this minor rephrase), or are you OK with just amending these changes
when applying the patch?

/M
