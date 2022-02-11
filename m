Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0B634B3032
	for <lists+linux-man@lfdr.de>; Fri, 11 Feb 2022 23:14:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354018AbiBKWNM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Feb 2022 17:13:12 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:45288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354017AbiBKWNL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Feb 2022 17:13:11 -0500
Received: from srv23.r4in.tk (unknown [185.17.120.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D9B6D42
        for <linux-man@vger.kernel.org>; Fri, 11 Feb 2022 14:13:03 -0800 (PST)
Received: from [10.8.0.100] (helo=[192.168.72.154])
        by srv23.r4in.tk with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <hk@r4in.tk>)
        id 1nIeA1-0038NC-CH; Sat, 12 Feb 2022 01:13:01 +0300
Message-ID: <d455fb7a-0207-6a60-ac56-52349a8221e0@r4in.tk>
Date:   Sat, 12 Feb 2022 01:13:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: man pthread_join(3)
Content-Language: en-US
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <2b9e5c94-fc1a-6ba3-20e5-3bb5c6430476@r4in.tk>
 <485a7d6a-6cf6-32ab-ed89-73075abde040@gmail.com>
From:   hk <hk@r4in.tk>
In-Reply-To: <485a7d6a-6cf6-32ab-ed89-73075abde040@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authenticated-Id: hk@r4in.tk
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ah, now I understand, thank you very much. I'm not sure I can give advice on how
to describe such cases, but I believe it would be clearer if an indented list or
some other more explicit representation of "OR" is used.

On 2/11/22 01:29, Alejandro Colomar (man-pages) wrote:
> [CC += Branden]
> 
> Hello Aitch,
> 
> On 2/10/22 01:42, hk wrote:
>> Good day
>>
>> I'm not sure that is a bug or I'm missing something, but still.
>>
>> There is man-page for pthread_join() function and in its "ERRORS"
>> section one
>> error code - EINVAL - is mentioned twice with different causes, so I
>> have doubts
>> about how to handle such of an error.
>>
>> Here is a link https://man7.org/linux/man-pages/man3/pthread_join.3.html
>>
>> Could you correct that if it is a mistype? Or, may be add some kind of
>> explanation for that kind of situation.
> 
> It's just that there's more than one reason you could get that error.
> 
> Other Unix systems' manual pages also use this syntax[1][2].  At first
> it also seemed weird to me, I'll admit.
> 
> I don't know if some other syntax could be easier to read/understand...
> 
> Maybe something like:
> 
> 
> [
> EXXX   Reason for EXXX.
> 
> EYYY
> 
>         * One reason for EYYY.
> 
>         * Another reason for EYYY.
> ]
> 
> 
> 
> [1]:
> <https://www.freebsd.org/cgi/man.cgi?query=open&apropos=0&sektion=2&manpath=FreeBSD+13.0-RELEASE+and+Ports&arch=default&format=html#ERRORS>
> 
> [2]: <https://man.openbsd.org/open.2#ERRORS>
> 
> 
> Thanks,
> 
> Alex
> 
> 


-- 
with best regards,
Aitch Kay

GnuPG/DSA-ELG fingerprint:
C697 A07B DEE0 B000 2C3D 870D 9FBC 20C8 50ED 247F
