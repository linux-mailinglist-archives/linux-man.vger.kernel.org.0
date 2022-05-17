Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76ECF52A8CD
	for <lists+linux-man@lfdr.de>; Tue, 17 May 2022 19:03:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351290AbiEQRDC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 May 2022 13:03:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351288AbiEQRDB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 May 2022 13:03:01 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D27C1261C
        for <linux-man@vger.kernel.org>; Tue, 17 May 2022 10:02:59 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id u23so32437849lfc.1
        for <linux-man@vger.kernel.org>; Tue, 17 May 2022 10:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5L6SOo5F/HUI2kufRUrMQPP8m5oy+oLLd7gQZE9ie9E=;
        b=I+y869zvanpaVT6RTyQMvYSlTLIuJp4diOojEYCBJ/IGYZiG6lEvp7B9PivC5nUnJ7
         F5Qj0NtOEZnpvxdaBJ+U1YyBhfV2sBA+/xC9s2LdYejKWg/6ODyKNpZSsOll8QGwSHuT
         331LdvmxapQQRziBmTyu5bIrD6zwJ8aNkJ2BmsqLTVFTBoX0CyAlEYQ8Wc7nmJe3viUn
         Dq2lm9yljnTgdjvSgmixXH5BTrIepy9nPRj3SbitNeLKbFaP6JpnQ9MGE1YnnISBxHmE
         vcTvczgwmP7ojkc/yuPVUEwz+qAk4f/1GaFO4kQ6RbMdscGz5o6AoHPAHSglXYaQqXRf
         wZuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5L6SOo5F/HUI2kufRUrMQPP8m5oy+oLLd7gQZE9ie9E=;
        b=1yvPu4mELmTWAhwlF3H+n/mC/pLE9G6pWNe0vW/53muxx8vZ9MK0oUZF0jEjNPWrWL
         MnTFIQzM6ERi7mIfbW58Y2eh7jtIdcQST32zUh07EM8xqUEkndaSD22QbnhJSTno5Zz6
         neCoL6aNyuwKCiJHg0AZpWKK5zeAWvDFPYpt8NP8H3aHrSoY+hb3FqL5S2EPJeY9zz6P
         Ms6YQDa5mTEFyz4aVW/icEgfJKuypZ+3ZbqDga0qmM+bfbRDxjgk1VwJm2XgMtAycxRa
         r/+J0hfjDEmczlW1++FIAX6OthSPa7S84R6J03g6ZWgzpAEdnFAZ5dE3/8cQVLKCezC5
         r00g==
X-Gm-Message-State: AOAM531IUfe1U6di0LtAalsPdNhs9+c/LMTyZoCFBhbp8SAzofUtO6oR
        /3AdYqvoKHXA5wVldeznvz1ehgOBEnl1mh4ULpuAhw==
X-Google-Smtp-Source: ABdhPJxVM0XyAy75+pxbdy9VCAvEO9Bg6qqAFJkiVvlMFZCJsnrNEM7MvYfEj0USuQjhDC0u59fUCrjayh4ni6ICops=
X-Received: by 2002:a19:4303:0:b0:473:f5fb:27b2 with SMTP id
 q3-20020a194303000000b00473f5fb27b2mr17399323lfa.626.1652806977127; Tue, 17
 May 2022 10:02:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220510220821.1481801-1-tbodt@google.com> <0fc70bd3-5883-47e4-1814-6ed6c756a400@gmail.com>
 <CAN0heSper1O2ZdFq6RE=7znC0o+sFEsd8CBR3ckFtSoZu7Bzfw@mail.gmail.com>
In-Reply-To: <CAN0heSper1O2ZdFq6RE=7znC0o+sFEsd8CBR3ckFtSoZu7Bzfw@mail.gmail.com>
From:   Theodore Dubois <tbodt@google.com>
Date:   Tue, 17 May 2022 10:02:36 -0700
Message-ID: <CAN3rvwBWBPLB+Pm14S5Nb9LOV6ajhT8qMbwi5bBm1pK_8AgN5g@mail.gmail.com>
Subject: Re: [PATCH] getpriority: Only getpriority translation the priority values
To:     =?UTF-8?Q?Martin_=C3=85gren?= <martin.agren@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        Git Mailing List <git@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Yep, I have diff.noprefix on.

~Theodore

On Sat, May 14, 2022 at 11:43 AM Martin =C3=85gren <martin.agren@gmail.com>=
 wrote:
>
> On Sat, 14 May 2022 at 17:11, Alejandro Colomar <alx.manpages@gmail.com> =
wrote:
> >
> > BTW, I had to manually edit the patch.
> > It's the second time I see this (I can't find the other one), your patc=
h
> > didn't apply for the following reason: the a/ and b/ prefixes in the
> > file paths are missing.  Did you use git-format-patch(1) to produce the
> > patch?  Can you reproduce this?
> >
> > I CCd the git mailing list in case they know what's going on.
>
> Sounds like `git format-patch --no-prefix` at play. Or more likely, that
> the `diff.noprefix` config is on. I don't think it can be cancelled out
> by a `--no-no-prefix`, unfortunately. If a script is involved in running
> `git format-patch`, maybe it's not too tedious to make it do
>
>   git -c diff.noprefix=3Dno format-patch ...
>
> to cancel the config. (If that config really does want to be on, that
> is.)
>
> That said, something like
>
>   git am -p0 ...
>
> should help on the receiving side, by way of skipping fewer path
> components when applying the patch.
>
> Martin
