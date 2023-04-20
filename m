Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 233ED6E9F39
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 00:45:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230304AbjDTWpV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 18:45:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229761AbjDTWpU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 18:45:20 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 374922108
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 15:45:19 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3f09b9ac51dso31767195e9.0
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 15:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682030717; x=1684622717;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cqzdhT7FMYSInyIlcpVBqeVn1hW2fLUHsQoxGcL8Rb0=;
        b=fV6fuPYPzAQ90YPsygmI1+YG3Ynemd0/OOmHLHr+RHWPrjzU7TuYPOuxQHRyBuubbo
         ZsRyowjc+9XVBcnPZj74dyoDJzcsCBkxEYMdJwubzIR69EjZ/7lbt1sK2SYY+KZGH9i8
         uTjSI1+NL9wPWkZTv82v7UP4P0YAUXYGwrXQ6vWM0wl0A0kKOMxvWIwUf5zeImATn9sT
         tf+gESHkIgeTXkvwIOvZ3I70fvzsEwmjfe+L2zRPWkPGgHSJT6VWhgu2/Ug08D+NgUp9
         bIbjea1DXptCpiqNU+8MHcwZQZWjSAG6xCykFCOUe2se1Efttr+hKFU+ryuuWqQPFwFf
         EZQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682030717; x=1684622717;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cqzdhT7FMYSInyIlcpVBqeVn1hW2fLUHsQoxGcL8Rb0=;
        b=Qk6pUywyfQBWfLIkcWoh96KrcbxzLWhEorO9aVvbIvdJy+m4C881jonrEtYhgtLx+h
         3SZ4dS7iNMq90Ai7X+MiNXjgF45Pm4VQhntPsKWfyuVkhgsCHMIlbLOc7RLUhea4kr4L
         E29EHaub6aQzD6O/NMtlNrbHfqfGsdW+9eoeB8shDg7s7sIgGHbvG7Ot+PR9gPC4i+hf
         aF7qhmO6KF5nNQTxwqjVMZOy3DE+Jo3fHBXXJWkfz8HotYbvFtG+57s+U7Mod7+CQIVU
         qOYAxVVfnvI/aTIoHcNRsD7BrEN7nSlPs2D7cgOzJbk7BklhHV5A6grRuzvdpqaoGbrD
         Z+6Q==
X-Gm-Message-State: AAQBX9fGRw0BcLSUqzZoS9aBFb3FhBTFGI4Ntc6UivRxoqVH8DWBj191
        tC9phe2dmvcTrMmdOkYmT/sKgcEIHi0=
X-Google-Smtp-Source: AKy350aOgWnclwMOP3RrOfpzh3S5GNdFu4Mh+Nt0VLbqmSJ9N1FOwxseUoSRr5y3N536Rr6EoKpnfA==
X-Received: by 2002:adf:e711:0:b0:2ef:84c:a4bc with SMTP id c17-20020adfe711000000b002ef084ca4bcmr5928249wrm.19.1682030717653;
        Thu, 20 Apr 2023 15:45:17 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id d6-20020a5d6dc6000000b002efb31d3c24sm2997867wrz.32.2023.04.20.15.45.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 15:45:17 -0700 (PDT)
Message-ID: <35d79669-8782-b95e-42ea-f4ca36a98315@gmail.com>
Date:   Fri, 21 Apr 2023 00:45:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v5 3/8] regex.3: Desoupify regerror() description
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <516ecf85-a1e5-a87e-632c-da026a16dddd@gmail.com>
 <kq2rpdxdwgk6oiccjzqyjerz5hutdsros2ewreggsbuxhbsyoe@hhbnxxou3xff>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <kq2rpdxdwgk6oiccjzqyjerz5hutdsros2ewreggsbuxhbsyoe@hhbnxxou3xff>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ETZGQ7THVcrDae2FhlMVCMdn"
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
--------------ETZGQ7THVcrDae2FhlMVCMdn
Content-Type: multipart/mixed; boundary="------------YzSiIpeSoHzFUMim1Z7GwDD2";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <35d79669-8782-b95e-42ea-f4ca36a98315@gmail.com>
Subject: Re: [PATCH v5 3/8] regex.3: Desoupify regerror() description
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <516ecf85-a1e5-a87e-632c-da026a16dddd@gmail.com>
 <kq2rpdxdwgk6oiccjzqyjerz5hutdsros2ewreggsbuxhbsyoe@hhbnxxou3xff>
In-Reply-To: <kq2rpdxdwgk6oiccjzqyjerz5hutdsros2ewreggsbuxhbsyoe@hhbnxxou3xff>

--------------YzSiIpeSoHzFUMim1Z7GwDD2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 4/20/23 20:46, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> On Thu, Apr 20, 2023 at 07:23:39PM +0200, Alejandro Colomar wrote:
>> On 4/20/23 17:35, =D0=BD=D0=B0=D0=B1 wrote:
>>> +.I errcode
>>> +must be the latest error returned from an operation on
>>> +.IR preg .
>>> +If
>>> +.I preg
>>> +is a null pointer\(emthe latest error.
>> I don't read that from the POSIX spec.
> Whereas that's precisely where I got it from.

Here's the quote I think is the most relevant (you also quoted it
below):

       If preg is a null pointer, but errcode is a value returned by a
       previous  call  to regexec() or regcomp(), the regerror() still
       generates an error string corresponding to  the  value  of  er=E2=80=
