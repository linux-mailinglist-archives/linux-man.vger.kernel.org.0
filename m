Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 246A26E83E7
	for <lists+linux-man@lfdr.de>; Wed, 19 Apr 2023 23:46:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbjDSVqD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 17:46:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229567AbjDSVqC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 17:46:02 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD7241725
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 14:45:58 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f09b4a1527so2110195e9.0
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 14:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681940757; x=1684532757;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RU8HNEQdEWT/z4KR/PkD19Pu/14iIygX628l8C3pigw=;
        b=SfLw8oSo2umF1QnVeq+/OwPd2X1nAFvQu3ic3ZtspCsHlDV2LFPrmhmBHjzoeTd7P/
         bkms4Su6PX8qGp+ul47rkyZMAvoJlJLyh3kQ8F9Lclnb9osVcg2u68L2eWZLoWKzCfWZ
         r2Y5EZ7Utfe70se4ou90/PP3EKmxJID9bmQZzPL3oKtyrub+lSjI1CbeZTD0BT6QCr90
         EYpg1Hg1jmZzasZvkgL6auy7FV/7GDp/R7BMyXkssKEXl2J4gTrOF87aq6kb2pkukuk6
         dnAzMiGDQprr3d4jiICXxx5WqVLCGpNmph4ZFdLq82EaBAC0KivqoQX6xfxDXSaqlOXO
         3s0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681940757; x=1684532757;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RU8HNEQdEWT/z4KR/PkD19Pu/14iIygX628l8C3pigw=;
        b=D3DgHmsExFqxyiom/Ugu2rgs3nPCFGuQVxMQxuElVYUsYKQxseLpTFrdaJ7iAiznEC
         8uT9OjzRNlOqPhIgnFuz5pl8I/pzelsCwdmEMrD6+nTZhMJLFTOrcih581WZfilMSbPd
         GEyxtyR47ff+WIJMBW1XaG6LoTUekEOiayiXEAXduIWPACK+gkL6Lq+CaU7jWn1XtaVn
         YctCSEguE6DTaipOt427HRhdMcEZP1/3Y3Z0/b7+bQbQJKubGEGw99EH7xfv9EaURZSe
         clEHgUHn5NpscTGNFJX0nzXjfwARdae9oU24y+e+IA9c6JSah7+tGcP4Arn1K3Fyrop8
         +AZQ==
X-Gm-Message-State: AAQBX9dHtHiLy8z2ZmztDjCIsTCqBdtfRMW7ZmUXz9j0osqBpwYmpSv+
        T4D+MhzxaulAMRPV3WHmKkdo1dDgMng=
X-Google-Smtp-Source: AKy350b9Ch7PPVbz5pDKpth4B/8C90QMtd6RBkvGDBvPTSaHLVZQQcVfCAL53u7EYk2LBsF+LT1xKQ==
X-Received: by 2002:adf:efd0:0:b0:2fb:a3e:7cb0 with SMTP id i16-20020adfefd0000000b002fb0a3e7cb0mr6043241wrp.10.1681940756910;
        Wed, 19 Apr 2023 14:45:56 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id r4-20020adfdc84000000b002f598008d50sm184655wrj.34.2023.04.19.14.45.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 14:45:56 -0700 (PDT)
Message-ID: <ee142090-7791-9692-fcd9-c7bc4e50a9fe@gmail.com>
Date:   Wed, 19 Apr 2023 23:45:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 2/2] regex.3: improve REG_STARTEND
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <15d73d2add2adf0fbc33fd6697a6b29d126c11b9.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
 <52a12177427a5e781b16b4efc85f8b90360a4e8a.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
 <4139e0ad-c25f-59f2-1ebf-83779a5c507f@gmail.com>
 <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7ht8G9kmWPchLDXHqC7DIA8S"
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------7ht8G9kmWPchLDXHqC7DIA8S
Content-Type: multipart/mixed; boundary="------------wN59mMkPJfR2hEezsyP9XwUz";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <ee142090-7791-9692-fcd9-c7bc4e50a9fe@gmail.com>
Subject: Re: [PATCH 2/2] regex.3: improve REG_STARTEND
References: <15d73d2add2adf0fbc33fd6697a6b29d126c11b9.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
 <52a12177427a5e781b16b4efc85f8b90360a4e8a.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
 <4139e0ad-c25f-59f2-1ebf-83779a5c507f@gmail.com>
 <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
In-Reply-To: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>

