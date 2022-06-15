Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7C1954CC06
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 17:00:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242891AbiFOPAV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 11:00:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232920AbiFOPAU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 11:00:20 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 59788369FD
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 08:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1655305218;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Wdj5CZ1YJhvTDKGiHrBbhb/o3pDJxkI8AheMuKmCP80=;
        b=iOXZcN7G6jFTX45eMMo5/62WSalsGsqy9KHLba78jrWagkkBd2gapQnG/Wp0NqqRZtEOI0
        mN7GSq12F4gGU07kRrOyJf60ONjjJ20t8BtPuWIaUuLeEaVHafaIFql1Oky6NfNMKJJn6r
        kiMVHMQx/yugFB9hWLKBah42OQhtgEM=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-522-AbkpnXdJPMOtO5iZ7gR_3w-1; Wed, 15 Jun 2022 11:00:16 -0400
X-MC-Unique: AbkpnXdJPMOtO5iZ7gR_3w-1
Received: by mail-io1-f71.google.com with SMTP id 199-20020a6b01d0000000b00669bf42cd4cso6214985iob.4
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 08:00:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Wdj5CZ1YJhvTDKGiHrBbhb/o3pDJxkI8AheMuKmCP80=;
        b=3CN8QRpUUhaCZAOcLknvtIvq0vSf9S2SjpNK6STuBDwatB5naF9b0KYnCgkV3nS1bO
         A861iV8kIpGCGKuHe+DMO9oNFh0F2fARS9y9cocHNRWMRwGKc2LoCLnUX7q/gP+4YUIu
         W8DmVcscm5uY39T6CjNe3O6koya80VjKP11m/384/enIYu4ffxT+W3jkOxklfrbXnGPP
         0X2fYoalrGxyxusDC3xZutINSiOLP6wv0fn0Zrn0AzCv8vDKpAzvDdDlJBPCqHvStJ3c
         WSCbBtbiDr4zXXRgYdYWodfcJP4vkdaZ7pGG36fmIrHUJZpVfFe3f6Rddh7j11P74o5O
         TASw==
X-Gm-Message-State: AJIora94Jbc76XhS17DDKXDztPDuHYDG0HMkQEr/vYiyzjh6bF5tTCOW
        Ccgh7EU/9E1ucdBfmxoEYClnmgDk+opdC7Y8U+kV91vHABeahgfDAtLu5mBP3NQREiqaG2s99db
        kFKXAoskm9PQxwrzaYE8C
X-Received: by 2002:a05:6638:4308:b0:331:aed8:e2d2 with SMTP id bt8-20020a056638430800b00331aed8e2d2mr106098jab.60.1655305215956;
        Wed, 15 Jun 2022 08:00:15 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1s4nTCf+wr9C2/D/yZTWpmS5wZboAul3XUaZLRqq9yYZWLs26o4JT6+pDYmIMye7Y6Urwq46g==
X-Received: by 2002:a05:6638:4308:b0:331:aed8:e2d2 with SMTP id bt8-20020a056638430800b00331aed8e2d2mr106075jab.60.1655305215657;
        Wed, 15 Jun 2022 08:00:15 -0700 (PDT)
Received: from xz-m1.local (cpec09435e3e0ee-cmc09435e3e0ec.cpe.net.cable.rogers.com. [99.241.198.116])
        by smtp.gmail.com with ESMTPSA id o6-20020a92d386000000b002d4070b07b7sm6693466ilo.59.2022.06.15.08.00.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 08:00:14 -0700 (PDT)
Date:   Wed, 15 Jun 2022 11:00:13 -0400
From:   Peter Xu <peterx@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org,
        Axel Rasmussen <axelrasmussen@google.com>
