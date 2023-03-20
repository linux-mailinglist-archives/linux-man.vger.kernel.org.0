Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49AA06C0C7A
	for <lists+linux-man@lfdr.de>; Mon, 20 Mar 2023 09:48:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230381AbjCTIsM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Mar 2023 04:48:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230060AbjCTIsL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Mar 2023 04:48:11 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05209AD18
        for <linux-man@vger.kernel.org>; Mon, 20 Mar 2023 01:48:09 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id az3-20020a05600c600300b003ed2920d585so8636864wmb.2
        for <linux-man@vger.kernel.org>; Mon, 20 Mar 2023 01:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679302088;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FItT2+q42kB2brbWeoD2fv/7KWpic+azPjI/Hz2Kw1o=;
        b=opkTKiytZCnX1ALdwmpKQCS9staVPEvRzb1VQo1hl0wR/JFrRu6Ly+Pw/Le4nvNhPJ
         GNYIg/7nibkSpZFK+nem2nlMLnr/vDpIsjfoGxBulxBnL0TJ/AcolRiKmR3HBCMUngvs
         igVnjGPqWj0IdI744b9qsC0HPhaxBi5khmW513O/ixuYey7sY2x9ASrzrR76ypZKSGvR
         UdGPppZ06G+EfYPU5AQ/AKo5G31FTrqirp6ZaFf5JOyQcRiSYlXWn4noQHzCxcH6VHgL
         XdhCwquPMEm2UTJED6DCNpcVW/BA4JAhu6UVMLug9esAyBPhGYxdr5BApfOnQhQlHZxo
         i1Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679302088;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FItT2+q42kB2brbWeoD2fv/7KWpic+azPjI/Hz2Kw1o=;
        b=xxab5pr1K6SfzwQ/Crrrry8PUm/9iB1Kk8Fank6IzzdZjIdHYPd3nNGfLd6AdEm2XW
         skUoEwrxynHCUPlI7WKNIVaUdSo/Oa+M9dN1uiwqN3VBhgAvf6irqyR4LXw5uZLkCys4
         TwDw4giuwXFDqj7e6s5fSrxj/65OqxEa9mCVltRV3PU0tyjtwnxWI11+1tZgmwtFgYBk
         P5nB83ntPFfrw3ilDPy5sEIuLLqjC6KrrAl7PoZ1ovUUcBd4bUxYCr9fN3fmJg4gmRwl
         Catwc69hYMw38dLXiiHwxc/2DwSDt397BWwzA0cqrpiaX/AOOkPdvbgfWsIl2x3VWmQM
         g/Mg==
X-Gm-Message-State: AO0yUKVVgxUJb2dkfBilZo65KpUwLNQ+JbiCSaJPC6bKNUl0Lpi+pksK
        ipyoh+n6NliLVMDNN+G05Ms=
X-Google-Smtp-Source: AK7set/DIvUleS4qImeffPRA6BuzSJmP4VPOXLO2ah7oUrR1KbH2upeHkKud9zECJoa16OydxrMEaw==
X-Received: by 2002:a1c:7505:0:b0:3ed:efe2:86a1 with SMTP id o5-20020a1c7505000000b003edefe286a1mr2850253wmc.22.1679302088214;
        Mon, 20 Mar 2023 01:48:08 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f1-20020a1c6a01000000b003edcc2223c6sm5068945wmc.28.2023.03.20.01.48.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Mar 2023 01:48:07 -0700 (PDT)
Message-ID: <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com>
Date:   Mon, 20 Mar 2023 09:47:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Request to update feature_test_macros(7) wrt FORTIFY_SOURCE
To:     Mingye Wang <arthur200126@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------FiZWivFp0Mrdxgg2m0tMbbC8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------FiZWivFp0Mrdxgg2m0tMbbC8
Content-Type: multipart/mixed; boundary="------------MIOOt0NVvG5Lx1nUvAiHOXf2";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com>
Subject: Re: Request to update feature_test_macros(7) wrt FORTIFY_SOURCE
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
In-Reply-To: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>

--------------MIOOt0NVvG5Lx1nUvAiHOXf2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mingye,

On 3/20/23 09:15, Mingye Wang wrote:
> Hi,
>=20
> It might be a good time to update the _FORTIFY_SOURCE bit in the
> f_t_m(7) manpage. Specifically:
>=20
> We currently have it stuck at level 2. Since level 3 is now a thing in
> gcc and clang with the introduction of __builtin_dynamic_object_size,
> we should add it. The language should be similar to the level 2
> description, with the difference that level 3 is able to evalulate
> dynamic sizes. There are two articles from Redhat about this new
> level: one from when only clang had it[1], and the other from when gcc
> added it too.[2].
> [1]: https://developers.redhat.com/blog/2021/04/16/broadening-compiler-=
checks-for-buffer-overflows-in-_fortify_source#in_the_very_long_term__eve=
rything_is_dynamic
> [2]: https://developers.redhat.com/articles/2022/09/17/gccs-new-fortifi=
cation-level
>=20
> The other point relates to clang, in that we should mention that it
> has it too since svn revision 55735 (2008). I will take some time to
> track down the released version number. We also need to mention when
> gcc and clang added the level 3 stuff.
>=20
> I plan to send a patch on this stuff, but do be warned my man(7) and
> git send-email are very rusty.

Thanks!  No problem about that.  Please CC some GCC or Clang mailing
list and related developers when you send your patch.

Cheers,
Alex


>=20
> Regards,
> Mingye Wang (Artoria2e5)

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------MIOOt0NVvG5Lx1nUvAiHOXf2--

--------------FiZWivFp0Mrdxgg2m0tMbbC8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQYHb4ACgkQnowa+77/
2zJLTg/+P2c1eJfmrAg4t8i3oHUP9bkfZSnVq8yFtxYn2xhjBi13ac+ziaAF0YGc
tkFHrCtJAi4k+QcBYYBTkRE4R9KazV7vx5EN1B3lBffSGcaO+ZDJ3NN91WwRp+Z7
NJmUK0YT7QryvJ56jOmIyHRLYbEzlNfOXgjfbsCESde0AVU3bg/rHVRY+icoyavR
pWoUUguWLNp8qoiatIeKgE+FT8+9F/olG/ch7d8a+vW27e3mzKxqcSyCWfj92Q+f
Tw/PP2L+yItnDYrPdSkZbifb7t3pH7Qp8mqN6z5ztJPVHlZTl4oy9ZqZyS5VFSvE
YlIiKdKAersscR91pet2vKoW95lfqsQiLW+TpY9G3a/MTWmhuAOWaoXFKDe8oj7m
qlxE9sqV7WnaBQgOuadl9s4Y/1KpRsV1KPiVznjjbSJnN6Ejg9JKWpZrVDi9Yarh
Yw1Le440hLp/IFQcVWSApjrSbyZdRqfn0x3lqc3POAvEoC2BqBMb8JHYn0OmR/eA
C5DGrKCva4rHCEGxdwiS5Z3vwNYcgpnpNob5gY5OPzghm9Drt98FkCnXzrRPeot0
BBCOKEQRwnk2D7gBb6VDETqDG9jqi7Fz/lmD/b2t4DzT9JS+rnlCtdlDoGVIxMJn
4mLnIJkPdWBJavCrQtiuHFDBubjrXHLOrzv+ixf81fvDxOzm/vk=
=+w9r
-----END PGP SIGNATURE-----

--------------FiZWivFp0Mrdxgg2m0tMbbC8--
