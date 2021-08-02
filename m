Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFA9E3DD66D
	for <lists+linux-man@lfdr.de>; Mon,  2 Aug 2021 15:07:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233718AbhHBNH2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Aug 2021 09:07:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233645AbhHBNH2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Aug 2021 09:07:28 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1B4BC06175F;
        Mon,  2 Aug 2021 06:07:17 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id p5so21438109wro.7;
        Mon, 02 Aug 2021 06:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NYcQMy/qifVRiMiSDikyJJrDjDDR52fe7Fa16GoTEnQ=;
        b=uogQNy/ncaTFt18nfNPBmExmyzX3ropBliOkmrlAi5+tyutGmGEtzT+ZPXcEDmvH6S
         uXov3oxzZqp5YzDzTJuo3G7g6nPeYtBpQFACYFPaQxzO35R+7ar5jRn5HcWf4f9/jvb1
         XYpNwoeDvl88xWcOnxbRKoKwQI0AnWx3JzSwiXsUHvkQ/iMzrYRDVpR1ledvXBIx1gpI
         1W5trqcXtGweV07QLvdzjaQrw8aub/P/NDVTXZ3GBRmI1WiN9nEvSPL0GIb+4nI04Wf3
         2BlWPC9UQcnQDUCuEspBTwlroLXbelOXDIAD1OC1LMcnipDoyayrv3tjOiv8ZPKSrjHf
         XEEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NYcQMy/qifVRiMiSDikyJJrDjDDR52fe7Fa16GoTEnQ=;
        b=H53ABV8heFK9dJm0MEiT4fy0Xy4XTiuxZ8MX+GbpZTNbW6Q+bBJT5G8pqCDfivX2KH
         lu0oBwsnMSRa884HKSr/kE1Mx2YazGSUZCHrBRbvRHEIwcWi0a2s5nUYMx4oQ0l7bhFf
         A3LZlvvPNUF1zg+yorSl3ZFGZRXgrMNVt4X4JA/1Sd6ppHxpIOXudxm626sh0M2TYxKp
         UQyG4m50rL4R3N5DTu9S0lvxnaR7KNF6PpjSLBOWfJixeqhaNB4sHd0oDgV1+XSz31Mc
         S88ne7DadM3zVBpAFiwzklo1HBNiJ4IinHawGjCYoFrJIRm8kQG2HgTlaCDCWYIz8ZOg
         sRKQ==
X-Gm-Message-State: AOAM530Bc7lgLYgRiRWjDRWnDKww48rVpn4Q+pRnvUjgIluwKdg2BPQ9
        MuGic/n8ZInz8uD7b/cxJ0HXaqmGAm4=
X-Google-Smtp-Source: ABdhPJy6QdKrnMgOf9Ja2/DDd4GkYHWkhMhGQuq1/g1jFTf0aYdB8hly0hPoCjqIkmGCGJG3df0goA==
X-Received: by 2002:a5d:44c7:: with SMTP id z7mr18083465wrr.286.1627909636606;
        Mon, 02 Aug 2021 06:07:16 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id c190sm2536698wma.21.2021.08.02.06.07.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 06:07:16 -0700 (PDT)
Subject: Re: Document the types "struct termios" and "struct termios2"
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     Glibc <libc-alpha@sourceware.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-serial@vger.kernel.org, linux-man <linux-man@vger.kernel.org>
References: <ef6a352d-4926-9cdc-9894-e387866a00c4@gmail.com>
 <20210802125034.gubtf24tsm7lkh3k@pali>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5e9e1f1a-1e08-59f5-6579-a02c0738b9a4@gmail.com>
Date:   Mon, 2 Aug 2021 15:07:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210802125034.gubtf24tsm7lkh3k@pali>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

+= linux-man@

:)

On 8/2/21 2:50 PM, Pali Rohár wrote:
> + linux-serial
> 
> On Monday 02 August 2021 14:38:43 Alejandro Colomar (man-pages) wrote:
>> Hi,
>>
>>  From a few patches of Pali and their subsequent discussions,
> 
> For others, link to patch with code example:
> https://lore.kernel.org/linux-man/20210801135146.14849-1-pali@kernel.org/
> 
> And links to other discussions:
> https://lore.kernel.org/linux-man/20210725225506.7404-1-pali@kernel.org/t/#u
> https://lore.kernel.org/linux-man/20210730105353.10424-1-pali@kernel.org/t/#u
> https://lore.kernel.org/linux-man/20210730153044.23673-1-pali@kernel.org/t/#u
> 
>> it was clear
>> that those types need to be documented (the most appropriate place being
>> system_data_types(7), with link pages termios-struct(3) and
>> termios2-struct(3)).
>>
>> The most important part (the one we had problems with) being which headers
>> should be included for each type (and for each version of the type
>> (kernel/glibc)).  That includes the recommended header, and other headers
>> that _shall_ also provide the type.
>>
>> Is there someone that knows those types enough to write such documentation
>> and wants to do it? :)
>>
>> Thanks,
>>
>> Alex
>>
>> -- 
>> Alejandro Colomar
>> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
>> http://www.alejandro-colomar.es/


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
