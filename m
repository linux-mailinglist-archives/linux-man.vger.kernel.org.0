Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BBB03BC362
	for <lists+linux-man@lfdr.de>; Mon,  5 Jul 2021 22:31:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229880AbhGEUe2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jul 2021 16:34:28 -0400
Received: from mout.gmx.net ([212.227.17.22]:37173 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229873AbhGEUe2 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 5 Jul 2021 16:34:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1625517108;
        bh=fhbBYAafTZuoTyjbiYLSwFgVtMwJyw3jcuMcwPm6ZD0=;
        h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
        b=ZsSPl+Nw2oqnfRg/6lr45MDFLel52+ukR3+44GhVqY2bBkEhRr7CxtkH6+cs33LuD
         dpx9RyDcqOnZGNX/+WTXKzUyiMpCxVekc9LPk8D9a9/ZumWxYxyxN5v+ZP/oVHGs1/
         8oKFCJAbpkkmymWZ9xdW/0R+aJyfmVvh5S2xmaZk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.200.19] ([109.42.1.230]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MFKGP-1ly0Gw3LWz-00FioC; Mon, 05
 Jul 2021 22:31:48 +0200
Subject: Re: new:mbrtoc32.3: convert from to c32
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
References: <60cfa510.GHWZSa6DNoE9MWRF%Radisson97@gmx.de>
 <e957596f-ad38-ac7a-7291-652e5dda36a8@gmail.com>
 <53477e3b-7f94-743d-09e8-8dbb5166816d@gmail.com>
From:   Radisson <Radisson97@gmx.de>
Message-ID: <11286132-a911-bfb4-784d-b0326c8132eb@gmx.de>
Date:   Mon, 5 Jul 2021 22:31:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <53477e3b-7f94-743d-09e8-8dbb5166816d@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Provags-ID: V03:K1:uoqsOO1mDnTM+w+/7wDHXMcTEqjamAxm1d6XN5IYl7gsXjpls+v
 s8Yb+LAmxe3d2pS/hezhxDYOHz7+HDl2GajGu4+vMBdrQcyDxPUvMzeuQBWGFm6S66OFdyw
 zW0S4+Uu+8I8ogkaME1Gqjchvov0XxURBTI+iZijH7yyo7iGboN/oXnjb2oWKMc1aP2ot2v
 6nf8jKCsg2AwqC2pjm7lg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zeTjmortFvk=:+ZbHgncW76A3DB5rj62VnD
 abMQqd0uqw51bn54j4mF+i4CjqSP5+jyf5+q3V2N57HT9ppKznQUOYrczYthugpXH3t4Q7TFW
 U3+j9KG4uwndEswoRlzovj7I6uh3CbQKMgZnz/GPCNrqbLjNwovhNFSuWZz1Kdgw0uPKtjRnX
 B01Q34ZWIbc3JP6psVUVqldc+BpDtAxBJrX4HMZ+4R9zp+2U9Z4D5ixNK1BuGpqoIKnF2o/CN
 ZqFJJTUe8Wn2xuugzFo6824UjVqb3tBHMomswwKNyage0qzztbROK1408QEHeJhNNI08k5Xh+
 FbKtoueQBWzyHzcPRdd12SnBw1TibMCq258NogU3RRRGH7SGIrnBZvkGZZowvINqQqXHMNMb6
 UJh2l9eyaLhONuZMuYl/6VvQ6WxL3L2tHo4aFvdZ4JJrfpwIIgoStIult21/EcZ+x+Yk3go3/
 kdZcGz6bh3RoXgNurhW+C2DQdK7+u/6+xkdmsNyohwskoBCPZ9Qa/x9Ys6SfAiQSk4mZMXH4k
 73xbuoHXZIfrrE4ZHiRjyYHB78JXYCTQWcmSJvEqbDIOOnRt6bxinuZbwdJiqfQ3G3er0XDcp
 zEPOFf3QGYm+EAHzg3VWd9U8CO+pRbGown8obn6ZWjywVd7eabESJV2RkoJ+KW8CzDJWvH9gv
 BmbNf71YgyP7twsjAv+q2068hLSTIQ0rSxAoOzU2QcvXI2cHFd+fMLucaNOtxro+cNzdDFskl
 vV9Ac3ggGWiPhM8LjcELwhInazpXMDj+w5T2zxjthl+Al9KXvvriicUtct6YjNakC1LSfM9PS
 FknC15+58TpUdVZXxRRVbU1KSdcBVv5eiD+Cc9z8nOwPQmeOZrMVa0Xt1eOWHgZFdhlSEPgZM
 g1QcMjggs3uEHkgebMcZcustTrh78uL29TA4NIjsCYGujsIEGeXcc9tzmkCmyU9KCE7XujSSw
 RwJNTvY/7GwOSOMLVP1Kxs7s7mHoi7ykMSKk/GdvOwRxAbwNGb2wKA7tdvisLVWmH6kSa4cPd
 /Rkzpsh7BR/+gySmG1uU1AD3mvh7LeAaOc3SKXVirBEJ1RC1e8KFT+9j4K9xQF5yeJrcVKI8Q
 pwE72RrhoWCS19I7FgEXZMljVEwMhSMSQHH
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



Am 03.07.21 um 20:01 schrieb Alejandro Colomar (man-pages):
> Hi Peter,
>
> Please see some comments below.
>
> Thanks,
>
> Alex
>
> On 7/3/21 7:40 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Peter,
>>
>> On 6/20/21 10:29 PM, Radisson97@gmx.de wrote:
>>>  From eb1ee6439f85b6a349c84488fa63dc7b795e43a0 Mon Sep 17 00:00:00 200=
1
>>> From: Peter Radisson <--show-origin>
>>> Date: Sun, 20 Jun 2021 22:21:55 +0200
>>> Subject: [PATCH] convert between multibyte sequence and 32-bit wide ch=
aracter
>>>
>>> documentation including example
>>>
>>> Signed-off-by: Peter Radisson <--show-origin>
>> Thanks for the page.  I'll have a look at it.
>>
>> BTW, next time you document a glibc function from scratch, please CC
>> glibc <libc-alpha@sourceware.org> so that they can comment, and maybe
>> find some bugs that we may not be able to detect.
>>
>> Also, providing a rendered version of the page is good for glibc people
>> --who may not have cloned the man-pages-- to easily review it :)
>>
>> Rendered page:
>>
>> [[
>> MBRTOC32(3)         Linux Programmer's Manual        MBRTOC32(3)
>>
>> NAME
>>         mbrtoc32,  c32rtomb  - convert between multibyte sequence
>>         and 32=E2=80=90bit wide character
>>
>> SYNOPSIS
>>         #include <uchar.h>
>>
>>         size_t t mbrtoc32 (char32_t * restrict c32 ,
>>                                  mbstate_t * restrict p);
> That prototype seems wrong.  See:
>
> .../glibc$ grep_glibc_prototype mbrtoc32;
> wcsmbs/uchar.h:57:
> extern size_t mbrtoc32 (char32_t *__restrict __pc32,
> 			const char *__restrict __s, size_t __n,
> 			mbstate_t *__restrict __p) __THROW;
easy fix, there is a typo that eats the line

>>         size_t c32rtomb (char * restrict s, char32_t  c32 ,
>>                              mbstate_t * restrict p );
>>
>> DESCRIPTION
> Are there any important differences compared to the already-documented
> and C99-compliant mbrtowc(3) and wcrtomb(3)?  I mean, apart from the
> types of the parameters.
>
> I think I would refer to mbrtowc(3) (and wcrtomb(3)) and specify here
> only differences specific to these functions, such as the type.
>
> Maybe?:
>
> [
> These functions are equivalent to mbrtowc(3) and wcrtomb(3), except that
> these functions act on char32_t instead of wchar_t.
> ]
>
> Otherwise we're unnecessarily repeating all of the information.  If we
> use the same wording, we're just duplicating maintenance issues.  If we
> use a different wording, readers might wonder why, if they seem to be
> the same.
>
> Also, when we need to repeat the text of those pages because of slight
> differences, please use the text as similar as possible from those
> pages, for the same reasons.
>
I am no expert on the differences i will make contact with Bruno Haible,
i hope he can help (he wrote already).

>>         The mbrtoc32() function inspects at most n bytes  of  the
>>         UTF=E2=80=908  multibyte string starting at s.  If a multibyte =
is
>>         identified as valid the corresponding UCS=E2=80=9032 32=E2=80=
=90bit  wide
>>         character  is stored in c32.  If  the  multibyte  charac=E2=80=
=90
>>         ter is the null wide character, it resets the shift state
>>         *p to the initial state and returns 0.  If p is  NULL,  a
>>         static anonymous state known only to the function is used
>>         instead.
>>
>>         The  c32rtomb() function converts the 32=E2=80=90bit wide chara=
c=E2=80=90
>>         ter stored in c32 into a mutability  sequence   into  the
>>         memory s.
>>
>> RETURN VALUES
>>         The  mbrtoc32() function returns 0 for the nul character.
>>         -1 for invalid input, -2 for a truncated  input,  -3  for
>>         multibyte  32=E2=80=90bit wide character sequence that is writt=
en
>>         to *c32.  No bytes are processed from the input
>>
>>         Otherwise the number of bytes in the  multibyte  sequence
>>         is returned.
>>
>>         The c32tombr() function returns -1 on error otherwise the
>>         number of bytes used for the multibytes sequence.
>>
>> EXAMPLE>        The input sequence is written as byte sequence to allow=
 a
>>         proper display. Note that the input is UTF=E2=80=908 and UTF=E2=
=80=9032 ,
>>         it may not possible to convert every code.
>>
>>         #include <stdio.h>
>>         #include <stdlib.h>
>>         #include <locale.h>
>>         #include <uchar.h>
>>         #include <wchar.h>
>>
>>         void toc32( char *in,  int in_len, char32_t **outbuf, int *len)
> Please, follow the style of other existing pages (it's similar to the
> kernel coding style with some exceptions).
> Especially, regarding spaces around parentheses and commas (and other
> operators).
> Also, please use a consistent indentation of 4 spaces.
>
> https://www.kernel.org/doc/html/v4.10/process/coding-style.html#spaces
 =C2=A0=C2=A0=C2=A0 can i use:=C2=A0=C2=A0=C2=A0 indent -i4 -linux ?

>>         {
>>             char *p_in , *end ;
>>             char32_t *p_out,*out;
>>             size_t rc;
>>
>>             out=3Dmalloc(in_len*sizeof(*out));
>>             p_out =3D out;
>>             p_in =3D in;
>>             end =3D in + in_len;
>>             while((rc =3D mbrtoc32(p_out, p_in, end =E2=80=90 p_in, NUL=
L)))
>>             {
>>                 if(rc =3D=3D  =E2=80=901)      // invalid input
>>                     break;
>>                 else if(rc =3D=3D (size_t)=E2=80=902) // truncated inpu=
t
>>                break;
>>                 else if(rc =3D=3D (size_t)=E2=80=903) // UTF=E2=80=9032=
 high surrogate
>>                     p_out +=3D 1;
>>                 else {
>>                     p_in +=3D rc;
>>                     p_out +=3D 1;
>>                 };
>>             }
>>             // out_sz =3D p_out =E2=80=90 out + 1;
>>           *len=3Dp_out =E2=80=90 out + 1;
>>           *outbuf=3Dout;
>>         }
>>
>>         void fromc32(char32_t *in, int in_len, char **outbuf, int *len)
>>         {
>>           char *out,*p;
>>           int i;
>>            size_t rc;
>>           p=3Dout=3Dmalloc(MB_CUR_MAX * in_len);
>>           for(i=3D0;i<in_len;i++) {
>>             rc=3Dc32rtomb(p, in[i], NULL);
>>             if(rc =3D=3D (size_t)=E2=80=901) break;
>>             p +=3D rc;
>>             }
>>           *outbuf=3Dout;
>>           *len=3Dp=E2=80=90out+1;
>>         }
>>
>>         void dump_u8(char *in, int len)
>>         {
>>             int i;
>>             printf("Processing %d UTF=E2=80=908 code units: [ ", len);
>>             for(i =3D 0; i <len ; ++i) printf("%#x ", (unsigned char)in=
[i]);
>>             puts("]");
>>         }
>>
>>         void dump_u32(char32_t *in, int len)
>>         {
>>             int i;
>>             printf("Processing %d UTF=E2=80=9032 code units: [ ", len);
>>             for(i =3D 0; i < len; ++i) printf("0x%04x ", in[i]);
>>             puts("]");
>>
>>         }
>>
>>         int main(void){
>>           char in[] =3D "z00df6c34U0001F34C";
>>           char32_t *out;
>>           int out_len,len;
>>           char *p;
>>           // make sure we have utf8
>>           setlocale(LC_ALL, "de_DE.utf8");
>>           dump_u8(in,sizeof in / sizeof *in);
>>           toc32(in,sizeof in / sizeof *in,&out,&out_len);
>>           dump_u32(out,out_len);
>>           fromc32(out,out_len,&p,&len);
>>           dump_u8(p,len);
>>           return 0;
>>         }
>>
>>         This is a simple example and not production ready.
>>
>> CONFORMING TO
>>         C11
>>
>> SEE ALSO
>>         mbrtoc16(), c16tocmbr(), mbsrtowcs()
>>
>> Linux                      2021=E2=80=9006=E2=80=9002                MB=
RTOC32(3)
>> ]]
>>
>>> ---
>>>   man3/mbrtoc32.3 | 154 ++++++++++++++++++++++++++++++++++++++++++++++=
++
>>>   1 file changed, 154 insertions(+)
>>>   create mode 100644 man3/mbrtoc32.3
>>>
>>> diff --git a/man3/mbrtoc32.3 b/man3/mbrtoc32.3
>>> new file mode 100644
>>> index 000000000..8d0c33de1
>>> --- /dev/null
>>> +++ b/man3/mbrtoc32.3
>>> @@ -0,0 +1,154 @@
>>> +.TH  MBRTOC32  3 "2021-06-02" Linux "Linux Programmer's Manual"
>>> +.SH NAME
>>> +mbrtoc32, c32rtomb \- convert between multibyte sequence and 32-bit w=
ide character
>>> +.SH SYNOPSIS
>>> +.nf
>>> +.B #include <uchar.h>
>>> +.PP
>>> +.BI "size_t t mbrtoc32 (char32_t * restrict "c32 " ,"
>>> +.BI"                          const char *" restrict s " , size_t " n=
 " ,"