--------------wN59mMkPJfR2hEezsyP9XwUz
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/19/23 23:20, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> On Wed, Apr 19, 2023 at 10:23:29PM +0200, Alejandro Colomar wrote:
>> On 4/19/23 19:48, =D0=BD=D0=B0=D0=B1 wrote:
>>> diff --git a/man3/regex.3 b/man3/regex.3
>>> index d54d6024c..2c8b87aca 100644
>>> --- a/man3/regex.3
>>> +++ b/man3/regex.3
>>> @@ -141,23 +141,20 @@ compilation flag
>>>  above).
>>>  .TP
>>>  .B REG_STARTEND
>>> -Use
>>> -.I pmatch[0]
>>> -on the input string, starting at byte
>>> -.I pmatch[0].rm_so
>>> -and ending before byte
>>> -.IR pmatch[0].rm_eo .
>>> +Match
>>> +.RI [ string " + " pmatch->rm_so ", " string " + " pmatch->rm_eo )
>>> +instead of
>>> +.RI [ string ", " string " + \fBstrlen\fP(" string )).
>> Hmmm, I like this!
>>
>> Let's see if I understand it.  pmatch[] is normally
>> [[gnu::access(write_only, 4, 3)]]
>> but if ((.eflags & REG_STARTEND) !=3D 0) it's [1] and
>> [[gnu::access(read_write, 4)]]?
> I fucked the ternary in my previous mail I think, soz;
> I don't know if it's gnu::anything, but you could model it as
> {
> 	if(eflags & REG_STARTEND)
> 		read(pmatch, 1);
>=20
> 	if(!(preg->flags & REG_NOSUB))  // as "set" in regcomp()
> 		write(pmatch, nmatch);
> }
>=20
> I.e. pmatch[nmatch] must be a writable array, unless REG_NOSUB,
> and also, additively, *pmatch must be readable if REG_STARTEND.

Ahh, now it's clear to me (I think).  :)

>=20
>>>  This allows matching embedded NUL bytes
>>>  and avoids a
>>>  .BR strlen (3)
>>> -on large strings.
>>> -It does not use
>>> +on known-length strings.
>>>  .I nmatch
>>> -on input, and does not change
>>> -.B REG_NOTBOL
>>> -or
>>> -.B REG_NEWLINE
>>> -processing.
>>> +is not consulted for this purpose.
>>> +If any matches are returned, they're relative to
>>> +.IR string ,
>>> +not
>>> +.IR string " + " pmatch->rm_so .
>> How are such matches returned?  In pmatch[>0]?  Or how?
> In the usual way in pmatch[0..nmatch].
>=20
> I guess the "nmatch isn't taken into account" thing is confusing,
> because REG_STARTEND just adds a read. regexec() can be modelled as
> {
> 	const char * start, * end;
> 	if(eflags & REG_STARTEND) {
> 		start =3D string + pmatch->rm_so;
> 		end   =3D string + pmatch->rm_eo;
> 	} else {
> 		start =3D string;
> 		end   =3D string + strlen(string);
> 	}
> =09
> 	// match stuff in [start, end)
> }
>=20
> And that's the /only/ effect REG_STARTEND has
> (+ matches are returned relative to string, not to start,
>    but that's consistent, and they just got decoupled;
>    it bears noting it there since it's not what I expected to happen).
>=20
> I'll sleep on this and post something I hate less tomorrow.

Sure; good night!

Best,
Alex

>=20
> Best,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------wN59mMkPJfR2hEezsyP9XwUz--

--------------7ht8G9kmWPchLDXHqC7DIA8S
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRAYRMACgkQnowa+77/
2zJjohAAnpBQ5A6qi2Heu7JUPBsaEw+HIpUzk4NXs2fKOoGXnTuf5i3ot1hyX8oH
3bfadDRWiqAyBaeuWn2O1hGg9zMGERCWE0mGZozJPUZg8uAwlxJKTnABAar/ekMl
c460eGdjLjPURUELEtXxch9pGPlfNWDcJ0N/pA7ttZNH3R9ZC22fo7LoGKYMNSxp
/NtE+zwVxb5suEYAI5KBm21OJYiaaa5ArLO1cY7YhhD4/SU/s+JKcrKOnwvhIigd
dFXmlfFTu2f1MX06XGNgfQ15Y/p+NgTYjF7MX+2yN2BBd/BgEL/2CTmtvWq10HLo
Tbs5hum/RkWK1goVSEc1XWEJu1vFlsNlkrHOzTEjq6yoUX9aSP9Nm6uGzCegZGr7
GrZsOmNEw6LJ8kkEHD1IBUAY4edNpfrGZVjtTCq302MpzRDW7wWWcPKjQnbhbMeB
y67RMCZv015IQ6SjJcDSRgxeJDg16koReYx3FKR38JKfMM4MtAMNA3B3CQbag/2D
CiVyohw4oXgfRflP0T3I4wIdyHp/qdIkbDL5M4bKzF4gxp63kGDEAC32vDl0lCt5
PQxcVsMvOkxq6zXYOF9MFXvb8oiXArK1HLZz2qZG326P79UW9KhefaAtk5GG8oF/
IZxqaV/5k6RQMoTvgRUqb8ZSeg4cazIeKv3oV9es2BiIYASJIXM=
=C/O7
-----END PGP SIGNATURE-----

--------------7ht8G9kmWPchLDXHqC7DIA8S--
