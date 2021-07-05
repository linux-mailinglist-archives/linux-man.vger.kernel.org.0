Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CE713BC300
	for <lists+linux-man@lfdr.de>; Mon,  5 Jul 2021 21:07:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229963AbhGETK2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jul 2021 15:10:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229743AbhGETK1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Jul 2021 15:10:27 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 520A8C061574
        for <linux-man@vger.kernel.org>; Mon,  5 Jul 2021 12:07:50 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id i8so10330343wrp.12
        for <linux-man@vger.kernel.org>; Mon, 05 Jul 2021 12:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=ISIchPNl+YAz1RNYCTqTtySqPfrYk7XnL0DhUdeZWXI=;
        b=bogo1XSP9g5OnYjES99Q/VzM5Xz25uAaOuhtsjBIlWIIQvMNJVJyNkWDbb3tbZcV6r
         NDcoXsYerYvw9BS7yJsX3RepO79VWxrepWxKez6velKTTHBjK5OsQOvcwKubtVMVk6JP
         1U2rKTgyQfx5s5fVYWDzNANGRt3lcij5GJg0Ig0b9+P8BBzC2g//TR7NsxpOayTSvUdu
         qIv/IXeszubVyjfaeZ8gvX5FL76EMzmvWHCisAQSgElfml2ISwb9r3Mrhci/LcT3fMXy
         fEW9wx5nAUO+g8JE8kKW7b17q6+zBq1w9UZH2iZL3lUAck9C2+zjBHLLWjyZ8ss77PZ6
         js8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ISIchPNl+YAz1RNYCTqTtySqPfrYk7XnL0DhUdeZWXI=;
        b=H88NEpXaZfv6V07uclUff5hIBawNyqy4KsDKV+C7fFCoYIYT23zCDVuM/zDHOlE7gj
         MneOAPssS4yXrG7HevWTXzY6NaQX1SZ05q8dQ9HQZLafUQHqlfqtGl4fOApytMfQNTDg
         wbs1exEGbSHKdMMjM6MwSXeURCaP3WVoyHgu/AmZt4Puj4aY+5WW85cR91WQGT7Q8F01
         xX3zV83fnA22M/Jx2UhcTrc5gkKffwxI6He6AeZbRsANCQwOGCWah4BFb8VjTD3bdFkk
         uWvzLM8y7xQuvrn0QU1cV8Z5TFlf1XBMblBJ0RufoErxQa0G3XB4dm59xOfNow3ypNL0
         DIhg==
X-Gm-Message-State: AOAM532PgXBG8zKV2vbQp3gmxNRK0Pnw6hScrr4i7HALfZLe0r0pEaGP
        qMQxMm5gKMxp0zqrPr8Ax+c=
X-Google-Smtp-Source: ABdhPJxp5XPK7+x6Yfp7BCom+RH96BX+6kkvM+akEB9WY3Tbh5Hup4Fn1Hcmk5vdEJ5qwR1Hq9zYrQ==
X-Received: by 2002:adf:ef87:: with SMTP id d7mr17333835wro.204.1625512068968;
        Mon, 05 Jul 2021 12:07:48 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id e15sm14202943wrp.29.2021.07.05.12.07.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jul 2021 12:07:48 -0700 (PDT)
Subject: Re: new:mbrtoc32.3: convert from to c32
To:     Bruno Haible <bruno@clisp.org>, libc-alpha@sourceware.org,
        linux-man@vger.kernel.org, Peter Radisson <Radisson97@gmx.de>
References: <8295983.X7ISPF4pOe@omega>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <8f538e31-a730-0fcb-1d6b-c28e9fc164dd@gmail.com>
Date:   Mon, 5 Jul 2021 21:07:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <8295983.X7ISPF4pOe@omega>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Bruno,

On 7/4/21 12:26 PM, Bruno Haible wrote:
>> mbrtoc32, c32rtomb \- convert between multibyte sequence and 32-bit wide character
> 
> I would suggest two separate man pages for these functions.
> Rationale:
> It is rare that some code uses mbrtoc32 and c32rtomb in the same function.
> (Basically, functions that do input call mbrtoc32, and functions that do
> output call c32rtomb.) And the description of mbrtoc32 is a bit complex.

Okay.  Indeed, the *wc* functions are documented separately.

> 
>> Are there any important differences compared to the already-documented
>> and C99-compliant mbrtowc(3) and wcrtomb(3)?  I mean, apart from the
>> types of the parameters. >
> No for c32rtomb, but yes for mbrtoc32: mbrtowc has the special return
> values (size_t)-1 and (size_t)-2, whereas mbrtoc32 also has the special
> return value (size_t)-3. Although, on glibc currently this special
> return value (size_t)-3 cannot occur. But IMO the man page should
> mention it nevertheless, otherwise people write code that is not
> future-proof.

Thanks for those details!

Regards,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
