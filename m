Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 020C86D13CD
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 01:57:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231138AbjC3X5s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Mar 2023 19:57:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230340AbjC3X5r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Mar 2023 19:57:47 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F344BCA26
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 16:57:45 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id j18-20020a05600c1c1200b003ee5157346cso14364492wms.1
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 16:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680220664; x=1682812664;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Em/2yXPHi96K0bB1r2brvgsHW7qhTyIo8OdrnWfxeNc=;
        b=C62l8CuT4KI9yTi6BghQSZq5YBWdkWP5sZkZLeEWWjKbFhJhWSY7yujG/LFg5pG/AU
         6etRjImFMW+tnLfW5IJQSVRX+R5X1HF7MFWUk0mEEvj5/tWGxZlL4HPYsJ7VxDACYEdB
         Tlxk6PdleKv7aPmxnfpR33jKFvQs5p8CGkklr0hDYlY1wb/BYPLspOsgfA032YQRvubL
         jSZZPhfCU4lFtN7CwhEmnHNGxz/E7Hpamzf5ItnGvppJTXR4El3x5sG8NeitQpG30vtJ
         wJHIn2IPRUvepZ+Im6EtM6p4sjASyp+i3MBDZ3AN5VAUxWZVjREKyO3JtgypyuVyZEDB
         Y3dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680220664; x=1682812664;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Em/2yXPHi96K0bB1r2brvgsHW7qhTyIo8OdrnWfxeNc=;
        b=oEXKHl2EaTXBWwSDoo3DZ2efRnMXjDE9nRADCxzXJY0a4J0R7C6MC1Nv6yYett8jup
         i6kKOP1R6hNqsc18xaXShLNeCMYz2/usUXx9L5nAStsB+8Plg7SdEzq9RmuoJ/RjWBYR
         OcwvxpOMEj4p3f6P8Z8bb0UBDt3GAh/TrMVeBm/sb8d+mlEgkMwQ8pdoqVDySNmBwqDF
         hNhka4v8XTg2a099q+WUmTxf6bSeJ2ZdFTGLXzYWI/NWcCmmP9SWOKOld1T3PzzGOGhr
         spaJAPK/HDXO5DoAxP2ng0zp0mFAqbPQL13BorQPDKAhTNHx5ZS2rtUVd86qAjVo7TdX
         uC3w==
X-Gm-Message-State: AO0yUKVFjKgAsNLvaxg72+f5vwMazaQtItjnOsAugdeL3aVlO1Y+y9O9
        TuSZsG3hcNqmIo1/hYRWQyw=
X-Google-Smtp-Source: AK7set9SoT9q6Lra253DlLcJqpEIEUAQt99qrfJtwaqY8Yuv8pkyQ6267hzvQ1J+K8te1IPe4eFtLQ==
X-Received: by 2002:a1c:f201:0:b0:3ee:6d55:8b68 with SMTP id s1-20020a1cf201000000b003ee6d558b68mr18892869wmc.37.1680220664362;
        Thu, 30 Mar 2023 16:57:44 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id bd6-20020a05600c1f0600b003ef36ef3833sm7621474wmb.8.2023.03.30.16.57.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 16:57:44 -0700 (PDT)
Message-ID: <a60d2199-f35e-8812-77e1-226ac4912490@gmail.com>
Date:   Fri, 31 Mar 2023 01:57:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Ping: [PATCH] ioctl_pipe.2: Add.
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     chrubis@suse.cz, linux-man@vger.kernel.org
Cc:     David Howells <dhowells@redhat.com>
References: <20220608124710.12647-1-chrubis@suse.cz>
 <8f521c29-3822-0e04-9f67-9b832edd2d50@gmail.com>
In-Reply-To: <8f521c29-3822-0e04-9f67-9b832edd2d50@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------YxtGSh6tBAu85yybHNDPY8ZP"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------YxtGSh6tBAu85yybHNDPY8ZP
Content-Type: multipart/mixed; boundary="------------OxsPCHl0EFnzqMi00XnwANus";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: chrubis@suse.cz, linux-man@vger.kernel.org
Cc: David Howells <dhowells@redhat.com>
Message-ID: <a60d2199-f35e-8812-77e1-226ac4912490@gmail.com>
Subject: Ping: [PATCH] ioctl_pipe.2: Add.
References: <20220608124710.12647-1-chrubis@suse.cz>
 <8f521c29-3822-0e04-9f67-9b832edd2d50@gmail.com>
