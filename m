Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2630B6FBC2D
	for <lists+linux-man@lfdr.de>; Tue,  9 May 2023 02:54:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229525AbjEIAyX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 May 2023 20:54:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjEIAyV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 May 2023 20:54:21 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFE973A84
        for <linux-man@vger.kernel.org>; Mon,  8 May 2023 17:54:19 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f42bcf5df1so846695e9.3
        for <linux-man@vger.kernel.org>; Mon, 08 May 2023 17:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683593658; x=1686185658;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0PtvL20oMhDm4stWdBP+Zw2hd9eP2Q2elYQdS9beCko=;
        b=WV8M2KBzauzo3hn3mz7omyn8ruhDtT2LDVOukeD8Gl+YezE3Mk5DeOXy9x8o/knmVG
         ARE/1mtzbnGIazNPehNtCcFpoLFj0ZICzi9PA9WKKpzf3yjAEivn/C+6BTqNfyoLFchn
         BqxYcdA7K7iwnZI1WU+5T6KqSVKWiVHc/H++UvWmVxw7AOEMeVuVwLnsKNcEs91LNmPy
         nMPcDoecvdzE4FMWbZcA1MrmXZhzOgDjZq3QQ5vVk6QOZnuuuBkyst/tJWDTNLpmlNQC
         QzOrIMMHFeB+DwB8Wylir3mc2WUbmYjqWNZAvSM/Pn7bbpP+XjWLTv1EfWBj1OD941Nr
         xhAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683593658; x=1686185658;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0PtvL20oMhDm4stWdBP+Zw2hd9eP2Q2elYQdS9beCko=;
        b=E4H1x8w2MGdDdL8LikRBFg6fVo+pBA+qGVNQXAYpMOkNHohl317R/qPgF34NOKrzeE
         3gr3r31k4lBghscm+kQ00Xg27BTb80g5zbkQDVL+CQSp2ix6CGYRIvzjJ2CpmN9imJWT
         2GKPwvveqSDnYdud1oW3nhXDSXZ4nmc9e1yDM2pP6QM0zR9oiw/+FkQPDLUbuSzfUgzM
         aVT2I0jEAl/OwFo+WSFN4g1PhQ/vUEkSkLFI+WL5bgS3TFfkedw5xDL6Pa7APnrvxad5
         d//9nQhxK0NBlspo1sLqBsnPwNM1NU9WhdYCDq2iJKZ+ffUS69FEyslKecjw2I3grG+5
         dY3w==
X-Gm-Message-State: AC+VfDyLsEnSzTsJVgKrW7A3tNEKeoA+Z1VRCVcLQ+O0qS8E+GjXxBFh
        Xmq/ygFhT5/+aFV3YUgUuFg=
X-Google-Smtp-Source: ACHHUZ6tGGPxsaUz9Alx8Hw/kO5Y6VPfF7YfWqSc3gh/s791cmfGu83gNXW6GPFDRWYwKOlmzvKGxA==
X-Received: by 2002:a7b:c4c3:0:b0:3f2:549b:3ef2 with SMTP id g3-20020a7bc4c3000000b003f2549b3ef2mr7450835wmk.17.1683593658331;
        Mon, 08 May 2023 17:54:18 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id g14-20020adff3ce000000b00300aee6c9cesm12706201wrp.20.2023.05.08.17.54.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 17:54:17 -0700 (PDT)
Message-ID: <2f0a225d-b71a-e36b-f8fa-7da7b1ddc7a1@gmail.com>
Date:   Tue, 9 May 2023 02:54:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: aligned_alloc: update to match C17
Content-Language: en-US
To:     DJ Delorie <dj@redhat.com>
Cc:     linux-man@vger.kernel.org, "Floyd, Paul" <pjfloyd@wanadoo.fr>,
        John Scott <jscott@posteo.net>
References: <xn4jome3m0.fsf@greed.delorie.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <xn4jome3m0.fsf@greed.delorie.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CO4dgilQ7bFUOkc99IE2xbzQ"
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------CO4dgilQ7bFUOkc99IE2xbzQ
Content-Type: multipart/mixed; boundary="------------7bFlwz0uuY7cGsbhWR59JrWy";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: DJ Delorie <dj@redhat.com>
Cc: linux-man@vger.kernel.org, "Floyd, Paul" <pjfloyd@wanadoo.fr>,
 John Scott <jscott@posteo.net>
