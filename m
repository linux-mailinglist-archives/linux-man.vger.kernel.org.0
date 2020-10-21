Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E70A294792
	for <lists+linux-man@lfdr.de>; Wed, 21 Oct 2020 06:54:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2440276AbgJUEx7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 21 Oct 2020 00:53:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2440234AbgJUEx7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 21 Oct 2020 00:53:59 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5983C0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 21:53:58 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id n18so1350720wrs.5
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 21:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YFzINt05+/orAjFWJpyxIxb62/tLWsZ1HoBpWIo2CXY=;
        b=jQHtE3+vvUydDprkkFyqsG2FAKRR2l09UKyl75U8F6knQSBic3UlFe37ERCvxAtl9u
         pr+z408xPWnbYXho9ICOetcYAwe0IaOTeExlJTF7vFCimDk4aze32On+fDYLur4Uqisr
         /JuB+AKqY8iEOnG1SgZNu7Q0o2yIWewM6Vrjes1zdcjFREXguJDv6cNjhWqrD1VtEC5i
         Li0AOfcuE1I0ZAa1V4oh1BW8/ETPnTghw6iQx1iGPYg5vJKSbmx6uznUSQt4FMi2p8yH
         GrEaFWYZ/1Vp/X+bFkuiuKenqOxJpgWz2fRlXUjJ0qpJ5zNZI98NMG76Rv9iDUs1X6Yv
         gsQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YFzINt05+/orAjFWJpyxIxb62/tLWsZ1HoBpWIo2CXY=;
        b=L7Eosj/haVy1/uO9FZ+mIaR1jeYiXRtEnjccDVbtxSLkPcDt8xmJ92Y/kIDrP2C97e
         DH/gR2zU6vrIXZHSMM7c1+aIu/zVUMTFcMCPzWx9QeSiZEoEkSEdMaHZqb6R4q7AUrx0
         RfuCXfYZikNhI+NFzFbblxJD1slz4X5ty0Y6UC9thf04di4f9NrRSmh3V0mt3KNSd0K7
         CGT6Qb+u/9TwqPblBhxTp666PJDpdJdxAru3UNRNE8kKMDa9i81O7jluQ+av4CBYQg5O
         Z9h44yzTMvKfoBJUURvXWTussh6Zf2TjfHRlsVUfd2fDjH1TtSLMKH7RF8jthEK8cEJc
         MGVw==
X-Gm-Message-State: AOAM531HayeIlSp5fCmkQk/sE+NO8NgBa801paMGaZqkTCBJoSPr+BYB
        zCKlKXrTWpKQLsJU0UYnZpE=
X-Google-Smtp-Source: ABdhPJxdbmD6PNiOm68RSO/rvgIUIeNLhL2/+roWX8tpOJ0RbqCwt1qpZyC+Bqo+d0ER2GulQ3mYuw==
X-Received: by 2002:adf:f0c2:: with SMTP id x2mr2134019wro.63.1603256037657;
        Tue, 20 Oct 2020 21:53:57 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:597:6d00:9446:7902:22d6:6f78? ([2a01:e0a:597:6d00:9446:7902:22d6:6f78])
        by smtp.gmail.com with ESMTPSA id c21sm1193402wme.36.2020.10.20.21.53.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 21:53:57 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Subject: Re: queue.3 overhaul
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Hans Petter Selasky <hps@selasky.org>
References: <33af3ca2-d6ea-5f75-6ad2-e2f43eefe4fa@gmail.com>
 <CAKgNAkhDZK9YyvDNr+s=bT9Y6BGCtC7mrGuYa+bdrzQnhGSjhw@mail.gmail.com>
 <907cf2f7-70de-42c3-a738-d7e6a14327de@gmail.com>
 <e8cc9a94-d017-7f2b-cf5c-827cdcd6d2a0@selasky.org>
 <213d9db0-ebf5-ddcc-c796-2478143db9c9@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d9b8f226-2972-d238-ff7a-0298104e07e9@gmail.com>
Date:   Wed, 21 Oct 2020 06:53:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <213d9db0-ebf5-ddcc-c796-2478143db9c9@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/20/20 1:42 PM, Alejandro Colomar wrote:
> 
> 
> On 2020-10-20 13:22, Hans Petter Selasky wrote:
>> Hi,
>>
>> You may want to import new queue macros from FreeBSD, especially for C++ 
>> use.
>>
>> https://svnweb.freebsd.org/base/head/sys/sys/queue.h
>>
>> https://svnweb.freebsd.org/base?view=revision&revision=284915
>>
>> --HPS
> 
> 
> Hi Hans,
> 
> Thanks for the suggestion.
> 
> I'll add the documentation to the manual pages commented out
> (as with other queue.h macros that aren't present on glibc),
> and if glibc adds them in the future,
> it can then be uncommented.

Thanks for that, Alex. (And thanks for the heads-up, Hans.)

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
