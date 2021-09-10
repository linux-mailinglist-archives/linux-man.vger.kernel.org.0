Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02DAD406CF3
	for <lists+linux-man@lfdr.de>; Fri, 10 Sep 2021 15:37:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233253AbhIJNjJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 09:39:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231963AbhIJNjI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 09:39:08 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A719EC061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 06:37:57 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id g16so2702809wrb.3
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 06:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=d8AMTVJENsvwjoLJ2Vo2uff9MCPqlp5aeEJ/a9ZWayw=;
        b=L0CuoEfC2bdDZJc9/pV52K2ShIxnSqIuMXLRhjlfQFCBZKxnkKOa3No7i536irS4PD
         xix4/d+kmyoZAoZPiM0bZJRpbp1zsB+AW9ZqtxdrF0ZsAtW6WQE2CofUJWMQIxmnxCYS
         Yqj/zLbmrxTvMRWO74IhiwcdX4MYytZbWagx5ieXu1XnEpX3CXPNQVljCYcawyq4O4bM
         j4HQvATcygIo98YnVpA2drt+YlibafhNOMD5CAQJFfLNQ4y327cazKIIjOAucqgvjUdx
         UnXbehpJQ3Hg2H23+x03yVPSgEXnWuPe9L8iBZUDwujHnbnZm6jSEqV6KtUShNiBVBD5
         boug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=d8AMTVJENsvwjoLJ2Vo2uff9MCPqlp5aeEJ/a9ZWayw=;
        b=DL0P7wjCv15hP03xP3Qx0vRCmAwwxgwT1EPVx2AWxZMGFLMeuEO4d/SjqcG2lZENeZ
         QjkKhJItXnDxI/SB1ofEnf+z7UwumlG9NUBdxnERMXU3Mx2BqfZ80qjWXrglIRa04Y5I
         A5MTfP5L/eKHyM3aNuzRp4KRuoLP9N3j1xgzy+QXuhbUEdY71SLT6BmJsQ0kTTdNnhvF
         WlwrrdYZRYZC5pThPnvqVd1DaqL/jRdvPzVwlkVayyqHWSQZYSt6mqmY3B/JSZ3oaAtp
         Gn9B9b5FuQHw7In+rVuNhPMTJ6BvObhLwZRTcAjrgpqdWBkbzwUeU7EKimjh0soBYSDj
         1XAw==
X-Gm-Message-State: AOAM530iOtwpfEqn6lClwcIGLHi4EBEL53LsNf5Dz9tmc4FbV2/JAHx6
        5xe+BYKfAZsWLceGTbrETxTlOj5noQA=
X-Google-Smtp-Source: ABdhPJx7adg3aHLA2oIDdFFIZDFQSZhDSWHTmsekQJg2QfkmLkRBCfHTHZVh9PUV4K4rHRi8IqVExA==
X-Received: by 2002:adf:f892:: with SMTP id u18mr9529952wrp.31.1631281076154;
        Fri, 10 Sep 2021 06:37:56 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o2sm5077823wrh.13.2021.09.10.06.37.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 06:37:55 -0700 (PDT)
Subject: Re: [PATCH v4] ioctl_tty.2: Add example how to get or set baudrate on
 the serial port
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20210730095333.6118-1-pali@kernel.org>
 <20210810194928.16408-1-pali@kernel.org>
 <20210831203436.hy52aimer5hozb6r@pali>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <56938369-cd99-d768-55da-5eac4cd268d4@gmail.com>
Date:   Fri, 10 Sep 2021 15:37:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210831203436.hy52aimer5hozb6r@pali>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Pali!

On 8/31/21 10:34 PM, Pali Rohár wrote:
> On Tuesday 10 August 2021 21:49:28 Pali Rohár wrote:
>> Setting custom baudrate for which is not defined Bnnn constant is possible
>> via BOTHER flag and then filling speed in c_ospeed and c_ispeed fields.
>>
>> These two fields are either in struct termios or struct termios2. Former
>> belongs to TCGETS/TCSETS ioctls, latter to TCGETS2/TCSETS2 ioctls.
>>
>> BOTHER flag with these two fields and new struct termios2 is not supported
>> by older versions of include header files.
>>
>> Some architectures (e.g. amd64) provide both struct termios and struct
>> termios2, but c_ospeed and c_ispeed are only in struct termios2.
>>
>> Some other architectures (e.g. alpha) provide both struct termios and struct
>> termios2 and both have c_ospeed and c_ispeed fields.
>>
>> And some other architectures (e.g. powerpc) provide only struct termios
>> (no struct termios2) and it has c_ospeed and c_ispeed fields.
>>
>> So basically to support all architectures it is needed to use
>> struct termios2 when TCGETS2/TCSETS2 is supported. Otherwise it is needed
>> to use struct termios with TCGETS/TCSETS (case for e.g. powerpc).
>>
>> Setting input baudrate is done via IBSHIFT macro.
>>
>> Signed-off-by: Pali Rohár <pali@kernel.org>
> 
> Hello! Do you have any comments on this patch?

Sorry, I started to fix the licensing issues Greg pointed out, and 
forgot about this.

