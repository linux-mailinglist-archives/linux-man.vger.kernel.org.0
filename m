Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89F2C60310D
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 18:52:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229722AbiJRQwp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 12:52:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229962AbiJRQwn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 12:52:43 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D99B6EB758
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 09:52:41 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1364357a691so17496796fac.7
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 09:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rwBdPI5r3kzHizArL/FPP5doSZttYR9Bkn0L4xCBrSM=;
        b=iys/K6uKvOxDeCbuYO5eVmUIuITEYSPa7/IWB/WsblniNtnLxNJLB+Ce+Urii47yXt
         lKPCh6UL8F7xyfF2up0dpqbZTrKA+ZfELVG9y5D+87jsMVAOElH43cLsBIpEjEQ02BDR
         EKmCBZb0QH1N6cnMJUbI53Q5U/hURWGABoBt+PBXWpZR9GoPuAF1N6tHZFEJO5YWPhuA
         vvYLIUQKuK8dKPK0ISBdw6BZywOhHBhkFKuOOkzC9kG0ymGntr9CK6Lfa6PgnHq1L4MC
         CtDo/jwx1VNEimkJU9RgCigrfKVi1UWGj+6ax2YZwa0yYiVMoXdlmG/daCE2iRt+6KdX
         v3fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rwBdPI5r3kzHizArL/FPP5doSZttYR9Bkn0L4xCBrSM=;
        b=kCc2Rm3u1//QpJWZ6Tdc51uBOkHtD37sF/wXT2Ni3M3h5x1oKG00VIFWv/MfJ9wgdq
         PppVZVEnoT/hgvIenx9gQSjcxeY9fSvQnpvx+KIdPLArR5M1m+51d9eanDNfByIKA9kC
         XosBE4bhTUvIyFw3pIfx9POhcU2oHJ937JHInZNyiriCV2bBU35fQOKbmAhuXyiFegK7
         p+DEnnppdAdbvtcQhscx9Qw0B+v7TtnPSzDoWEPMfefH5UEu2vuPus4F92y3gDuEWOJu
         1I7UDZi43L5Z9HtUbt+AJdpKahPVDwXQCMzxY2r1SJngJ7ofufXOYyInKNfeJ4Lx68Y4
         vQ/Q==
X-Gm-Message-State: ACrzQf2hmLVHnEMHkKANOTZGShU1KTs8f15BLUcJfmuoI/qpCAopHWXB
        OJPscEgBM1o9SrMlvSD8qEOnorBqgILctEFjI4tV3Q==
X-Google-Smtp-Source: AMsMyM5NmP4DT1WMHDXTf0FNmODlnkEfXlczNoBhfIRE98gxfbbP2/tGujvqfGGHiFRr4rNMSh2UCJ0WBDEdKuuUzuo=
X-Received: by 2002:a05:6870:7023:b0:132:538:43e7 with SMTP id
 u35-20020a056870702300b00132053843e7mr2110178oae.123.1666111960691; Tue, 18
 Oct 2022 09:52:40 -0700 (PDT)
MIME-Version: 1.0
References: <20221017175523.2048887-1-zokeefe@google.com> <20221017175523.2048887-2-zokeefe@google.com>
 <d748d5dd-d1ef-d421-25f3-1706e9ce1eea@gmail.com>
In-Reply-To: <d748d5dd-d1ef-d421-25f3-1706e9ce1eea@gmail.com>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Tue, 18 Oct 2022 09:52:05 -0700
Message-ID: <CAAa6QmRQ10Q_C=6a7uOigsM8EBnonJ16JBmEDJWMB=tJ9AcU=A@mail.gmail.com>
Subject: Re: [PATCH man-pages 1/4] madvise.2: update THP file/shmem
 documentation for +5.4
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
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

Hey Alex, thanks for taking a look!

> > diff --git a/man2/madvise.2 b/man2/madvise.2
> > index 81cce56af..e14e0f7fb 100644
> > --- a/man2/madvise.2
> > +++ b/man2/madvise.2
> > @@ -320,8 +320,6 @@ Enable Transparent Huge Pages (THP) for pages in the range specified by
> >   .I addr
> >   and
> >   .IR length .
> > -Currently, Transparent Huge Pages work only with private anonymous pages (see
> > -.BR mmap (2)).
> >   The kernel will regularly scan the areas marked as huge page candidates
> >   to replace them with huge pages.
> >   The kernel will also allocate huge pages directly when the region is
> > @@ -354,12 +352,45 @@ an access pattern that the developer knows in advance won't risk
> >   to increase the memory footprint of the application when transparent
> >   hugepages are enabled.
> >   .IP
> > +.\" commit 99cb0dbd47a15d395bf3faa78dc122bc5efe3fc0
> > +Since Linux 5.4,
> > +automatic scan of eligible areas and replacement by huge pages works with
> > +private anonymous pages (see
> > +.BR mmap (2)),
> > +shmem-backed pages (including tmpfs (see
> > +.BR tmpfs (5)),
>
> I think here's missing a closing parenthesis.  Please check.  Maybe you
> prefer combining em dashes or commas with parentheses to improve
> visually discerning subclauses.

Not only a good catch on the parenthesis, but I didn't actually know
about the "em dash" previously (though I'm a frequent user of it in
spirit). Thank you! With that in-hand, there are few places that could
be cleaned up to avoid nested paracentesis.

Best,
Zach
