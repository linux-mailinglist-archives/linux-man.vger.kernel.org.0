Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC0B13BA9E2
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 19:40:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbhGCRnI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 13:43:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbhGCRnI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 13:43:08 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7969EC061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 10:40:34 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id u5-20020a7bc0450000b02901480e40338bso7997580wmc.1
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 10:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4q/Jyvpvq2mfENZHd6fxCXxrbl+ZN3SjGF+Z4MlsOgc=;
        b=gqvPP45yKmuB1P0Nn01UFdibmLrm9Vlwi6Qp3t7yCJf7xWIyln85oHSB7MhA3kJJP8
         t61cEhlY9fPxWRHOSdT3LS7LJkyY5tM7CLD5TV5yx5WZXAFmYK2jPFVBZeXuJKw20PlN
         wDk47AkNntV70bIeH7Wc/1VF19QKRwYrcKRdxdKKUFrlTcSiyvR1ZsRKnHBW0w3aQktN
         5JsqlVqfs4CzE14i1/NK7PSBQ+9Q0ahelh+ES8jIyYpmDOeju/qbfenZ5rjBkbf6jQTk
         ITM+h1F9KU4B1rtkxVKP83BKkDFQ3susL7T+PUttWfG08aGugnij2Q6HTIGAV4z/cAVU
         ajeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4q/Jyvpvq2mfENZHd6fxCXxrbl+ZN3SjGF+Z4MlsOgc=;
        b=BLI2lDSav2WFCrO1281op3+xs9QyHSVTsto8ius/iXUV5WSFBBBOXORpH1/2SLZPFJ
         OvTHckmIRUYFS55U5+awc8RGWa6dPp79IuAO9g4as0zKdYb82AknztRLPnHBrpFYdV0r
         OteXDdq5Fo+kq3jQpl1EoBg3CLZABfdQ+nlUNC4iruBep/UtvllARsCqEAeAiBsqVeOm
         +mWrfMolJTrtmNq8M5GYFUFFa3jZbk7iJjT74AaKhrwA9E/XmsL0KIicrjs9Rst2gDcw
         1LKSMiHIUmOBbQIQUsur1CcH7AujksAGHWZied668W/5BlW7PEo6ue2pHV3gk0YKEik9
         4lBg==
X-Gm-Message-State: AOAM531B+ap7kPFDVvGVeIVyqU6RKUO/OKFDtt83L8mu+z4URmhsuGUY
        04lh21UAEu6KVzTTXPfCzns=
X-Google-Smtp-Source: ABdhPJzLoz9w3bHd18aLWUHLhLMg+Z5Tj2EcrierYE4d5j/njtCagvWiO4wzjUhNFIamvyoso9wAww==
X-Received: by 2002:a1c:f016:: with SMTP id a22mr5873573wmb.65.1625334032885;
        Sat, 03 Jul 2021 10:40:32 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n4sm7401317wrw.21.2021.07.03.10.40.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 10:40:32 -0700 (PDT)
Subject: Re: new:mbrtoc32.3: convert from to c32
To:     Radisson97@gmx.de
References: <60cfa510.GHWZSa6DNoE9MWRF%Radisson97@gmx.de>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e957596f-ad38-ac7a-7291-652e5dda36a8@gmail.com>
Date:   Sat, 3 Jul 2021 19:40:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <60cfa510.GHWZSa6DNoE9MWRF%Radisson97@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Peter,

On 6/20/21 10:29 PM, Radisson97@gmx.de wrote:
> From eb1ee6439f85b6a349c84488fa63dc7b795e43a0 Mon Sep 17 00:00:00 2001
> From: Peter Radisson <--show-origin>
> Date: Sun, 20 Jun 2021 22:21:55 +0200
> Subject: [PATCH] convert between multibyte sequence and 32-bit wide character
> 
> documentation including example
> 
> Signed-off-by: Peter Radisson <--show-origin>

Thanks for the page.  I'll have a look at it.

BTW, next time you document a glibc function from scratch, please CC
glibc <libc-alpha@sourceware.org> so that they can comment, and maybe
find some bugs that we may not be able to detect.

Also, providing a rendered version of the page is good for glibc people
--who may not have cloned the man-pages-- to easily review it :)

Rendered page:

