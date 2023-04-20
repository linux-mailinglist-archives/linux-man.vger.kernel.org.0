Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2E566E9552
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 15:03:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230025AbjDTNDg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 09:03:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbjDTNDf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 09:03:35 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2429CEB
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 06:03:34 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id n43-20020a05600c502b00b003f17466a9c1so3034850wmr.2
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 06:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681995812; x=1684587812;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WVN0BKruqsn+d9Z00kHZHmMgzq1L/nqas47P0nFyDxM=;
        b=rf3r6NP04+q9Uu857+ZECoaxR6dusgYCBoZvnxlrZks4PVvCTYKt59SDyZTo9cC4kj
         YbrR/1GmdZ++70ETWuJEEQn5PRgyIwjEAtB6JzpnycgnBKiJS4/nDDQeatDkFyIoHZCK
         8Mahgzd3fFFEGQL9uIKmmoMCjTHOy+CjycgjGQEEOdUjCc3bqSNf8GywEoDNLQouqpd5
         nRkgjvO4ia2zL2wBJYoOLcgt4zDQyMmzG2nrAasT3s22LhaCJmGXSXwTCnhgojwKvKGg
         0JrQcILnlOQS/qWBF7hrLOa7uexX4gvshtF4mtAQ/KJfWbqb/VyyXeXSCVWg5g2phBlF
         fTeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681995812; x=1684587812;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WVN0BKruqsn+d9Z00kHZHmMgzq1L/nqas47P0nFyDxM=;
        b=ZqTEznHqjzfaSGu/IWmMtUIZGcXob8CJxMbrJmn+Gvplw23Ffqm5iKACe5eqyOpyVR
         aSPIopWKTml1ELATVeh1Xl49FE8S94Upwnjq6fRdTsqgEvzKvFXeABLrwHk9F/b73b+o
         SMRQ7XwNb34qRONqWpNZ9Mil7pv5O7jNAieiLlx8a7dFR/JZUcBI8e0566cSroE6GNW9
         mJWK30YLhXtoY03X38W+zu4jLiUDEQBPxRoHoC4lHqCPpNcXm+5dLeiF9juNJR3og7uS
         0fZ1KIQPNvLzOy1KUhVYAU9bfwSXQeZbIaPy4n86lMMr7fPZVptBvxlKGx8OUhFHzwLg
         ksaA==
X-Gm-Message-State: AAQBX9fe4mHTUpg3XvFP0A6dQCIxdJV4kCbBH8vpZbOASARIm5Az6b2g
        b4zSKsDBelOtrktPr7qh42I=
X-Google-Smtp-Source: AKy350Zh1gG0HAf3yX0mv/6wcGkywZh2kej4lDPXuIbUB5W7hXwQgNQIf24c08Puv+48Ya/mUnVClw==
X-Received: by 2002:a1c:c905:0:b0:3ee:289a:43a7 with SMTP id f5-20020a1cc905000000b003ee289a43a7mr1393402wmb.22.1681995812401;
        Thu, 20 Apr 2023 06:03:32 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id o10-20020a05600c510a00b003ee443bf0c7sm5412615wms.16.2023.04.20.06.03.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 06:03:32 -0700 (PDT)
Message-ID: <e320c8d0-aea2-02d8-674f-a92171dff98c@gmail.com>
Date:   Thu, 20 Apr 2023 15:03:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v3 5/9] adjtimex.2, clone.2, mprotect.2, open.2,
 syscall.2, regex.3: ffix, wfix
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <47fdd2db-cf65-2ffd-1b33-d1f8e3a62b5b@gmail.com>
 <45hc4nxirbxf5oe23noyfpg4w24vtwfpnye5y5sgozy5j3i22a@5hueh33r4bos>
 <d1d90b61-9d3e-e124-c0fb-19d426540416@gmail.com>
In-Reply-To: <d1d90b61-9d3e-e124-c0fb-19d426540416@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------FFCXAHCD7QjH6NRVYIlKUkWg"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------FFCXAHCD7QjH6NRVYIlKUkWg
Content-Type: multipart/mixed; boundary="------------wVtUKENznyTdONHfuHRWq8e6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <e320c8d0-aea2-02d8-674f-a92171dff98c@gmail.com>
Subject: Re: [PATCH v3 5/9] adjtimex.2, clone.2, mprotect.2, open.2,
 syscall.2, regex.3: ffix, wfix
