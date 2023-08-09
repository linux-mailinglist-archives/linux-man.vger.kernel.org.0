Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AD63775730
	for <lists+linux-man@lfdr.de>; Wed,  9 Aug 2023 12:39:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230295AbjHIKjh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Aug 2023 06:39:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjHIKjg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Aug 2023 06:39:36 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2B431702
        for <linux-man@vger.kernel.org>; Wed,  9 Aug 2023 03:39:35 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3fe4b95c371so4431345e9.1
        for <linux-man@vger.kernel.org>; Wed, 09 Aug 2023 03:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1691577574; x=1692182374;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xOefhkQ7AfpePRFc6qmKO2n4jERAjwmvUyZbUkKpO8o=;
        b=ObUxIkzropubCajyVdEy07kVdDgyLIWHM08ln+esV8ad4y8quhek5avwwbHVZJDemt
         6dKPT25eJeMuM4iha0t2sl/kjJt9Lvc1G9QcDtVCAjRKQh1Gn5edUmejC79N/BJ+6bEt
         L4Nsbw+ukVBk/JHkepvC+lZJQB7XQnQRyuoLpabfhgq+fY6jb1oXZYIjaJ5oWXKuupKh
         kZ8EAtWzzWMKdkuyYCsJoVTsYF5AFPxb4OiepXrkHzD8qGph1K3tmZBMXghYRHJlppiy
         hDcN01JNQjfIEJV9T36+Z9Pklb8KhPlJhC6jBXxbFZDjvS/tRMC6vvSU8A6S3CdTPpRF
         Jr0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691577574; x=1692182374;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xOefhkQ7AfpePRFc6qmKO2n4jERAjwmvUyZbUkKpO8o=;
        b=CHK28s/8Y9M4/r2FpzBbNNAadO8dog3/5mqQQy1M4FtQIc+yrSPpGL09Y+Ze6+ReZs
         o7xgkVLzUvR6bNoxdR6DfnZTnRJyKhIe7DOfNY13PdgcSOPbfzaoLja0YJ6/M6t9YxfG
         Wh3jx/XvomOI78SNF7IBk2dRM4uH7NfmPBl2itBvehJ2HIoBUJjrx7MXqrev9cvF/QZw
         ffx2wTaUpg8c54qZ/Gg4TmYnaaGVVxm/Sa10kds/SjZa8G3PbbOjDIYi2WhwOhoywWWE
         ACF72lDzNgCy3ggf4S3m0yNzadU8cXsuTEdFqT7H4x3QkTjX27xcWEdFtljn+K4gCAtj
         botQ==
X-Gm-Message-State: AOJu0Yz/rH5rwpc0GkjVpI8Qzmx6t8LaDuMHeWB1GjfsRgek83oANIIT
        wyopTNeC6SdpseDdzCxpXAbfpQ==
X-Google-Smtp-Source: AGHT+IEGpeXdkk8MgUR+nSWsMyoljMuA01AHdezVR5Swu4qaMTyJVEt7MTM9n8+VSYVVBC8Ft78WkA==
X-Received: by 2002:a1c:6a08:0:b0:3f7:e660:cdc5 with SMTP id f8-20020a1c6a08000000b003f7e660cdc5mr2013266wmc.9.1691577573863;
        Wed, 09 Aug 2023 03:39:33 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id p23-20020a05600c205700b003fbb618f7adsm1581295wmg.15.2023.08.09.03.39.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Aug 2023 03:39:33 -0700 (PDT)
Message-ID: <93144922-493f-f3e2-f124-59129853c083@jguk.org>
Date:   Wed, 9 Aug 2023 11:39:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: =?UTF-8?Q?Re=3a_=e2=9f=a8_vs_=3c_in_hostname_man_page_of_hostname?=
To:     Alejandro Colomar <alx@kernel.org>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
References: <9d4608c3-1a01-b134-c0f5-423af14563eb@jguk.org>
 <834b4a10-8193-22aa-bfd0-57ed8f32466a@kernel.org>
 <b743023a-4453-aba4-883d-3e896e2f38de@jguk.org>
 <d508ed7b-7dfb-7b72-e052-c918c24bb1bf@kernel.org>
