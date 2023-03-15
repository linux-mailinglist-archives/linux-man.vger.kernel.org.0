Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 416646BAFE3
	for <lists+linux-man@lfdr.de>; Wed, 15 Mar 2023 13:06:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231613AbjCOMGA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 08:06:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231962AbjCOMFN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 08:05:13 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D4C9193C8
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 05:04:40 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id r18so17089367wrx.1
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 05:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678881879;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LWaGlUQfiRqwR5XAFQp3lnEsJR+2qYrmg0T0Brabl38=;
        b=KriM7pWJz3m8VUX8APswztARv0ETKmFN+BRUeZ/G3yB+CMB/eR1k1UaJCAJCIHNQiH
         wgJl/+wvZUe6GYfZGccQW+CHYYbBZbQUx9mUQw1oGArNxRQ336y+LbS/OFRjkMtghOXc
         rDKlNBTxYwBz47fpbfF15U2GUEc24SqnHxeKers1D+YUXB4pIarqO8oUGez3VSlP7Eud
         M9WFadPAb/Irrej0QpsqklqYKm+KOG2fQpstClvNOteGOqiLXI9Me5eoKNHPay2BmJIf
         Rk0gx8ZgJJZWYYNRd/5jU9AglGmVK1EBzKA7y5Kg67S5loOurCgZWTW/DfQ2R8VKQgja
         Fx4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678881879;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LWaGlUQfiRqwR5XAFQp3lnEsJR+2qYrmg0T0Brabl38=;
        b=L5RtJuqMcijok3rQVZYe/19LfFnzqX4PWUEAmQ7jrwqvGb4nf6unv4QqkvigUAt6Q8
         aMakzaBtjAPfWVeeuGEagqlLBmbCslTsw77NEfPEna9L5m54kKKy8lDpnZWo+8EEIyts
         +sBv03FEmsUQ7TnBX76+dzrkTSKi9GJSEgaeUUnPnTjYjKdafEShQ1eHxEk01d8BXoJC
         6wIsFkkBLLOEVTtSK3CIpQNn8fo/Tj5r8E10OhnTIj1hI8oLr6Md+12Po7JNQxIkUxjw
         /UAzCy3Z6r/cp77gPxDW7i8OHNCv+u62TYC81ogbC12IIXGcMs9JqGzRkJokukJV280X
         ajSw==
X-Gm-Message-State: AO0yUKU0IaPcwD2yAu60MuEkin3LBfKkc+19wSeeQe7fkju2FODJ4zHv
        RZ9cux/+/y0MFQOvj+IRH+8=
X-Google-Smtp-Source: AK7set/n310c69JqoxzcZDHwabYuTdHYRm9Q4hNj48F4nhS9hARVm3dYW5kVAVbmpwtdHiHRltRCXQ==
X-Received: by 2002:adf:e683:0:b0:2cf:6878:a43a with SMTP id r3-20020adfe683000000b002cf6878a43amr2252130wrm.3.1678881878420;
        Wed, 15 Mar 2023 05:04:38 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id q14-20020a05600000ce00b002c3f03d8851sm4486330wrx.16.2023.03.15.05.04.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 05:04:38 -0700 (PDT)
Message-ID: <062a16a8-7057-15d8-eb8a-bfcdb7644ece@gmail.com>
Date:   Wed, 15 Mar 2023 13:04:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
Content-Language: en-US
To:     Tom Schwindl <schwindl@posteo.de>, Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20230101162627.28031-1-alx@kernel.org>
 <20230313213044.scl37hpwvuyo2dif@jwilk.net>
 <CR6C48K1388R.2M61G9YHB8VHA@morphine>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CR6C48K1388R.2M61G9YHB8VHA@morphine>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AjXp13H8qPGxXxnnL5uKVWSt"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------AjXp13H8qPGxXxnnL5uKVWSt
Content-Type: multipart/mixed; boundary="------------0Z5kE0k0w4VFd4nA5S0skzA0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Tom Schwindl <schwindl@posteo.de>, Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <062a16a8-7057-15d8-eb8a-bfcdb7644ece@gmail.com>
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
References: <20230101162627.28031-1-alx@kernel.org>
 <20230313213044.scl37hpwvuyo2dif@jwilk.net>
 <CR6C48K1388R.2M61G9YHB8VHA@morphine>
