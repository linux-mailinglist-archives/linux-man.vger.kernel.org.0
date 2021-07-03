Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 822943BA9ED
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 20:01:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbhGCSEZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 14:04:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbhGCSEY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 14:04:24 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C20DDC061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 11:01:50 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id q18-20020a1ce9120000b02901f259f3a250so8473655wmc.2
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 11:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Awbsxs4XroEZ3ASltyxbmOQDlzB665KDwSfaJzz1NLk=;
        b=XyvmkYT9UaRoo+CEQjMQF+QIo6mefy24MjCIQtsyIaJIkWbguGfB1T3zwaFY0U4Do/
         yvZ2soukPyp2ZDSNTedLQ/jk1NxUf6kXTnGdMR9Phr/fMqo2TO1gutXGMNgu4unz6eTi
         Vx46x1G43AmfYJ7lIDRoHlIGdOOUA08KdJZFfdBlNZ/ueCrdtIHXjIh0bRhrm7aIyM0a
         h19baZ6XRyUx6VnJl6lfnp7WrcEUk3wtjWhLfNXO4TVzpZ4743g38XU48B8ElO/I7zmG
         0rBGNRTaEhpfmJ2HU2COT/B+cMyKzN6z0FhC/3CvoXL+727yrYy85Z+cs3FmMW+QvTrK
         6icw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Awbsxs4XroEZ3ASltyxbmOQDlzB665KDwSfaJzz1NLk=;
        b=nnyKKgI36mGXL0CxLpMsbfDnrrqixTuYB7UzRPwo30CoHaO4s31VxqUjN6FV3dyzWW
         FlWcjnWaD8qSC9ZCKDwYdi41X2uouyTwcgYGtt/7sOjo1JrGg4ywBw9S6E3+ao0vuUgd
         z40mNL1PUYcUeO63+8k8BmeSSSMhYPRs2T+OKLAA0gHcQEWRaZMpJU+IqV+amqdhgCEI
         FT1gxA+akn3KPvx2Tfw2txELQiUh5Y5RbWIOGKju+ww4r1mv8hvueknzlfSDA/FdGQDo
         lj6UxFgMz+LAHC5NymyHVgeqHCjYNpXzTptGLsa4Npy8xCtdCt+Mx5kQFNBkyvcCVgGT
         e9WQ==
X-Gm-Message-State: AOAM530S4GPHPZJ3PzAV4dEZdNLDCOvJravHLV9jZM6Wuhs9KasHJEqG
        EI0yK4+X+K8lnk1i/62KCWvhTeAMMTk=
X-Google-Smtp-Source: ABdhPJzWY69TM/MB90WbAtkPN1tBUSzgj39rD6KrA/iGFbxjChBXMLtxu1QzQlKIFbfmLolTQyNHsQ==
X-Received: by 2002:a05:600c:17cf:: with SMTP id y15mr872462wmo.19.1625335308692;
        Sat, 03 Jul 2021 11:01:48 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q7sm5045862wmq.33.2021.07.03.11.01.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 11:01:48 -0700 (PDT)
Subject: Re: new:mbrtoc32.3: convert from to c32
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Radisson97@gmx.de,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
References: <60cfa510.GHWZSa6DNoE9MWRF%Radisson97@gmx.de>
 <e957596f-ad38-ac7a-7291-652e5dda36a8@gmail.com>
Message-ID: <53477e3b-7f94-743d-09e8-8dbb5166816d@gmail.com>
Date:   Sat, 3 Jul 2021 20:01:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <e957596f-ad38-ac7a-7291-652e5dda36a8@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Peter,

Please see some comments below.

Thanks,

Alex