[[
MBRTOC32(3)         Linux Programmer's Manual        MBRTOC32(3)

NAME
       mbrtoc32,  c32rtomb  - convert between multibyte sequence
       and 32‐bit wide character

SYNOPSIS
       #include <uchar.h>

       size_t t mbrtoc32 (char32_t * restrict c32 ,
                                mbstate_t * restrict p);

       size_t c32rtomb (char * restrict s, char32_t  c32 ,
                            mbstate_t * restrict p );

DESCRIPTION
       The mbrtoc32() function inspects at most n bytes  of  the
       UTF‐8  multibyte string starting at s.  If a multibyte is
       identified as valid the corresponding UCS‐32 32‐bit  wide
       character  is stored in c32.  If  the  multibyte  charac‐
       ter is the null wide character, it resets the shift state
       *p to the initial state and returns 0.  If p is  NULL,  a
       static anonymous state known only to the function is used
       instead.

       The  c32rtomb() function converts the 32‐bit wide charac‐
       ter stored in c32 into a mutability  sequence   into  the
       memory s.

RETURN VALUES
       The  mbrtoc32() function returns 0 for the nul character.
       -1 for invalid input, -2 for a truncated  input,  -3  for
       multibyte  32‐bit wide character sequence that is written
       to *c32.  No bytes are processed from the input

       Otherwise the number of bytes in the  multibyte  sequence
       is returned.

       The c32tombr() function returns -1 on error otherwise the
       number of bytes used for the multibytes sequence.

EXAMPLE
       The input sequence is written as byte sequence to allow a
       proper display. Note that the input is UTF‐8 and UTF‐32 ,
       it may not possible to convert every code.

       #include <stdio.h>
       #include <stdlib.h>
       #include <locale.h>
       #include <uchar.h>
       #include <wchar.h>

       void toc32( char *in,  int in_len, char32_t **outbuf, int *len)
       {
           char *p_in , *end ;
           char32_t *p_out,*out;
           size_t rc;

           out=malloc(in_len*sizeof(*out));
           p_out = out;
           p_in = in;
           end = in + in_len;
           while((rc = mbrtoc32(p_out, p_in, end ‐ p_in, NULL)))
           {
               if(rc ==  ‐1)      // invalid input
                   break;
               else if(rc == (size_t)‐2) // truncated input
              break;
               else if(rc == (size_t)‐3) // UTF‐32 high surrogate
                   p_out += 1;
               else {
                   p_in += rc;
                   p_out += 1;
               };
           }
           // out_sz = p_out ‐ out + 1;
         *len=p_out ‐ out + 1;
         *outbuf=out;
       }

       void fromc32(char32_t *in, int in_len, char **outbuf, int *len)
       {
         char *out,*p;
         int i;
          size_t rc;
         p=out=malloc(MB_CUR_MAX * in_len);
         for(i=0;i<in_len;i++) {
           rc=c32rtomb(p, in[i], NULL);
           if(rc == (size_t)‐1) break;
           p += rc;
           }
         *outbuf=out;
         *len=p‐out+1;
       }

       void dump_u8(char *in, int len)
       {
           int i;
           printf("Processing %d UTF‐8 code units: [ ", len);
           for(i = 0; i <len ; ++i) printf("%#x ", (unsigned char)in[i]);
           puts("]");
       }

       void dump_u32(char32_t *in, int len)
       {
           int i;
           printf("Processing %d UTF‐32 code units: [ ", len);
           for(i = 0; i < len; ++i) printf("0x%04x ", in[i]);
           puts("]");

       }

       int main(void){
         char in[] = "z00df6c34U0001F34C";
         char32_t *out;
         int out_len,len;
         char *p;
         // make sure we have utf8
         setlocale(LC_ALL, "de_DE.utf8");
         dump_u8(in,sizeof in / sizeof *in);
         toc32(in,sizeof in / sizeof *in,&out,&out_len);
         dump_u32(out,out_len);
         fromc32(out,out_len,&p,&len);
         dump_u8(p,len);
         return 0;
       }

       This is a simple example and not production ready.

CONFORMING TO
       C11

SEE ALSO
       mbrtoc16(), c16tocmbr(), mbsrtowcs()

Linux                      2021‐06‐02                MBRTOC32(3)
]]

