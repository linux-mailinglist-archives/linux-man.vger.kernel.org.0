Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6D974F067D
	for <lists+linux-man@lfdr.de>; Sat,  2 Apr 2022 23:44:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345087AbiDBVq2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Apr 2022 17:46:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233887AbiDBVq1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Apr 2022 17:46:27 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9EE9224
        for <linux-man@vger.kernel.org>; Sat,  2 Apr 2022 14:44:34 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id n35so3669790wms.5
        for <linux-man@vger.kernel.org>; Sat, 02 Apr 2022 14:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=llPTe6rzJSdXGM9mWbVrgKZiAKW5XHY9l5Z/ytIht1U=;
        b=o7RnqZUfmjhr2C0XNL4b51FxafCMLbKqBAqh99xKUynodsjoEkv6G1s9nhdUMXsJHA
         AXSYulWZJDDzqyjzkl+gJeFh8Z7Igy0jLdbDN77ygmm2NvvWeedDrSmAC/m1sWrr64ov
         i6+hmUs/PZShcTVjXYLx9cK5jke2IjMSDhOpr3OXFjJcH25gzfdS/fPcXaUGDqsddYDK
         M7qqcY7Fxb8FfI7t39hxpuOn8otpW0+HOUZczhzv5UgTVe3ZBnZQ8KKlJALmWqFZOx2y
         +/JJl+yhnLcRgXzrTBHshsO37lENAzr/eMKboRfIROMoLKyDe54tB8bOhayYpy+c9KqO
         AFyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=llPTe6rzJSdXGM9mWbVrgKZiAKW5XHY9l5Z/ytIht1U=;
        b=ehvSIr2j9RyiLSvr93OGHfWXnzA7lqyEA6Glfz29wYqaa3II6GKy8kS1kF8yAH02ll
         vOHBL9sR47DthPC4OpeN2CWmC5YOCWCigZng5q82vWJukdQM+IVbdp9uv4zq3QQAWAFW
         D/RWII9pMc6B6x2k5SUWu3qPi/HlkoJ32EUQpcVK/2XqIB7R7H9HilNCsLudYQbk6rcZ
         LjRdi6zMmtaYZZ6ZuIwIOH9Fftx7crT8wFikf1y0gofd6Z7sQiXZfwVhTp0AyZgkjDPo
         QlPdKrL1W6492XfuM1/gmP5xMuumg5oEEybEram7SUUbyOljPPTZcrC88dh8T/KH28dl
         jx9Q==
X-Gm-Message-State: AOAM532SPqqH5MLJl9CDRO7xcpSpyOibCxelracnVkspfFK3/OTR3oYg
        Te5wXntwXO1eL2apQ1M9Pis=
X-Google-Smtp-Source: ABdhPJz0ODp2iNTBgpu+2NwkCHZJkE2kDoSHQdplrCKySvU1T0Lg97kglXRIqsTq0EK6FYxIbgPVCw==
X-Received: by 2002:a05:600c:4f0f:b0:38c:c8f5:73e7 with SMTP id l15-20020a05600c4f0f00b0038cc8f573e7mr13419575wmq.201.1648935873536;
        Sat, 02 Apr 2022 14:44:33 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f13-20020a05600c4e8d00b0038c949ef0d5sm6055148wmq.8.2022.04.02.14.44.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Apr 2022 14:44:33 -0700 (PDT)
Message-ID: <68fdbeb9-e3ce-580b-8b0c-64760e366fe5@gmail.com>
Date:   Sat, 2 Apr 2022 23:44:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [patch] Add docs on mount namespace rootfs access and pid
 namespace pid mapping
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Craig Ringer <craig.ringer@enterprisedb.com>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <CAGRY4nx5R6d5iH1SUZHEuJO+M67h1p1zLNQB_6F6X5GGBKFYeg@mail.gmail.com>
 <2678e0e8-0057-7b63-a3a0-9f49b57f0cf4@gmail.com>
 <20220320145304.nus44y4hsh6fohbk@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220320145304.nus44y4hsh6fohbk@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden!

On 3/20/22 15:53, G. Branden Robinson wrote:
> Hi, Alex!
> 
> At 2022-03-14T15:05:49+0100, Alejandro Colomar (man-pages) wrote:
>> Always start sentences after '.' in a new line.
>> That's already covered by "semantic newlines" (see above),
>> but it's especially important in this case because
>> groff(1) prints (at least) 2 spaces after '.' normally,
>> but if you write it this way it doesn't.
>>
>> BTW, Branden,
>> I CCd you because I didn't find this documented in groff(7),
>> or at least I couldn't find it.
>> I tried /\.[^ [a-z]] and also keywords like period, point or dot,
>> but no luck.
>> Is it documented anywhere?
> 
> It used to be one of those things everybody just "knew" about writing in
> *roff--back when people hung on Brian Kernighan's every word[1]--but
> over the years the knowledge has atrophied.

Okay.
> 
> The groff 1.22.4 Texinfo manual has the following.  I believe this
> material is adapted from Eric Allman's paper "Writing Papers with NROFF
> using -me".
> 
> [[
> 3 Tutorial for Macro Users
> **************************
> 
[...]
> 
>    * End each sentence with two spaces - or better, start each sentence
>      on a new line.  'gtroff' recognizes characters that usually end a
>      sentence, and inserts sentence space accordingly.

Ahh, that paragraph is what I was looking for.

[...]
> 
>        •      Set your text editor’s line length to 72 characters or
>               fewer; see the subsections below.  This limit, combined
>               with the previous advice regarding breaking around
>               punctuation, makes it less common that an input line will
>               wrap in your text editor, and thus will help you perceive
>               excessively long constructions in your text.  Recall that
>               natural languages originate in speech, not writing, and
>               that punctuation is correlated with pauses for breathing
>               and changes in prosody.

That last line should be reminded more often :)

[...]
> This point about beginning sentences only on new input lines _is_
> missing from groff_man_style(7).  As noted in the groff 1.22.4 NEWS
> file:
> 
> o ... groff_man(7) has been expanded and largely rewritten ... to be
>   more helpful and accessible to man page writers who may never read any
>   other groff documentation.
> 
> groff_man_style(7) is now fulfilling this role, since a quick reference
> for experienced man page writers remains desirable.  (I avoid letting
> the two drift out of sync by generating both from an m4 master
> document.)
> 
> I've been dithering over writing a new introductory section just for
> groff_man_style(7) to present an example of a partial man page and use
> it to explain typesetting terms that are inescapable even in the reduced
> domain of man pages: breaking, filling, adjustment, hyphenation, and the
> notorious matter of supplementary inter-sentence space.
> 
> As you will have observed, when I write in a hurry, I write a lot.  The
> foregoing notional material needs to be written well, and that means
> taking the time to cook the fat off.

I'll try to find some time to read the whole pages...

Thank you very much for your (very) detailed responses! :-)

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
