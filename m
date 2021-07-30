Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 536063DB87D
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 14:21:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230355AbhG3MVs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 08:21:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230325AbhG3MVr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 08:21:47 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37B6AC061765
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 05:21:42 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id z4so11084351wrv.11
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 05:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=j4LZx+V5iqNhv1rUypWZ9Xr1qO/kemsl4R7bVUb241k=;
        b=GC4IL0Gj2tKGwNdtbU2M7le9pLH0JP58RJQFmiChe92cfj04MIUWw057QudmvkgNoZ
         oUfjuvyCFf2xrUKF5eEzCFeLkGsy7HBs+ZJP4UWfmCXodrNqahTbgJXVQj7vKx3lUT4M
         RU8ZBddsSxm2EP4/VRCfTuL95Fw7qBoXMilGuBg/1N8xb1+/YNfqnc9UeuhtjOhMN0+w
         VA1DZajoYTELOtPVYa9LvgQEq+dQ2YWqbHc8TeiYmBfL19KFXoiOUPXBaeIyjiwnxlOs
         kKN+teKK+9g04oroT7dNvTwdWCg6DzvQE7OcykzjX1jXVBBBh6e/Z7siLDTV2W83MwN5
         HvXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=j4LZx+V5iqNhv1rUypWZ9Xr1qO/kemsl4R7bVUb241k=;
        b=oSUMD+2nfMSkT1p5IoDD1fCDo990GO7u7slMQbJAupp2XSejgOA3TtduZsOPLQ9SaV
         wk1He56jGIzSEl+2Hg5g6V9zlt14avEiuInjvcvXtsEvUw8n/RZ/E4dV1/8qr0+e40S8
         E3s5D1EScChCHA9+Ai1E1LyHKlDDCXBq7GN9Ri7O9Om3PXM5MkHbK0Lz7smtMycElkmm
         y2bgvf4NzKD8oS9bqgisffEYImwwzYf9JiLZrzvj/5dBtJISMafuRhJWchhccOo78K8j
         dBnMCoQg7D3QaBc/dQyR7/jAMTBKGZ9nws5m/OQQk+TmQBV+C1W54oIyKhTRnxz9Df7u
         GvLQ==
X-Gm-Message-State: AOAM530rwVLzGSldEdNu05vMcieK54Se5q+B84IhTc3n5GoX8T8M5fQm
        vd0ISja+Qxv3HEHXpAk3pOjPZOd+isE=
X-Google-Smtp-Source: ABdhPJwodGO+pTycyvS8hLHw1kq1iB21ShyuFjNGmYuKuhGPw3/Tzy1SyhMmU0Cro0SLK5OoBZr6Pw==
X-Received: by 2002:adf:ed4a:: with SMTP id u10mr2728825wro.86.1627647700830;
        Fri, 30 Jul 2021 05:21:40 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id 104sm1639328wrc.4.2021.07.30.05.21.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 05:21:40 -0700 (PDT)
Subject: Re: [PATCH] ioctl_tty.2: Add example how to get or set baudrate on
 the serial port
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20210730095333.6118-1-pali@kernel.org>
 <b8ef8f70-ae61-b0f1-58dc-37380ae242ee@gmail.com>
 <20210730120542.dv62jtm6lpfmfjyx@pali>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9f1725cc-e808-9c12-2932-92144ce58a78@gmail.com>
Date:   Fri, 30 Jul 2021 14:21:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730120542.dv62jtm6lpfmfjyx@pali>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,


On 7/30/21 2:05 PM, Pali Rohár wrote:

