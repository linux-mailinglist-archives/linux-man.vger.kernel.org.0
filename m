Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 088672EBDE0
	for <lists+linux-man@lfdr.de>; Wed,  6 Jan 2021 13:52:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726329AbhAFMwf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Jan 2021 07:52:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726245AbhAFMwf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Jan 2021 07:52:35 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8DDAC061357
        for <linux-man@vger.kernel.org>; Wed,  6 Jan 2021 04:51:54 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id lt17so4919311ejb.3
        for <linux-man@vger.kernel.org>; Wed, 06 Jan 2021 04:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4qkVi50SP1jbLuil2BbXjzi7SIolqPdZ7jC6PkuDaUs=;
        b=AZ7L0411ZId5LKZaPdP3gN0cCQUoxzjoGGXeVkwKT2uBG9M8m98NFh1AW2MTLAVQRg
         Toj0gSzlCHvcqTsvEW0mq7pL5EFOBCwWJQShAghcI/Mb2C7GVTumnJMUCtssPrlR31rq
         ZuuN4XKsJ16cAWMQ1Fe91ObDzVBE1z9WwgJQVr4gGxxJeamvpgY/eial1vFuHtNNYnC+
         HtitneaMz4COlvt3OU0FFizpXgkgtBhMiaIh7esOEFST0JMXoBceSlJEaoba9IGSmhwt
         LExY79y9Swfc+vwBuNXJXSXKEKQ462/+IscEVFnEqFX/ZKg//FJgnohFBGgOdsjnnQmD
         iOdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4qkVi50SP1jbLuil2BbXjzi7SIolqPdZ7jC6PkuDaUs=;
        b=p4tkPhC8SMUlWTkKJzdLzqO8ywZy7cI8n/vzy7442OCSA7OJP0aHq/464tpAoWj/lp
         B8ByM8xAn9Bo0qOiGRFf06C0iVPXX9U1E9l8KcOZuwHahzEoyEfz/RRl1vI2Z9bKOlo/
         /8lK3+HFrXHnFXs/l3BTBfXpm+CJjgPtKe3B+sJbYY+8dV9v40+Iutb0z1/dNboNCnbw
         dd6jRoEbuf7Xk8WObuyj7528VImUlZ0rOAKZRCLxD/Y+SKoIxmfluYJC/yW/ngboeg1x
         0LA/lFiONx8nbOIbKqvaqe1DXxVj+Vl5Na3TTy7fiKziFPP8SxgdhjRG1FH8V39AfIRV
         qOjw==
X-Gm-Message-State: AOAM531hCR1ctaSLX0Jz9mWOS5eAl0CJuo1CYUskhlV0Rj4/XVKWIuoa
        b+jWb1oaPghefMpkxVqIo9YouYq9n48=
X-Google-Smtp-Source: ABdhPJyvheQK0KGr3oJaVYdkHPdNjPElYx7IiGMsXbMeOUEAgwV7WQIoc/6OmgORJQorvVfEL2xvGQ==
X-Received: by 2002:a17:906:a192:: with SMTP id s18mr2600275ejy.249.1609937513376;
        Wed, 06 Jan 2021 04:51:53 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id bo20sm1436578edb.1.2021.01.06.04.51.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 04:51:52 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: Escaping whitespace
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <307e6584-f163-4768-ffe9-b6b4f439e4a0@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5058547d-c021-0aa9-4698-667c4917a12b@gmail.com>
Date:   Wed, 6 Jan 2021 13:51:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <307e6584-f163-4768-ffe9-b6b4f439e4a0@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/5/21 10:56 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> While having a look at your latest commits,
> I saw that there's a bit of inconsistency in escaping whitespace
> (existing previous to the commit):
> 
> Sometimes it's [!\ (], and sometimes it's [! (].

Thanks for prodding me about this.

Yes, it's inconsistent. And given the use of .nf/.fi 
around the text blocks, escaping the spaces serves no
purpose. So I made a more radical fix; see commit
5c10d2c5e299011e34adb568737acfc8920fc27c

Thanks,

Michael
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