> ---
>  man3/mbrtoc32.3 | 154 ++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 154 insertions(+)
>  create mode 100644 man3/mbrtoc32.3
> 
> diff --git a/man3/mbrtoc32.3 b/man3/mbrtoc32.3
> new file mode 100644
> index 000000000..8d0c33de1
> --- /dev/null
> +++ b/man3/mbrtoc32.3
> @@ -0,0 +1,154 @@
> +.TH  MBRTOC32  3 "2021-06-02" Linux "Linux Programmer's Manual"
> +.SH NAME
> +mbrtoc32, c32rtomb \- convert between multibyte sequence and 32-bit wide character
> +.SH SYNOPSIS
> +.nf
> +.B #include <uchar.h>
> +.PP
> +.BI "size_t t mbrtoc32 (char32_t * restrict "c32 " ,"
> +.BI"                          const char *" restrict s " , size_t " n " ,"
> +.BI "                         mbstate_t * restrict " p ");"
> +.PP
> +.BI "size_t c32rtomb (char * restrict " s ", char32_t  " c32 " ,"
> +.BI "                     mbstate_t * restrict " p " );"
> +.fi
> +.SH DESCRIPTION
> +The
> +.BR mbrtoc32  ()
> +function inspects at most
> +.I n
> +bytes of the UTF-8 multibyte string starting at
> +.IR s .
> +If a multibyte is identified as valid the corresponding UCS-32
> +32-bit wide character is stored in
> +.IR c32 .
> +If  the  multibyte  character is the null wide character, it
> +resets the shift state
> +.I *p
> +to the initial state and returns 0.
> +If
> +.I p
> +is  NULL,  a  static anonymous state known only to the
> +function is used instead.
> +.PP
> +The
> +.BR c32rtomb ()
> +function converts the 32-bit wide character stored in
> +.I c32
> +into a mutability sequence  into the memory
> +.IR s .
> +.SH "RETURN VALUES"
> +The
> +.BR mbrtoc32  ()
> +function returns
> +0 for the nul character.
> +\-1 for invalid input,
> +\-2 for a truncated input,
> +\-3 for multibyte 32-bit wide character sequence that is
> +written to
> +.IR *c32 .
> +No bytes are processed from the input
> +.PP
> +Otherwise the number of bytes in the multibyte sequence is returned.
> +.PP
> +The
> +.BR c32tombr  ()
> +function returns \-1 on error otherwise the number of bytes used
> +for the multibytes sequence.
> +.SH EXAMPLE
> +The input sequence is written as byte sequence to allow a proper
> +display. Note that the input is UTF-8 and UTF-32 , it may not possible
> +to convert every code.
> +.EX
> +.nf.
> +
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <locale.h>
> +#include <uchar.h>
> +#include <wchar.h>
> +
> +void toc32( char *in,  int in_len, char32_t **outbuf, int *len)
> +{
> +    char *p_in , *end ;
> +    char32_t *p_out,*out;
> +    size_t rc;
> +
> +    out=malloc(in_len*sizeof(*out));
> +    p_out = out;
> +    p_in = in;
> +    end = in + in_len;
> +    while((rc = mbrtoc32(p_out, p_in, end - p_in, NULL)))
> +    {
> +        if(rc ==  -1)      // invalid input
> +            break;
> +        else if(rc == (size_t)-2) // truncated input
> +	  break;
> +        else if(rc == (size_t)-3) // UTF-32 high surrogate
> +            p_out += 1;
> +        else {
> +            p_in += rc;
> +            p_out += 1;
> +        };
> +    }
> +    // out_sz = p_out - out + 1;
> +  *len=p_out - out + 1;
> +  *outbuf=out;
> +}
> +
> +void fromc32(char32_t *in, int in_len, char **outbuf, int *len)
> +{
> +  char *out,*p;
> +  int i;
> +   size_t rc;
> +  p=out=malloc(MB_CUR_MAX * in_len);
> +  for(i=0;i<in_len;i++) {
> +    rc=c32rtomb(p, in[i], NULL);
> +    if(rc == (size_t)-1) break;
> +    p += rc;
> +    }
> +  *outbuf=out;
> +  *len=p-out+1;
> +}
> +
> +void dump_u8(char *in, int len)
> +{
> +    int i;
> +    printf("Processing %d UTF-8 code units: [ ", len);
> +    for(i = 0; i <len ; ++i) printf("%#x ", (unsigned char)in[i]);
> +    puts("]");
> +}
> +
> +void dump_u32(char32_t *in, int len)
> +{
> +    int i;
> +    printf("Processing %d UTF-32 code units: [ ", len);
> +    for(i = 0; i < len; ++i) printf("0x%04x ", in[i]);
> +    puts("]");
> +
> +}
> +
> +int main(void){
> +  char in[] = "z\u00df\u6c34\U0001F34C";
> +  char32_t *out;
> +  int out_len,len;
> +  char *p;
> +  // make sure we have utf8
> +  setlocale(LC_ALL, "de_DE.utf8");
> +  dump_u8(in,sizeof in / sizeof *in);
> +  toc32(in,sizeof in / sizeof *in,&out,&out_len);
> +  dump_u32(out,out_len);
> +  fromc32(out,out_len,&p,&len);
> +  dump_u8(p,len);
> +  return 0;
> +}
> +
> +.fi
> +.EE
> +This is a simple example and not production ready.
> +.SH "CONFORMING TO"
> +C11
> +.SH "SEE ALSO"
> +.BR mbrtoc16 (),
> +.BR c16tocmbr (),
> +.BR mbsrtowcs ()
> --
> 2.26.2
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
