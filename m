Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EC966EAA5D
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 14:28:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229464AbjDUM17 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 08:27:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231866AbjDUM16 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 08:27:58 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EFDBB75C
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 05:27:45 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f17e584462so17123765e9.2
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 05:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682080063; x=1684672063;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nngVlL5vqcSORfbbpi/kIus5g5OXRWugFV0od1w10Co=;
        b=Wv8lrcEmSJzHC6wSlQoJ0wfkUPHyLcFPWV1rk5GOKI5vJjnFQmG6ZlZ6NhohDtILrt
         nKWU6okNiMgFfReEiKvwUAuyDjGZueZm4nrOAySOEAbbICcsYJUkfUweeN3AqKb0TAGD
         5gb3R4ZxxU3iIhA3KaBedHzJPfOpM19OeDvnS/As4vHje/MW+L7sUy0XOQ6Yb/fuPS46
         bWlxxUecbXZYuX/W73w+OTz74yh0JhOUApkMV70VLwmTTx+Frk0aD/7ojXKcL4P4YytW
         tpbJQz9a4ivxo2fv6euyZ++P8SfOSh8jVhI6YiWEh7uAZAgmaiboCrz4EdbEi3T4d0CN
         MjGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682080063; x=1684672063;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nngVlL5vqcSORfbbpi/kIus5g5OXRWugFV0od1w10Co=;
        b=FIoUIfVn4Nh13T1Ng5YZZtziNAOzxoVPxmrNZk9prYmhhVLXXWKZ13T5szCB5zxxeE
         31Jm0c8D4pvkr4oFnBVttPKc6FdBJSFqS7/fRlUVbXHi2tSq8zi8pHDCgfYs2lVQOLIU
         daD5tb6uJqgvRpenXO6OFTplTdVHAIGlBinoDHBghro4bLkZVXwA8ILXSzecl1XMDeK/
         ztS6hlb7mj/GfzzhD6YghCBBzJGy7GtGDl7RGYAKvBOXQCBKpnYeKvzI5mSe5YAk+TG0
         8LDoYE6ZnRANdA665+lrsDZRSPl5GH1doOfPCEFs+EvkpyjUQNQO8BkBQCe+zD6gyf21
         ndUQ==
X-Gm-Message-State: AAQBX9fIEheC5s/BUtRLalyKURVd7GidoybZeJj4tHJ6+V7zqUk4TBUc
        bAgIp0B6tWyRYMRO+6yjHZYcvmXEU2s=
X-Google-Smtp-Source: AKy350bBgqyaid67ZklSJ7TiO9HnDShu58DV/+sxU08zT/yXPWh6xcfJ7a1fGjgloVu9YO80x9xsyg==
X-Received: by 2002:a05:600c:214d:b0:3ee:5c8:c3d8 with SMTP id v13-20020a05600c214d00b003ee05c8c3d8mr1826934wml.34.1682080063478;
        Fri, 21 Apr 2023 05:27:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id z16-20020a05600c221000b003ee1b2ab9a0sm4714199wml.11.2023.04.21.05.27.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 05:27:43 -0700 (PDT)
Message-ID: <d44c4eae-5d0f-1223-a014-d957b45c482d@gmail.com>
Date:   Fri, 21 Apr 2023 14:27:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v9] regex.3: Desoupify regerror() description
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <bb6d4a20-ff44-f5e6-12bb-fdfd9db986fc@gmail.com>
 <bdliqsvy5uuizjz2gbxxlhlj72k22qc3faoapcbqqqezcusmma@yw6vqoeinh5u>
 <19c5c7e2-5ae5-94a0-90f6-81f24f642f51@gmail.com>
In-Reply-To: <19c5c7e2-5ae5-94a0-90f6-81f24f642f51@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DosugIPeVU9FSFSue9cOFc4Y"
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
--------------DosugIPeVU9FSFSue9cOFc4Y
Content-Type: multipart/mixed; boundary="------------IsKpARYVWfPK6de1qpTwQYVd";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <d44c4eae-5d0f-1223-a014-d957b45c482d@gmail.com>
Subject: Re: [PATCH v9] regex.3: Desoupify regerror() description
References: <bb6d4a20-ff44-f5e6-12bb-fdfd9db986fc@gmail.com>
 <bdliqsvy5uuizjz2gbxxlhlj72k22qc3faoapcbqqqezcusmma@yw6vqoeinh5u>
 <19c5c7e2-5ae5-94a0-90f6-81f24f642f51@gmail.com>
In-Reply-To: <19c5c7e2-5ae5-94a0-90f6-81f24f642f51@gmail.com>

--------------IsKpARYVWfPK6de1qpTwQYVd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/21/23 14:26, Alejandro Colomar wrote:
> On 4/21/23 14:03, =D0=BD=D0=B0=D0=B1 wrote:
>> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli=
=2Exyz>
>=20
> Aaand patch applied!  I believe I've got all, right?

Feel free to add yourself to the copyright.  You clearly deserve it ;)

