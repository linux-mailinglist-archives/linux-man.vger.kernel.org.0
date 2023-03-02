Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3610A6A83B4
	for <lists+linux-man@lfdr.de>; Thu,  2 Mar 2023 14:42:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229901AbjCBNmP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Mar 2023 08:42:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230081AbjCBNmO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Mar 2023 08:42:14 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CCA2474D0
        for <linux-man@vger.kernel.org>; Thu,  2 Mar 2023 05:42:13 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id fm20-20020a05600c0c1400b003ead37e6588so1748067wmb.5
        for <linux-man@vger.kernel.org>; Thu, 02 Mar 2023 05:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677764532;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uQLIB0EEizVpio8czrfeHF6BWNLzLLeVjndX8CPD0hs=;
        b=h081NM6pFjXZHA1OUn68VoGA4Gn1mAeqwRz+z5x7LGRO92k3/qS22UmJNBQ7Qg2dSL
         3Wtuy6ASVYvSKtPQa1yKKy8HQhT6/l88fXhrgzdm95KNnt/auEOzySUYA8irs27hlCi/
         EhPhQ/wHswHkP2lFNLETF6v1wDptMLn0nccqjP9uRizWRJ6l2SCbi0MfLBsyJQYyzESo
         tbMCCUMEEaDAKhJWPZr3Rp8y/Mak7B5MOUbEaoHP4A1rN+ywZ1XqygV8RWRppcgK0mox
         hniT38OBPupSDCWyXykmk5y2WhlfwntbSxDmZu5OjVgFHVEYnKhPNhbcgDp1O0KgCsID
         zlvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677764532;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uQLIB0EEizVpio8czrfeHF6BWNLzLLeVjndX8CPD0hs=;
        b=Mq3ojCCM2ba9BG3noiqQE16+ywzftiKWqb4jhqpxwBST8R+VTXxMdCBjnnS8fshTZy
         0+7vpIoRxEYWPSWLNfCuvY4LRBlG+ZJnFAPkRNr1EMGHaGBElIIM2HXaz8ouI/RRvmct
         VvG7RaaFFQlB1+9brayfiTXbe5e9KijC85pgBTtAHi1oQAn4f2E9dINRulS1uqvR7ZUU
         MKGruDp47uuzofAhN8eJURzAdbyeLTM+oyFm/2I021DmIX4wxkD0YDUvJYDa6TIl3URN
         JjETMuv70yWDwZmJAUPAPa6piiigcS0h85O5htsalGPu1hGOafK/q2XfmNt4UfDjDij+
         jlTA==
X-Gm-Message-State: AO0yUKVSi5nZX5K+Nh53k2t+Y3l0PGSlpyw1rCJvlYnK4J/Em/BKFnPx
        cI2EIhy6CthZjgtmWp/ALhoWnHEBzHs=
X-Google-Smtp-Source: AK7set9yHqVzM9sFa4qdXThFVjJdfrcF4/ivcet2WDai2vtZwBGvi4+hP1sMrqH3M0l0Pp76drrx4A==
X-Received: by 2002:a05:600c:3b13:b0:3eb:38a2:2bbc with SMTP id m19-20020a05600c3b1300b003eb38a22bbcmr7698028wms.7.1677764532059;
        Thu, 02 Mar 2023 05:42:12 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id c4-20020adffb04000000b002c70bfe505esm15394317wrr.82.2023.03.02.05.42.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Mar 2023 05:42:11 -0800 (PST)
Date:   Thu, 2 Mar 2023 14:42:10 +0100
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] landlock.7: Document Landlock ABI v3 (file
 truncation; kernel 6.2)
Message-ID: <20230302.2f7c767e1b94@gnoack.org>
References: <20230228205224.5991-1-gnoack3000@gmail.com>
 <20230228205224.5991-2-gnoack3000@gmail.com>
 <0aafcdd6-4ac7-8501-c607-9a24a98597d7@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0aafcdd6-4ac7-8501-c607-9a24a98597d7@gmail.com>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex!

On Wed, Mar 01, 2023 at 10:21:13PM +0100, Alejandro Colomar wrote:
> In the subject it's not so important, but for consistency with the
> language used within the pages, I'd ask you to rewrite it as Linux 6.2
> (and similarly for patch 1/2).

Done, sure thing.


> On 2/28/23 21:52, Günther Noack wrote:
> > diff --git a/man7/landlock.7 b/man7/landlock.7
> > index f70a01484..9ddb17ae8 100644
> > --- a/man7/landlock.7
> > +++ b/man7/landlock.7
> > +Note that you might additionally need the
> 
> "Note that" is usually redundant.
> See:
> <https://lore.kernel.org/linux-man/20210729223535.qvyomfqvvahzmu5w@localhost.localdomain/>
> <https://lore.kernel.org/linux-man/20230105225235.6cjtz6orjzxzvo6v@illithid/>

Thank you, that is a good observation, the "Kemper notectomy".
This is very helpful, exactly the kind of review I was hoping for. :)

How about this rewording:

  LANDLOCK_ACCESS_FS_WRITE

    Open a file with write access.

    When opening files for writing, you will often additionally need
    the LANDLOCK_ACCESS_FS_TRUNCATE right.  In many cases, these
    system calls truncate existing files when overwriting them (e.g.
    creat(2)).

This paragraph started with "note that" because it talks about an
unintuitive side-aspect of the LANDLOCK_ACCESS_FS_WRITE_FILE right.

I reworded it to make it more clear why that should be relevant to the
reader (because creat(2) and its open(2) equivalent are used very
commonly).

Does that sound better?

The man page also explains it in more detail in the "Truncating files"
section further below.


> > +system call, this can also be done through
> > +.BR open (2)
> > +with the flags
> > +.BR "O_RDONLY | O_TRUNC" .
> 
> Expressions should go in italics.  See man-pages(7):
> 
>        Expressions, if not written on a separate indented line, should
>        be  specified in italics.  Again, the use of nonbreaking spaces
>        may be appropriate if the expression  is  inlined  with  normal
>        text.

Done.

Thank you for the review!
–Günther
