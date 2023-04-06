Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A61516D9217
	for <lists+linux-man@lfdr.de>; Thu,  6 Apr 2023 10:56:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235374AbjDFI4p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 Apr 2023 04:56:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233973AbjDFI4o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 Apr 2023 04:56:44 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85551526C
        for <linux-man@vger.kernel.org>; Thu,  6 Apr 2023 01:56:43 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id s13so22192592wmr.4
        for <linux-man@vger.kernel.org>; Thu, 06 Apr 2023 01:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680771402; x=1683363402;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W/IWwjs5BNz0UTbwKkqvDBjxC/GKybEbeFaL0XrixRk=;
        b=CIQkR438sPmuLXu/ovwiLwUulEduuiATFeNnh0dUdYof3J+CVzgudWchd6XLomimUP
         TyiX0GpYg7SPJbiKMkUs7IA7NCGwiNsZ2+DqlO+eE3VQy3skxjJWgVpncjmp1zSlX2Dc
         an11Z3gitI3ivuHKZAdyr7a6AkALCUgeMhcSNTK+gdiI1IVzpe5xEMUeSoiKczDvXThy
         37Uxpe5F4TV0NKi0mLT5E85qPjGbsrS030PtNN9bNs80Oa9MsBmz8J9D/Lgpd3z/bF/r
         DJ2sUIOW4Q6V+AVOS576jh4fTzaTggEVlNT/R1gv5G4J0X3muubtRaVstcLiIdkNy9SE
         wKHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680771402; x=1683363402;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W/IWwjs5BNz0UTbwKkqvDBjxC/GKybEbeFaL0XrixRk=;
        b=efl+2ljAymVhopt5hTyZ2C63V93yCxC51YUHxPyZeUsXC5vjMuNZ33274tSFGMqfZb
         OZSZu44i099BMuwgJT+tump5zRQu6cXiQKT0OZN3qa2khyvtcZ2lLcVOeAGIw6eiXQoN
         TZSKqy3wl9NrvGeXhSHjKbETLBXF2kK31v5ZhEJQRG1Tyer1PycBshUM+MsedEDCnsCV
         5BHZ8Xo2tVow1q/kTm6zwpEIqb0koikFy3J5ozwqxh4K2SPe/auI36COiB6l0lqDTleY
         Ixpmbi7l8NqLQ+AMOcyuM8Iwydeb3OfLmm3Unc/wfaoCo8YtKU9yGhEjTPEwUkB+7/MM
         6TuQ==
X-Gm-Message-State: AAQBX9cw5HqRqqRxEYajiVa99m50K9F6p97RkE58dIHTGN0/TLYEDHvB
        dPM9jKWJ9i5sdTOBzeuGcgJQ8apvILo=
X-Google-Smtp-Source: AKy350Y5s+sDn3IjT2VRssrG0OJ/71Sq5WpsWYnBPgV12XiKJtRhnPGNKR44Eb2ogSi5dMnEGhWGZQ==
X-Received: by 2002:a05:600c:254:b0:3ee:2552:7512 with SMTP id 20-20020a05600c025400b003ee25527512mr6402790wmj.13.1680771401960;
        Thu, 06 Apr 2023 01:56:41 -0700 (PDT)
Received: from localhost (93.7.115.87.dyn.plus.net. [87.115.7.93])
        by smtp.gmail.com with ESMTPSA id iv15-20020a05600c548f00b003ef5b285f65sm4708121wmb.46.2023.04.06.01.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 01:56:41 -0700 (PDT)
From:   Gavin Smith <gavinsmith0123@gmail.com>
X-Google-Original-From: Gavin Smith <GavinSmith0123@gmail.com>
Date:   Thu, 6 Apr 2023 09:56:41 +0100
To:     Eli Zaretskii <eliz@gnu.org>
Cc:     Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>,
        dirk@gouders.net, alx.manpages@gmail.com,
        linux-man@vger.kernel.org, help-texinfo@gnu.org
Subject: Re: A less presumptive .info? (was: Re: Playground pager lsp(1))
Message-ID: <ZC6JSWQDCUQJHbwA@starmint>
References: <ghileoo9dk.fsf@gouders.net>
 <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <ghedoy8x5y.fsf@gouders.net>
 <87y1n6o1b3.fsf@aarsen.me>
 <ghpm8iyzqj.fsf@gouders.net>
 <83zg7mqha4.fsf@gnu.org>
 <865yaa81ru.fsf@aarsen.me>
 <83r0sxqvg6.fsf@gnu.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <83r0sxqvg6.fsf@gnu.org>
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Apr 06, 2023 at 11:14:01AM +0300, Eli Zaretskii wrote:
> > The alternative is, of course, bringing HTML up to par feature-wise
> > (wrt. indices etc), but that'd be on the other end of the extreme, where
> > instead of being too easy to parse and lacking important information,
> > it'd be oververbose with and difficult to parse (not that such a thing
> > should not be done too, so that folks using ordinary browsers can enjoy
> > documentation, and so that projects can provide more accessible
> > documentation by the merit of more people having HTML than Info
> > viewers).
> > 
> > WDYT folks?
> 
> Gavin will tell, but AFAIU our plan is to develop js as the means
> towards the goals you mentioned.  That will allow using HTML browsers
> to read Texinfo documentation without losing the functionalities of
> the Info readers we value.  HTML rendering reflows as integral part of
> its workings, so that problem is not an issue if this plan succeeds.

Progress on this issue is described in the TODO.HTML file in the Texinfo
repository.

https://git.savannah.gnu.org/cgit/texinfo.git/tree/TODO.HTML

In short, the main avenue of progress appears to be the documentation
browser using the embedded WebkitGTK browser.
