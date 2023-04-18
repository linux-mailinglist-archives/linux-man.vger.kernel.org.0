Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F5F16E6DC0
	for <lists+linux-man@lfdr.de>; Tue, 18 Apr 2023 22:55:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229633AbjDRUy6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Apr 2023 16:54:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232753AbjDRUyx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Apr 2023 16:54:53 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94B48359D
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 13:54:37 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id o6-20020a05600c4fc600b003ef6e6754c5so458240wmq.5
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 13:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681851276; x=1684443276;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6gY7e199UIg65wCOjqP9Vjdz8IAZ27pQJRFoLXh9RmA=;
        b=OHl6Sj+As591wzxiOU+px7lC6raYHtYEoeYLVjFVaAuUgvDsfAWg4oAaDAahOAPDTa
         uSyiz0+IHmTg3yO82T7oBxO6Ac/23f634rmpsjiSNVgEQjyGHXFpFHshdak3S73RHlmk
         M141XU0zjSpiNlYCWHq1CCUsZazYrHoSusJWsvGbGu5VMc/csLiBbFDgPaPTyuDgJ8v5
         Gq2KuBF0NdQkIVwT6BPkUOB1uq4WPnbAJ35cez0hemYbWOGIiOSRHdrXGfRbmJfVvQFv
         Wu/yEyaXgYd1jcZ5eI2AMTQN/J+EZzArPxE7t5a+D2hvLw/YQPWmv4/mTC4ixOTZe66w
         BeKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681851276; x=1684443276;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6gY7e199UIg65wCOjqP9Vjdz8IAZ27pQJRFoLXh9RmA=;
        b=IHK9lnqK8Q9q7UYixPaFASSv7UCv30V96ESiZMHU0zQLnc0COnACToCWH9A4/ayb6f
         yCeuhYpNtN+kiRHLmmf5RNCCPBpXpddexmFHHCpIA7x8o+LjXl9CbBZs2vK5k+FLXyPF
         SjmM9jYwWI2XKtymWmtWeXMjr3zvWEZ/MCQ3tSpooccetVrDJl1kaAzY1v8XQ10J9tJ3
         j6jFhpunQsZepfBLNM+eU0u/0osoVyFbbWPn1hn9xSGOk7M0nKDYzCDiJCx09Zke8M4+
         aOiEIYTSZqBwnorZkRBiz4Wo61sJQ+G/oKNyKQLlKTr5E2QBt5LeVtjwAaorYB+bLgR9
         dgSQ==
X-Gm-Message-State: AAQBX9cVwzuGNP5R2xKu5gR3wTXGZIUGTagZkhf9Xzxd0kRZTK7P9TxY
        8ENHNCbkn6KcXCjYmGMIN+8=
X-Google-Smtp-Source: AKy350aUGP0uqGiuLXZTRenKvOaVAPzZXKDwzA/khgWPZPkWaMF9a6r9yJ/Pm6mmfJWNoH5LNpiLCQ==
X-Received: by 2002:a1c:e916:0:b0:3ee:b3bf:5f7c with SMTP id q22-20020a1ce916000000b003eeb3bf5f7cmr13604114wmc.23.1681851275947;
        Tue, 18 Apr 2023 13:54:35 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id iw18-20020a05600c54d200b003f174cafcdasm90680wmb.7.2023.04.18.13.54.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 13:54:35 -0700 (PDT)
Message-ID: <b2b27819-1af6-2ee4-f6fd-691277fd7d3b@gmail.com>
Date:   Tue, 18 Apr 2023 22:54:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
Content-Language: en-US
To:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
References: <20230414155926.6937-1-gnoack3000@gmail.com>
 <20230414155926.6937-2-gnoack3000@gmail.com>
 <ba15e85d-db90-88cf-ca60-1d4a11a40c31@gmail.com>
 <20230415.de079bcd1e29@gnoack.org>
 <31ecebc5-1b97-b610-a097-f260ec4d4c8d@gmail.com>
 <dca3298a-c65a-1270-6540-7ec66feb0c49@digikod.net>
 <da83fef9-5275-f149-6cf7-988220ae0b27@gmail.com>
 <1f68915c-daf6-83ba-3358-e090fca34909@digikod.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <1f68915c-daf6-83ba-3358-e090fca34909@digikod.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qqDC7DDaG3LvFFx6N0gqRrHJ"
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
--------------qqDC7DDaG3LvFFx6N0gqRrHJ
Content-Type: multipart/mixed; boundary="------------lgPPnUg4kbIgV9X5RA0IvM4d";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org, =?UTF-8?Q?G=c3=bcnther_Noack?=
 <gnoack3000@gmail.com>