Subject: Re: [PATCH v2 0/2] userfaultfd.2: Update to latest
Message-ID: <Yqnz/XXRjDmJrxjS@xz-m1.local>
References: <20220603173736.62581-1-peterx@redhat.com>
 <7acfdeb8-5dd3-dfe2-5717-b64006281a8f@gmail.com>
 <Yp5YGMFJWLtthc8U@xz-m1.local>
 <20220606213323.xtfx7qpab6dwdqpk@illithid>
 <848979ee-6c5b-5e74-1b45-586303b57a25@gmail.com>
 <Yp9gyFRKJoiQmiyU@xz-m1.local>
 <482f97e7-b0c9-cddc-be2d-3f0f7ccedf0e@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <482f97e7-b0c9-cddc-be2d-3f0f7ccedf0e@gmail.com>
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Jun 15, 2022 at 03:39:11PM +0200, Alejandro Colomar wrote:
> Hi Peter!
> 
> On 6/7/22 16:29, Peter Xu wrote:
> > > "registered" is not acting as an adjective, but as a verb.
> > 
> > I wanted to use it as an adjective, but after you questioned this one I'm
> > not sure any more on my English school knowledges. :)
> > 
> > > Maybe Peter was confused by that; I didn't consider that option.  I'm
> > > actually surprised that you were, Branden, but I guess it was just a
> > > neuron going crazy, as mine with \c the other day :p
> > > 
> > > 
> > > > 
> > > > > It's always challenging for me to grasp how you prefer the newlines
> > > > > are made, but anyway below changes looks good to me.
> > > 
> > > Sorry, Peter.  I'll take that into account, and try to help as much as I
> > > can.
> > 
> > You're greatly helpful start from the beginning, and I just hope you can
> > still bare with me. :-)
> 
> Sure! :)
> 
> 
> > 
> > > Apart from what Branden has already added to this thread, the
> > > following man-pages commit has some more details, quoted from B. W.
> > > Kernighan, and may help you understand what I want:
> > > 
> > > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man7/man-pages.7?h=alx/main&id=6ff6f43d68164f99a8c3fb66f4525d145571310c>
> > > 
> > > I have a long-standing discussion with Branden regarding how much should I
> > > push for semantic newlines.  The origin of using semantic newlines is only
> > > to simplify diffs (and it does that very well), but for some reason, my
> > > brain reads the text better too when organized that way, as opposed to
> > > normal prose-like text flow.  There I seem to disagree with Branden, who
> > > prefers to read my emails as if they were a book.  Maybe I need semantic
> > > newlines to understand the text better, because there are a lot of technical
> > > terms that I don't know, and having less load on my brain (because I don't
> > > need to calculate phrase boundaries) makes it easier; it's especially useful
> > > when text is under development, where it may have mistakes that make it even
> > > more difficult to read.
> > > 
> > > But, just do what you can.  I'll try to do the rest, and ask you if I don't
> > > understand something.
> > 
> > Yes IMHO that'll be the best way to go with the rest of the community too,
> > because afaict not all community developers will be able to quickly get
> > used to the rules on man page repository - you're working with a bunch of
> > people using in most cases C compilers which has a much looser syntax!
> > 
> > It'll be great if you could help tune the bits after the content being
> > contributed by others as long as the modified version has the correct
> > meanings.  Not sure whether it'll have scaling problem but hopefully the
> > man pages won't be updated drastically so it won't overload you so easily.
> >
> > Thanks again for all the helps,
> >
> 
> Yes, if I just fix all of them, programmers never learn how to write proper
> manual pages, and I'll have to fix them forever (and sometimes, when I
> recevie huge patches, such as new pages, it doesn't scale very well).  But I
> can't put too much pressure either.  It's difficult, but I try to adapt to
> each of you.

Thanks. I was imaging man page updates were rare at least for now, but I
could be completely wrong. Sorry to have made it a feel like adding those
burdens to maintainers only and treating it as deserved.  That's not for
granted for sure and I'd personally cherish a lot on all man page works -
it's really in most cases the only place to connect user and kernel
developers.. where my role stand in between the two.

I can also understand the challenges here as being the man page
maintainers.  It's not like other projects, the contributors are more
scattered, many coming from kernel feature contributors but not man page
developers constantly working on the project.

> 
> In this case, I applied both of your patches, and on top of them, I applied
> the following one.
> 
> Cheers!

Thanks again!

-- 
Peter Xu