>=20
> Cheers,
> Alex
>=20
>> ---
>> Range-diff against v8:
>> 1:  4479e1572 ! 1:  38109fcc6 regex.3: Desoupify regerror() descriptio=
n
>>     @@ man3/regex.3: .SS Error reporting
>>      +.IR preg .
>>      +.PP
>>      +If
>>     -+.I errbuf_size
>>     -+is
>>     -+.BR 0 ,
>>     -+the size of the required buffer is returned.
>>     -+Otherwise, up to
>>       .I errbuf_size
>>      -are nonzero,
>>      -.I errbuf
>>      -is filled in with the first
>>      -.I "errbuf_size \- 1"
>>      -characters of the error message and a terminating null byte (\[a=
q]\e0\[aq]).
>>     ++isn't 0, up to
>>     ++.I errbuf_size
>>      +bytes are copied to
>>      +.IR errbuf ;
>>      +the error string is always null-terminated, and truncated to fit=
=2E
>>       .SS Freeing
>>       .BR regfree ()
>>       deinitializes the pattern buffer at
>>     +@@ man3/regex.3: .SH RETURN VALUE
>>     + returns zero for a successful match or
>>     + .B REG_NOMATCH
>>     + for failure.
>>     ++.PP
>>     ++.BR regerror ()
>>     ++returns the size of the buffer required to hold the string.
>>     + .SH ERRORS
>>     + The following errors can be returned by
>>     + .BR regcomp ():
>>
>>  man3/regex.3 | 36 ++++++++++++++++--------------------
>>  1 file changed, 16 insertions(+), 20 deletions(-)
>>
>> diff --git a/man3/regex.3 b/man3/regex.3
>> index d91acc19d..efca582d7 100644
>> --- a/man3/regex.3
>> +++ b/man3/regex.3
>> @@ -210,27 +210,20 @@ .SS Error reporting
>>  .BR regexec ()
>>  into error message strings.
>>  .PP
>> -.BR regerror ()
>> -is passed the error code,
>> -.IR errcode ,
>> -the pattern buffer,
>> -.IR preg ,
>> -a pointer to a character string buffer,
>> -.IR errbuf ,
>> -and the size of the string buffer,
>> -.IR errbuf_size .
>> -It returns the size of the
>> -.I errbuf
>> -required to contain the null-terminated error message string.
>> -If both
>> -.I errbuf
>> -and
>> +If
>> +.I preg
>> +isn't a null pointer,
>> +.I errcode
>> +must be the latest error returned from an operation on
>> +.IR preg .
>> +.PP
>> +If
>>  .I errbuf_size
>> -are nonzero,
>> -.I errbuf
>> -is filled in with the first
>> -.I "errbuf_size \- 1"
>> -characters of the error message and a terminating null byte (\[aq]\e0=
\[aq]).
>> +isn't 0, up to
>> +.I errbuf_size
>> +bytes are copied to
>> +.IR errbuf ;
>> +the error string is always null-terminated, and truncated to fit.
>>  .SS Freeing
>>  .BR regfree ()
>>  deinitializes the pattern buffer at
>> @@ -247,6 +240,9 @@ .SH RETURN VALUE
>>  returns zero for a successful match or
>>  .B REG_NOMATCH
>>  for failure.
>> +.PP
>> +.BR regerror ()
>> +returns the size of the buffer required to hold the string.
>>  .SH ERRORS
>>  The following errors can be returned by
>>  .BR regcomp ():
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------IsKpARYVWfPK6de1qpTwQYVd--

--------------DosugIPeVU9FSFSue9cOFc4Y
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCgT4ACgkQnowa+77/
2zL2iw//YNqfDz/6eOD+pPU41H17U0LLo5xiwHDOe06BF0nq42XW0+5wjqOK/3IO
j+oy5K9CAyz2JNX2upiUHgkTkMP8P6CuD7mLUnOiSG8ZCr5/vL6DkFrYsRhwEntY
3Mhw25iBzoCbRO/Fsc82Ndo1zantaerwvm7B4UcHnu2rACVzFSIiOg+EpAxASyfc
FwX0vNxHT9GteHMBvMt389pKOn1rYZxGw7Rhdj9HjoV/OcX7MBwomFozb7n/NAJ/
RNMNOvysv1nFCqqkTT2b9S3eLLGCaSgQNXJfdqSqgk3JfH8R8BtYzJ/rOkgf09mz
LKEFl7x06a5liMMura6XVuafCwM7ICMkDQ3Yd9rbWT95xzyR5frjgKSbH0SPzPWJ
e5PwirxNVbKRSa92UcAhXxDERaAPey6y3kW6eZ4beE9uqogt+fJVmGsJ6b9AG9sY
x2mL6qBVwQrbs/WtSIjtkrc/GY+v2w5FtiBV9GjP/8VDktk7XcB0e6ZU5HRDJva6
U0pMUsTAEHjCUdom+ciGyjcj5W5lDsSBtnndbpDwg+LMo+bRB80tDLMIl2PlPypX
dsV825wkiCOy8VFKRbw8VqvZcVklBVW6Zj64OHSxi5oVW+6HIoq+0WzINJ13S5a1
p/+/ILruL/n7hylKPSn3sBuL+zJgPFKHZarUREBDnRYiTL6OaGo=
=yIUE
-----END PGP SIGNATURE-----

--------------DosugIPeVU9FSFSue9cOFc4Y--
