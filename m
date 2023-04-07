Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A84B6DB437
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 21:29:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229940AbjDGT3O (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 15:29:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231432AbjDGT27 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 15:28:59 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D05ADCA23
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 12:28:34 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id y14so43082641wrq.4
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 12:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680895710; x=1683487710;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ysj+GG2s60LLqFI8iN7RJLTYpWmwRk7UA1NxSnmB5iM=;
        b=hh6dr6cgUA8F8G50MZA+SQey4BQLz1HI0OTZQtrUI5u4Pnye9T0sdwfT2IeParx0zB
         dr1LYFIOO8fDC/bdz5L5/6t9tjaq+zKDFmfl5XBfJ5KF6ADtSWlPfiRPlytPgsvxFpg/
         qsZCtk7Tm5YbwhVsSjFCayYkARMU4QTaIEm1HdmYHI+0FQcYv426v1v1FCxsQqpQtykl
         xQ+B7Ycpe5BfuNq4DHBh7roTUboiAayLB0mNj9snb6pvjZMy8P5wSMcIP5/lUjS1RwGh
         KGMhyIX2zPbfIKX6pV/Lc3G6gzhnBekEguP5NvWoUmkftu08hoS7TYCGVwZo7hh8ceqY
         5wQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680895710; x=1683487710;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ysj+GG2s60LLqFI8iN7RJLTYpWmwRk7UA1NxSnmB5iM=;
        b=zWvbi1UCj9yFlXpsp4H46/HbNhs3NHYojk/lWh9rvEhJh3XFwUvW8uyLupDwTE6lTQ
         H9fkU9IO0ayGPt+JTdSS8S8MHBtsPTUJ1+hp/rpkJwDC4lkVxNyAGXfvZVEqaBRt33gF
         JIwQ1DZ+vTVos3+8zvYZPhBU5AyTxT6RcFcKi6A1gBgGO/ew/sjqi6ifEGj40kE1zxm2
         fuOSF5DeRxBxxKS+muOh4uDno6grmohXtFGyEoF6Y8/cePkLpibb3HapiNEFjwQ8KzJC
         qlvGgifNArGfROOWzb0/ElreEYzmsRB0BOj8Pq/9lgHEzwasSx2HGfCPkytTXAGZ6YZr
         BbFQ==
X-Gm-Message-State: AAQBX9eHYUkQAOtNSTCKobqmlG9TUtS/Tlj7hU954Un30peyOupKrcCo
        8yIVyKGBf3tCHvZpYW3/x+5X0dWRZGQ=
X-Google-Smtp-Source: AKy350afNc4YMmDMD5JQDYR101Asd+CELdIXKOJB+GM7PWZyVholPHAtN34t0LvyqqDoG80kBSHBwQ==
X-Received: by 2002:a5d:6a4d:0:b0:2d6:70eb:adef with SMTP id t13-20020a5d6a4d000000b002d670ebadefmr1940783wrw.32.1680895710500;
        Fri, 07 Apr 2023 12:28:30 -0700 (PDT)
Received: from localhost (93.7.115.87.dyn.plus.net. [87.115.7.93])
        by smtp.gmail.com with ESMTPSA id v5-20020a7bcb45000000b003ef684c5e32sm5489582wmj.48.2023.04.07.12.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 12:28:29 -0700 (PDT)
From:   Gavin Smith <gavinsmith0123@gmail.com>
X-Google-Original-From: Gavin Smith <GavinSmith0123@gmail.com>
Date:   Fri, 7 Apr 2023 20:28:29 +0100
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Eli Zaretskii <eliz@gnu.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        dirk@gouders.net, cjwatson@debian.org, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, groff@gnu.org
Subject: Re: man page rendering speed (was: Playground pager lsp(1))
Message-ID: <ZDBu3WaAFbieenFD@starmint>
References: <ghileoo9dk.fsf@gouders.net>
 <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
 <83fs9cp5b9.fsf@gnu.org>
 <20230407144319.iju3v3os2a7kngp2@illithid>
 <83fs9bohog.fsf@gnu.org>
 <f6ceff74-0c75-044c-6d12-756ac38c0738@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f6ceff74-0c75-044c-6d12-756ac38c0738@gmail.com>
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Apr 07, 2023 at 09:04:03PM +0200, Alejandro Colomar wrote:
> $ time man -w gcc | xargs zcat | groff -man -Tutf8 2>/dev/null >/dev/null
> 
> real	0m0.406s
> user	0m0.534s
> sys	0m0.042s
> 
> But as others said, I don't really care about the time it takes to format
> the entire document, but rather the first 24 lines, which is more like
> instantaneous (per your own definition of ~0.5 s).

Here's a sample comparison of "man" versus "info" on my system
(relevant as help-texinfo@gnu.org is being copied into this
discussion):

$ time info gcc > temp

real    0m0.112s
user    0m0.085s
sys     0m0.017s
$ ls -l temp
-rw-rw-r-- 1 g g 3.0M Apr  7 20:14 temp
$ time man gcc > temp
troff: <standard input>:11612: warning [p 111, 6.0i]: can't break line
troff: <standard input>:11660: warning [p 111, 13.8i]: can't break line

real    0m0.620s
user    0m1.004s
sys     0m0.114s
$ ls -l temp
-rw-rw-r-- 1 g g 1.2M Apr  7 20:16 temp

I find the startup of "info" to be instantaneous, whereas man pages often
have a noticeable delay.

Doubtless man would have more comparable runtimes were cat pages being used.

Being able to reformat the text for arbitrary widths is of limited use,
in my opinion, as text becomes more unreadable at long line lengths.  I
suppose cat pages could be provided in a series of sensible widths.  (The
same is true in theory for Info, but I've never heard of anybody using
widths for Info output other than the default 72 columns.)
