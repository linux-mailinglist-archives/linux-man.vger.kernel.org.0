Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 953E46E9F8D
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 01:01:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229984AbjDTXBX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 19:01:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229772AbjDTXBW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 19:01:22 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37A76AC
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 16:01:21 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3f09b9ac51dso32022225e9.0
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 16:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682031679; x=1684623679;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZED9cKn57Nz1QHP54pNc/UyLOgH+TXBoA4LB8FiCjfY=;
        b=NMk8IT9ZDuC/XDxv5YmpazJ0ZDFbTAJgCNhSmcimgqAQMg3skHO1U66mXs1QVq/FOh
         dmof/mgS3Q/17DEmI4KyGMy2fBLBZd5okZwpNE3wIe026/RJthWqFkR3YL9tqcBfbhoa
         1bM+e0acqbOVQVLjAnnUC0AaKcGhEDyReV1HOTqbjTXqp9ryb8VQ+QiWLzOqV2p6+dbC
         5hzzibEC+09SC6CTeu6SkhyweTwTp2tKIa1aTWgifQJ4/DVHeDrqGXLKWsuQo59LGJNa
         m6bwSOb87qqKTkG7b+IIQOl4HwLevZhTPTqzSwSEn1ITOkiBvwdJtY0dAhaGzqm2+YV0
         qbOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682031679; x=1684623679;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZED9cKn57Nz1QHP54pNc/UyLOgH+TXBoA4LB8FiCjfY=;
        b=XtR4GBtlA/Oxh53jSgEP61lfYIe3hrSYR059xcXLb6DVG6NT3ReIbIR6ANH8Ixdqg4
         8fwzi543WeSPf3jLYb4HurWLmKMSXvqtDHOGE5uZLlnngHNUT9W4H9rg5qljMPPg7FKe
         l0yuAkWOltX2SEqO3bFmvwdEKLlkW2b1LDoQul2rcE4sGtb44WJKG5uX2rEpn8QO37dn
         IEsPPUaKFF55iY33a0KacvR9VMivJnKiJA28maDzBTMRLA/ODQMMaxHrOaPXcnF/PbyR
         mupmwwB/wBq7E5T42Q+bjOvfA+2kGaV2WcUMrETSYFQ/Rl2WA69QGEyMiCWN17enx04l
         bV1Q==
X-Gm-Message-State: AAQBX9flP8LSY1ilRFd7z8FC7TvCqotTnCwCDtcMyoB6qoE2oYWkGudG
        sdkLvnmMQj012ybQ9JLclZ/iH8pc8W0=
X-Google-Smtp-Source: AKy350YcLwEn5uQHDMJ3qneLxT2xhfYDTHrcfacD4/J1Fzy49+wzIRZd9VezQtMTNs13wTvLUFNPig==
X-Received: by 2002:adf:ee91:0:b0:2f0:2e16:7e0c with SMTP id b17-20020adfee91000000b002f02e167e0cmr5954917wro.26.1682031679461;
        Thu, 20 Apr 2023 16:01:19 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id w13-20020adff9cd000000b002cea9d931e6sm3018655wrr.78.2023.04.20.16.01.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 16:01:19 -0700 (PDT)
Message-ID: <04a4674f-aff2-1437-6fd6-c7223b1036d8@gmail.com>
Date:   Fri, 21 Apr 2023 01:01:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v5 4/8] regex.3: Improve REG_STARTEND
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <fd1a104d6abc70a2450b17a6b424ca8e20897634.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <1735c494-c165-87d9-8660-865bbfce709a@gmail.com>
 <uubrf6suz7z2kw4el7i5wbzzdxywcqjwhcyqxkdddlwabve5p2@uupjducqbdgk>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <uubrf6suz7z2kw4el7i5wbzzdxywcqjwhcyqxkdddlwabve5p2@uupjducqbdgk>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1i0eniBN9KPs8dBlC7Zqzh1p"
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
--------------1i0eniBN9KPs8dBlC7Zqzh1p
Content-Type: multipart/mixed; boundary="------------VXmeIAAcTZGU2y9iUuHUWXa7";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <04a4674f-aff2-1437-6fd6-c7223b1036d8@gmail.com>
Subject: Re: [PATCH v5 4/8] regex.3: Improve REG_STARTEND
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <fd1a104d6abc70a2450b17a6b424ca8e20897634.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <1735c494-c165-87d9-8660-865bbfce709a@gmail.com>
 <uubrf6suz7z2kw4el7i5wbzzdxywcqjwhcyqxkdddlwabve5p2@uupjducqbdgk>
In-Reply-To: <uubrf6suz7z2kw4el7i5wbzzdxywcqjwhcyqxkdddlwabve5p2@uupjducqbdgk>

--------------VXmeIAAcTZGU2y9iUuHUWXa7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1,

