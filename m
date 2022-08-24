Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE5355A03C4
	for <lists+linux-man@lfdr.de>; Thu, 25 Aug 2022 00:08:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240566AbiHXWIL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Aug 2022 18:08:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240906AbiHXWIL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Aug 2022 18:08:11 -0400
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com [IPv6:2607:f8b0:4864:20::72b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E7AB786DF
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 15:08:10 -0700 (PDT)
Received: by mail-qk1-x72b.google.com with SMTP id i7so13807624qka.13
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 15:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=isovalent-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=kjvwGFWCvXa9E/sC3wC8HFajJ5PsiPVHd4kajZACXH4=;
        b=PGshZZ0KRIS9isGTQvPfim+HKwS2sFXXZvLE/6Nh05SQ2g3OBq00nyFFwlrDPayu3j
         4fi0suWzg048ZuRsHziEltKCzbA2eNpP0DgvE54CS5ZV4OBf5L/f2rtnW0baIRSDSGRT
         QbErYYsdStmiDhKDYNmMRYlSS6Rq0qrodksMWGc7b1dSe74bJM5es6mq6wzcuBDqfQAw
         hZfKISXL+feFKlCePRwmythn/yvQ8ImwLv3LI7aKxX2CFms4XF5CVUTRDxs/3CdWg96u
         PusiaG8onl/cnSah+Vwu+uBFYuRMmZxWwKsj144ip6qF3owpwFJiD3RRB4r0anqahw6o
         8KDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=kjvwGFWCvXa9E/sC3wC8HFajJ5PsiPVHd4kajZACXH4=;
        b=CHAF/hMHeuZfu4vG3NfOOjS6FT3r6/aF9kRuFFTvOtKoufuhSb4mBp5WxSZVRdrE9n
         ncvri+ROl9L8ysppjbHoScnUZTuRNVeLlJhwcirAI9zwkFnvU6bsVcn9BJ5Mk09/H1XB
         GIUz8cPiAHzUB0vOFxpBX+oaVxnowMWfnVV0c/rmEmc2x4l94uH9xwa5nZDfWuhpUpoA
         pTMm0RSVgoVQ00vcwMDSIfHxVr0diJlvWXGO4n1VjQI3INWba4FvFRN0jCpSJBtXlUiU
         eM81qR3pGn5y9PMm93UEoi7eciSNnDxKMpqiRUdDN4QyIzr9FXYcpcuEUtYkifFB9AXd
         hRiQ==
X-Gm-Message-State: ACgBeo0PD47C4X+od3ZJzaNF4iNoVtt/me1cZJAJqEkz/kltAdThRl31
        RVqors+nC0FFZYBtNwWqP/6qrOhb5AIOFOB23drrnU6RQFRIWQ==
X-Google-Smtp-Source: AA6agR5pXG2HRc5MCtz8RzUtTp1QU+2Q5R4SHP0PgVQBM9iOFq/Q6gFsu3dxBVbakPHSSsXA63fFTgFP5tlq6cgHW0w=
X-Received: by 2002:a05:620a:4711:b0:6bb:7e1b:5f0b with SMTP id
 bs17-20020a05620a471100b006bb7e1b5f0bmr1013862qkb.127.1661378889352; Wed, 24
 Aug 2022 15:08:09 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com> <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com> <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
 <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com> <CACdoK4KuoRpTdyLqtPTbctHWHtfQTNgZoKunVC_f7T_y4ATF5g@mail.gmail.com>
 <7d125b8d-9873-b001-dae2-a78d3891f144@gmail.com> <CA+FoirA-FeYeA5ZPgCvo55Hg_dfe7dT54Co8CkU9wW8yemFcJA@mail.gmail.com>
 <fdec5bc8-1204-db0f-1f3e-86d7a2de8b5c@gmail.com> <20220824160259.bxyr6pxagaaoqaev@jwilk.net>
 <32665572-6128-82e7-27b2-eb3817fe5ac7@isovalent.com>
In-Reply-To: <32665572-6128-82e7-27b2-eb3817fe5ac7@isovalent.com>
From:   Quentin Monnet <quentin@isovalent.com>
Date:   Wed, 24 Aug 2022 23:07:58 +0100
Message-ID: <CACdoK4+zk_RjS_DAAvWVfDBoBP--2DESQO-1nGNmGq2vhbZqqA@mail.gmail.com>
Subject: Re: Update bpf-helpers(7) man page
To:     Jakub Wilk <jwilk@jwilk.net>, linux-man <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
        Daniel Borkmann <daniel@iogearbox.net>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 24 Aug 2022 at 17:48, Quentin Monnet <quentin@isovalent.com> wrote:
>
> On 24/08/2022 17:02, Jakub Wilk wrote:
> > The latest bpf-helpers(7) man page update introduced a few misspellings:
> >
> >> -EFAULT on failrue to parse the existing header options.
> >
> > failrue -> failure
> >
> >> this helper enforces the key must be an task_struct
> >
> > an -> a
> >
> >> Returns the stored IMA hash of the inode (if it's avaialable)
> >
> > avaialable -> available
> >
> >> Providing an len_diff adjustment that is larger than the actual packet
> >> size (resulting in negative packet size) will in principle not exceed
> >> the MTU, why it is not considered a failure.
> >
> > an -> a
> >
> > But I can't parse the subordinate clause. I think it should be:
> >
> > ..., which is why it is not considered a failure.
> >
> >> Other BPF-helpers are needed for performing the planned size change,
> >> why the responsability for catch a negative packet size belong in
> >> those helpers.
> >
> > I can't parse this subordinate clause either. I guess it was meant to say:
> >
> > ..., which is why the responsibility for catching a negative packet size
> > belongs in those helpers.
> >
> > Any volunteers to fix the misspellings on the kernel side?
> >
>
> I'll have a look at these and send a fix. It's likely that some of those
> are my mistakes anyway.

Out of curiosity, did you spot these mistakes by reading the page, or
did you run a tool on the document?

Quentin
