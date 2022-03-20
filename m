Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD41E4E1D36
	for <lists+linux-man@lfdr.de>; Sun, 20 Mar 2022 18:39:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245696AbiCTRlQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Mar 2022 13:41:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229713AbiCTRlP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Mar 2022 13:41:15 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41C4346B32
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 10:39:52 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id h23so17373960wrb.8
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 10:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=xiyd8HoVs0sohv2M+7eeGCWt5Wv9ORZdc2fpD+eX+x8=;
        b=Ikbqr/JTDU3AvSL6Oai/kKAxen97Y3sMaATtHlfocFevxjSpKQadvjoZhXKLGQYxCb
         v7Yd7DeKHmMrjbC6K/T/cWmhKq8lbbMJzTGynt7on4nSIwoIIOxX5o2QNOkWE0V5WKnF
         ICibH7vy7Ejb8fQ/O4kz08aS49A6yQShpMHaTgQVWHdrY50Gwxgc7qPXXO5gPjNZqfNl
         Y5Yc4EQefFI91RcdoJ4+kyhJp9RdA1uYpOzDT+lKOg/5tIaIqBq93z40POsVrTZGVjyM
         HtKYxNR6jVQ+4vF21Fjj2PRoW0IkoRNGx+1N3Zh76MqBn8YgTOD4DF6ZTg/0uygP3XXs
         utHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xiyd8HoVs0sohv2M+7eeGCWt5Wv9ORZdc2fpD+eX+x8=;
        b=Ykc8bVicKAFv0XLNScL3nPu2wAAYdpWgFAj54WoGHFlG4OvneFE1Glw07eTJh0irIm
         6Ic6ThgQHTC5U4nmkxNOMI3uzyHoayJ2Gds35joLTvg8o5n8bhiuv/BSoA6oiXrXLu1x
         NAuI5e3pDoWX66P++PxgpfDyb0gwCcG6DijNO9FTtmalYEnLMdfNhleLereF/J7n5vVT
         Q7a9Kyel1Jk+kupHCx694UBmKnvmq8EOHplnNR2Y9b9KQt9x9+BdeK4kRh9AjGBf7dUB
         0JSmyQxf+ySoIniguR2/m8uDalxZiNKZwXR9nFApOSbroNrcm0n54LhaDBVc51zCBKZJ
         VAKg==
X-Gm-Message-State: AOAM532IQALVD1PcVSQDcPaKuSgCAS4YBCdNhI24LxbB+uFItpTw3sBg
        aveZn0mWjrRKfYKBnt4zv3a1/XVQzot0Uoms
X-Google-Smtp-Source: ABdhPJz/wFLNMRSuSWkZY2dRWXhp+J1VCdxXm1OhJs8Wi1kqnWcXmdyYNkad7GTvMM4L9/Tw1qF0gg==
X-Received: by 2002:adf:e486:0:b0:204:ba5:adcd with SMTP id i6-20020adfe486000000b002040ba5adcdmr2792126wrm.16.1647797990822;
        Sun, 20 Mar 2022 10:39:50 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l41-20020a05600c1d2900b00389d3e18f8esm15929199wms.26.2022.03.20.10.39.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Mar 2022 10:39:50 -0700 (PDT)
Message-ID: <9a9f1bf3-58d1-d775-4ea0-0f745230039c@gmail.com>
Date:   Sun, 20 Mar 2022 18:39:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH] Makefile, etc/groff/tmac/deadly.tmac: Add lint and
 lint-groff targets
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20220318011753.96759-1-alx.manpages@gmail.com>
 <20220320142348.nuisck2pkynilbq5@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220320142348.nuisck2pkynilbq5@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 3/20/22 15:23, G. Branden Robinson wrote:
> Hi, Alex!
> 
> At 2022-03-18T02:17:53+0100, Alejandro Colomar wrote:
>> etc/groff/tmac/deadly.tmac is a file written by Branden, to make
>> make groff(1) abort when it finds a style problem, which then
>> causes make(1) to also abort.
> 
> Oh, I'm glad to hear this worked out.  I had on my to-do list a reply to
> you at one point when it wasn't working for some reason.
> 
>> Branden, I'm curious to learn how/if you're using it in your own
>> Makefile in groff(1).
> 
> Nothing sophisticated.  :)
> 
> I use it only in doc/doc.am, in the targets that generate compiled text
> and PDF versions of all of the groff man pages[1].  These will be new
> documents shipping in groff 1.23.

Oh, now I remember...  I'll soon attempt to satisfy your desire of
having PDF Linux man-pages.  That, and linting C programs within man
pages will be my next 2 things to do.  And I also want to add a
'dist'[1] make(1) target (and also a 'dist-deb' one, for which I'll
require your old Debian skills :p).

Expect a lot of additions to the Makefile.

Regarding PDF pages, can you please share some advice?
Can I build it incrementally as for example a .ar file made out of .o
files, where you can build .o files as always with make(1), and then you
just replace the necessary .o files in the archive?  Is there something
similar in the PDF world?  Please tell me everything you can think of,
since it will be the first time I build a multi-page PDF.

[1]:
<https://www.gnu.org/software/make/manual/html_node/Standard-Targets.html>

> 
> I set the register `CHECKSTYLE` to "3" on the command line and
> format the pages with "groff -mandoc".  Any warnings come out on
> standard error.

I've recently seen some email in the groff@ list using -rCHECKSTYLE=5.
Is that a thing?  Should I use -rCHECKSTYLE=666 as a "give me
everything" mode?

> 
>> BTW, don't feel pressured by my premature usage of your unreleased
>> feature to consider not changing it too much to avoid breaking this
>> build system.  I assume that it may change it the future when you
>> release and will adapt if necessary.
> 
> I appreciate that.  I have no disruptive plans--indeed, no plans at all
> for further development of the feature.  I have thought of nothing else
> do that is both feasible and helpful in fixing problems with groff's own
> pages.  (I acknowledge your talent at asking for things that are
> NP-hard.  ;-)

;-)

Cheers,

Alex

> 
> Regards,
> Branden
> 
> [1] https://git.savannah.gnu.org/cgit/groff.git/tree/doc/doc.am#n232

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