On 4/20/23 21:30, =D0=BD=D0=B0=D0=B1 wrote:
> On Thu, Apr 20, 2023 at 07:29:27PM +0200, Alejandro Colomar wrote:
>> On 4/20/23 17:35, =D0=BD=D0=B0=D0=B1 wrote:
>>> --- a/man3/regex.3
>>> +++ b/man3/regex.3
>>> @@ -131,23 +131,30 @@ .SS Matching
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
>>> +.RI [ string " + " pmatch[0].rm_so ", " string " + " pmatch[0].rm_eo=
 )
>>> +instead of
>>> +.RI [ string ", " string " + \fBstrlen\fP(" string )).
>>>  This allows matching embedded NUL bytes
>>>  and avoids a
>>>  .BR strlen (3)
>>> -on large strings.
>>> -It does not use
>>> +on known-length strings.
>>> +.I pmatch
>>> +must point to a valid readable object.
>> I think this is redundant, since we showed that [0] is accessed by
>> the function.
> Yeah.
>=20
>>> +If any matches are returned
>>> +.RB ( REG_NOSUB
>>> +wasn't passed to
>>> +.BR regcomp (),
>>> +the match succeeded, and
>>>  .I nmatch
>>> -on input, and does not change
>>> -.B REG_NOTBOL
>>> -or
>>> -.B REG_NEWLINE
>>> -processing.
>>> +> 0), they overwrite
>> And of course, nmatch must be at least 1, since otherwise, [0] was
>> not valid, and the whole call would have been UB; right?  So that
>> third condition must be true to not invoke UB, so we can omit it too,
>> I think.
> What? idk where you got this from.
> Per 0d120a3c76b4446b194a54387ce0e7a84b208bfd:
>     In the regexec() signature
>       regmatch_t pmatch[restrict .nmatch],
>     is a simplification. It's actually
>       regmatch_t pmatch[restrict
>         ((.preg->flags & REG_NOSUB) ? 0 : .nmatch) ?:
>          !!(.eflags & REG_STARTEND)],

That is a model that was useful in a commit message to describe more
or less what happens.  It doesn't need to perfectly describe reality.
Since REG_STARTEND is not in POSIX, we can't read what POSIX says,
so it's all up to how much implementations want to guarantee.  I
don't think glibc would like to allow specifying .nmatch as 0 while
the function accesses [0].  The fact that the current implementation
doesn't open Hell's doors to nasal demons doesn't mean it can't do
so in the future.  I conceive that _FORTIFY_SOURCE could reasonably
check that pmatch[] has at least .nmemb elements, and I don't want
to preclude that in the documentation.

Cheers,
Alex

>=20
> If REG_STARTEND, pmatch must point to a valid readable object.
> (Naturally, if you pass in uninitialised memory or a null pointer,
>  then you get UB.)
> nmatch is not consulted and has no bearing on this.
>=20
> Best,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------VXmeIAAcTZGU2y9iUuHUWXa7--

--------------1i0eniBN9KPs8dBlC7Zqzh1p
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBxDcACgkQnowa+77/
2zIjzRAAp2K5AzirqCxCVB92cW9Im9Ub9AvMx+gy/VExd4AOyWs5M5Q8PyQVTZIT
lkdGuaAuzTUdxcNHJVZcrtnNBE5bPNypl1orYex9mTJO9vVjMirxcxvZXEdbMyAo
mAonvhYaSdtlLTJtfmiTWIZnFIDJWzmjr/MXgrfZXcIMG8WSplwx32TWYBYg49Vs
giIB4Caw6tYr1WhCpiQHUOqmRgs9lmYts45h1DY+oB0Qd8AZix8Fqs+xyRco1NHq
R3vZI6sPF6XPAqEQ0APPXyX5p4itMSORcBivhylhoSiY0D6dzxtOrZQs1QSfo+sL
G3PycOC4kD53FOuXZmv+3CGmOISlIKGdpqbh6Ir2f2pasrZF19XtnyrmCNpFAyI9
WMK8gBVie5RfH4lJkEKajS5U766s8AI3y5DGrfHOPYeE6+tX94EuizIRNge/2IXU
frJET0W0hDnCAbMHdTDQpU7h9keHcNSHvlCmmOxpfSKx6X8AjgHiQtvdx1HGcu5U
Hb48DFHC01dT4np7Zi7cjIBoKG/jV1BvL78W0/fO3GOQ1G/58r9fupFQjFWvTIcY
aFIGEp2eUYvfkSpdK/5sTUO1Tx3C5n0K6OFAkAdDWntI2BsDbT770lZUD1vjKaut
HLJWt2oBpnzha7yRAlVcGRqrxs0UvEjq/NzIeOy0oeaOTB6XN9k=
=4Khx
-----END PGP SIGNATURE-----

--------------1i0eniBN9KPs8dBlC7Zqzh1p--