Content-Language: en-GB
From:   Jonny Grant <jg@jguk.org>
In-Reply-To: <d508ed7b-7dfb-7b72-e052-c918c24bb1bf@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 09/08/2023 11:16, Alejandro Colomar wrote:
> Hi Jinny,
> 
> On 2023-08-07 17:36, Jonny Grant wrote:
>>>>
>>>> Noticed that sometimes the '⟨' doesn't render, perhaps it is not in all fonts, would it be possible to use consider using regular '<' and '>' character in the man page?
>>>
>>> That is implemented using man(7)'s UR, which is for URIs.  The source
>>> code of the manual page doesn't know about the glyph that will be
>>> produced in your system.  In your system, groff(1) will try to find
>>> the most appropriate one.  You (or your distributor) can also tweak
>>> that.  You can for example change it to use ASCII '<' and '>'.
>>>
>>> In man7.org, I guess that you read it correctly from any machine.
>>> In your systems' pages there's no COLOPHON anymore (I removed it
>>> in man-pages-6.01).  If you're on an old system, you can tweak it.
>>>
>>> But you'll still see that character in pages that have URIs in them.
>>> For example, let's consider hier(7):
>>>
>>>     $ grep -n '^\.UR ' man7/hier.7;
>>>     640:.UR https://refspecs.linuxfoundation.org/fhs.shtml
>>>
>>> which renders as (including the whole section):
>>>
>>> STANDARDS
>>>        The   Filesystem   Hierarchy   Standard   (FHS),   Version  3.0
>>>        ⟨https://refspecs.linuxfoundation.org/fhs.shtml⟩,     published
>>>        March 19, 2015
>>
>>
>> Fair enough. Some pages even have both.
> 
> Pages that use both are bad.  That means that in some places they used
> the correct UR man(7) macro, and in some others they hardcoded <>, which
> is wrong.  It may happen in <man7.org>, because the COLOPHON was added
> by Michael, while the page was written by a different author.  In other
> places, it means that the page is badly written.
> 
> I know of uri.7, where this happens, and some day I'll fix it.
> 
>> I saw sometime <> is used, as I expected,
> 
> Those pages are wrongly written.  I expect that most of those pages are
> not written in man(7), but rather translated from some other source
> language by a program, which usually produce crap man(7) source.
> 
>> other times '⟨⟩' .
> 
> When you see that, the page was written properly in man(7) (or
> mdoc(7)? I expect both produce the same glyph; Branden?).
> 
>> "SEE ALSO"
>>
>> https://man7.org/linux/man-pages/man1/cp.1.html
> 
> I think GNU coreutils is one of those projects that don't write man(7)
> source, but rather translate it from a different language.
> 
> alx@debian:~/src/gnu/coreutils$ find | grep 'cp\.1'
> alx@debian:~/src/gnu/coreutils$
> 
>>
>> But though "COLOPHON" looks like it was appended by a man7 website script with the '⟨⟩' instead,
> 
> Yes, Michael uses a script to generate the COLOPHON.  That script uses
> the proper method for writing URIs: the UR man(7) macro.  He used a
> similar script for releasing man-pages until 5.13, as you'll find our
> pages in versions <=5.13 had a COLOPHON in them.
> 
> I temporarily added a script that did the same thing:
> 
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/scripts/append_COLOPHON.sh?h=cd34c839d3c9878db9105714b1e460f30057e7f2>
> 
> You can expect that Michael's script will be similar.
> 
> However, shortly after I decided to just remove the COLOPHON section,
> and thus the script:
> 
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?h=8c3052b0322580eba62de91f04ba657f7dfe360e>
> 
>> so I thought maybe that could be changed for consistency to <>.
> 
> No.  It should be <> that are fixed to use the UR man(7) macro.> 
>> There are so many different characters that could be used, but <> is on every keyboard :)
> 
> But nobody types ⟨⟩.  It's generated by groff(1).  When you write
> an email or anything similar, you can use <>, but for manual pages,
> those symbols are fine, I guess.
>
Ok I agree. If UR was used consistently it would be better. Thank you for your reply.

I'd change the groff configuration to generate the web version of those UR on man7.org to be <>. Maybe that's just my preference :)

Kind regards, Jonny