References: <47fdd2db-cf65-2ffd-1b33-d1f8e3a62b5b@gmail.com>
 <45hc4nxirbxf5oe23noyfpg4w24vtwfpnye5y5sgozy5j3i22a@5hueh33r4bos>
 <d1d90b61-9d3e-e124-c0fb-19d426540416@gmail.com>
In-Reply-To: <d1d90b61-9d3e-e124-c0fb-19d426540416@gmail.com>

--------------wVtUKENznyTdONHfuHRWq8e6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/20/23 14:52, Alejandro Colomar wrote:
> On 4/20/23 14:12, =D0=BD=D0=B0=D0=B1 wrote:
>> Use "bitwise OR" instead of "bitwise-or" (with fonts).
>> No other pages spell it like this.
>>
>> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli=
=2Exyz>
>=20
> Patch applied.  Thanks.
>=20
>> ---
>> Range-diff against v2:
>> 1:  1ccffe37b < -:  --------- regex.3: ffix
>> -:  --------- > 1:  830173bb5 adjtimex.2, clone.2, mprotect.2, open.2,=
 syscall.2, regex.3: ffix, wfix
>=20
> I rewrote the subject to:
>=20
> man*/: ffix, wfix
>=20
>>
>> idk if this did anything
>=20
> Heh, it didn't do much.  What happened is that the patches are so
> different, that git thinks you just removed one patch, and wrote
> a different one from scratch.  Anyway, I find it useful most of
> the time.
>=20
> Cheers,
> Alex
>=20
>>
>>  man2/adjtimex.2 | 2 +-
>>  man2/clone.2    | 2 +-
>>  man2/mprotect.2 | 2 +-
>>  man2/open.2     | 2 +-
>>  man2/syscall.2  | 2 +-
>>  man3/regex.3    | 4 ++--
>>  6 files changed, 7 insertions(+), 7 deletions(-)
>>
>> diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
>> index 523347de2..40b05cb0e 100644
>> --- a/man2/adjtimex.2
>> +++ b/man2/adjtimex.2
>> @@ -90,7 +90,7 @@ the constants used for

BTW, another thing you might find useful is this:

$ cat ~/.config/git/attributes=20
*.[1-8]* diff=3Dman


And then in your .gitconfig:

[diff "man"]
	xfuncname =3D "^\\.S[SH] .*$"


You may want to use a regex that also works for mdoc(7).

This produces the following hunks:

@@ -90,7 +90,7 @@ .SH DESCRIPTION

>>  .BR ntp_adjtime ()
>>  are equivalent but differently named.)
>>  It is a bit mask containing a
>> -.RI bitwise- or
>> +bitwise OR
>>  combination of zero or more of the following bits:
>>  .TP
>>  .B ADJ_OFFSET
>> diff --git a/man2/clone.2 b/man2/clone.2
>> index 42ee3fee8..ec43841eb 100644
>> --- a/man2/clone.2
>> +++ b/man2/clone.2
>> @@ -413,7 +413,7 @@ mask in the remainder of this page.

@@ -413,7 +413,7 @@ .SS The flags mask

>>  .PP
>>  The
>>  .I flags
>> -mask is specified as a bitwise-OR of zero or more of
>> +mask is specified as a bitwise OR of zero or more of
>>  the constants listed below.
>>  Except as noted below, these flags are available
>>  (and have the same effect) in both
>> diff --git a/man2/mprotect.2 b/man2/mprotect.2
>> index 52c14da05..5a829dafe 100644
>> --- a/man2/mprotect.2
>> +++ b/man2/mprotect.2
>> @@ -43,7 +43,7 @@ signal for the process.

@@ -43,7 +43,7 @@ .SH DESCRIPTION

