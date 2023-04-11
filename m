Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F15BE6DDE9D
	for <lists+linux-man@lfdr.de>; Tue, 11 Apr 2023 16:56:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229483AbjDKO4l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Apr 2023 10:56:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbjDKO4k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Apr 2023 10:56:40 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A90092100
        for <linux-man@vger.kernel.org>; Tue, 11 Apr 2023 07:56:39 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id m8so18433183wmq.5
        for <linux-man@vger.kernel.org>; Tue, 11 Apr 2023 07:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681224998; x=1683816998;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KHFPK5IxSnC1LcoDgfyu8wTVtNunuykbPCnwU3bpMmI=;
        b=qeA9R4MGx+hhYxp6SFivqOC+X0hAwu1xF7TiU4QyFFeRmN9yI73axfXJ9aAXFX1Fyo
         5Pv/egwg1KZvh5WuLHYOS3JdBAhA5wm5fl8oQ1wJffvh4lLQP32ZxQXvAROMW75hzrK4
         iskdVCrbndur3iwGvcImqN/zhTuBtb+OGqm9OSnDjH87dINaJ8+H7bQ2WNg6Ni6RPN/6
         LArcMggbf+egWJrjHDSJE/QGyD1oMfCWCYVecey6B+zf7ZWHU5fjR1cpeE/rY+rciYFE
         QWxOurBfNP/DtJXkA5k2Tf8TmJpb/znqy5b8liFY8nsVN+wr+CWLuN0+LKspwdMOql5f
         FA4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681224998; x=1683816998;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KHFPK5IxSnC1LcoDgfyu8wTVtNunuykbPCnwU3bpMmI=;
        b=AZkh4RBLiHkchHjKxzg4NNTwkjNtXpSoXt6q7o6A1IzHJ/MmbF3EeZD+PcvGRxijoO
         pj+qveb7mDVV3HD1KfAcMw3Y3JsBxspBviuICQ920YqY7mT80YRRKnDPBRkCpxKS/XU8
         7ic4uh2XBZdEfGnYUzWvg7F0YCA/Vl8viaGc5Ggb9A2Iiz8D7Ke2J23Ea6w8tICARzZH
         FrYjOJzCzbpiHQyRpC6FJSuxhYUlUCWCJ8sZFBi3p2vIAW87RYO0/WVf0pVxLqNB5zGI
         ks6ftsG7GxumhXIp5YPLlQYSOTIiow3Z6n8C7DaSygqHhUytKwmT8XXAS5rlAH7u7DcL
         0zBw==
X-Gm-Message-State: AAQBX9ca/89UREr939wEyozXLzl0RON1bqdjeTINXsj8VVXt9G82B5/7
        sJUQyx56OQ8KxMULsw0w7ClQYPKY1QU=
X-Google-Smtp-Source: AKy350YnxU9apqCuvcmXwJBVlzHf2UUnBHEtwyE4InvCwpFaIa6BzxvqS3227WbFoR7f6Scw98Zgvg==
X-Received: by 2002:a7b:ca57:0:b0:3e2:2467:d3f5 with SMTP id m23-20020a7bca57000000b003e22467d3f5mr9438854wml.25.1681224998174;
        Tue, 11 Apr 2023 07:56:38 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d4ac7000000b002cea9d931e6sm14841345wrs.78.2023.04.11.07.56.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Apr 2023 07:56:37 -0700 (PDT)
Message-ID: <6b37b684-3bb3-58de-ba6c-fea7cd8721c9@gmail.com>
Date:   Tue, 11 Apr 2023 16:56:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] fts.3: note fts_open() behaviour with empty strings
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <5pllbtzrjd5qpzjirtmritpk3it4whf43fnigbv3vqfkgwov2u@xk5dulph2uzk>
 <5aac8abb-9c56-e483-2cfa-9cb2615cd738@gmail.com>
 <6b2aayvsqkphaiabg6aqjvdhxyy3apyiws3nhj37rh7gmy4bbg@ms7uynznrtnj>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <6b2aayvsqkphaiabg6aqjvdhxyy3apyiws3nhj37rh7gmy4bbg@ms7uynznrtnj>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------M7OQ9jqfnQ33PprHERzorD52"
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------M7OQ9jqfnQ33PprHERzorD52
Content-Type: multipart/mixed; boundary="------------9jmTjb73PvYvoi3joFij2kPd";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <6b37b684-3bb3-58de-ba6c-fea7cd8721c9@gmail.com>
Subject: Re: [PATCH] fts.3: note fts_open() behaviour with empty strings
References: <5pllbtzrjd5qpzjirtmritpk3it4whf43fnigbv3vqfkgwov2u@xk5dulph2uzk>
 <5aac8abb-9c56-e483-2cfa-9cb2615cd738@gmail.com>
 <6b2aayvsqkphaiabg6aqjvdhxyy3apyiws3nhj37rh7gmy4bbg@ms7uynznrtnj>
In-Reply-To: <6b2aayvsqkphaiabg6aqjvdhxyy3apyiws3nhj37rh7gmy4bbg@ms7uynznrtnj>

--------------9jmTjb73PvYvoi3joFij2kPd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/11/23 16:36, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> On Tue, Apr 11, 2023 at 04:22:09PM +0200, Alejandro Colomar wrote:
>> Btw, while you're at it, could you confirm if the nullability (_Nullab=
le)
>> of the documented funtion prototypes is correct?  I never used those
>> functions.
> The only valid null pointer is compar in fts_open(),
> which appears to already be documented in running text;
> all others must point to valid objects.

Thanks; fixed.

Cheers,
Alex

>=20
> Best,
> =D0=BD=D0=B0=D0=B1

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------9jmTjb73PvYvoi3joFij2kPd--

--------------M7OQ9jqfnQ33PprHERzorD52
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ1dR4ACgkQnowa+77/
2zKduRAAp/RCYAE6TdYVbWZturNNGPXQPJSmcqlSITcU/roJ1iQhEzZ1zyGS2we+
NcxsnRkGXxHFT0nNTEkJxcnQT4UJThzaCwaVtAimiGv5iDypzPcjtG1Ti/PkhiUw
/EvBhLozcxvddk10zR4cBnoB/oRYYDA5vbolXnJAa1YUWpF+EWRSPJi81zhFSGNM
9E8BAskHl+weDhleU54oVj1wsXX9IU7BJgQf4BEBwMRL3/eSU6KpJCuDWgl+N9D3
ApfU7MtRP0GxZK/trS3EOjEqqlx2JA48ItID1K1vrdpCAbn4wqMPCJKbx5rxbywh
iCsmvaGhLPYVl08/3/ccpcCmjCauq+Y98bU9IkMHGaXRc7qaRPy/xlt1gK/85FaA
gR+/MQi2UxylHzy9bdaBFJutRJeLbKEEGSyp9O9QVUqLERVZ3vqKbacPEytOeoYZ
PztFUm5mblNuOJRn5vUM6X5rUW8GJi23dyf8ubmpaTprrlL6vc+UKLAO/07e861c
dUSm02tFqHImZVEjb5abnvQwu3Gb0gDxKL4tI/lxJbJoGZ8PLBLN0Jaw3NI2ik1C
tP9p1SVOG7LszQZffoNKu2q+3Q7p0CGWEdwFgI7Y+hgI9MY4J2d538MxjkUgP956
YesSf/aQPv5lMhR4bEvADQIYfvAf7HELtLyUkS1WOqaGjFcj1Co=
=+Nor
-----END PGP SIGNATURE-----

--------------M7OQ9jqfnQ33PprHERzorD52--