On 7/3/21 7:40 PM, Alejandro Colomar (man-pages) wrote:
> Hi Peter,
> 
> On 6/20/21 10:29 PM, Radisson97@gmx.de wrote:
>> From eb1ee6439f85b6a349c84488fa63dc7b795e43a0 Mon Sep 17 00:00:00 2001
>> From: Peter Radisson <--show-origin>
>> Date: Sun, 20 Jun 2021 22:21:55 +0200
>> Subject: [PATCH] convert between multibyte sequence and 32-bit wide character
>>
>> documentation including example
>>
>> Signed-off-by: Peter Radisson <--show-origin>
> 
> Thanks for the page.  I'll have a look at it.
> 
> BTW, next time you document a glibc function from scratch, please CC
> glibc <libc-alpha@sourceware.org> so that they can comment, and maybe
> find some bugs that we may not be able to detect.
> 
> Also, providing a rendered version of the page is good for glibc people
> --who may not have cloned the man-pages-- to easily review it :)
> 
> Rendered page:
> 
> [[
> MBRTOC32(3)         Linux Programmer's Manual        MBRTOC32(3)
> 
> NAME
>        mbrtoc32,  c32rtomb  - convert between multibyte sequence
>        and 32‐bit wide character
> 
> SYNOPSIS
>        #include <uchar.h>
> 
>        size_t t mbrtoc32 (char32_t * restrict c32 ,
>                                 mbstate_t * restrict p);

That prototype seems wrong.  See:

.../glibc$ grep_glibc_prototype mbrtoc32;
wcsmbs/uchar.h:57:
extern size_t mbrtoc32 (char32_t *__restrict __pc32,
			const char *__restrict __s, size_t __n,
			mbstate_t *__restrict __p) __THROW;

> 
>        size_t c32rtomb (char * restrict s, char32_t  c32 ,
>                             mbstate_t * restrict p );
> 
> DESCRIPTION

Are there any important differences compared to the already-documented
and C99-compliant mbrtowc(3) and wcrtomb(3)?  I mean, apart from the
types of the parameters.

I think I would refer to mbrtowc(3) (and wcrtomb(3)) and specify here
only differences specific to these functions, such as the type.

Maybe?:

[
These functions are equivalent to mbrtowc(3) and wcrtomb(3), except that
these functions act on char32_t instead of wchar_t.
]

Otherwise we're unnecessarily repeating all of the information.  If we
use the same wording, we're just duplicating maintenance issues.  If we
use a different wording, readers might wonder why, if they seem to be
the same.

Also, when we need to repeat the text of those pages because of slight
differences, please use the text as similar as possible from those
pages, for the same reasons.


>        The mbrtoc32() function inspects at most n bytes  of  the
>        UTF‐8  multibyte string starting at s.  If a multibyte is
>        identified as valid the corresponding UCS‐32 32‐bit  wide
>        character  is stored in c32.  If  the  multibyte  charac‐
>        ter is the null wide character, it resets the shift state
>        *p to the initial state and returns 0.  If p is  NULL,  a
>        static anonymous state known only to the function is used
>        instead.
> 
>        The  c32rtomb() function converts the 32‐bit wide charac‐
>        ter stored in c32 into a mutability  sequence   into  the
>        memory s.
> 
> RETURN VALUES
>        The  mbrtoc32() function returns 0 for the nul character.
>        -1 for invalid input, -2 for a truncated  input,  -3  for
>        multibyte  32‐bit wide character sequence that is written
>        to *c32.  No bytes are processed from the input
> 
>        Otherwise the number of bytes in the  multibyte  sequence
>        is returned.
> 
>        The c32tombr() function returns -1 on error otherwise the
>        number of bytes used for the multibytes sequence.
> 
> EXAMPLE>        The input sequence is written as byte sequence to allow a
>        proper display. Note that the input is UTF‐8 and UTF‐32 ,
>        it may not possible to convert every code.
> 
>        #include <stdio.h>
>        #include <stdlib.h>
>        #include <locale.h>
>        #include <uchar.h>
>        #include <wchar.h>
> 
>        void toc32( char *in,  int in_len, char32_t **outbuf, int *len)

Please, follow the style of other existing pages (it's similar to the
kernel coding style with some exceptions).
Especially, regarding spaces around parentheses and commas (and other
operators).
Also, please use a consistent indentation of 4 spaces.

https://www.kernel.org/doc/html/v4.10/process/coding-style.html#spaces

>        {
>            char *p_in , *end ;
>            char32_t *p_out,*out;
>            size_t rc;
> 
>            out=malloc(in_len*sizeof(*out));
>            p_out = out;
>            p_in = in;
>            end = in + in_len;
>            while((rc = mbrtoc32(p_out, p_in, end ‐ p_in, NULL)))
>            {
>                if(rc ==  ‐1)      // invalid input
>                    break;
>                else if(rc == (size_t)‐2) // truncated input
>               break;
>                else if(rc == (size_t)‐3) // UTF‐32 high surrogate
>                    p_out += 1;
>                else {
>                    p_in += rc;
>                    p_out += 1;
>                };
>            }
>            // out_sz = p_out ‐ out + 1;
>          *len=p_out ‐ out + 1;
>          *outbuf=out;
>        }
> 
>        void fromc32(char32_t *in, int in_len, char **outbuf, int *len)
>        {
>          char *out,*p;
>          int i;
>           size_t rc;
>          p=out=malloc(MB_CUR_MAX * in_len);
>          for(i=0;i<in_len;i++) {
>            rc=c32rtomb(p, in[i], NULL);
>            if(rc == (size_t)‐1) break;
>            p += rc;
>            }
>          *outbuf=out;
>          *len=p‐out+1;
>        }
> 
>        void dump_u8(char *in, int len)
>        {
>            int i;
>            printf("Processing %d UTF‐8 code units: [ ", len);
>            for(i = 0; i <len ; ++i) printf("%#x ", (unsigned char)in[i]);
>            puts("]");
>        }
> 
>        void dump_u32(char32_t *in, int len)
>        {
>            int i;
>            printf("Processing %d UTF‐32 code units: [ ", len);
>            for(i = 0; i < len; ++i) printf("0x%04x ", in[i]);
>            puts("]");
> 
>        }
> 
>        int main(void){
>          char in[] = "z00df6c34U0001F34C";
>          char32_t *out;
>          int out_len,len;
>          char *p;
>          // make sure we have utf8
>          setlocale(LC_ALL, "de_DE.utf8");
>          dump_u8(in,sizeof in / sizeof *in);
>          toc32(in,sizeof in / sizeof *in,&out,&out_len);
>          dump_u32(out,out_len);
>          fromc32(out,out_len,&p,&len);
>          dump_u8(p,len);
>          return 0;
>        }
> 
>        This is a simple example and not production ready.
> 
> CONFORMING TO
>        C11
> 
> SEE ALSO
>        mbrtoc16(), c16tocmbr(), mbsrtowcs()
> 
> Linux                      2021‐06‐02                MBRTOC32(3)
> ]]
> 
>> ---
>>  man3/mbrtoc32.3 | 154 ++++++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 154 insertions(+)
>>  create mode 100644 man3/mbrtoc32.3
>>
>> diff --git a/man3/mbrtoc32.3 b/man3/mbrtoc32.3
>> new file mode 100644
>> index 000000000..8d0c33de1
>> --- /dev/null
>> +++ b/man3/mbrtoc32.3
>> @@ -0,0 +1,154 @@
>> +.TH  MBRTOC32  3 "2021-06-02" Linux "Linux Programmer's Manual"
>> +.SH NAME
>> +mbrtoc32, c32rtomb \- convert between multibyte sequence and 32-bit wide character
>> +.SH SYNOPSIS
>> +.nf
>> +.B #include <uchar.h>
>> +.PP
>> +.BI "size_t t mbrtoc32 (char32_t * restrict "c32 " ,"
>> +.BI"                          const char *" restrict s " , size_t " n " ,"
>> +.BI "                         mbstate_t * restrict " p ");"
>> +.PP
>> +.BI "size_t c32rtomb (char * restrict " s ", char32_t  " c32 " ,"
>> +.BI "                     mbstate_t * restrict " p " );"
>> +.fi
>> +.SH DESCRIPTION
>> +The
>> +.BR mbrtoc32  ()
>> +function inspects at most
>> +.I n
>> +bytes of the UTF-8 multibyte string starting at
>> +.IR s .
>> +If a multibyte is identified as valid the corresponding UCS-32
>> +32-bit wide character is stored in
>> +.IR c32 .
>> +If  the  multibyte  character is the null wide character, it
>> +resets the shift state
>> +.I *p
>> +to the initial state and returns 0.
>> +If
>> +.I p
>> +is  NULL,  a  static anonymous state known only to the
>> +function is used instead.
>> +.PP
>> +The
>> +.BR c32rtomb ()
>> +function converts the 32-bit wide character stored in
>> +.I c32
>> +into a mutability sequence  into the memory
>> +.IR s .
>> +.SH "RETURN VALUES"
>> +The
>> +.BR mbrtoc32  ()
>> +function returns
>> +0 for the nul character.
>> +\-1 for invalid input,
>> +\-2 for a truncated input,
>> +\-3 for multibyte 32-bit wide character sequence that is
>> +written to
>> +.IR *c32 .
>> +No bytes are processed from the input
>> +.PP
>> +Otherwise the number of bytes in the multibyte sequence is returned.
>> +.PP
>> +The
>> +.BR c32tombr  ()
>> +function returns \-1 on error otherwise the number of bytes used
>> +for the multibytes sequence.
>> +.SH EXAMPLE
>> +The input sequence is written as byte sequence to allow a proper
>> +display. Note that the input is UTF-8 and UTF-32 , it may not possible
>> +to convert every code.
>> +.EX
>> +.nf.
>> +
>> +#include <stdio.h>
>> +#include <stdlib.h>
>> +#include <locale.h>
>> +#include <uchar.h>
>> +#include <wchar.h>
>> +
>> +void toc32( char *in,  int in_len, char32_t **outbuf, int *len)
>> +{
>> +    char *p_in , *end ;
>> +    char32_t *p_out,*out;
>> +    size_t rc;
>> +
>> +    out=malloc(in_len*sizeof(*out));
>> +    p_out = out;
>> +    p_in = in;
>> +    end = in + in_len;
>> +    while((rc = mbrtoc32(p_out, p_in, end - p_in, NULL)))
>> +    {
>> +        if(rc ==  -1)      // invalid input
>> +            break;
>> +        else if(rc == (size_t)-2) // truncated input
>> +	  break;
>> +        else if(rc == (size_t)-3) // UTF-32 high surrogate
>> +            p_out += 1;
>> +        else {
>> +            p_in += rc;
>> +            p_out += 1;
>> +        };
>> +    }
>> +    // out_sz = p_out - out + 1;
>> +  *len=p_out - out + 1;
>> +  *outbuf=out;
>> +}
>> +
>> +void fromc32(char32_t *in, int in_len, char **outbuf, int *len)
>> +{
>> +  char *out,*p;
>> +  int i;
>> +   size_t rc;
>> +  p=out=malloc(MB_CUR_MAX * in_len);
>> +  for(i=0;i<in_len;i++) {
>> +    rc=c32rtomb(p, in[i], NULL);
>> +    if(rc == (size_t)-1) break;
>> +    p += rc;
>> +    }
>> +  *outbuf=out;
>> +  *len=p-out+1;
>> +}
>> +
>> +void dump_u8(char *in, int len)
>> +{
>> +    int i;
>> +    printf("Processing %d UTF-8 code units: [ ", len);
>> +    for(i = 0; i <len ; ++i) printf("%#x ", (unsigned char)in[i]);
>> +    puts("]");
>> +}
>> +
>> +void dump_u32(char32_t *in, int len)
>> +{
>> +    int i;
>> +    printf("Processing %d UTF-32 code units: [ ", len);
>> +    for(i = 0; i < len; ++i) printf("0x%04x ", in[i]);
>> +    puts("]");
>> +
>> +}
>> +
>> +int main(void){
>> +  char in[] = "z\u00df\u6c34\U0001F34C";
>> +  char32_t *out;
>> +  int out_len,len;
>> +  char *p;
>> +  // make sure we have utf8
>> +  setlocale(LC_ALL, "de_DE.utf8");
>> +  dump_u8(in,sizeof in / sizeof *in);
>> +  toc32(in,sizeof in / sizeof *in,&out,&out_len);
>> +  dump_u32(out,out_len);
>> +  fromc32(out,out_len,&p,&len);
>> +  dump_u8(p,len);
>> +  return 0;
>> +}
>> +
>> +.fi
>> +.EE
>> +This is a simple example and not production ready.
>> +.SH "CONFORMING TO"
>> +C11
>> +.SH "SEE ALSO"
>> +.BR mbrtoc16 (),
>> +.BR c16tocmbr (),
>> +.BR mbsrtowcs ()
>> --
>> 2.26.2
>>
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