In-Reply-To: <8f521c29-3822-0e04-9f67-9b832edd2d50@gmail.com>

--------------OxsPCHl0EFnzqMi00XnwANus
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Cyril,

I'm checking old mail, and found that this thread was unresolved.
Do you still have that page around and would like to resend?

Thanks,
Alex

On 6/8/22 17:12, Alejandro Colomar wrote:
> Hi Cyril,
>=20
> On 6/8/22 14:47, chrubis@suse.cz wrote:
>> From: Cyril Hrubis <chrubis@suse.cz>
>>
>> Signed-off-by: Cyril Hrubis <chrubis@suse.cz>
>=20
> Please check a few things below.  Thanks for the page.
>=20
> Also, the title could be a little bit clearer; maybe "Add page".
>=20
> Cheers,
>=20
> Alex
>=20
>> ---
>>   man2/ioctl_pipe.2 | 75 +++++++++++++++++++++++++++++++++++++++++++++=
++
>>   1 file changed, 75 insertions(+)
>>   create mode 100644 man2/ioctl_pipe.2
>>
>> diff --git a/man2/ioctl_pipe.2 b/man2/ioctl_pipe.2
>> new file mode 100644
>> index 000000000..e60bc2134
>> --- /dev/null
>> +++ b/man2/ioctl_pipe.2
>> @@ -0,0 +1,75 @@
>> +.\" Copyright (c) 2022 by Cyril Hrubis <chrubi@suse.cz>
>> +.\"
>> +.\" %%%LICENSE_START(VERBATIM)
>> +.\" Permission is granted to make and distribute verbatim copies of t=
his
>> +.\" manual provided the copyright notice and this permission notice a=
re
>> +.\" preserved on all copies.
>> +.\"
>> +.\" Permission is granted to copy and distribute modified versions of=
 this
>> +.\" manual under the conditions for verbatim copying, provided that t=
he
>> +.\" entire resulting derived work is distributed under the terms of a=