In-Reply-To: <CR6C48K1388R.2M61G9YHB8VHA@morphine>

--------------0Z5kE0k0w4VFd4nA5S0skzA0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom & Jakub,

On 3/14/23 19:57, Tom Schwindl wrote:
> On Mon Mar 13, 2023 at 10:30 PM CET, Jakub Wilk wrote:
>> * Alejandro Colomar <alx.manpages@gmail.com>, 2023-01-01 17:26:
>>> +.SH LIBRARY
>>> +Standard C library
>>> +.RI ( libc ", " -lc )
>>
>> That should be \-lc, but...

Ahh, I thought I had fixed that; it seems not.  Thanks!

>> To be frank, I'd just remove the whole=20
>> section. Most people shouldn't use -lc,

While there's no need for most users, it's not wrong to specify it.
I always do it, just for completeness, and treat libc as any other
library.

>> and those who do need it can=20
>> figure it out on their own.

It's surprising how much trivial knowledge is not taught anywhere
just because it's so trivial, and then it becomes not so trivial
because nobody tells it.  I'll keep it just in case.  Anyway, I
think being consistent so that all C functions specify a LIBRARY
section is in itself good, since that will probably prompt authors
of pages to use it in their own pages.  Also, since I copied this
idea from FreeBSD, it makes sense to follow their decissions unless
we find them harmful.

>>
>=20
> I don't quite remember what the arguments for the LIBRARY section were,=

> but it should be kept for consistency with the other man-pages.
>=20
>=20
> off-topic for Alex:
> As we're talking about libc here, what about the libc.7 patch?
> Is there any progress regarding it?

I guess you refer to the patch set by Branden that touched
ldconfig(8), libc(7), and a some more?  I guess Branden is busy
with his own stuff (releasing groff-1.23.0).  Probably after the
release we'll see some updated patches.

Cheers,

Alex

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------0Z5kE0k0w4VFd4nA5S0skzA0--

--------------AjXp13H8qPGxXxnnL5uKVWSt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQRtE0ACgkQnowa+77/
2zLEKRAAjKoC4SylkoWipmdkB0zii+pfJfAuoskNRSjaWwh6HcOLGT/Ye2mIJboj
+s8ktrstANRtpyDUAqQnT8O/RLg5hOYjhyNznaq9HldzC9BF0RfWijEATd9IuIJR
rFQVb/LXsNYwYR696yefPYZuycW8+VCpsjIvGochoWzHbOrZKnd+q0Ss1ZZmJ+rL
tTBEvitWCj2hOHWU9YWBr6R6eH+J4qpdcIRg7aXD0M7uqEsWB+ec87GeFtWnLJOz
SgrgqzFPnNUCLPcxpByKvS2n/dcrlMsEOgEGTIh2dXlO0SaF59rQeXAnEfw7JDMy
9ljSiU2PQ5+tXqbXrn5jpmZLqH99fVAg3kgSJnflrBHY2ztzSH3L//OdKC8wvjWp
YN3SjMkwpI+hgb4H0LDatTvDqmvIWcfVM9RA08fYqpSqE/hv/+Tf+C5hSq9LrOwf
HoOSx6brvwDJub3j0zhJ/qWiiLx5e2JXnJpiDQs8Wx6AixFP7AcOOzU4zPMsjjGW
zzy+J/867/f4td8LwqbliRQ7JviC0XG3YVRqa/epSABZ9TomOnqQcBDinicTA4WC
Bh5Jk8IxLznCWeDkpbSwxszCW+2/uM/1l2jBWO2eCKnJvzWc/aPyQpnqA+HbdvLP
quShREoImDgBmGdJxqe8iteM/4Nvvf4by5aOGFNTy/T4AIKtIxk=
=TlD0
-----END PGP SIGNATURE-----

--------------AjXp13H8qPGxXxnnL5uKVWSt--