I assume it's good since you have been doing a lot of related work in 
recent patches.  I'll only point out a cosmetic issue with the 
preprocessor stuff:  I'd indent with a single space after '#' to clarify 
preprocessor #if #else #endif relationships and improve readability.  I 
also prefer '#if [!]defined()' rather than '#if[n]def' (except for 
include guards); and there seems to be a mix in the existing pages, so 
I'll standardize that way from now on.

For example:

#if !defined a
#else
# if defined b
# endif
#endif

However, I applied those changes myself in a following patch, so you 
don't worry about them.

Patch applied!

Thanks,

Alex

> 
>> ---
>> Changes in v4:
>> * Add SPDX-License-Identifier
>> * Correctly process split baudrates (separate output and input) via IBSHIFT
>> * Update commit message
>>
>> Changes in v3:
>> * Check support for custom baudrate only based on BOTHER macro
>> * Use TCGETS/TCSETS/termios when TCGETS2/TCSETS2/termios2 is not available
>>
>> Changes in v2:
>> * Use \e for backslash
>> * Use exit(EXIT_*) instead of return num
>> * Sort includes
>> * Add comment about possible fallback
>> ---
>>   man2/ioctl_tty.2 | 100 +++++++++++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 100 insertions(+)
>>
>> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
>> index abfdc1e21fe9..7b2b03ff6757 100644
>> --- a/man2/ioctl_tty.2
>> +++ b/man2/ioctl_tty.2
>> @@ -796,6 +796,106 @@ main(void)
>>       close(fd);
>>   }
>>   .EE
>> +.PP
>> +Get or set arbitrary baudrate on the serial port.
>> +.PP
>> +.EX
>> +/* SPDX-License-Identifier: GPL-2.0-or-later */
>> +
>> +#include <asm/termbits.h>
>> +#include <fcntl.h>
>> +#include <stdio.h>
>> +#include <stdlib.h>
>> +#include <sys/ioctl.h>
>> +#include <sys/types.h>
>> +#include <unistd.h>
>> +
>> +int
>> +main(int argc, char *argv[])
>> +{
>> +#ifndef BOTHER
>> +    fprintf(stderr, "BOTHER is unsupported\en");
>> +    /* Program may fallback to TCGETS/TCSETS with Bnnn constants */
>> +    exit(EXIT_FAILURE);
>> +#else
>> +    /* Declare tio structure, its type depends on supported ioctl */
>> +#ifdef TCGETS2
>> +    struct termios2 tio;
>> +#else
>> +    struct termios tio;
>> +#endif
>> +    int fd, rc;
>> +
>> +    if (argc != 2 && argc != 3 && argc != 4) {
>> +        fprintf(stderr, "Usage: %s device [output [input] ]\en", argv[0]);
>> +        exit(EXIT_FAILURE);
>> +    }
>> +
>> +    fd = open(argv[1], O_RDWR | O_NONBLOCK | O_NOCTTY);
>> +    if (fd < 0) {
>> +        perror("open");
>> +        exit(EXIT_FAILURE);
>> +    }
>> +
>> +    /* Get the current serial port settings via supported ioctl */
>> +#ifdef TCGETS2
>> +    rc = ioctl(fd, TCGETS2, &tio);
>> +#else
>> +    rc = ioctl(fd, TCGETS, &tio);
>> +#endif
>> +    if (rc) {
>> +        perror("TCGETS");
>> +        close(fd);
>> +        exit(EXIT_FAILURE);
>> +    }
>> +
>> +    /* Change baud rate when more arguments were provided */
>> +    if (argc == 3 || argc == 4) {
>> +        /* Clear the current output baud rate and fill a new value */
>> +        tio.c_cflag &= ~CBAUD;
>> +        tio.c_cflag |= BOTHER;
>> +        tio.c_ospeed = atoi(argv[2]);
>> +
>> +        /* Clear the current input baud rate and fill a new value */
>> +        tio.c_cflag &= ~(CBAUD << IBSHIFT);
>> +        tio.c_cflag |= BOTHER << IBSHIFT;
>> +        /* When 4th argument is not provided reuse output baud rate */
>> +        tio.c_ispeed = (argc == 4) ? atoi(argv[3]) : atoi(argv[2]);
>> +
>> +        /* Set new serial port settings via supported ioctl */
>> +#ifdef TCSETS2
>> +        rc = ioctl(fd, TCSETS2, &tio);
>> +#else
>> +        rc = ioctl(fd, TCSETS, &tio);
>> +#endif
>> +        if (rc) {
>> +            perror("TCSETS");
>> +            close(fd);
>> +            exit(EXIT_FAILURE);
>> +        }
>> +
>> +        /* And get new values which were really configured */
>> +#ifdef TCGETS2
>> +        rc = ioctl(fd, TCGETS2, &tio);
>> +#else
>> +        rc = ioctl(fd, TCGETS, &tio);
>> +#endif
>> +        if (rc) {
>> +            perror("TCGETS");
>> +            close(fd);
>> +            exit(EXIT_FAILURE);
>> +        }
>> +    }
>> +
>> +    close(fd);
>> +
>> +    printf("output baud rate: %u\en", tio.c_ospeed);
>> +    printf("input baud rate: %u\en", tio.c_ispeed);
>> +
>> +    exit(EXIT_SUCCESS);
>> +#endif
>> +}
>> +.EE
>>   .SH SEE ALSO
>>   .BR ldattach (1),
>>   .BR ioctl (2),
>> -- 
>> 2.20.1
>>


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
