Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD9B164E28C
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 21:50:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229863AbiLOUuH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Dec 2022 15:50:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229678AbiLOUuG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Dec 2022 15:50:06 -0500
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5C9A21E10
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 12:50:03 -0800 (PST)
Received: by mail-io1-xd33.google.com with SMTP id d123so268202iof.6
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 12:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ETS2PrNK52ZF7ihhQfdkJf0l8bWDKDlt5Iz3iIbVSKc=;
        b=ApkjH9I6rEwQ3kVDqQFt9ytmF/KzDvS1aMRVvO/F8qeIk8cT49qvl9bX/qSarrJg5I
         S8p7QcGQajMwQALwz/f0vVlIPzAcjIUCc5lErnCckcXiL8cdCD5A2nQFSUVrlcLWbWho
         cVuRLhcvvEFOfz/Lql/6cFQaerDKFezm3MFMFeyaesyA4HNT0ORxKzXcBe3dyT5UHCrq
         3O8qBbvGwg6h2OepYWjz5kuikLt98w2Zfgs++RMx8wJ51pIOCrOP7tTu1Jv+e9CzXgyI
         CPI2JlNwqe7g+f6DxPTkm88F1Gbm4mhFYwkRGooCLEB6Y/AULgGpW028bSeWuXkE5Ey4
         uI8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ETS2PrNK52ZF7ihhQfdkJf0l8bWDKDlt5Iz3iIbVSKc=;
        b=ddVTMtb5IhYMMA03i3USpx8W6ZODnKNu468V5C3yfAK6uvsD+D8GTSMa4K/ngg4fGB
         VQ0815+YjQhRavI/IkCuK7a24Xob8FQ6OiRxdIKDcgdXpVpk+jWS5F6FEbf1zmto8270
         8TLAeH5lJOPSsvQHexoG++DhK47C2l0u/IvyfbTQCku9kQ+bR91BWvRYah8zcf0i6Cfi
         ThwY8VcyHLS/i+vG9Pa5YhBW8mOwcBekiNGWiYYxWfacYztcyQL2jbXEn3cPtA/TdMyT
         tATlsQ8Lsm1sXhKRbS3/l+85T8LDdLMXM+syPb2NG4iwEXePWfkXV5otZ5FZpgQeeut2
         mtZg==
X-Gm-Message-State: ANoB5pmmsq/2BF0HJaa7bbl5cJRV6gKc+J4WHi2K3pYfu17o5ozmLCVn
        dCTZtw8j1WqA7mNFGm1AZcQ=
X-Google-Smtp-Source: AA0mqf51X33wjek1/UopiVfGUQLs7tPEu6w2G/MZivxdjx8q/y3zs4T8ZJ/N+amymNdt0x9n/KdHhQ==
X-Received: by 2002:a6b:7f09:0:b0:6e0:256d:547a with SMTP id l9-20020a6b7f09000000b006e0256d547amr17909943ioq.14.1671137402971;
        Thu, 15 Dec 2022 12:50:02 -0800 (PST)
Received: from [192.168.0.41] (184-96-229-210.hlrn.qwest.net. [184.96.229.210])
        by smtp.gmail.com with ESMTPSA id w191-20020a025dc8000000b003752e5b3c23sm124449jaa.20.2022.12.15.12.50.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 12:50:02 -0800 (PST)
Message-ID: <746bce22-9b6f-9452-5f0e-0e257738a03d@gmail.com>
Date:   Thu, 15 Dec 2022 13:50:00 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [-Wstringop-overflow=] strncat(3)
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Andrew Pinski <pinskia@gmail.com>
Cc:     gcc@gcc.gnu.org, linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        groff <groff@gnu.org>, Martin Sebor <msebor@redhat.com>
References: <30a77019-ded0-fe3b-d0db-6c77842674db@gmail.com>
 <CA+=Sn1nkz5FKFFx3e+A42nhpAF-TLW0Gmdgn4a5NL0KkCpuWNg@mail.gmail.com>
 <c306794f-8bfd-6b88-0baa-352d4c8b6871@gmail.com>
