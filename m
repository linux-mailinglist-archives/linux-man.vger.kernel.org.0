Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7ED66EA861
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 12:34:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229657AbjDUKeo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 06:34:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbjDUKen (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 06:34:43 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58BF6A5ED
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 03:34:42 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f18dacd392so8089885e9.0
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 03:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682073281; x=1684665281;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gyn2DSx/5xLm1Xkp5TsXoNTWZUZJBM7BG8Dp+fKS3xA=;
        b=FIhiX2rfILBX/SjXPN8WhSL6M2FVbVHTsYXwgM8bSS6o2Vi28XOb2rSYuaz1OA5DHj
         a/r+q7Y9Tl21eYkniMDiLAdYp1qXY67qbEoPN3JpGY3L2skThOCeq6iUtyYUp0ZKMt10
         FYWTlHp93AOjCTmNNlpcqWiK+nCQ0CbtfyJxBrG+t08UWZSMD2LxmEgbOvVC5HOFGepS
         VfGRAxrFdNAZjf3B1tZo5gytxs/xTwcK6qCuoT8k7xsVjFyv3ojl6VLVxtFWIKxLvV2k
         pgNJMTxOHB1SP6i0rG+HhsRN9MlOvmZoPOm+TsJMCKqSSeKBjAPS/WCRA5qqexiKRFH4
         t9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682073281; x=1684665281;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gyn2DSx/5xLm1Xkp5TsXoNTWZUZJBM7BG8Dp+fKS3xA=;
        b=SlstVod9iNXrtY5qLZzWu2r4Fsn8ICXUGne6KhOWqU9NA1alSWu7t1hpKiiHQl7t6A
         OLO/8tBYt2U56W5iHDJGYKsMGHJGJJ3bFe16ReNM2/JpcFYh5Fq6bH6FtUr8HXztpjCG
         i54Uj8btcT02QersOm/W+5QK0F8vS5E3OkQoLcnJo254y2vFi7sqBWEVK7bu9khmJGRb
         +d58ybpLvlCK+TuRz7Y9+vA51PBGDvuK+u6hihqsUJaRyz8n5ZGED/tCsK+FP4Y1NyjG
         vx27WfvZQE5L+Lg9H69u6KSDD1TnDgCJu25XGaU2Bpg/bRfjeKZF20DoLVhyoPRN0kOF
         n01w==
X-Gm-Message-State: AAQBX9dmj3Ttk9c7D9DX0A6o+RB1RmKCbiccgTO2oSypnIdji9u/I/RD
        DxxsQPdgs0agdK6Dt3nblHo=
X-Google-Smtp-Source: AKy350YnWREKKTEJVzY2+/6t41qYJgbCT0NzwrnFvoukL4qn6OjQ12MvKeJlreQSAlNfeXY7qdz/GA==
X-Received: by 2002:adf:dd85:0:b0:2f9:a798:602c with SMTP id x5-20020adfdd85000000b002f9a798602cmr3602477wrl.12.1682073280621;
        Fri, 21 Apr 2023 03:34:40 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id u15-20020a5d468f000000b002f5fbc6ffb2sm4139533wrq.23.2023.04.21.03.34.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 03:34:40 -0700 (PDT)
Message-ID: <d4567f56-2061-385e-fd32-472b1e5b1b23@gmail.com>
Date:   Fri, 21 Apr 2023 12:34:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v8 3/5] regex.3: Finalise move of reg*.3type
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com>
In-Reply-To: <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------clCdLNAx50WJdjdgxEa90Bf7"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------clCdLNAx50WJdjdgxEa90Bf7
Content-Type: multipart/mixed; boundary="------------CpXn4YXkUNkttzxJ0NKrgNPx";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <d4567f56-2061-385e-fd32-472b1e5b1b23@gmail.com>
Subject: Re: [PATCH v8 3/5] regex.3: Finalise move of reg*.3type
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com>
In-Reply-To: <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com>

--------------CpXn4YXkUNkttzxJ0NKrgNPx
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/21/23 12:33, Alejandro Colomar wrote:
> Hi!
>=20
> On 4/21/23 04:48, =D0=BD=D0=B0=D0=B1 wrote:
>> They're inextricably linked, not cross-referenced at all,
>> and not used anywhere else.
>>
>> Now that they (realistically) exist to the reader, add a note
>> on how big nmatch can be; POSIX even says "The application developer
>> should note that there is probably no reason for using a value of
>> nmatch that is larger than preg=E2=88=92>re_nsub+1.".
>>
>> Also remove the now-duplicate regmatch_t declaration.
>>
>> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli=
=2Exyz>
>=20
> Patch applied, with minor tweaks; see below (I guess you approve them).=

>=20
> Cheers,
> Alex
>=20
>> ---
>>  man3/regex.3 | 54 +++++++++++++++++++++++++++++++++------------------=
-
>>  1 file changed, 34 insertions(+), 20 deletions(-)
>>
>> diff --git a/man3/regex.3 b/man3/regex.3
>> index f6465d484..46fd3adef 100644
>> --- a/man3/regex.3
>> +++ b/man3/regex.3
>> @@ -15,7 +15,7 @@ .SH LIBRARY
>>  Standard C library
>>  .RI ( libc ", " \-lc )
>>  .SH SYNOPSIS
>> -.nf
>> +.EX
>=20
> I've been thinking about this, but am not yet fully convinced.  I'll
> propose you the two alternatives, and let you decide what looks best.
>=20
> (a)  Use .nf/.fi for the function prototypes, and .EX/.EE for the
>      types.
>=20
> (b)  .EX/.EE for everything, as you did.
>=20
> Please have a look at the PDF versions (you can run
> `pdfman ./man3/regex.3` after you `source ./scripts/bash_aliases`).
>=20
> If you're going to use it often, I suggest the following in
> ~/.bash_aliases:
>=20
> if [ -f ~/src/linux/man-pages/man-pages/main/scripts/bash_aliases ]; th=
en
> 	. ~/src/linux/man-pages/man-pages/main/scripts/bash_aliases;
> fi;
>=20
>=20
> I've remove these bits from this patch, since the rest seems
> uncontroversial to me.

