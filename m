Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67638270163
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 17:53:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726245AbgIRPxS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 11:53:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726168AbgIRPxS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 11:53:18 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2517DC0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 08:53:18 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e17so5804075wme.0
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 08:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yWA2ixFnTg9dHa5+T/ofVX1NFrKaj+INxnMReAT2ERs=;
        b=b74WrsSeO8Afau5EB6CQK5zz3QZSei8RuFTS5E9aFDb+EO+aeSG18zx4gwGQOXDchu
         vTUo/aqUrdUb555a2muoNi1YkmHtfz+VsRgsi7HZIT8lX2q9RLdbnUpp39D8H2pa3XIz
         /Cgl1izFn/L0VoUi4DX/6iNjxiXeOXwG0f4R5ZiLDYXD8lYz6dpNbobUm6ln+Ra13v7Y
         IMfg6ZICGhCWyc4U5T+0+MhPrz9oNgVGs9aYpOcCoJ697yuU7UhBhW2DWjeRPn3hc7mU
         iY6v7RlyKLIx7mjYVHjtOvZ3uRydfOyI+t096x9giKH90RyP/VZdDLPA4hleyWgpsBdP
         TYxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yWA2ixFnTg9dHa5+T/ofVX1NFrKaj+INxnMReAT2ERs=;
        b=egP9qoaOkKrqLSLUKIPEfAoRBK3xm82/TRCV0Ji1PngTM5cx8CYCoECu0eJ4e8WlOo
         5J6n8qKqb3Qt4zh7hkLg5B1tIhEyDcBH3AIaXreHbma1z+XDIKGY16vyOPh0PkLzV968
         sw8ncjtoFU4YqEXrXdp8JmD8U/V00JaPxd2ImGyPePkcVrI1QySpwJ2z30h7R8Dl/xa5
         EJD+HVdHeWVqqGC4TsbZtuvGVJiqsgHMb4guLoyNd1Pt5yZVucWC4WL3CM43S3LdOvkj
         ozVO6hXR3+mtQR9hUY8yCWYjUhZ/L++Mtpj/RQSX7ouZNBiRWhk5E2LzuzFinfGZSEcD
         oU+Q==
X-Gm-Message-State: AOAM531NJo1TizpJY1YVVDOgpihlxqLVqg5EQMDYfXcaF0a5kga3KGKT
        ps7iZc0KyQPh2S16y/cD/P5QWBTNgADkxg==
X-Google-Smtp-Source: ABdhPJyp6o/ISuPiGRDk6OYPesdyw9C1Z00pts9L29vo/U+vtJfEq7JKIuZ7lXtCpYTqBw6gx9d3gA==
X-Received: by 2002:a05:600c:ce:: with SMTP id u14mr16891065wmm.137.1600444396578;
        Fri, 18 Sep 2020 08:53:16 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id d5sm6229863wrb.28.2020.09.18.08.53.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 08:53:15 -0700 (PDT)
Subject: Re: [PATCH 1/2] system_data_types.7: Document size_t
To:     Florian Weimer <fweimer@redhat.com>,
        Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
 <20200918112755.21428-2-colomar.6.4.3@gmail.com>
 <87tuvv5f24.fsf@oldenburg2.str.redhat.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <3d88ecab-1c36-9081-4195-4e1fd054fadf@gmail.com>
Date:   Fri, 18 Sep 2020 17:53:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <87tuvv5f24.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Florian,

On 2020-09-18 16:34, Florian Weimer wrote:
 > * Alejandro Colomar via Libc-alpha:
 >
 >> +Used for a count of bytes.  It is the result of the
 >> +.I sizeof
 >> +operator.
 >> +According to the C language standard,
 >> +it shall be an unsigned integer type
 >> +capable of storing values in the range [0,
 >> +.BR SIZE_MAX ].
 >
 > Thanks for working on this.

:-)

 > Maybe add that this commonly maps to unsigned int or unsigned long, and

I thought the same in the beginning,
but then Michael convinced me to not do it.

On 2020-09-13 22:20, Michael Kerrisk (man-pages) wrote:
 >>>> Is it a 32-bit or 64-bit or may vary? Is it signed or unsigned?
 >>> POSIX doesn't specify, I think.>
 >>> One other thing the page should show of course is definition of the
 >>> structure types.
 >> Yes.
 >>
 >>
 >>      timer_t     <time.h> or <sys/types.h>
 >>          POSIX timer ID.
 >>
 >>          typedef void *timer_t;
 > Here I would *not* show these kinds of typedefs. The point is
 > that these types should be treated as being somewhat unknown
 > (e.g., for casts in printf()). Here, I think instead maybe we
 > just have a statement that POSIX makes no specific requirements
 > for the representation of this type.

I think I prefer to leave it opaque, showing only the requirements
that POSIX and C make.

There's really not much gain (basically uint and ulong cover most of the
possibilities; and still it's not a guarantee).
And readers might write non-portable code because of reading that.

On 2020-09-18 16:34, Florian Weimer wrote:
 > that the length modifier for printf and scanf is z, commently used as
 > %zu or %zx (%zd is for ssize_t).

Good idea.

Would you prefer that, or just refer to printf(3) in See also?.

 >
 > Florian
 >

Thanks,

Alex