Message-ID: <2f0a225d-b71a-e36b-f8fa-7da7b1ddc7a1@gmail.com>
Subject: Re: aligned_alloc: update to match C17
References: <xn4jome3m0.fsf@greed.delorie.com>
In-Reply-To: <xn4jome3m0.fsf@greed.delorie.com>

--------------7bFlwz0uuY7cGsbhWR59JrWy
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi DJ,

On 5/9/23 02:43, DJ Delorie wrote:
> Alejandro Colomar <alx.manpages@gmail.com> writes:
>> Thanks for the patch!  IIRC this is something that someone reported in=

>> the list a few months ago, right?
>=20
> Years ago, actually.

True :)

I found this one too: <https://lore.kernel.org/linux-man/d79b505c-5b19-33=
1c-5b25-d40adc9cc843@wanadoo.fr/>
I've CCd that Valgrind maintainer, since he's probably interested in this=
=2E

I'll probably apply the patch tomorrow, after some sleep.

Cheers,
Alex


>=20
>> Would you mind mentioning the reporter
>> and CC anyone involved in the discussion?  If it's difficult for you t=
o
>> find those, tell me and I'll do it.
>=20
> I got them:
>=20
> Link: <https://sourceware.org/pipermail/libc-alpha/2023-May/147810.html=
>
> Link: <https://patchwork.sourceware.org/project/glibc/patch/33ec9e0c1e5=
87813b90e8aa771c2c8e6e379dd48.camel@posteo.net/>
> Cc: John Scott <jscott@posteo.net>
> Signed-off-by: DJ Delorie <dj@redhat.com>
>=20
> diff --git a/man3/posix_memalign.3 b/man3/posix_memalign.3
> index 9bc6eb9a4..88e4a8b63 100644
> --- a/man3/posix_memalign.3
> +++ b/man3/posix_memalign.3
> @@ -91,9 +91,8 @@ The function
>  is the same as
>  .BR memalign (),
>  except for the added restriction that
> -.I size
> -should be a multiple of
> -.IR alignment .
> +.I alignment
> +must be a power of two.
>  .PP
>  The obsolete function
>  .BR valloc ()
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------7bFlwz0uuY7cGsbhWR59JrWy--

--------------CO4dgilQ7bFUOkc99IE2xbzQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRZmbIACgkQnowa+77/
2zKRCg/+PjuObC2M/7LMSi2q3QsN3xJ8bOT+wIqHjHdFmUDpn1yLju7BogbOaD+h
zYaoPblRtN2m55GHxdw7MEYhhEF1FmH3hWCf/Atw3/CX/Y6R8tn8jKxceW1kAtoX
bGF+wrAS5YzzABZ0+nAhubHLtA1hxA4HkGDnDIzsIU3QzeMCF7jSvmdZUMGXsnqK
8FjLFh+rudC2arAkDpYTe7U5d3lqkIR4iBz4qYGvJW5DAWdGvBY28hO8zRM2cFQH
HEOrP/2qpzWIHMG37t0J6SXU9gFFxpg2vGAtIEiz/UHXDeSE/flLE3B0V3sE7OtT
WErmbpuIeTZwmPpiUJb0EweoO8v+AD+6fXUFKicJ9Tt00Z4cAub+YLcROdQ8/ZHn
fkfgf96KnZz/zKg5evrlZa3TpBK9IMXwRZGjU6m3p64JnFv+gqZDhnyQAD0I0QY9
iBNn9lGbVJq+fCvjvUninfQFQ/O0ZsBVUB4O50QIOkl8j4NsnLRUEyVRzXDb5lye
B1KijFeYO0aubD8zUaflZJyk6uioUkAAZaiLEoIVNp/KfW/Q9ytaUUtfiezXll+V
AGbVEu7C2RbnE7yu6b2uACmJ4zrapw/Kdq1wloXfb4x5ww4hrS9CFGcdaIV9SZ8i
RSjB0ayRw5WlLZh9H6iuh99c+DvHBZhw7X7ojxcDoTUdsBRzxyM=
=f0Ug
-----END PGP SIGNATURE-----

--------------CO4dgilQ7bFUOkc99IE2xbzQ--