But I haven't pushed, so that we can still have it in the same
patch if you confirm.

>=20
>=20
>>  .B #include <regex.h>
>>  .PP
>>  .BI "int regcomp(regex_t *restrict " preg ", const char *restrict " r=
egex ,
>> @@ -43,7 +43,7 @@ .SH SYNOPSIS
>>  .B } regmatch_t;
>>  .PP
>>  .BR typedef " /* ... */  " regoff_t;
>> -.fi
>> +.EE
>>  .SH DESCRIPTION
>>  .SS Compilation
>>  .BR regcomp ()
>> @@ -60,6 +60,21 @@ .SS Compilation
>>  The locale must be the same when running
>>  .BR regexec ().
>>  .PP
>> +After
>> +.BR regcomp ()
>> +succeeds,
>> +.I preg->re_nsub
>> +holds the number of subexpressions in
>> +.IR regex .
>> +Thus, a value of
>> +.I preg->re_nsub
>> ++ 1
>> +passed as
>> +.I nmatch
>> +to
>> +.BR regexec ()
>> +is sufficient to capture all matches.
>> +.PP
>>  .I cflags
>>  is the
>>  bitwise OR
>> @@ -192,22 +207,6 @@ .SS Match offsets
>>  .IR N+1 .)
>>  Any unused structure elements will contain the value \-1.
>>  .PP
>> -The
>> -.I regmatch_t
>> -structure which is the type of
>> -.I pmatch
>> -is defined in
>> -.IR <regex.h> .
>> -.PP
>> -.in +4n
>> -.EX
>> -typedef struct {
>> -    regoff_t rm_so;
>> -    regoff_t rm_eo;
>> -} regmatch_t;
>> -.EE
>> -.in
>> -.PP
>>  Each
>>  .I rm_so
>>  element that is not \-1 indicates the start offset of the next larges=
t
>> @@ -218,7 +217,7 @@ .SS Match offsets
>>  which is the offset of the first character after the matching text.
>>  .PP
>>  .I regoff_t
>> -It is a signed integer type
>> +is a signed integer type
>>  capable of storing the largest value that can be stored in either an
>>  .I ptrdiff_t
>>  type or a
>> @@ -344,12 +343,27 @@ .SH HISTORY
>>  POSIX.1-2001.
>>  .PP
>>  Prior to POSIX.1-2008,
>> -the type was
>> +.I regoff_t
>> +was required to be
>>  capable of storing the largest value that can be stored in either an
>>  .I off_t
>>  type or a
>>  .I ssize_t
>>  type.
>> +.SH NOTES
>=20
> NOTES is dreaded, and only used when no other section would work.
> CAVEATS (recently added to the Linux man-pages) is more suitable;
> I've edited your patch to use it.
>=20
>> +.I re_nsub
>> +is only required to be initialized if
>> +.B REG_NOSUB
>> +wasn't specified, but all known implementations initialize it regardl=
ess.
>> +.\" glibc, musl, 4.4BSD, illumos
>> +.PP
>> +Both
>> +.I regex_t
>> +and
>> +.I regmatch_t
>> +may (and do) have more members, in any order.
>> +Always reference them by name.
>> +.\" illumos has two more start/end pairs and the first one is of poin=
ters
>>  .SH EXAMPLES
>>  .EX
>>  #include <stdint.h>
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------CpXn4YXkUNkttzxJ0NKrgNPx--

--------------clCdLNAx50WJdjdgxEa90Bf7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCZr8ACgkQnowa+77/
2zKWZw//Wvu+hlxxl2JHWMzuZgvpcJ4tqzI0XrNABUBFetPpP/CdYKidcX1Ht4QB
H87sklDRmdkWbD1yBmhcACSIlm9v66c1dHB1jSbGpzCIkdAuJYWwedUCGjfdDzWH
1mC9qCzQsa64tUjXueSmw60St5Hh8nGDlHiu6UPjMwZdehEGaelHGOzE198XhZNU
ENAVDrh3w5BQfVfeaC4xmaigkmXIuJ61jmUXLm4NX3HjV7hENAo3IlV3NIjTlsh2
INto68DtgV0bQMZyndAhzM4Z6ZckVwzJgNy3PUM+VUGSi/qs1xM4ekpF7eYwvr3u
ffBPKbwgSO58087OYNpMiBpPqQza026yRucN3B5fKmwwvMs+30o2YpHCH35KqvP4
qszKcdKDt812pkzzmr/SFoNUon3GwIxkc236f6G483+Jt0qik4TmHz3qsnqkz74F
yARWOluBjj5kFF582/cVZNpXKqZ48P0h+C5avAtIEj/DQaz4WoIn0JSy8ooK4B6y
R4mP08A2q5KK7CxbbLkzEJI+sfL/C2Fh7mmhYPDFyGRStH0wkOv3SD44DgEgU7zU
IU7j9bj4TR5CODNcODnQAERxwlCfZmzzfvf4ESoX0MKHUfgGcVbBh9a2ovl41RMY
K44xNX2grIQhoeDmd3WA5zzOfGeV1GCxVEdN7qZOMHhdulgeOpo=
=d3II
-----END PGP SIGNATURE-----

--------------clCdLNAx50WJdjdgxEa90Bf7--
