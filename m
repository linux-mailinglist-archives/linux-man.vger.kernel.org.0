Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06A296E4F2B
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 19:24:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229581AbjDQRYh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 13:24:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbjDQRYg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 13:24:36 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1B9846AB
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 10:24:34 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id v3so1172097wml.0
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 10:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681752273; x=1684344273;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W5+efBSUVj1Jp+e64BW7aVV8m5b18GKYjTNEr59g7FU=;
        b=EA/FzLN6/cvGFU5GOIwPE8B6gumz7IJ4RMEscOFdNAka3Elb86TwwN70lIDKazJ4Pn
         6CHKxWyT0rPIDZntg4ct6Qpqu3MKN+dy0X8R1V9JU6zwS2DoKFRbdymeC80R1dn3DUT2
         NZdRcDh3pi7xC1bMDGhpcWUIdfxY7mLqcmPMbbPoNHbstNrxBJqtOb1fhy/5VexTF5ty
         vyoO9mtdmwlFaRLuM9hUeQwYzBkdXrZhX9z/sxM352vJpluHmY+zNeG37bRvJcbrI46I
         ZjHhht3QrKf3deCsw5Dv0h9Sg7ob/apZE6K2x1VcnHLMShRRGQo2GwydWX5wpWZz5X2+
         /dBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681752273; x=1684344273;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=W5+efBSUVj1Jp+e64BW7aVV8m5b18GKYjTNEr59g7FU=;
        b=bRw/JcmSTtEbi1FthKoEcVzjDMeoeDD+GjEaeJpiLZ8WeQ5VjvDqtyau6cg3qMK1Xb
         iKM77pWePaqZKGr8t8Rv64L9Zv1EyZa94uwfH7iJ0jixvQSsbDTr9D5xjm+gTfGwthVp
         tu/DOGgnmj8K5lYmsO1jCM5jA5WPecXn/fHAWPlbB5N4aNMLiOpQNGh4EhG64o+HzPgW
         OSTjF7iZsMBMxhi7Tw2Z/LPID4o/Dk8VgZdebapvYoHHkuPt8pWfYHlckXzRuwgVJc6R
         LKfEvEErPvKJCzNvFc6+DatMP/TI7BhxSTpJM602niCXibYYKmD1eWQ8pRL8+j+1VqPs
         Ciiw==
X-Gm-Message-State: AAQBX9fnSJudkUmX5+m9ppc1vM8rVu9oNbcX+qylOAMDPmuXLcW7oFaP
        mCPf9Q/+m0fkmAQwrSQywNc=
X-Google-Smtp-Source: AKy350bdsH3FTD+8vZDls5Ub6dm2rwutRQVYORT/G4Is4mjrgPzuEn2L3DFHid+hIWUXfxiachbMHw==
X-Received: by 2002:a7b:ce14:0:b0:3f1:65de:764 with SMTP id m20-20020a7bce14000000b003f165de0764mr6660819wmc.32.1681752273081;
        Mon, 17 Apr 2023 10:24:33 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id c22-20020a05600c0ad600b003f16fc33fbesm6176635wmr.17.2023.04.17.10.24.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 10:24:32 -0700 (PDT)
Message-ID: <31ecebc5-1b97-b610-a097-f260ec4d4c8d@gmail.com>
Date:   Mon, 17 Apr 2023 19:24:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        linux-man@vger.kernel.org
References: <20230414155926.6937-1-gnoack3000@gmail.com>
 <20230414155926.6937-2-gnoack3000@gmail.com>
 <ba15e85d-db90-88cf-ca60-1d4a11a40c31@gmail.com>
 <20230415.de079bcd1e29@gnoack.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230415.de079bcd1e29@gnoack.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------UqmdRJ7t0mC6v5nEoFY17SLR"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------UqmdRJ7t0mC6v5nEoFY17SLR
Content-Type: multipart/mixed; boundary="------------0n8wO3srWoeOxoSKYjpTFlkm";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
 linux-man@vger.kernel.org
