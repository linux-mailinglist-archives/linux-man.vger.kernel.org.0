Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36C37680129
	for <lists+linux-man@lfdr.de>; Sun, 29 Jan 2023 20:27:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229835AbjA2T1m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Jan 2023 14:27:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229760AbjA2T1l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Jan 2023 14:27:41 -0500
X-Greylist: delayed 442 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 29 Jan 2023 11:27:38 PST
Received: from esgaroth.petrovitsch.at (unknown [IPv6:2a01:4f8:120:527b:6876:2a4f:a044:62ad])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B44B08A47
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 11:27:38 -0800 (PST)
Received: from [172.16.0.14] (84-115-216-226.cable.dynamic.surfer.at [84.115.216.226])
        (authenticated bits=0)
        by esgaroth.petrovitsch.at (8.17.1/8.17.1) with ESMTPSA id 30TJKCoF933769
        (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT);
        Sun, 29 Jan 2023 20:20:13 +0100
DKIM-Filter: OpenDKIM Filter v2.11.0 esgaroth.petrovitsch.at 30TJKCoF933769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=petrovitsch.priv.at;
        s=default; t=1675020013;
        bh=KYjbb9EQNY8o4ExLvBbK23UVlI32gRXMlCuXPY/Ysgg=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=YYQI2InXOwG9Gi9k5WqvBpLve2C+NC0L0C18A/tJ/n5JdNUHiJWoV8jPZNp3y//ea
         lUQ9NrkjKshugacFDx7si11Ih3fHbMkyNNDCU2mK/A+WLKs4zu3PDty2fYZIlF8QsH
         WT6XyUisLNZnxsK3BJ3IAYPmHQY3P1JMh8eKdE6g=
X-Info-sendmail: I was here
Message-ID: <a2a3eeba-8292-9759-f29c-205a49f2a9c9@petrovitsch.priv.at>
Date:   Sun, 29 Jan 2023 20:20:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page charsets.7
Content-Language: en-US, de-AT, en-IE
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193134.GA29363@Debian-50-lenny-64-minimal>
 <CACKs7VAbs=fuqfEYhXALq3_PfoVbvVYUCc_D-GK5ObZJUPNwSw@mail.gmail.com>
 <534b83d9-0936-4a45-7d1e-159bfb07f492@gmail.com>
From:   Bernd Petrovitsch <bernd@petrovitsch.priv.at>
BIMI-Selector: v=BIMI1; s=default
In-Reply-To: <534b83d9-0936-4a45-7d1e-159bfb07f492@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-DCC--Metrics: esgaroth.petrovitsch.priv.at 1102; Body=5 Fuz1=5 Fuz2=5
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi all!

On 29/01/2023 19:35, Alejandro Colomar wrote:
[...]
> On 1/29/23 17:45, Stefan Puiu wrote:
[...]
>> On Sun, Jan 22, 2023 at 9:39 PM Helge Kreutzmann <debian@helgefjell.de> wrote:
[...]
>>> "Latin-1 covers many West European languages such as Albanian, Basque,"
>>> "Danish, English, Faroese, Galician, Icelandic, Irish, Italian, Norwegian,"
>>> "Portuguese, Spanish, and Swedish.  The lack of the ligatures Dutch Ĳ/ĳ,"
>>> "French œ, and old-style „German“ quotation marks was considered tolerable."
>>
>> A bit weird to include Albanian in West European languages, isn't it?
>> Maybe the text could be reworked to:
>>
>>    "many West European languages such as Basque, Danish, [... other
>> languages ...] and also Albanian."
> 
> I'd rather remove the "West" adjective from Europe.  It's simpler.  Does it sound reasonable to you?

And it's way more accurate:
- Albanian is Balkan.
- Icelandic, Norwegian and Swedish is Scandinavian.
- Italy is (usually) southern Europe.
- Faroese is propably also Scandinavian.
- Where is actually Galician spoken? In the north-west of Spain?

Kind regards,
	Bernd

PS: Keen to learn something.
-- 
Bernd Petrovitsch                  Email : bernd@petrovitsch.priv.at
      There is NO CLOUD, just other people's computers. - FSFE
                      LUGA : http://www.luga.at

