Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAA2B27B028
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 16:43:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726477AbgI1OnA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 10:43:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726466AbgI1OnA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 10:43:00 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8043DC061755;
        Mon, 28 Sep 2020 07:43:00 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id z4so1656500wrr.4;
        Mon, 28 Sep 2020 07:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jnKA/vDlfSusbSVLCuRZcuP/laLMcatuMX458O2dA9Q=;
        b=ijYOVQV/lFzWrxeswWJAjkB9h7d6tjQKJ5rx1Csd1wnaSWu7zndbWeJBSJekxZNmtJ
         o9qvutdYtlpqrSsS1+giWB62uv9VT5mI6PcciBG4yQZwiymN0hg4wbCx2ckDVqx5I+1S
         j7m8X9UiDBilqhz/oAaxFSEwyrmeBQEm82VeKaqf06w1BbIz7U+27AjZiH4YsleE6kgI
         Or5LAwpXvs0/mcjgWKoAmXUi54a9xiUMRurmuHNzTSGWz4WS/u+TBon3fs3efx7s8zgY
         e97kCVC/nYSLAIKID9HvoBEOpK4Hx4AA0HqcZhl9rneao3FFpOdKVWhBRFn9eFfWV+G/
         62Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jnKA/vDlfSusbSVLCuRZcuP/laLMcatuMX458O2dA9Q=;
        b=aW8tocpWp+Lsmp+BUiAj6SQBMCPm2z4+g6/gUmLNSboXFXa/9iD8fm9F+l6/eD926V
         QtazNTiB4/oboB4lHzZK2MnN7FwmEIWhelGKDzTDk1kuzvUSGvPdZUXL4LCmWgukrKGJ
         9sAwBs/beP4Smlcw0Ihgcy5q+zKlthGT0O1ZNlayJwQ4x97f6lnFuYDfKdD8sX101rnm
         qtTjSmLO8hC7QJEa92PuNRCK34b1DX6aTsQ51Vik/qPdSWqWUYm75D5FiLp04XGBV4fI
         2KZ4FrS94azs40vgxm/AXm9RxG1NG0s/N8d6ji3o1L0psQ00J0nIk4RBL0JTH9b42uCx
         coiQ==
X-Gm-Message-State: AOAM533D3juxVxJ9kyIqNbKwuvbDlDLIgsTj/vLcTGieA6wIhSkjhGju
        ELiN9fzSVRaDfrTJ6pXwnFM=
X-Google-Smtp-Source: ABdhPJzoFdxUIZLqB95lvoeiktJfPFGr4ZAynAekTVztY9pzw6JhgS5GkJCMcTt72OCQ9JL85oK/hw==
X-Received: by 2002:adf:e312:: with SMTP id b18mr2248675wrj.372.1601304179111;
        Mon, 28 Sep 2020 07:42:59 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id q4sm1676352wru.65.2020.09.28.07.42.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 07:42:58 -0700 (PDT)
Subject: Re: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
To:     David Laight <David.Laight@ACULAB.COM>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
References: <20200927054657.ea2zaiesle6hwjit@localhost.localdomain>
 <562859fd-6740-1068-d9d0-9562140cec33@gmail.com>
 <20200928125227.yr2ugl23ib6mid76@localhost.localdomain>
 <5d4f71a6-8a5e-c683-fcbd-b5453435d736@gmail.com>
 <ff3c585bcbb54393aeb91b974c50d1bb@AcuMS.aculab.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <cc00475c-47af-f9d9-fdb5-5a88d520e52a@gmail.com>
Date:   Mon, 28 Sep 2020 16:42:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ff3c585bcbb54393aeb91b974c50d1bb@AcuMS.aculab.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-28 15:48, G. Branden Robinson wrote:
 >> There are a few cases:  if I want to find declarations of type int,
 >> I'd start with:
 >>
 >> $ grep -rn "int\s"
 >>
 >> or something like that.  "int\~" would break the ability to do that.
 >
 > That would, among more obscure cases, miss the style of function
 > declaration used by people who get along without ctags:
 >
 > static int
 > my_little_function(int foo, char bar)
 >
 > So I would tend to use grep 'int\>' to match a word boundary instead of
 > a whitespace character.
 >
 > Regards,
 > Branden
 >

On 2020-09-28 16:31, David Laight wrote:
> From: Alejandro Colomar
>> Sent: 28 September 2020 14:33
> ...
>> There are a few cases:  if I want to find declarations of type int,
>> I'd start with:
>>
>> $ grep -rn "int\s"
>>
>> or something like that.  "int\~" would break the ability to do that.
> 
> The 'word markers' \< and \> are your friends; look for "\<int\>".
> 
> 	David
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
> 


Thank you both, I didn't know about those.

Regards,

Alex
