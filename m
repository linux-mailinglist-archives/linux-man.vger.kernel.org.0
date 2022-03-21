Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E690B4E33BA
	for <lists+linux-man@lfdr.de>; Tue, 22 Mar 2022 00:11:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231874AbiCUXKO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Mar 2022 19:10:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233787AbiCUXJA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Mar 2022 19:09:00 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A68631FF23
        for <linux-man@vger.kernel.org>; Mon, 21 Mar 2022 15:57:17 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id p9so22620798wra.12
        for <linux-man@vger.kernel.org>; Mon, 21 Mar 2022 15:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=d4o8p3WwJuXZEmTV70jPegqFEo8a9aNxm5nUz4yg0GE=;
        b=K1zxSSIXH2vLJFFrBlStHU21KR/npFaF29cov26vYA0FhF4OS3TE/dq1iRwmmPeTvq
         hyiSHd81ljYdemYd8LT0rEmC+ahj2BC9daYmW+wivKf+9lnIYmqKhTWf7TE/ROalf4Cb
         70eOp/Otvbrgfze2aEPXih2kF31h0dySZCk1xVJAkP9rEA186JTIMbaPi6X4gyEusENO
         UZCJywAlyQewoADPPnccLWOA//QZHZdWQMp2vcaAsqJ69GYaAZK1zkuknILpPm6ZpYux
         WMPA9KkeMQKbWq1MkVgmSWVN+qjM3ZJSEybHxd0z99GGSi63zBLBeXvx/MCSQ6O2QgL9
         Z3QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=d4o8p3WwJuXZEmTV70jPegqFEo8a9aNxm5nUz4yg0GE=;
        b=xrviThQtMKxJMb86M0yPAvLR8y3DkqPJvQN2X+XJM/5M793UQUZ+EDYLC299fZjchO
         9E8C8lInsmVnP0R+pgr7qrPbh8EAZhypFwN8X+qz2XAJVmU+iKOrAJnbfye1HdqkTQLh
         +nR6vOuufzyUIeUsqW8aTYdcq1Fg2vxVD3yveq3/5Rs3Op2GYrRk9s/7dNBy7yP9RRRW
         7YmmqcGsNhSbQ57BZl/U6LKyHZ6el0IruPdxn+8RJJoOnG83wHKqDvBbK5pijBQ4dhSn
         VEspm4C8ExdPl2cUkBNrwmvergzJEbaGwyMRbSxeRpi5Izm7F1iHp9C+BCxo5dcgLOFU
         ZoWQ==
X-Gm-Message-State: AOAM532HP9fl2zIypAaXeO0+ZNmZtmUMnFBL0qmRIdTXm4XqffbCAJGG
        y7FQlu63MROMkCDg7zN072o=
X-Google-Smtp-Source: ABdhPJxMCt7Bih/7BSq7cACF2UJI2W8Hi/EoZFRSRQTIPD9CswxRdSgtWZzSI5UpdC+U3r7SzcAX9w==
X-Received: by 2002:a05:6000:1379:b0:203:ee50:45ad with SMTP id q25-20020a056000137900b00203ee5045admr17108967wrz.268.1647903357594;
        Mon, 21 Mar 2022 15:55:57 -0700 (PDT)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z5-20020a05600c0a0500b0037fa93193a8sm654096wmp.44.2022.03.21.15.55.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Mar 2022 15:55:56 -0700 (PDT)
Message-ID: <408859e3-dbf2-09a8-e404-210f4280d90b@gmail.com>
Date:   Mon, 21 Mar 2022 23:55:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: Man-pages Git repository
Content-Language: en-US
To:     Mike Frysinger <vapier@gentoo.org>
References: <A165C0C4-6879-49AB-8CF1-C1258C3F8773@glasgow.ac.uk>
 <2d3cff38-ba32-b382-c043-397af12d286b@gmail.com> <YjjquYSCEnlFr0PJ@vapier>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        John Marshall <John.W.Marshall@glasgow.ac.uk>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <YjjquYSCEnlFr0PJ@vapier>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

Hello Mike,

On 3/21/22 22:14, Mike Frysinger wrote:
> On 16 Mar 2022 18:27, Alejandro Colomar (man-pages) wrote:
>> On 3/16/22 14:14, John Marshall wrote:
>>> At https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/ it appears that no new commits have been pushed since early September 2021. However here in the linux-man mailing list archives, it appears that changes are continuing to be applied as usual.
>>>
>>> I didn't find anything in the mailing list archives discussing this or mentioning a change in repository location. Is there something I'm missing about where to find an up-to-date Git repository for the Linux man pages?
>>
>> I keep updating the repository on my own git server,
>> <http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/>.
>> That's where patches to the mailing list are being merged since half a
>> year ago.
>>
>> However, we haven't released any new versions since then.
>> There's only the git repository,
>> which you can use to get the freshest manual pages,
>> or prepare new patches against them.
>>
>> We (the maintainers) haven't had much time to prepare a release,
>> but the official (kernel.org) repository
>> will get updated some time in the future.
> 
> please keep the canonical git repo up-to-date.  it's what everyone is using,
> and it shouldn't be updated only when releases are pushed.


That's the idea.
But I don't have write access to kernel.org,
which means I can't push commits there, at all.
I didn't mean that we'll not push until release,
but rather that if someone wants the latest development pages
one can search my private repo,
but if someone only cares about the latest _release_
then kernel.org is the latest.
I also meant that since I don't have in mind releasing soon,
I also won't go through the process of getting a kernel.org account
with all the bureaucracy that it requires (signing gpg keys, ...),
which these days of avoiding physical meetings is even more cumbersome.

So, you can expect two things:

a) In a year or so, I've had time to polish the parts
    of the project I'm working on, and feel like releasing,
    and also, since a year has passed, the world gets better,
    we can all see each other, and I get a kernel account,
    with which I can push regularly to git.kernel.org.

b) Michael finds some time to push before (a) happens.
    He's the only maintainer with write access right now.




> no one is going
> to find your personal server, and if they did, i don't see why anyone would
> trust it as the canonical source.


I don't expect random people to trust random people (which includes me).
I just offer it as a possibility, not as a canonical source
(in fact, I'm not happy with it, since I don't want people complaining 
about "your git server broke"; it's my personal repo, not a canonical 
repo, and I may shut it down at any time; that should be clear, and I 
try to remind it every time too).
It's useful at this moment, for the reasons above, and that's why I 
offer it to people who ask.
Also, git(1) being decentralized means that canonical source is less of 
an actual thing, but yes, distributions, and people not working on 
significant patches to the man-pages, those can just rely on the 
git.kernel.org repo.


Regards,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