>>  .I prot
>>  is a combination of the following access flags:
>>  .B PROT_NONE
>> -or a bitwise-or of the other values in the following list:
>> +or a bitwise OR of the other values in the following list:
>>  .TP
>>  .B PROT_NONE
>>  The memory cannot be accessed at all.
>> diff --git a/man2/open.2 b/man2/open.2
>> index 77c06b55d..b5aff887c 100644
>> --- a/man2/open.2
>> +++ b/man2/open.2
>> @@ -123,7 +123,7 @@ respectively.

@@ -123,7 +123,7 @@ .SH DESCRIPTION

>>  .PP
>>  In addition, zero or more file creation flags and file status flags
>>  can be
>> -.RI bitwise- or 'd
>> +bitwise ORed
>>  in
>>  .IR flags .
>>  The
>> diff --git a/man2/syscall.2 b/man2/syscall.2
>> index 3eba62182..55233ac51 100644
>> --- a/man2/syscall.2
>> +++ b/man2/syscall.2
>> @@ -235,7 +235,7 @@ nuances:

@@ -235,7 +235,7 @@ .SS Architecture calling conventions

>>  In order to indicate that a system call is called under the x32 ABI,
>>  an additional bit,
>>  .BR __X32_SYSCALL_BIT ,
>> -is bitwise-ORed with the system call number.
>> +is bitwise ORed with the system call number.
>>  The ABI used by a process affects some process behaviors,
>>  including signal handling or system call restarting.
>>  .IP \[bu]
>> diff --git a/man3/regex.3 b/man3/regex.3
>> index 3b504a4d5..3ee58f61d 100644
>> --- a/man3/regex.3
>> +++ b/man3/regex.3
>> @@ -56,7 +56,7 @@ pattern buffer.

@@ -56,7 +56,7 @@ .SS POSIX regex compiling

>>  .PP
>>  .I cflags
>>  is the
>> -.RB bitwise- or
>> +bitwise OR
>>  of zero or more of the following:
>>  .TP
>>  .B REG_EXTENDED
>> @@ -121,7 +121,7 @@ and

@@ -121,7 +121,7 @@ .SS POSIX regex matching

>>  are used to provide information regarding the location of any matches=
=2E
>>  .I eflags
>>  is the
>> -.RB bitwise- or
>> +bitwise OR
>>  of zero or more of the following flags:
>>  .TP
>>  .B REG_NOTBOL
>=20

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------wVtUKENznyTdONHfuHRWq8e6--

--------------FFCXAHCD7QjH6NRVYIlKUkWg
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBOB0ACgkQnowa+77/
2zIWPhAAk+C90St+TZsUX+kbsdVfGbp8Qqlu/pK3i6NY+vUDCM2Q10CKygHV8VzA
fB1kWT75jzYzEhPK50+rXqjNQ8+1MdP3vByRC0IrpRDNsXcasuaBfXkOyAltAXr9
QuQOum6Z8lS9k2EGX2PmQNERNe2VAUnnN6F1x47Tzk7c5UOq90SDfAi6gLzGVZGd
vvlMTHFjf+XHsAYbUsN1sBBBRoHdWpRH0XTucM7e5bsiNs1sXFE5tDov8/lNDhKB
V+fz7VJ/DxHbvPt/4E16KPBw/I0EnruSjimp/GgSQHpMM5VykpxUjJGBkEy2K+sk
vBGEhxey/S2vylhHjn+6dN/jzCAtONj3TQYJMQQE0GVlhpbsZEpO3xyDt6fB30ql
JMsCcLXav4IueJWn4jA8yWIdhEFcWicbFDJOhI0TBu5/ryC67tEEWVmqHreoPNt2
P0gv/gHPCmdSWmt+IUmfh2oMJNB3WYNvWGJx0/W4ux60RZ8ffFo8uwzVGhUP1SOf
90bAcLYV3XfnnFKJ9XNAI0eVwHxy9+nnoOQM6h2MVE34u569KXV+jEi0ts4OBeTH
AxeVko1Q0Jn8wmgzhpVB9QttZufDh8nwY5EgBfqgazq/U3Y0OJ2Ktt0s5cyB1+9G
kQ7B1d4kVCYkLfeNca2Tov9WqsNtHTLkm2AMkFKovnec8zE/FMw=
=LVej
-----END PGP SIGNATURE-----

--------------FFCXAHCD7QjH6NRVYIlKUkWg--