Message-ID: <b2b27819-1af6-2ee4-f6fd-691277fd7d3b@gmail.com>
Subject: Re: [PATCH v6 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
References: <20230414155926.6937-1-gnoack3000@gmail.com>
 <20230414155926.6937-2-gnoack3000@gmail.com>
 <ba15e85d-db90-88cf-ca60-1d4a11a40c31@gmail.com>
 <20230415.de079bcd1e29@gnoack.org>
 <31ecebc5-1b97-b610-a097-f260ec4d4c8d@gmail.com>
 <dca3298a-c65a-1270-6540-7ec66feb0c49@digikod.net>
 <da83fef9-5275-f149-6cf7-988220ae0b27@gmail.com>
 <1f68915c-daf6-83ba-3358-e090fca34909@digikod.net>
In-Reply-To: <1f68915c-daf6-83ba-3358-e090fca34909@digikod.net>

--------------lgPPnUg4kbIgV9X5RA0IvM4d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Micka=C3=ABl,

On 4/18/23 22:50, Micka=C3=ABl Sala=C3=BCn wrote:
> Indeed, ENOTSUPP is a kernel error type, only EOPNOTSUPP should be used=
=20
> to return error to user space. ENOTSUPP is not used by the kernel, it i=
s=20
> only defined by the libc:
>=20
> # ifndef ENOTSUP
> #  define ENOTSUP		EOPNOTSUPP
> # endif
>=20
>=20

[...]

>=20
> ENOTSUP doesn't exist in the kernel source, so it is legitimate that=20
> Landlock and any other kernel interfaces use EOPNOTSUPP.  ENOTSUP shoul=
d=20
> then not replace EOPNOTSUPP for Landlock nor any other kernel interface=
s.

That sounds reasonable.  It's a bit confusing that many man pages documen=
t
ENOTSUP (user-space).  I'll take this into account for when I see some
patch that touches one of those ENOTSUPs, and ask why, and maybe remove
them all in favor of EOPNOTSUPP.

Thanks,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------lgPPnUg4kbIgV9X5RA0IvM4d--

--------------qqDC7DDaG3LvFFx6N0gqRrHJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ/A4oACgkQnowa+77/
2zKjVBAAmMigcpc9Un1Q0G3vlSXAajwYdQKr7n2470X3EnjbcgMsxqagKaNDhVnK
r2ajKE//xrqc9J1IyRA4EOf5pT5IFCgZaRdpq0K2kqoUlfIWMXgM/MI4GOxrgNIR
hy/jhe7Ci3MN75ysk5pxeTorL47rr/5zTl0N1cpLwLeXMQ+ow/uczrazLs4lU7lH
Et6lIhoP7Kt8DZ2Jj43wKKxrTmMqYnuYj7WYuKlU9Mf4ryXAEza0jQFU558HWnCf
/85zC3zasYaSlf9y6T1Hman9raWXXZlcaIURB4E/yug2dlMVfO9cgrwVL2G/85n8
cHIOT/QxB7BNYr+8oDbnh51kTsX9vLhPpl4CcW5kYD8OsFg2ULTzOTWNekN2lG8B
eMHZh4IbaEu66yu6jGYNKGqdLefWw0T62Pj12SIrS9YMlghsp0LU926u9CoR56PD
UIU8z70ZsZ12u++WPVnfqL4473+4bEmHrSDwlbtsMUzglfobmvpT9uN3x3UnKjCA
L2RsgqvnwzgLxEeg0blBvzM/yT3eyP5QR/ox8Z7TwXCZ5ayiDDBwRTOih2ED58vb
yVQdwAqWsipJ4359cS+RecSVyunZItID31N8kuqqSLsHQEmb5qRBbqjDn/3dXFe8
Svfr5irrjfw1ozaawnl6tY3kBltNoodgCseXulAW4m5l1QX4ntQ=
=PFBv
-----END PGP SIGNATURE-----

--------------qqDC7DDaG3LvFFx6N0gqRrHJ--
