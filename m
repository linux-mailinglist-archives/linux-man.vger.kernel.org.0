Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 446591F35E3
	for <lists+linux-man@lfdr.de>; Tue,  9 Jun 2020 10:09:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728203AbgFIIIz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Jun 2020 04:08:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728200AbgFIIIx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Jun 2020 04:08:53 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FE00C05BD43
        for <linux-man@vger.kernel.org>; Tue,  9 Jun 2020 01:08:53 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id h5so20184914wrc.7
        for <linux-man@vger.kernel.org>; Tue, 09 Jun 2020 01:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zrmSkGVswOMgw7270s/YOMtJOF73Eocf3U5aXhki1UE=;
        b=agXJuXDFQVPcVyp/ZOt3bhXdqHwaSVd93Wt6Yu7Z+FgyE47U/NSMK57O0/3/CqVeiK
         pdJhFmwkpzMu68BzK/jwb00Gvysaj6xJjedIRpK3Hc0hgDiiRc7qDK93rLrrYF83DVQ+
         bxR5ojXzSlgUYjPjr1r6d1p0e6JUcLIbFCgGqII5ZfZdvU29ydhpxhEYIvolOh/O0aTw
         7n9O7zFXv7tb0noi0OHr68o6R3fHJkSEYaHGWLwShFK25fJkGKi646M5lpiYoQIj/03+
         3Wf96v7gvibabahFi9tS76aXDcU5mCn6/XLQVoKuAxvm0OP8yb7Q1oCqRuMU7cIN5V7g
         wpFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zrmSkGVswOMgw7270s/YOMtJOF73Eocf3U5aXhki1UE=;
        b=L0CowZyyb3KGcDk6xj4x8fiJZUuCZCnwquZlRsNMUepsg30wCAa5aBCaNEbkpLeOGu
         +h+TS/eWOjyLA6OrMMWNP/A6Xh1qlDfoU/jXGG8vWFMzpc9LtaHbzArQbfE7nuCQZWdX
         WPNq18KFrHm/qH9BQcrP2+6FrPyvGQbst55kIO828g28o/MR5ULpQoQzhFjkjWD/8q7/
         uE/+KOA3dsSTR6X0fmMEe+sbecjn1gJL11moAcznmCqfw5Fm0mRxPx96IkuMMh3dmXQF
         xrJByDOipImupb6dsGgA+KgYzB/XGIDMZwyr0rpo8rtdgDLgDwV5zghFdX0roDMgHRkY
         6enQ==
X-Gm-Message-State: AOAM533L3saEvJhM8zHE48Dc13GStnFQneT6mX7UZdrgMj0HBJaipvbB
        mhXZrv8+C2Vp31m8kn2XH6oDFqlx5aw=
X-Google-Smtp-Source: ABdhPJwY9V3+R2ZO4lhp+VcqIVxYcPS1dVnzNbh0gdEst7qCbOadN/lgyHLMniJUpcniTWmR0Qb1vQ==
X-Received: by 2002:adf:fd4f:: with SMTP id h15mr2955466wrs.397.1591690131664;
        Tue, 09 Jun 2020 01:08:51 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id f11sm2400335wrm.13.2020.06.09.01.08.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2020 01:08:50 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: user_namespaces(7): obsolete comment about system time
To:     =?UTF-8?Q?L=c3=a9o_Stefanesco?= <leo.lveb@gmail.com>
References: <CAFy=zAx1bJXs=ShCTfUVAvbWxuAAO5xjU=2J9EVfgwKi=8om1g@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e0103aad-499e-94c3-e90c-88e4cc09099a@gmail.com>
Date:   Tue, 9 Jun 2020 10:08:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAFy=zAx1bJXs=ShCTfUVAvbWxuAAO5xjU=2J9EVfgwKi=8om1g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Léo

On 5/31/20 5:26 PM, Léo Stefanesco wrote:
> Hi,
> 
> In the man7.org version of the man page for user_namespaces(7), it reads:
> 
>    there are many privileged operations that affect
>    resources that are not associated with any namespace type,
>    for example, changing the system time
>    (governed by CAP_SYS_TIME)
> 
> which is not consistent with time_namespaces(7).

In fact, strictly peaking the text still is correct, even after
the arrival of time namespaces.

Time namespaces virtualize only the boot-time and monotonic clocks,
not the "real time" (i.e., calendar time), which is the time
referred in the passage you quote.

That said, the text is perhaps now a little misleading, and
a little clarification would help. I changed the text to:

    there are many privileged operations that affect
    resources are not associated with any namespace type,
    for example, changing the system **(i.e., calendar)** time 
    (governed by CAP_SYS_TIME)

Thanks for your report!

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