=90
       rcode,  but  it might not be as detailed under some implementa=E2=80=
=90
       tions.


>=20
>> If preg is NULL, then I think any
>> error returned by a call to one of these APIs would be valid.
> That's unspecified.

I don't think so.  POSIX says a "previous call".  It doesn't say the
"latest" or "immediately preceeding" or similar wording.  Don't you
understand the same from that paragraph?

>=20
>> In fact,
>> since these functions are MT-Safe, they can't store any state,
> Probably. OTOH, musl raw-dogs mbtowc() in regexec(), so.
> (I'm pretty sure it's by accident since they do have a mbstate_t
>  and juggle it a lot, but it's never actually used.)
>=20
>> which leads
>> me to think that they can't really distinguish between the latest erro=
r,
>> and an error returned at a random point in the past, or even the resul=
t of
>> csrand_interval(x, y)[1] with appropriate x and y.
> Again, probably. But (line numbers from Issue 8 Draft 2.1):
> 57517  The regerror( ) function provides a mapping from error codes ret=
urned by regcomp( ) and
> 57518  regexec( ) to unspecified printable strings. It generates a stri=
ng corresponding to the value of the
> 57519  errcode argument, which the application shall ensure is the last=
 non-zero value returned by
> 57520  regcomp( ) or regexec( ) with the given value of preg. If errcod=
e is not such a value, the content of
> 57521  the generated string is unspecified.
>=20
> 57522  If preg is a null pointer, but errcode is a value returned by a =
previous call to regexec( ) or regcomp( ),
> 57523  the regerror( ) still generates an error string corresponding to=
 the value of errcode, but it might not
> 57524  be as detailed under some implementations.
>=20
> 57525  If the errbuf_size argument is not 0, regerror( ) shall place th=
e generated string into the buffer of
> 57526  size errbuf_size bytes pointed to by errbuf. If the string (incl=
uding the terminating null) cannot fit
> 57527  in the buffer, regerror( ) shall truncate the string and null-te=
rminate the result.
>=20
> 57528  If errbuf_size is 0, regerror( ) shall ignore the errbuf argumen=
t, and return the size of the buffer
> 57529  needed to hold the generated string.
>=20
> In these difficult times I tend to turn to what implementations do:
> NetBSD, musl, illumos, and glibc, if you subtract REG_ATOI and REG_ITOA=
,
> all essentially return lsearch(errors, errcode)->description
> + all sans NetBSD localise it.
> None of them even use preg.
>=20
> So yeah, I'll axe that.
>=20
>=20
> And split out regfree() from this patch because I missed it.

Thanks,

Alex

>=20
>=20
> Best,
> =D0=BD=D0=B0=D0=B1

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------YzSiIpeSoHzFUMim1Z7GwDD2--

--------------ETZGQ7THVcrDae2FhlMVCMdn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBwHwACgkQnowa+77/
2zKhig/7BEFPJ/UidztnhytU064LtBgYlfHSDMFgOwtqeNmTQTjp1jqutiKgepIl
dHJnghNZG4SXcPFPZs52syG8q1EAMmXSGlgPC4SS5t3X6gk0gfJO/y8FZhputFxv
Abn7K32fAW5LHRKYzR5lElnAUvBjNu3NiMKzevOKhYXFfkm73rL7Es3Z0wL0fug6
YrtnOqW5fMN0giKxQ8wgu4KGRIrUXKh7VSRxyTKBq2bcDk1TBcIB0oSi/FZtfrUE
BKwHctvcEXK98DOoimp9/+8GJxeSSy6MuRRZmOWt2qqtBcCJ2sS/V4LcyMn1OunI
lVd4DbDbio8y2bXkzsa3s/Gim8ZzDLyU/i79Xwd0Jx+0w/zrblwqJ0DBKc5trPXz
xwdzWrvIDtUh0qwSwFAFMAxBbgjmNkrtMxh79RiXDxMNiRcPjyAWUejJtkbTUJc6
QVcS5prPDNbJPuMDUwMrLt3fpR0bxDRndoXAd6tyGkjj+Dsbz9++b9wfw0eAk1yT
s6oupvV7vcuxwa3iMlSC3W4bAaZePraCwlyVyXYV0KuJqtl4WSdWWkhdvdYXDlQS
45YgA8vVmfh2x7sY/O+luR/m1+jWpe3iGaItLdWyFGI/kClrGEOirkZAX/5CUnZB
Ae5vLHIRiOBfKXr2YxUnMJfPZsc6V8xrmrG27ddfJl8tMCMauP8=
=TSEl
-----END PGP SIGNATURE-----

--------------ETZGQ7THVcrDae2FhlMVCMdn--
