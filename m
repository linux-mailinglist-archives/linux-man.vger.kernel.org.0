Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C11E257A512
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 19:21:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234781AbiGSRVS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 13:21:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229655AbiGSRVR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 13:21:17 -0400
Received: from mail-pg1-x564.google.com (mail-pg1-x564.google.com [IPv6:2607:f8b0:4864:20::564])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A9A1122
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 10:21:16 -0700 (PDT)
Received: by mail-pg1-x564.google.com with SMTP id s27so14056318pga.13
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 10:21:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:dkim-signature:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc;
        bh=QSn9mIgJk7sHIV7cBs73aK7jgBZZUNOd7XXOM0FfuLY=;
        b=vjpRTHamgPnfo91W6n6N0bLjyu8W+JTvAwTA3MmwdiWI58N7Ia2V55pGwLfVjvloGy
         nAPjzjUw8Vn5tYJAeiTDchEQaYnXOuAQ2+222w8BSBVG5GqT4qZMVdaB7xsD+tHWGj9l
         0zjgMErgFcWTRepJokpPA1aRkjlZ0yZXSctB3DXoImYkY/kpgcYxVlRA/4s0T1rexeVT
         KQ6m8xPefsp2uWdq4DmMQbx2oM9nQ3bRaZsQPvdRCpqI7w0uNPVj5Qpp5JQtLSLWnA3l
         4p31UIzEpZblNS1juyh9eTqZH/PK1WF1/uGBssRdEEJW5XozMDu4v+wBs94LZtqVG8K4
         Oy3w==
X-Gm-Message-State: AJIora/LNXJ/NhPHDOWgdJAhqbL/z/DOCAMs6M7aQCGzD/dl0yeddNjK
        Is9XcGlXEAaRXT/7Vl2+sRf7IAtxQYTJQn7EcC4QlDq0e1/Kmw==
X-Google-Smtp-Source: AGRyM1vklX0BHf2UeXqF9+7uCgBpqlKGmTVtK67NUJL4DGDbrMh9XQpYu2xaKVAGsclYdnGVzlCHPc9Q7YlJ
X-Received: by 2002:a63:5456:0:b0:419:fdbe:11af with SMTP id e22-20020a635456000000b00419fdbe11afmr15143209pgm.151.1658251275619;
        Tue, 19 Jul 2022 10:21:15 -0700 (PDT)
Received: from restore.menlosecurity.com (restore.menlosecurity.com. [13.56.32.52])
        by smtp-relay.gmail.com with ESMTPS id cp18-20020a170902e79200b0016bf25b0d5asm942751plb.67.2022.07.19.10.21.15
        for <linux-man@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jul 2022 10:21:15 -0700 (PDT)
X-Relaying-Domain: menlosecurity.com
Received: from safemail-prod-02850030cr-re.menlosecurity.com (13.56.32.53)
    by restore.menlosecurity.com (13.56.32.52)
    with SMTP id 316bc840-0787-11ed-8728-019c43d52f23;
    Tue, 19 Jul 2022 17:21:15 GMT
Received: from mail-yw1-f199.google.com (209.85.128.199)
    by safemail-prod-02850030cr-re.menlosecurity.com (13.56.32.53)
    with SMTP id 316bc840-0787-11ed-8728-019c43d52f23;
    Tue, 19 Jul 2022 17:21:15 GMT
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-31cdce3ed04so125520187b3.13
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 10:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=menlosecurity.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QSn9mIgJk7sHIV7cBs73aK7jgBZZUNOd7XXOM0FfuLY=;
        b=Y6GOjvKWB721ykqUwPeb3+/mcMt3FNGMpxVN82PapgowFcqjqBh+JGyTZNNFeUAsgx
         eYOfeXMg/gvIG3rdxHLRjEmhHGWt5sZ+srQNBGFQ943853LpU8ggEy7sD/BUy2eYb45i
         7j37MRPJOR6iA+WWcVXKJpdyUiAktlOeQ+hVU=
X-Received: by 2002:a0d:cec1:0:b0:31e:590c:c6e4 with SMTP id q184-20020a0dcec1000000b0031e590cc6e4mr5258610ywd.42.1658251274085;
        Tue, 19 Jul 2022 10:21:14 -0700 (PDT)
X-Received: by 2002:a0d:cec1:0:b0:31e:590c:c6e4 with SMTP id
 q184-20020a0dcec1000000b0031e590cc6e4mr5258576ywd.42.1658251273815; Tue, 19
 Jul 2022 10:21:13 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
In-Reply-To: <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
From:   Rumen Telbizov <rumen.telbizov@menlosecurity.com>
Date:   Tue, 19 Jul 2022 10:21:03 -0700
Message-ID: <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
Subject: Re: Update bpf-helpers(7) man page
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, quentin@isovalent.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Thanks for following up on this.
Quentin will send you the script these days for you to rerun.
However, I'm wondering if there's a way to run it automatically when a change is
detected or otherwise without needing manual intervention? This way
the published
page will not get out of date. I am not sure what that mechanism might be but
just a thought.

Cheers



On Tue, Jul 19, 2022 at 7:42 AM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Rumen,
>
> On 7/18/22 18:37, Rumen Telbizov wrote:
> > Hi Michael, everyone,
> >
> > I was directed to you by Quentin Monnet with regards to a missing
> > function in the bpf-helpers(7) Linux man page. I found out that the
> > man page doesn't have anything regarding bpf_redirect_neigh(). Quentin
> > mentioned that he has a script which generates the man page from the
> > comments in the source code, but then I am not sure how and when the
> > man page is being generated so that it gets out of date. This function
> > definitely has comments/documentation in the code and it works
> > properly but is missing in the man page.
> >
> > Is this something you can help with?
>
> Yes, the page is generated:
>
> alx@asus5775:~/src/linux/man-pages/man-pages$ cat MAINTAINER_NOTES
> Externally generated pages
> ==========================
>
> A few pages come from external sources. Fixes to the pages should really
> go to the upstream source.
>
> tzfile(5), zdump(8), and zic(8) come from the tz project
> (https://www.iana.org/time-zones).
>
> bpf-helpers(7) is autogenerated from the kernel sources using scripts.
> See man-pages commit 53666f6c30451cde022f65d35a8d448f5a7132ba for
> details.
>
>
>
> If Quentin has the script, he could send it to me as a patch to the
> man-pages repo, so that it's added to our scripts/ directory. I can
> regenerate the page whenever I'm requested to do so, but I've never done
> it, so I need the script and a simple explanation to use it.
>
>
> Thanks,
>
> Alex
>
> >
> > Thank you,
> > Rumen Telbizov
>
> --
> Alejandro Colomar
> <http://www.alejandro-colomar.es/>
