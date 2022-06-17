Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB03454F8DB
	for <lists+linux-man@lfdr.de>; Fri, 17 Jun 2022 16:05:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382551AbiFQODO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jun 2022 10:03:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382607AbiFQODI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jun 2022 10:03:08 -0400
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com [IPv6:2607:f8b0:4864:20::e35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35FDB3D485
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 07:02:54 -0700 (PDT)
Received: by mail-vs1-xe35.google.com with SMTP id x9so4142391vsg.13
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 07:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=J7j2iScu5IpbNg21sHQQ026JjhEb6pUbWiCo0E+7GoE=;
        b=JKwXBJCki4ZxvYR+Zm3HKvvrmornI2+Q3jl8ypmPFYqJM05h/fbJ9GFjjPCUJdbGfX
         wFw3K+ChfwtvDmCHUtTHRCDZ4zXEakvVQvTWjajkbE9pt//59jrxbj8WiGYDt5PO2AyL
         xPTyZ7Yd80ddFplwq2UFremIULANDmkAGZTUVJP++n6H/kAsLgc7LXcPxD+Uf3/yCMCL
         phRQgnwoPUO0ytpi1zfmUhJfZY+edu8B+f8hS5apfh3SXrx61PxNjAKrwl7lmtuCammm
         2Haqh/7fW3sFcgt/KQAueZWLH1r55dWKhdnLyKkBZ/vEMhYzNh3Xfq0OVrfzhJFlxuK8
         Ogjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=J7j2iScu5IpbNg21sHQQ026JjhEb6pUbWiCo0E+7GoE=;
        b=MHhZKHLctm931ZOoDXzJ8HJx2D6cNJ4CHLR6vxxhSYsq8FGCxK577ZKWt8ecoszkiR
         dWorLuKNN9a68Km+CNKdjVKx/yXsbkIKwRtVg84JHDy2RdJElvNxdyiBFf2CLPcE4mL2
         AwpSJWOm3nB2k5/9St7azbGRz6X4TUi2BiTfBxOUZ3J9QRVTEGmcuZhkMFkkyWqyVttQ
         s3tZcIYb3UL4481JlRjMjmhVfYZSiuzq1xA4FNUhEm4+WrVKnEbGxyOXpORoIAwer9TT
         y5LWBGQw41kz/ooYWWAJ0Hk1f/uJlm2cUpGmS+dYWcfgtwma/8aK2N0Au/2bSt3T5/gE
         n5Ow==
X-Gm-Message-State: AJIora9QrYK0mRzi/XHqcExjPWZXJIkYk8PPrMnjMunHd8crjCPj6hU7
        TqnURRqMz6+WSQnzeCZGZDbB4OthhItLyCWe/Gc=
X-Google-Smtp-Source: AGRyM1tnMpBuAhm3fSWBl9w60cc8KPPNTT+qzoX3OwUVpRURLa33aOFzR+v8tbHytSiwO8yyCTwwxEQu07BnMbw5BYE=
X-Received: by 2002:a67:70c4:0:b0:349:d442:f287 with SMTP id
 l187-20020a6770c4000000b00349d442f287mr4555900vsc.2.1655474573158; Fri, 17
 Jun 2022 07:02:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220617131158.1661235-1-amir73il@gmail.com> <fd783262-e40c-d23d-cb99-8d6be1f479d1@gmail.com>
In-Reply-To: <fd783262-e40c-d23d-cb99-8d6be1f479d1@gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Fri, 17 Jun 2022 17:02:41 +0300
Message-ID: <CAOQ4uxj=GQhcX3sj4kKuV6yMp-2DS+=U+5vA2Kf8JUqsZu0hWg@mail.gmail.com>
Subject: Re: [PATCH 0/2] fanotify man page updates for v5.17
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

On Fri, Jun 17, 2022 at 4:49 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Amir,
>
> On 6/17/22 15:11, Amir Goldstein wrote:
> [...]
> >
> > I did not mention this course of events in the man page, because it
> > seemed too much irrelevant information for end user, but am mentioning
> > it here for full disclosure in case somebody thinks this information is
> > relevant.
>
> Hmm, maybe we should include it in the commit message?

Sure, no problem.
I'll wait to see if Jan has more comments and then I will post v2 with minor
fixes that you requested and this in commit message of first patch.

Thanks,
Amir.
