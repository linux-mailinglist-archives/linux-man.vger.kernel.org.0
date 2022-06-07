Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5BA554015C
	for <lists+linux-man@lfdr.de>; Tue,  7 Jun 2022 16:29:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242419AbiFGO3i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Jun 2022 10:29:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243249AbiFGO3g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Jun 2022 10:29:36 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6B36ED106
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 07:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654612173;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=078p92joI4C+jrApfyKMAeUaLesvmK2FFW/zipqqI/I=;
        b=acNleaqZrrCWCZgtfcH+9o87QUy/F8RcTWaVDG5TnnHdoiv22TJL1Kr9jQZewS7AKQvczX
        OQoZ33JQgHjPQKTLvEoAYiI+iTEN4nTf8Qh2LHHpe0oGvoMhRiBSuhC9dYcETjOZBqPRts
        7JIYWXkbrmmwgKzQsgPpKAuVFC0Ov6I=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-526-btR41oSkNxWg36yGVMrA4A-1; Tue, 07 Jun 2022 10:29:31 -0400
X-MC-Unique: btR41oSkNxWg36yGVMrA4A-1
Received: by mail-il1-f198.google.com with SMTP id w7-20020a056e021c8700b002d3bc8e95cbso13876625ill.3
        for <linux-man@vger.kernel.org>; Tue, 07 Jun 2022 07:29:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=078p92joI4C+jrApfyKMAeUaLesvmK2FFW/zipqqI/I=;
        b=hwU3DKJ5kypZcUvefVPRwykQRwjpr/AIkvnkMZo71tBPkjQTm3V8fcs15zPPz1nXd8
         IUFopb5yQ0dh5bvUhl4MmfCnvKPkbO3P81iwlr7cc4n+zlAi2D+98PSR8JdxdAJ1ANrh
         72fNCtI1ec3lG0Yqjj9gqXvGwUZFGkbjMxFf2g5V9m8oax2/MlfXYTT6nDtfNGBS/ZaG
         aecaUE2zAY0+HIjH55wJRJDY7biJfc2uZgji+eOYBcwG6NSYT6O2xf7Q8vSmX23ONBzF
         WIWdPCOUj4c4pgkQvbT1eKeBT++BLbqq41mcDVFvCYcgJaINI53qwVEUlAL06k7TQeu8
         AUGg==
X-Gm-Message-State: AOAM5325q94EUNgk3ZuP66yFsfCzq4KiC08QUeX7krJoHjIEOvCa21Ix
        7PMYsVFH/EpJBDFCQlloD40VEnmtWY0oqFQNAYdY/cL3sSnA2rlKyFtKr5AUzNLU4zsf5KC4CGB
        1sTe/w3mT+/tzj0Y/MIm+
X-Received: by 2002:a05:6638:381c:b0:331:b4c2:1f93 with SMTP id i28-20020a056638381c00b00331b4c21f93mr5272248jav.185.1654612170942;
        Tue, 07 Jun 2022 07:29:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyvs4vKor4xKPMnbq0kfsecY1iqju7nZECfbqt77cV6cWSGDmpNcGcHzZK1FIyVpUIIki+8/A==
X-Received: by 2002:a05:6638:381c:b0:331:b4c2:1f93 with SMTP id i28-20020a056638381c00b00331b4c21f93mr5272227jav.185.1654612170587;
        Tue, 07 Jun 2022 07:29:30 -0700 (PDT)
Received: from xz-m1.local (cpec09435e3e0ee-cmc09435e3e0ec.cpe.net.cable.rogers.com. [99.241.198.116])
        by smtp.gmail.com with ESMTPSA id j8-20020a056638052800b0032e70c4e12fsm4381292jar.28.2022.06.07.07.29.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 07:29:29 -0700 (PDT)
Date:   Tue, 7 Jun 2022 10:29:28 -0400
From:   Peter Xu <peterx@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org,
        Axel Rasmussen <axelrasmussen@google.com>