>>> +.BI "                         mbstate_t * restrict " p ");"
>>> +.PP
>>> +.BI "size_t c32rtomb (char * restrict " s ", char32_t  " c32 " ,"
>>> +.BI "                     mbstate_t * restrict " p " );"
>>> +.fi
>>> +.SH DESCRIPTION
>>> +The
>>> +.BR mbrtoc32  ()
>>> +function inspects at most
>>> +.I n
>>> +bytes of the UTF-8 multibyte string starting at
>>> +.IR s .
>>> +If a multibyte is identified as valid the corresponding UCS-32
>>> +32-bit wide character is stored in
>>> +.IR c32 .
>>> +If  the  multibyte  character is the null wide character, it
>>> +resets the shift state
>>> +.I *p
>>> +to the initial state and returns 0.
>>> +If
>>> +.I p
>>> +is  NULL,  a  static anonymous state known only to the
>>> +function is used instead.
>>> +.PP
>>> +The
>>> +.BR c32rtomb ()
>>> +function converts the 32-bit wide character stored in
>>> +.I c32
>>> +into a mutability sequence  into the memory
>>> +.IR s .
>>> +.SH "RETURN VALUES"
>>> +The
>>> +.BR mbrtoc32  ()
>>> +function returns
>>> +0 for the nul character.
>>> +\-1 for invalid input,
>>> +\-2 for a truncated input,
>>> +\-3 for multibyte 32-bit wide character sequence that is
>>> +written to
>>> +.IR *c32 .
>>> +No bytes are processed from the input
>>> +.PP
>>> +Otherwise the number of bytes in the multibyte sequence is returned.
>>> +.PP
>>> +The
>>> +.BR c32tombr  ()
>>> +function returns \-1 on error otherwise the number of bytes used
>>> +for the multibytes sequence.
>>> +.SH EXAMPLE
>>> +The input sequence is written as byte sequence to allow a proper
>>> +display. Note that the input is UTF-8 and UTF-32 , it may not possibl=
e
>>> +to convert every code.
>>> +.EX
>>> +.nf.
>>> +
>>> +#include <stdio.h>
>>> +#include <stdlib.h>
>>> +#include <locale.h>
>>> +#include <uchar.h>
>>> +#include <wchar.h>
>>> +
>>> +void toc32( char *in,  int in_len, char32_t **outbuf, int *len)
>>> +{
>>> +    char *p_in , *end ;
>>> +    char32_t *p_out,*out;
>>> +    size_t rc;
>>> +
>>> +    out=3Dmalloc(in_len*sizeof(*out));
>>> +    p_out =3D out;
>>> +    p_in =3D in;
>>> +    end =3D in + in_len;
>>> +    while((rc =3D mbrtoc32(p_out, p_in, end - p_in, NULL)))
>>> +    {
>>> +        if(rc =3D=3D  -1)      // invalid input
>>> +            break;
>>> +        else if(rc =3D=3D (size_t)-2) // truncated input
>>> +	  break;
>>> +        else if(rc =3D=3D (size_t)-3) // UTF-32 high surrogate
>>> +            p_out +=3D 1;
>>> +        else {
>>> +            p_in +=3D rc;
>>> +            p_out +=3D 1;
>>> +        };
>>> +    }
>>> +    // out_sz =3D p_out - out + 1;
>>> +  *len=3Dp_out - out + 1;
>>> +  *outbuf=3Dout;
>>> +}
>>> +
>>> +void fromc32(char32_t *in, int in_len, char **outbuf, int *len)
>>> +{
>>> +  char *out,*p;
>>> +  int i;
>>> +   size_t rc;
>>> +  p=3Dout=3Dmalloc(MB_CUR_MAX * in_len);
>>> +  for(i=3D0;i<in_len;i++) {
>>> +    rc=3Dc32rtomb(p, in[i], NULL);
>>> +    if(rc =3D=3D (size_t)-1) break;
>>> +    p +=3D rc;
>>> +    }
>>> +  *outbuf=3Dout;
>>> +  *len=3Dp-out+1;
>>> +}
>>> +
>>> +void dump_u8(char *in, int len)
>>> +{
>>> +    int i;
>>> +    printf("Processing %d UTF-8 code units: [ ", len);
>>> +    for(i =3D 0; i <len ; ++i) printf("%#x ", (unsigned char)in[i]);
>>> +    puts("]");
>>> +}
>>> +
>>> +void dump_u32(char32_t *in, int len)
>>> +{
>>> +    int i;
>>> +    printf("Processing %d UTF-32 code units: [ ", len);
>>> +    for(i =3D 0; i < len; ++i) printf("0x%04x ", in[i]);
>>> +    puts("]");
>>> +
>>> +}
>>> +
>>> +int main(void){
>>> +  char in[] =3D "z\u00df\u6c34\U0001F34C";
>>> +  char32_t *out;
>>> +  int out_len,len;
>>> +  char *p;
>>> +  // make sure we have utf8
>>> +  setlocale(LC_ALL, "de_DE.utf8");
>>> +  dump_u8(in,sizeof in / sizeof *in);
>>> +  toc32(in,sizeof in / sizeof *in,&out,&out_len);
>>> +  dump_u32(out,out_len);
>>> +  fromc32(out,out_len,&p,&len);
>>> +  dump_u8(p,len);
>>> +  return 0;
>>> +}
>>> +
>>> +.fi
>>> +.EE
>>> +This is a simple example and not production ready.
>>> +.SH "CONFORMING TO"
>>> +C11
>>> +.SH "SEE ALSO"
>>> +.BR mbrtoc16 (),
>>> +.BR c16tocmbr (),
>>> +.BR mbsrtowcs ()
>>> --
>>> 2.26.2
>>>

