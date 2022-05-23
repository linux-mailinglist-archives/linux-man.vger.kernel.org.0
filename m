Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BF5F531E35
	for <lists+linux-man@lfdr.de>; Mon, 23 May 2022 23:50:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230342AbiEWVuv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 May 2022 17:50:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbiEWVut (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 May 2022 17:50:49 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4461F13D19
        for <linux-man@vger.kernel.org>; Mon, 23 May 2022 14:50:47 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id h9so9007191qtx.2
        for <linux-man@vger.kernel.org>; Mon, 23 May 2022 14:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=178V/bBBfugK+p5Xk0rrMM8CW5QxFJPTvJcv4tq1KGw=;
        b=CF4mc+0+/B4FuzraRK9sTVqMvVgqpY1lI2ebV1LnpYHC5uLCVpwLPcYqSdNrtLY5Hv
         W6jS5TU5KuFvYTfCspyKtvHrYOjlt0ptjOXLzajQokT3vIkrTtx4ejOYYIYgIF/qSP+6
         YhzSj58+Flv/99X1zvfu4btwBqKjhfCGP4UY56MDjGjKhDQdR4FT5kXC2wGjFKVg8cuM
         /RSjM4BbibIjIVIwDOcnWcNs3fa4uCYgy1TbUWBfbKTHUSVRua7/xFqQbU5e6eQw1AMb
         MVTEie7RSGd0Q65iDr143Wykd2G23m8RBehSHh/pOEKXu6OMQAJgjzqb/Bei43Iz9VJq
         JLEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=178V/bBBfugK+p5Xk0rrMM8CW5QxFJPTvJcv4tq1KGw=;
        b=0+Ar+vceLaDbkZbXF8zaZiEL0MO1205m3KcGc214b9ycLpy3N6PNEnlq96ENh3FxqD
         +gajLVNP51KM9mWEqTJIjjMNWoo7qqDsuKmOpCruXj0Gz1GekIMEeDHD1TcFEiQBTmfi
         gHAwHVyohKMOHRTVcf8J/+oksIwLklnB2MwywCjiHNQBxUv8PtgD8gUvE7ZxdmQJ06Ct
         U3OaKqD+CEQA1Ctv6/IUYneeb2XWd3IHDSashWPMac4B+52Mf4SohX7gc1YfDsccx6us
         xRO6usSCCiX3Pp5d2unYZ/1vlh1zTOtiJfheQPAplce2IZC0nmEP/2Z73itofvWdBZi6
         iF6w==
X-Gm-Message-State: AOAM531qd0f14/0tjzIBtSBIhAhn5qQZSJ3+WLqX1+FUutGUjqRqS2NI
        rkVkuvRph1Dkv+a+xtIqJO0Asw==
X-Google-Smtp-Source: ABdhPJwr89x0LcZZOj4+h/uEgQa4/zsJ+Iw6+49jdgWTr1Xuv+sFEmb23oHKMje7zIyWnQV/HOIJpw==
X-Received: by 2002:ac8:7fc2:0:b0:2f3:d47d:487c with SMTP id b2-20020ac87fc2000000b002f3d47d487cmr17788781qtk.157.1653342646239;
        Mon, 23 May 2022 14:50:46 -0700 (PDT)
Received: from google.com (122.213.145.34.bc.googleusercontent.com. [34.145.213.122])
        by smtp.gmail.com with ESMTPSA id j3-20020ac86643000000b002f39b99f6b9sm4939821qtp.83.2022.05.23.14.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 May 2022 14:50:45 -0700 (PDT)
Date:   Mon, 23 May 2022 21:50:42 +0000
From:   Matthew Bobrowski <repnop@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Amir Goldstein <amir73il@gmail.com>,
        Gabriel Krisman Bertazi <krisman@collabora.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>
Subject: Re: [PATCH RESEND v5] fanotify.7, fanotify_mark.2: Document
 FAN_FS_ERROR
Message-ID: <YowBsihg5Zwo6CfS@google.com>
References: <20220520180935.37796-1-krisman@collabora.com>
 <CAOQ4uxjd-xKz1=Z+165s4hX0aiBsbui2_+JAqaGr0AT0z5+scg@mail.gmail.com>
 <77ebe2f4-461a-4c3c-d53e-7a4c1f94e506@gmail.com>
 <CAOQ4uxjuVjDZN6+mvCV6Yk1=bn_oYVVxpS=Q6bn5=uQOSDv9wg@mail.gmail.com>
 <e8daa69c-8f07-6fe7-8e63-96e23f8deec6@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e8daa69c-8f07-6fe7-8e63-96e23f8deec6@gmail.com>
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

On Sun, May 22, 2022 at 11:37:25PM +0200, Alejandro Colomar wrote:
> Hi Amir,
> 
> On 5/22/22 18:12, Amir Goldstein wrote:
> > It is applied on top of:
> > 
> > https://lore.kernel.org/linux-man/20220514131346.10171-1-alx.manpages@gmail.com/T/#u
> 
> Okay, I see that other one is pending some rewording, so I'll hold this one.
> 
> > 
> > We have a rather long backlog of man page updates pending merge
> > from Matthew, Gabriel and myself.
> > We need to merge them by order.
> > The entire stack is available in [BRANCHES] on my github tree [1].
> > 
> > Let me summarize it for you again:
> 
> Thanks.  I'll write here what I know about the, just to be sure I didn't
> miss anything.  If you need anything from me, please tell me.
> 
> > 
> > FAN_REPORT_PIDFD v5.15 [fanotify_pidfd]
>
> Pending a rewording of a paragraph.

Right, I'll get around to this at some point today.

/M