Subject: Re: [PATCH v2 0/2] userfaultfd.2: Update to latest
Message-ID: <Yp9gyFRKJoiQmiyU@xz-m1.local>
References: <20220603173736.62581-1-peterx@redhat.com>
 <7acfdeb8-5dd3-dfe2-5717-b64006281a8f@gmail.com>
 <Yp5YGMFJWLtthc8U@xz-m1.local>
 <20220606213323.xtfx7qpab6dwdqpk@illithid>
 <848979ee-6c5b-5e74-1b45-586303b57a25@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <848979ee-6c5b-5e74-1b45-586303b57a25@gmail.com>
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Alex & all,

On Tue, Jun 07, 2022 at 11:08:42AM +0200, Alejandro Colomar wrote:
> Hi, Peter and Branden!
> 
> On 6/6/22 23:33, G. Branden Robinson wrote:
> > [CC list trimmed since this is solely about English and *roff]
> > 
> > At 2022-06-06T15:40:08-0400, Peter Xu wrote:
> > > > I think the patch below would improve a little bit the wording (and
> > > > newlines).  I still have a bit of trouble understanding "When a
> > > > kernel-originated fault was triggered on the registered range with
> > > > this userfaultfd".  Did you maybe mean "range registered" instead of
> > > > "registered range"?
> > > 
> > > Since I'm not a native speaker I don't immediately see the difference
> > > between the two.
> > 
> > Short answer: I think your existing wording is acceptable.
> > 
> > As a native speaker (but not a trained linguist) I think I can speak to
> > the subject: both forms are equivalent in this application.  In standard
> > English, adjectives usually precede the nouns they modify.
> [...]
> 
> But in this case,
> 
> "When a kernel-originated fault was triggered on the registered range with
> this userfaultfd"
> 
> "registered" is not acting as an adjective, but as a verb.

I wanted to use it as an adjective, but after you questioned this one I'm
not sure any more on my English school knowledges. :)

> Maybe Peter was confused by that; I didn't consider that option.  I'm
> actually surprised that you were, Branden, but I guess it was just a
> neuron going crazy, as mine with \c the other day :p
> 
> 
> > 
> > > It's always challenging for me to grasp how you prefer the newlines
> > > are made, but anyway below changes looks good to me.
> 
> Sorry, Peter.  I'll take that into account, and try to help as much as I
> can.

You're greatly helpful start from the beginning, and I just hope you can
still bare with me. :-)

> Apart from what Branden has already added to this thread, the
> following man-pages commit has some more details, quoted from B. W.
> Kernighan, and may help you understand what I want:
> 
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man7/man-pages.7?h=alx/main&id=6ff6f43d68164f99a8c3fb66f4525d145571310c>
> 
> I have a long-standing discussion with Branden regarding how much should I
> push for semantic newlines.  The origin of using semantic newlines is only
> to simplify diffs (and it does that very well), but for some reason, my
> brain reads the text better too when organized that way, as opposed to
> normal prose-like text flow.  There I seem to disagree with Branden, who
> prefers to read my emails as if they were a book.  Maybe I need semantic
> newlines to understand the text better, because there are a lot of technical
> terms that I don't know, and having less load on my brain (because I don't
> need to calculate phrase boundaries) makes it easier; it's especially useful
> when text is under development, where it may have mistakes that make it even
> more difficult to read.
> 
> But, just do what you can.  I'll try to do the rest, and ask you if I don't
> understand something.

Yes IMHO that'll be the best way to go with the rest of the community too,
because afaict not all community developers will be able to quickly get
used to the rules on man page repository - you're working with a bunch of
people using in most cases C compilers which has a much looser syntax!

It'll be great if you could help tune the bits after the content being
contributed by others as long as the modified version has the correct
meanings.  Not sure whether it'll have scaling problem but hopefully the
man pages won't be updated drastically so it won't overload you so easily.

Thanks again for all the helps,

-- 
Peter Xu