> 
>>> +
>>> +int
>>> +main(int argc, char *argv[])
>>> +{
>>> +#if !defined(TCGETS2) || !defined(TCSETS2) || !defined(BOTHER)
>>> +    fprintf(stderr, "TCGETS2, TCSETS2 or BOTHER is unsupported\\n");
>>> +    return 1;
>>> +#else
>>
>> Do we want the program to compile if those are unsupported?
> 
> My intention was to provide example which compiles fine on any Linux
> architecture and in case of error it reports it at runtime.
> 
> On architectures where are TCGETS2/TCSETS2 ioctls unsupported, there are
> still supported TCGETS/TCSETS ioctls. So proper Linux portable program
> should fallback to TCGETS/TCSETS ioctls with Bnnn constants.
> 
> So for example setting baudrate to 115200 would be possible via
> predefined constant B115200 in c_cflag member even when struct termios2
> with c_ospeed is unsupported.
> 
> I just did not put this fallback into this example as it would be quite
> loooong (as it is needed to add big switch for every Bnnn constant and
> convert numeric value into Bnnn) and example show how to use
> TCGETS2/TCSETS2 (not TCGETS/TCSETS).

Okay, I leave it up to you what you consider best to do :)

> 
>> Maybe you can #error there and simplify the reader having to parse the
>> preprocessor directive mentally:
>>
>> #if !defined...
>> # error ...
>> #endif
>>
>> I know it's non-standard, but I think it's common enough so that we can use
>> it here.
> 
> #error is standard. It is already defined in C99 (section 6.10.5 Error
> directive).

Ahh, it is #warning that is non-standard!  Thanks.  I forgot that.

> 
>>> +    struct termios2 tio2;
>>> +    int fd, rc;
>>> +
>>> +    if (argc != 2 && argc != 3) {
>>> +        fprintf(stderr, "Usage: %s device [new_baudrate]\\n", argv[0]);
>>
>> We use \e for printing the escape character.  Not \\
> 
> Ok!
> 
>> CC: Branden
>>
>> See groff_man(7):
>>     Portability
>>         [...]
>>
>>         Similar  caveats  apply  to escapes.  Some escape sequences
>>         are however required for correct typesetting  even  in  man
>>         pages and usually do not cause portability problems:
>>
>>         [...]
>>
>>         \e     Widely used in man pages to  represent  a  backslash
>>                output  glyph.  It works reliably as long as the .ec
>>                request is not used, which should  never  happen  in
>>                man pages, and it is slightly more portable than the
>>                more exact ‘\(rs’  (“reverse  solidus”)  escape  se‐
>>                quence.
>>
>>
>>> +        return 1;
>>> +    }
>>> +
>>> +    fd = open(argv[1], O_RDWR | O_NONBLOCK | O_NOCTTY);
>>> +    if (fd < 0) {
>>> +        perror("open");
>>> +        return 1;
>>
>> exit(EXIT_FAILURE);
>>
>>> +    }
>>> +
>>> +    rc = ioctl(fd, TCGETS2, &tio2);
>>> +    if (rc) {
>>> +        perror("TCGETS2");
>>> +        close(fd);
>>> +        return 1;
>>
>> exit(3)
>>
>>> +    }
>>> +
>>> +    printf("%u\\n", tio2.c_ospeed);
>>
>> \e
>>
>>> +
>>> +    if (argc == 3) {
>>> +        tio2.c_cflag &= ~CBAUD;
>>> +        tio2.c_cflag |= BOTHER;
>>> +        tio2.c_ospeed = tio2.c_ispeed = atoi(argv[2]);
>>> +
>>> +        rc = ioctl(fd, TCSETS2, &tio2);
>>> +        if (rc) {
>>> +            perror("TCSETS2");
>>> +            close(fd);
>>> +            return 1;
>>
>> exit(3)
>>
>>> +        }
>>> +    }
>>> +
>>> +    close(fd);
>>> +    return 0;
>>
>> exit(3)
> 
> Interesting... Do you prefer to use exit(EXIT_SUCCESS) instead of return 0?

I don't care in my own code.
I typically use return 0 at the end of main.
But the historical convention in manual pages is using exit(EXIT_SUCCESS),
so let's follow that :)


Tanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
