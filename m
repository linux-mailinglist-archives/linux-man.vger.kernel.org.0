Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 700715648E2
	for <lists+linux-man@lfdr.de>; Sun,  3 Jul 2022 20:08:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230174AbiGCSIl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jul 2022 14:08:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbiGCSIk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jul 2022 14:08:40 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0915060F6
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 11:08:38 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id s1so10351887wra.9
        for <linux-man@vger.kernel.org>; Sun, 03 Jul 2022 11:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ct1aNdH9ogR/nWX3CkYpIsgT2Rrs0c3MSWUH3bOpLl0=;
        b=k0A/ThXT7wyUOGcl0RZ1TnobLBTneMi02w7oy667OiOF3QBcY23UxRuR7Wfsn7Wpsy
         FbFrHIfRpYGxSroqD+UiqOPNgc026L3LQWD39M+XITl6X2A/BHLmjBvcU8JVN/JG8u16
         wRoqInVNuSBzImWSjBc4NQgyhk9xnG33Nm7kFHUiYXEttJGvW5nb0e6CfDCWecka5DXD
         lTWOTesljLDyQpmoXCI/CO5pHrqAJQ0zqN8HDKNy4j6eVDNFbfPHNLEPctiWk0KBFpck
         F6UnaInzbIbnL5dIFu7fBffctNqZAliTgog/Z1UwjYRhOx0CmjvTWsnnc48IsIn/wEV3
         jaqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ct1aNdH9ogR/nWX3CkYpIsgT2Rrs0c3MSWUH3bOpLl0=;
        b=6W7hUW66NlDIqt8IAoU9wablDsig9m0VHzG4YZ3+H5xM1EbtmoALHtkraomQgjImTI
         mZho4cD8GixNR0ll9RVUeHhttw49N0zYDCL4nKYdpflDG3C3KJ2PI/oJ4BKr051nUED0
         CgcnYP/94YbMQPfBd7uMH0EIRXcP7ZFWzskOk6sklRpp8Lv4ThR0cZ8KT6E8qneyBHL9
         G3JpypUcAYYfcpM5Qdty3OEP0EPFpOXNtiiAKilATvuTxhfkXGSAtCnfA8zac4brCLZe
         v6uePm/wATU2Q7iHUd1gzyjRcD1WYSXQdJsrZfyU4yQXZIuemjslg9mJj0iFVtd2114k
         iAkQ==
X-Gm-Message-State: AJIora8VvPNbGf+TKTQrsZKME9Ka0dSFVPlfetS0XE++GMyTqUNaQlty
        AUnzSHJ3u9al3/OoR1RGgVQ=
X-Google-Smtp-Source: AGRyM1vdV6OpHyaczYpF9peyJQsb2SP987DcAAap+zAAVIBD9iE32nz0odeSDhAcJwbh7Cmbgua85Q==
X-Received: by 2002:adf:9d92:0:b0:21d:66c4:e311 with SMTP id p18-20020adf9d92000000b0021d66c4e311mr3722389wre.575.1656871716536;
        Sun, 03 Jul 2022 11:08:36 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v6-20020a5d6106000000b00213ba0cab3asm28506835wrt.44.2022.07.03.11.08.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Jul 2022 11:08:35 -0700 (PDT)
Message-ID: <f180eaf2-fa3b-27d2-3787-cb1c826430f1@gmail.com>
Date:   Sun, 3 Jul 2022 20:08:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2] environ.7: align PWD with the standard
Content-Language: en-US
To:     Stefan Puiu <stefan.puiu@gmail.com>,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     lnx-man <linux-man@vger.kernel.org>
References: <f4b9cfdd-7b5b-2b31-2c84-064fc2c3206b@gmail.com>
 <20220619233934.25egwny37dzt7q3i@tarta.nabijaczleweli.xyz>
 <CACKs7VDJx1QEkgmb2vJzhAbNwbH9xjd_-rhD+eBSbtBk9-PzAA@mail.gmail.com>
 <20220620152317.nq4ehd5gtjmjxx2m@tarta.nabijaczleweli.xyz>
 <CACKs7VBN8N4mUUFFxkL9jj1C+Uc1qvmwTp5xR+--OFb4LXo21w@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACKs7VBN8N4mUUFFxkL9jj1C+Uc1qvmwTp5xR+--OFb4LXo21w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

Hi Stefan, and наб,

