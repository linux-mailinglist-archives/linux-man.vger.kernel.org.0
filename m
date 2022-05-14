Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65EC352727D
	for <lists+linux-man@lfdr.de>; Sat, 14 May 2022 17:12:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231703AbiENPMv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 May 2022 11:12:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229606AbiENPMu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 May 2022 11:12:50 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21E3126138
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 08:12:46 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id n6-20020a05600c3b8600b0039492b44ce7so6217045wms.5
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 08:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=TpQwvwfQRS92Juz/SnREaW9rJaN5VML7BXfGQ624mx4=;
        b=G9C5R1aNNnoNJ/sm+W/hsNTQvgofl1YaJD+6jrCBYUfVm9e1mUoMCMt05Zd7NrKdGh
         Q14wDP7Bw65a6F8sP/7xb8Dpm+9PKafxQm6rFiJOPAX0Yu9/mWUeGEia4Osuu2+upM/9
         pM1OBHlWtYyZ/Zei4PLCd7UmniHAWXNO3t3jwAwvfA0Sx8woSA1RXCT2xlA7awoBDkZ2
         ffVAvGH0h+AsQM67ReoZRUwPlGu8ikVUe1Boqoi+yJsip24IjCJuwnIDgTf0dMjoSZlv
         Qm9DWFlU2umIZ3NWIpUTC8BaNmLWFLSkMqC7QKbwQ79uQ/eFVexfeNGRLheylRxaN345
         bGGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=TpQwvwfQRS92Juz/SnREaW9rJaN5VML7BXfGQ624mx4=;
        b=SyxQEMOA8xTsyujy6pFy7kkHN7qbvfATpdMhKJIs5Qwwpk7NpVcngt8fTdnrr3GH3D
         4FJz5YhH4FxM+kQBGjy73UqVjux65JY2l5TIniyPRTMnelsERNEUwoMoHJAIdhBNp3aB
         Wqw5qdQtM7/arQPBavFFG9UlcMBkxJTJHMG2FlcncvcPWLlKvPbnzJ77H2Fsc/YpGRG1
         ZNPpG+BulvI0YxOWcMtS6mNX+xDWsm0JfPdkY52z6pQIT0seyOTOyT6XVutQRgPK1naP
         ucrU4cBClW6e2hMCdHPAC+VQO/t9G3CKl/FXpA4ZeEPj86FKzt2xdYdkaGdiYcGTJ+iC
         +smw==
X-Gm-Message-State: AOAM530+SXGAd1ybYOy/jNCpEwBhjshWGQJaiYeezbv6qPrxkra4Z09u
        EZhRG9D+Ushm6QI0+/WQTpoanYYb7jA=
X-Google-Smtp-Source: ABdhPJzFtz1bVVzTMpfAAXCeomYTBAcqLA/cJo69PL9NbYX5H2yG035SP8KvuYx223sO5cMSgxDkoA==
X-Received: by 2002:a1c:f413:0:b0:37b:d1de:5762 with SMTP id z19-20020a1cf413000000b0037bd1de5762mr9381656wma.108.1652541164745;
        Sat, 14 May 2022 08:12:44 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y15-20020a05600c364f00b003945237fea1sm5499623wmq.0.2022.05.14.08.12.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 May 2022 08:12:44 -0700 (PDT)
Message-ID: <4150b49f-cb87-d065-3159-da7c67a5e9b2@gmail.com>
Date:   Sat, 14 May 2022 17:12:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [Bug 215971] dd(1p) manpage contains empty ASCII to EBDIC tables
Content-Language: en-US
To:     bugzilla-daemon@kernel.org
References: <bug-215971-216477@https.bugzilla.kernel.org/>
 <bug-215971-216477-6uQkdMd68z@https.bugzilla.kernel.org/>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <bug-215971-216477-6uQkdMd68z@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ben

On 5/14/22 17:04, bugzilla-daemon@kernel.org wrote:
> Hi Alex,
> 
> I was under the impression that the maintainer of man-pages-posix had access to
> the roff(7) sources:
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/tree/README,
> but perhaps I misunderstood this. Apparently the sources can be obtained by
> contacting The Open Group?
> 

I guess maybe Michael Kerrisk has the sources; I don't.
<https://www.kernel.org/doc/man-pages/maintaining.html>

And every time I've tried to set up an accout in the open group website, 
I've found it a nightmare of redirections, logins, and accounts, so I 
gave up trying.

Sorry :/

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