>> +.\" permission notice identical to this one.
>> +.\"
>> +.\" Since the Linux kernel and libraries are constantly changing, thi=
s
>> +.\" manual page may be incorrect or out-of-date.  The author(s) assum=
e no
>> +.\" responsibility for errors or omissions, or for damages resulting =
from
>> +.\" the use of the information contained herein.  The author(s) may n=
ot
>> +.\" have taken the same level of care in the production of this manua=
l,
>> +.\" which is licensed free of charge, as they might when working
>> +.\" professionally.
>> +.\"
>> +.\" Formatted or processed versions of this manual, if unaccompanied =
by
>> +.\" the source, must acknowledge the copyright and authors of this wo=
rk.
>> +.\" %%%LICENSE_END
>=20
> Could you please add just an SPDX-License-Identifier?  I removed the=20
> actual license texts recently to have less overhead lines.
>=20
> See=20
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man=
2/pipe.2?h=3Dalx/main&id=3D5fbde956cb550ffeae83c31e4f8c1142544f4b4f>
>=20
>> +.\"
>> +.\"
>> +.TH IOCTL_PIPE 2 2022-08-06 "Linux" "Linux Programmer's Manual"
>> +.SH NAME
>> +ioctl_pipe \- ioctl() operations for General notification mechanism
>> +.SH SYNOPSIS
>> +.nf
>> +.B #include <linux/watch_queue.h>
>> +.PP
>> +.BI "int ioctl(int " pipefd[1] ", IOC_WATCH_QUEUE_SET_SIZE, int " siz=
e ");
>> +.PP
>=20
> You can remove that .PP to get the two prototypes together.  I looks=20
> nicer, IMO.
>=20
> See man-pages(7):
>     SYNOPSIS
>         Wrap the function prototype(s) in a .nf/.fi pair to  pre-
>         vent filling.
>=20
>         In  general,  where  more  than one function prototype is
>         shown in the SYNOPSIS, the prototypes should not be sepa-
>         rated by blank lines.  However, blank lines (achieved us-
>         ing .PP) may be added in the following cases:
>=20
>         *  to separate long lists of function prototypes into re-
>            lated groups (see for example list(3));
>=20
>         *  in other cases that may improve readability.
>=20
>=20
>> +.BI "int ioctl(int " pipefd[1] ", IOC_WATCH_QUEUE_SET_FILTER, struct =
watch_notification_filter * " filter ");
>=20
> This gets past the 80-col margin.  Check for example openat2(2) for a=20
> solution.
>=20
>> +.fi
>> +.PP
>> +.SH DESCRIPTION
>> +The following
>> +.BR ioctl (2)
>> +operations are provided to set up a general notification queue parame=
ters.
>=20
> s/a //   ?
>=20
>> +The notification queue is build on the top of a
>=20
> s/build/built/
>=20
>> +.BR pipe (2)
>> +opened with
>=20
> s/with/with the/
>=20
>> +.B O_NOTIFICATION_PIPE
>> +flag.
>> +.TP
>> +.BR IOC_WATCH_QUEUE_SET_SIZE " (since Linux 5.8)"
>> +.\" commit c73be61cede5882f9605a852414db559c0ebedfd
>> +Preallocates the pipe buffer memory so that it can fit size notificat=
ion messages. Currently the size must be between 1 and 512.
>> +.TP
>> +.BR IOC_WATCH_QUEUE_SET_FILTER " (since Linux 5.8)"
>> +.\" commit c73be61cede5882f9605a852414db559c0ebedfd
>> +Watch queue filter, if set, can limit events that are received.
>=20
> Of course if set, isn't it?  I mean, if it's not set, it can't do=20
> nothing.  Do we need to specify "if set"? :)
>=20
>> +Filters are passed in a \fIstruct watch_notification_filter\fP
>=20
> .I struct watch_notification_filter
>=20
>> +and each filter is described by \fIstruct watch_notification_type_fil=
ter\fP structure.
>=20
> .I str [...] ilter
>=20
>> +
>=20
> .PP
>=20
> See man-pages(7):
>     Formatting conventions (general)
>         Paragraphs  should be separated by suitable markers (usu-
>         ally either .PP or .IP).  Do not separate paragraphs  us-
>         ing  blank  lines,  as  this results in poor rendering in
>         some output formats (such as PostScript and PDF).
>=20
>> +.EX
>> +struct watch_notification_filter {
>> +        __u32   nr_filters;
>> +        __u32   __reserved;
>> +        struct watch_notification_type_filter filters[];
>> +};
>> +
>> +struct watch_notification_type_filter {
>> +        __u32   type;
>> +        __u32   info_filter;
>> +        __u32   info_mask;
>> +        __u32   subtype_filter[8];
>> +};
>> +.EE
>> +
>=20
> .PP
>=20
>> +.SH SEE ALSO
>> +.BR pipe (2),
>> +.BR ioctl (2)
>=20
> | sort
>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------OxsPCHl0EFnzqMi00XnwANus--

--------------YxtGSh6tBAu85yybHNDPY8ZP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQmIfcACgkQnowa+77/
2zLaeg/8CC4fBsZ9ivj+O/AnSaxq9IDZeuuU4lPqTen66mfEGSgReO3QOM8I7yKy
9RKv8+6RtI5ThFNtHfPxpqpB9KZ8pe8dFRnTaHUD9AZqfE/Rq2qH+Y7AdFOTgKXi
XL8v8CnR3vAwTviSnr3Gmne9r+zT7QWcbNjnI4AKTFYJbQDnk2WvBW/Phf+2tw80
lKigXDJLupRfAQtyquHVyU/vis9QQUtaLqrkoI6A81cQIcsl4nzST0ynvzFvAr8I
E5iAs62wsblP3UIyURMDUUTJrs/dXVQPrJd25LTO38wa8mo+NIQJRAgOWHwqQ9Tm
IhT03IhfmbttBsJg74CH3kNnZthiz9d7HwZEC8CDBcdxjG3oDlKuWXj+NruH0if/
HQZb5BLeCjDvgeNFNB7uhaqRr3Yj3QVmfIk5LUL5V/NsHY/It0MnIs8UmGtm/883
Z3QtBultJ8ht6tFXVh42GUs1nP85xFMjzhlMjg+Aa9YnCO7IXICfo3mWAUT+zSDs
EvJR9AgIgaqnFUQeZ9/qoAq36O0T8fHmkXttAvQsONL5XiwSLkHoIW8CczkPTPjp
tafPJZrL5LWBJgQ7oYBW/HjpR1di1Fdn6pj8nmn8UJTGzEsEVgYdph99xgc0nQmR
+iHxvcmlHqiy0VzKOHzeEPSc/Oxd1byujAKrg1QuvKCtS+bPX7k=
=BX/P
-----END PGP SIGNATURE-----

--------------YxtGSh6tBAu85yybHNDPY8ZP--