On 6/21/22 23:35, Stefan Puiu wrote:
> On Mon, Jun 20, 2022 at 6:23 PM наб <nabijaczleweli@nabijaczleweli.xyz> wrote:
>>
>> Hi!
>>
>> On Mon, Jun 20, 2022 at 11:55:18AM +0300, Stefan Puiu wrote:
>>> On Mon, Jun 20, 2022 at 2:40 AM наб <nabijaczleweli@nabijaczleweli.xyz> wrote:
>>>>
>>>> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
>>>> ---
>>>>   man7/environ.7 | 8 ++++++--
>>>>   1 file changed, 6 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/man7/environ.7 b/man7/environ.7
>>>> index 019c5a25a..24446c709 100644
>>>> --- a/man7/environ.7
>>>> +++ b/man7/environ.7
>>>> @@ -158,8 +158,12 @@ used by
>>>>   to find manual pages, and so on.
>>>>   .TP
>>>>   .B PWD
>>>> -The current working directory.
>>>> -Set by some shells.
>>>> +Absolute path to the current working directory;
>>>> +required to be partially canonical (no
>>>> +.I .\&
>>>> +or
>>>> +.I ..\&
>>>> +components).
>>>
>>> If any shell decides to ignore that part of the spec, is there
>>> anything preventing them?
>> It no longer being a valid shell (if on startup) or providing an invalid
>> cd built-in (when cding), from the stand-point of conformance to both
>> the standard and historical shells.
> 
> My expectation from the Linux manual pages is that they document
> behavior I'm likely to encounter in the real world on Linux, with
> various libcs etc. Specs can be misread, misunderstood, ignored, or
> can be wrong sometimes (see the discussion about fork being required
> to be async signal safe, for example, the RH page here:
> https://access.redhat.com/articles/2921161). So if I write software
> that, say, does getent("PWD"), it's useful to know if there are cases
> where that might not work. Even if POSIX requires PWD to be set,
> that's not reassuring when my program crashes. That's why I asked if
> you checked some shells to see what they do.
> 
> Also, I see there's already environ.3p for the POSIX version.
> 
>>
>>> I would make it clear in the text that this
>>> is a spec requirement, not a practical guarantee (e.g. "required by
>>> <spec> to be ...").
>> Those are one and the same, that's the point of SUS/POSIX
>> (and conformance to historical implementations).
>> Are you aware of one or are you just concern-trolling?
> 
> I don't know of a shell that doesn't set PWD, but since you said the
> previous comment ("Some shells set it") was wrong, I assumed you had
> checked that. I did try bash and busybox sh and they seem to set it,
> but there are (quite) a few other shells out there.


Since no-one seems to know of a shell that deviates from this behavior, 
and no-one replied in a couple of weeks, I'm going to assume that all 
well-known shells follow POSIX, and that the wording was falling on the 
safe side of things in the old times where following standards was not a 
common thing to do (or maybe the page was written before there were any 
standards).

So I applied the patch.

> 
> I don't know why you think that my question is some kind of trolling.
> You can look up my contributions in the mailing list archive. It's
> been a while since my last patch to the project; nowadays I follow
> some of the mailing list discussions in my spare time and occasionally
> chime in on people's patches. I get things wrong sometimes, of course,
> but your reply is the first one that is defensive (and somewhat rude,
> I would say). Probably a good indication that I need to find other
> uses of my (spare) time.

Thanks for following the list, I appreciate your reviews!

> 
>> Obviously, pretty much no part of this manual applies to csh
>> because csh is its own 2BSD brand of insanity (in this case
>> largely because it predates V7 (3BSD), and, hence, the environment).
>> csh users understand they use a non-shell,
> 
> Well, this is the environ.7 man page, mostly useful to programmers
> AFAICT, who don't have much control over what people use as their
> shell. If they can set csh as their login shell, why should I assume
> they won't? People have many reasons to choose the shell they run -
> distro default, they like some features, speed, company policy, legacy
> systems... Not sure POSIX compliance is high on that list.

I checked csh(1) provides PWD, at least on my system (and in fact, it's 
the only variable it sets):

$ env -i csh
% env
PWD=/home/alx
% csh -l
% env
PWD=/home/alx
%

I'm going to assume that the text is not true, unless someone reports 
otherwise.

Thanks you both!

Alex
-- 
Alejandro Colomar
<http://www.alejandro-colomar.es/>