From:   Martin Sebor <msebor@gmail.com>
In-Reply-To: <c306794f-8bfd-6b88-0baa-352d4c8b6871@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/14/22 16:14, Alejandro Colomar via Libc-alpha wrote:
> [CC += groff]
> 
> Hi Andrew,
> 
> On 12/14/22 23:57, Andrew Pinski wrote:
>> On Wed, Dec 14, 2022 at 2:46 PM Alejandro Colomar via Libc-alpha
>> <libc-alpha@sourceware.org> wrote:
>>>
>>> Hi,
>>>
>>> I was rewriting the strncat(3) manual page, and when I tried to 
>>> compile the
>>> example program, I got a surprise from the compiler.
>>>
>>> Here goes the page:
>>>
>>>
>>>     strncat(3)               Library Functions Manual              
>>> strncat(3)
>>>
>>>     NAME
>>>            strncat  -  concatenate  a  null‐padded  character 
>>> sequence into a
>>>            string
>>>
>>>     LIBRARY
>>>            Standard C library (libc, -lc)
>>>
>>>     SYNOPSIS
>>>            #include <string.h>
>>>
>>>            char *strncat(char *restrict dst, const char src[restrict 
>>> .sz],
>>>                           size_t sz);
>>>
>>>     DESCRIPTION
>>>            This function catenates the input character sequence 
>>> contained  in
>>>            a  null‐padded  fixed‐width  buffer,  into  a string at 
>>> the buffer
>>>            pointed to by dst.  The programmer is responsible for 
>>> allocating a
>>>            buffer large enough, that is, strlen(dst) + strnlen(src, 
>>> sz) + 1.
>>>
>>>            An implementation of this function might be:
>>>
>>>                char *
>>>                strncat(char *restrict dst, const char *restrict src, 
>>> size_t sz)
>>>                {
>>>                    int   len;
>>>                    char  *end;
>>>
>>>                    len = strnlen(src, sz);
>>>                    end = dst + strlen(dst);
>>>                    end = mempcpy(end, src, len);
>>>                    *end = '\0';
>>>
>>>                    return dst;
>>>                }
>>>
>>>     RETURN VALUE
>>>            strncat() returns dest.
>>>
>>>     ATTRIBUTES
>>>            [...]
>>>
>>>     STANDARDS
>>>            POSIX.1‐2001, POSIX.1‐2008, C89, C99, SVr4, 4.3BSD.
>>>
>>>     CAVEATS
>>>            The  name of this function is confusing.  This function 
>>> has no re‐
>>>            lation with strncpy(3).
>>>
>>>            If the destination buffer is not large enough, the 
>>> behavior is un‐
>>>            defined.  See _FORTIFY_SOURCE in feature_test_macros(7).
>>>
>>>     BUGS
>>>            This function  can  be  very  inefficient.   Read  about  
>>> Shlemiel
>>>            the       painter      
>>> ⟨https://www.joelonsoftware.com/2001/12/11/
>>>            back-to-basics/⟩.
>>>
>>>     EXAMPLES
>>>            #include <stdio.h>
>>>            #include <stdlib.h>
>>>            #include <string.h>
>>>
>>>            int
>>>            main(void)
>>>            {
>>>                char    buf[BUFSIZ];
>>>                size_t  len;
>>>
>>>                buf[0] = '\0';  // There’s no ’cpy’ function to this 
>>> ’cat’.
>>>                strncat(buf, "Hello ", 6);

There's nothing wrong with this but the two lines above would be
more simply coded as one:

   strcpy(buf, "Hello ");

The original code suggests a misunderstanding of strncpy's purpose:
that it writes exactly 6 bytes into the destination.  That's what
the warning points out.

>>>                strncat(buf, "world", 42);  // Padding null bytes 
>>> ignored.
>>>                strncat(buf, "!", 1);
>>>                len = strlen(buf);
>>>                printf("[len = %zu]: <%s>\n", len, buf);
>>>
>>>                exit(EXIT_SUCCESS);
>>>            }
>>>
>>>     SEE ALSO
>>>            string(3), string_copy(3)
>>>
>>>     Linux man‐pages (unreleased)      (date)                       
>>> strncat(3)
>>>
>>>
>>> And when you compile that, you get:
>>>
>>> $ cc -Wall -Wextra ./strncat.c
>>> ./strncat.c: In function ‘main’:
>>> ./strncat.c:12:12: warning: ‘strncat’ specified bound 6 equals source 
>>> length
>>> [-Wstringop-overflow=]
>>>      12 |            strncat(buf, "Hello ", 6);
>>>         |            ^~~~~~~~~~~~~~~~~~~~~~~~~
>>> ./strncat.c:14:12: warning: ‘strncat’ specified bound 1 equals source 
>>> length
>>> [-Wstringop-overflow=]
>>>      14 |            strncat(buf, "!", 1);
>>>         |            ^~~~~~~~~~~~~~~~~~~~
>>>
>>>
>>> So, what?  Where's the problem?  This function does exactly that: 
>>> "take an
>>> unterminated character sequence and catenate it to an existing 
>>> string".

Strncat has historically had two distinct use cases.  One of them
-- to constrain the amount of data to copy to the space remaining
in the destination -- gained popularity with the push to reduce
buffer overflow weaknesses in code.  Mistakes in these uses gave
rise to a whole other class of security bugs, to the extent that
CERT felt it necessary to publish the strncpy and strncat best
practice.  The GCC warning in turn was added to support the CERT
guideline.  I touch on some of this in a blog post I wrote a few
years ago:

https://developers.redhat.com/blog/2018/05/24/detecting-string-truncation-with-gcc-8

The specific uses of the function above are contrived (there's
no point in calling strncat to append the full string -- strcat
will do that more clearly and efficiently) but the general use
case -- limiting the amount of copied data to an initial
substring of the source sequence -- although valid and originally
intended (it's one of the two uses of the function in UNIX v7),
is not one that either the guideline or the warning consider.
They can only consider one use cases, and they chose the one
that was observed behind security bugs.  That choice unavoidably
leads to some false positives.  The expected way to deal with
them is to suppress the warning by one of the usual mechanisms
(command line option or #pragma GCC diagnostic).

Martin

>>>  Clang
>>> seems to be fine with the code.
>>
>> See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=83404 and the
>> background of why the warning was added here:
>>
>> https://www.us-cert.gov/bsi/articles/knowledge/coding-practices/strncpy-and-strncat. 
>>
> 
> This document is bogus, since it's puting strncpy(3) and strncat(3) in 
> the same sack, when they're in reality two completely different beasts.  
> I'll quote below some paragraphs of some new page I'm writing, which 
> will show why.
> 
> The rationale behind GCC's warning is also fundamentally wrong.  Martin 
> was wrong when he claimed that the right call for strncat(3) is the 
> remaining space in the destination.
> 
> I admit that I didn't know what strncat(3) was useful for, and believed 
> that it was simply a broken-by-design function until very recently (this 
> week, more or less).  And to be honest, I still believe it's broken by 
> design; it's just that it can be repurposed for a reasonable new purpose 
> (which I found while digging in groff's source code; that's why the CC).
> 
> 
> First I'll show an example program that I added to the strncat(3) manual 
> page last week, which is based on the groff code that used it:
> 
> 
>         #include <stdio.h>
>         #include <stdlib.h>
>         #include <string.h>
> 
>         #define nitems(arr)  (sizeof((arr)) / sizeof((arr)[0]))
> 
>         int
>         main(void)
>         {
>             char pre[4] = "pre.";
>             char *post = ".post";
>             char *src = "some_long_body.post";
>             char dest[100];
> 
>             dest[0] = '\0';
>             strncat(dest, pre, nitems(pre));
>             strncat(dest, src, strlen(src) - strlen(post));
> 
>             puts(dest);  // "pre.some_long_body"
>             exit(EXIT_SUCCESS);
>         }
> 
> 
> And now I'll quote some text that I'm writing currently for the function:
> 
> 
>     Null‐padded character sequences
>         For historic reasons, some standard APIs, such as utmpx(5),  
> use  null‐
>         padded  character  sequences in fixed‐width buffers.  To 
> interface with
>         them, specialized functions need to be used.
> 
>         To copy strings into them, use stpncpy(3).
> 
>         To copy from an unterminated string within a fixed‐width buffer 
> into  a
>         string,  ignoring  any  trailing  null  bytes in the source 
> fixed‐width
>         buffer, you should use strncat(3).
> 
>         [...]
> 
>         stpncpy(3)
>                This function copies the input string  into  a  destination
>                null‐padded character sequence in a fixed‐width buffer.  If
>                the  destination  buffer,  limited by its size, isn’t large
>                enough to hold the copy, the resulting  character  sequence
>                is  truncated.   Since  it creates a character sequence, it
>                doesn’t need to write a terminating null byte.  It’s impos‐
>                sible to distinguish truncation  after  the  call,  from  a
>                character  sequence  that just fits the destination buffer;
>                truncation should be detected from the length of the origi‐
>                nal string.
> 
>         strncpy(3)
>                This function is identical to  stpncpy(3)  except  for  the
>                useless return value.
> 
>                stpncpy(3) is a simpler alternative to this function.
> 
>         [...]
> 
>         strncat(3)
>                Do not confuse this function with strncpy(3); they are  not
>                related at all.
> 
>                This  function  catenates the input character sequence con‐
>                tained in a null‐padded wixed‐width buffer, into a destina‐
>                tion string.  The programmer is responsible for  allocating
>                a buffer large enough.  The return value is useless.
> 
>                zustr2stp(3) is a faster alternative to this function.
> 
>                An implementation of this function might be:
> 
>                    char *
>                    strncat(char *restrict dst, const char *restrict src,
>                            size_t sz)
>                    {
>                        int   len;
>                        char  *end;
> 
>                        len = strnlen(src, sz);
>                        end = dst + strlen(dst);
>                        end = mempcpy(end, src, len);
>                        *end = '\0';
> 
>                        return dst;
>                    }
> 
> 
> Cheers,
> 
> Alex
> 
> 
> 
>>
>> Thanks,
>> Andrew Pinski
>>
>>>
>>> Cheers,
>>>
>>> Alex
>>>
>>>
>>> -- 
>>> <http://www.alejandro-colomar.es/>
> 