Message-ID: <31ecebc5-1b97-b610-a097-f260ec4d4c8d@gmail.com>
Subject: Re: [PATCH v6 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
References: <20230414155926.6937-1-gnoack3000@gmail.com>
 <20230414155926.6937-2-gnoack3000@gmail.com>
 <ba15e85d-db90-88cf-ca60-1d4a11a40c31@gmail.com>
 <20230415.de079bcd1e29@gnoack.org>
In-Reply-To: <20230415.de079bcd1e29@gnoack.org>

--------------0n8wO3srWoeOxoSKYjpTFlkm
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello G=C3=BCnther!

On 4/15/23 09:16, G=C3=BCnther Noack wrote:
> Hello Alejandro!
>=20
>>> +if (abi <=3D 0) {
>>> +    perror("Giving up \- No Landlock support");
>>
>> Using perror(3) will already print "Operation not supported", since
>> errno is ENOTSUP.  Maybe this string is redundant?  How about the
>> following?
>>
>> 	perror("landlock_create_ruleset");  // EOPNOTSUPP
>=20
> The fallback code assumes that we don't know the kernel that we run on,=

> so in practice we also have to handle ENOSYS.
>=20
> See https://docs.kernel.org/userspace-api/landlock.html#landlock-abi-ve=
rsions
>=20
> I'd suggest to just make it more explicit here that it can be two
> different error codes:
>=20
> if (abi <=3D 0) {
>     /* ENOTSUP or ENOSYS */
>     perror("Giving up \- No Landlock support");
> }
>=20
> Does that sound reasonable?

Sounds reasonable (with a call to exit(3) too).

BTW, now I see ENOSYS is not documented in syscall(2) (there's actually n=
o
ERRORS section there).  Should we add it?

>=20
>=20
>> BTW, now I checked that while in Linux ENOTSUP and EOPNOTSUPP are
>> equivalent, in POSIX the latter has a connotation that it's about
>> sockets.  Should we document ENOTSUP in landlock_create_ruleset(2)
>> instead of EOPNOTSUPP?
>=20
> EOPNOTSUP is also used in Landlock's kernel documentation,
> we'd maybe have to update it there as well.
> I'll have a look at what is more common.

Thanks.  In the man pages I see both often, so maybe we need to fix
consistency there too.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------0n8wO3srWoeOxoSKYjpTFlkm--

--------------UqmdRJ7t0mC6v5nEoFY17SLR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ9gM8ACgkQnowa+77/
2zIAoA/9FbOkz8Y3/NSdbRzZ9UAKs5t6X9+hDTvXIiTR1R9RCI95Ep5fX32ZUIUq
4CIjMviNp+VDI7SCiVsdar6xkTeKyHTIoIbgutHsPzFQisVha3e0Tqp4BHwMeKRn
+jA935PA/G929Uc77vDyJ86TU5eREh8FLATxgYndVqnfwc3Mc+rHEyTcgMnGALcf
ql3sNV34kKeTIyU9iyNLBT0DMBXGvQWsleFaWmnOJ9d3NFonzrhaeu6urJDTmFpc
rKSURmUCrrGXdTjyks92lC9+yfs625Z+vSfnqiQRjqR4gZJ9vQLRcYEyGD/4gDM9
mj7u7iRbL/dgYp1tSDJNVSuqrwhvWFPbf53qdMKQ6LehokkYM/xyrxS8kNGXn0wS
4kMJZ8YkC5TMQeEm6romyhJRt0/5S8OzCzH32+vYd3l3ZXvVhpGJdlrli0yifgU9
QTKM86SWCR0MNj+Sfqa3ceTwNzqz0UAGOXQyTCcuch1lItg5z/lZZuxaJ8lWipdc
eyV48kUjMqBnPYHap/Lgx5feWKXkxWNjxk7RvPkp1NUu2FR0jLj9yk50fDlsEw9v
ByXUG9ZmNTJt6wYGP+rxWHfHKTyj/RzNcKbLGzyKl4eAOa9Q5aE0tjtKMtahsDsP
fa0LnSqoQh9bCzSrSD/RFy2qWoqkImj0eLrIz0EcAoG9kkR92IA=
=m2A5
-----END PGP SIGNATURE-----

--------------UqmdRJ7t0mC6v5nEoFY17SLR--
