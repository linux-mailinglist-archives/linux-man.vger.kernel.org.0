Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 367BA510B32
	for <lists+linux-man@lfdr.de>; Tue, 26 Apr 2022 23:23:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355383AbiDZV0n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Apr 2022 17:26:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244408AbiDZV0m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Apr 2022 17:26:42 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76C5F1606B8
        for <linux-man@vger.kernel.org>; Tue, 26 Apr 2022 14:23:33 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id p6so4313568pjm.1
        for <linux-man@vger.kernel.org>; Tue, 26 Apr 2022 14:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=WJLY0XN6FkCshQvS/hNq+pLYeChxaykb2ZPoWWnEF8M=;
        b=fX+RxwO0mtG75jbW0q313JlZ3qUl8nW+lN2qi9J4p4hly9Nepa0hmCng+3fMdfIKwI
         25pUmY0MuJbMs++KjgP1OylwH0g+STDINI/c+t7++TwKRgPzDoYm3ot3Qt/e82nT6LOa
         VSGrFdRFEmMsjEv41Q/4ep2lqSf4mGj2L907EiEddONIMTZR6l9/kaZSy7/RsLx6JKC8
         JST9NZNbmI2S05E713GmO3EV8Eix094//lI+Drdu0rNttkmD8QM4A3i/nPI68MXEplrl
         KL+8YEEVqLj3iL5uvHT5459alERkkWviwZ1LZ/77nEmmjhBKzQFkn4ZPibM/0Lp1a6qJ
         Wl2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WJLY0XN6FkCshQvS/hNq+pLYeChxaykb2ZPoWWnEF8M=;
        b=fBY33ZE+bgAbRegg17yh8Qi6eJEWMbT0eEWc1XPlx5gOeyqz7/bj8NZY4mStO1bIou
         0joZUdmT1FbeKl+JsrXQSZrl9mB10T5ixSabY6mUK7whYyqLQ6lNLOOZUC43lquzAqtq
         885aexfMx2c3xQLKtmhtrQ2w41OdNZmgUOyzppiKjYC3Hnlbi7cEJLbk1x2QCFbocw0k
         8HiXzdHGdKsfpDm6b0AhAgLw12g9WZ76nNXH2r8JqadkjmcIhJgs/3Akt21KgR9lfxrN
         jcHk3Y1hrw5U3tvZWJGWi/PPZpDxQEwhdp+shnTE5DAHd0g5DbNr6Ee/GH4ZWdkeKORI
         eEMA==
X-Gm-Message-State: AOAM532nqGcMi/JMdIAsSu2NmIXJD8hw/Yw4UIehpe4Ph1ANxVS70f7h
        wPxfKQC+g1wcBKJUAGhUCxpJuQ==
X-Google-Smtp-Source: ABdhPJzcvUk1COwz4gmr2Op6ZmuzbV2/HYlVRvcaEsMjGZrVVtXair93gnNcmx7KLojovfuutCMTdw==
X-Received: by 2002:a17:90b:3e84:b0:1d2:c015:2182 with SMTP id rj4-20020a17090b3e8400b001d2c0152182mr29025320pjb.232.1651008212771;
        Tue, 26 Apr 2022 14:23:32 -0700 (PDT)
Received: from google.com ([2401:fa00:9:211:f90a:c515:128d:eea1])
        by smtp.gmail.com with ESMTPSA id h1-20020a62de01000000b0050d52b40040sm4360717pfg.65.2022.04.26.14.23.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 14:23:32 -0700 (PDT)
Date:   Wed, 27 Apr 2022 07:23:22 +1000
From:   Matthew Bobrowski <repnop@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, jack@suse.cz, amir73il@gmail.com,
        mtk.manpages@gmail.com
Subject: Re: [PATCH v3] fanotify: Document FAN_REPORT_PIDFD Feature
Message-ID: <YmhiypE19qp8Ere4@google.com>
References: <9ab0575162eada7a3f73de71c06e1031b9e51bbe.1649718997.git.repnop@google.com>
 <f40ff271-a18e-9833-f858-9abf3bb19cd2@gmail.com>
 <YldfdNebVVzwqxw9@google.com>
 <59a8d8b5-fc96-812f-c3b1-d1dca66dca3a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <59a8d8b5-fc96-812f-c3b1-d1dca66dca3a@gmail.com>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Apr 25, 2022 at 10:18:43PM +0200, Alejandro Colomar wrote:
> Hi Matthew,
> 
> On 4/14/22 01:40, Matthew Bobrowski wrote:
> > Haha, I created this patch using one of Amir's branches, as he
> > performed a rebase and handled some conflicts. It must've preserved
> > the display name "Amir Goldstein" in the "From:" header...
> 
> :)
> 
> > 
> > On Wed, Apr 13, 2022 at 08:24:21PM +0200, Alejandro Colomar wrote:
> > > Hi Amir!
> > > 
> > > On 4/12/22 01:17, Amir Goldstein wrote:
> > > > Update the fanotify API documentation to include details on the new
> > > > FAN_REPORT_PIDFD feature. This patch also includes a generic section
> > > > describing the concept of information records which are supported by
> > > > the fanotify API.
> > > > 
> > > > Signed-off-by: Matthew Bobrowski <repnop@google.com>
> > > > Reviewed-by: Jan Kara <jack@suse.cz>
> > > > Reviewed-by: Amir Goldstein <amir73il@gmail.com>
> > > 
> > > Thanks for the patch.  Please see some comments below.
> > 
> > Thanks for the review, I'll update and send through a follow up patch
> > shortly. I left a question on your comment about the use of semantic
> > newlines. I wasn't sure whether that comment was a general rule that
> > is to be applied across this entire patch (in which it definitely can,
> > I just wasn't aware of the rule prior to you explicitly pointing it
> > out), or whether there was a specific example you were referring to in
> > the code block directly above your comment.
> 
> General rule to be applied across the entire patch, if you do the favour.  I
> just mentioned it at a point where it is clear that it could be applied, to
> give some context.

Fair enough.

I've posted through an updated patch here [0] which I believe has
addressed all the feedback from this round of review.

[0] https://lore.kernel.org/linux-man/1af583adb1f368c51f1976db7bf3a27530cdc06f.1650408011.git.repnop@google.com/

/M
