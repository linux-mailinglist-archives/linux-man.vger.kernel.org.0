Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84BCE76F016
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 18:54:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234335AbjHCQya (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Aug 2023 12:54:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234497AbjHCQy2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Aug 2023 12:54:28 -0400
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 8B6673C21
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 09:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1691081655;
        bh=pBmT0ngdPYJzgtSV9T1sIFKDVgpR8/usDYvisweNQTo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JDnz1zWswUZqPmx+YHAMz+/waEssvlIs+i192VL2xGXrQ4kqtZxFlLTdu9M1XaMLS
         n4/dOcgU5YEFR3E/6Mg0XoiCdyG7+exYLqf6KdTPiFvrTfF4NnMUFdqHnzk8FnKufy
         /6AnALft6R1Pw7ryHsaI3YCUTmI5EJvm6Zf+E4f8LY5c3FXEwQNGB9pUxegWOY0/9H
         qAqCfKkRuIKLbmaVYchc1db9UJ+tQ0LuJOHZpXOsbjR6nAf733pIWsEe1tzQwu33UC
         g6CxCfMt2KVAmtKHfUa0atkxUMvlLHilBhXY41ZCvM8e9tjA1VS3Im+y1XiRlKpG3Z
         TPKPYya73MA+Q==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id CE07A53A2;
        Thu,  3 Aug 2023 18:54:15 +0200 (CEST)
Date:   Thu, 3 Aug 2023 18:54:14 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] fsync.2: no writability requirements, must operate on
 directories
Message-ID: <wdgi2xvt5mb3lo52gfji2nssmheliyl6bxoqxcsi4q4akkkqmu@nzb4vfczxatx>
References: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
 <4aa54e57-6601-088f-f143-23846af2b783@kernel.org>
 <mwgvw3rh3tv6v3vhwf3osw7s6rs4hmfuapbycnqkk57anpqpsp@qoevitjgkjod>
 <20230803151838.4smugh4p6nsgpopo@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="gapo6twaqmwtr3se"
Content-Disposition: inline
In-Reply-To: <20230803151838.4smugh4p6nsgpopo@jwilk.net>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--gapo6twaqmwtr3se
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 03, 2023 at 05:18:38PM +0200, Jakub Wilk wrote:
> * =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>, 2023-08-03 16:2=
0:
> > Replace the FUD
> Do you mean to imply that this paragraph was added in bad faith?
> Because that's how it sounds.
I think it's definitely being adversarial to the reader, yes.
Hard to come up with a better newbie trap than vaguely saying
"on some (possibly popular) systems you need a property
 which fundamentally excludes half of the use-cases",
bonus points for making that property an
obscure-if-you-don't-know-about-it operation on directories,
documented once half-way through the fifty errors in open(2).

It would have cost approximately nothing to include HP-UX and AIX in the
text (especially since they're already in the commit message),
or to mention the directory syncing usecase explicitly here,
or up to 5 minutes to arrive at the bisection I got,
or write this in a way that isn't FUD,
so it must've been on purpose.

Best,

--gapo6twaqmwtr3se
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmTL27YACgkQvP0LAY0m
WPFqww/+MuIbUXpXjwDW8xH3OjsHJwsDol6DIDPgoUB3rWz2ZmQUKpSskkvMxwWO
7X1g0ovXpHRxaGPwLf2NzbNxnfNFAK8h9jamTFd8rWc6rjTRa/MvCOR6Dx2s2rlm
wO8kWoNIz6yTRJ9+CSRR9uL+dbgH7JVG+HrgbnpCtOlHCAhm0Y/PHuBndLb0ZgN2
5fdD72FUxmHJtdL2OJ+TMxbWBQ2mtcouXQI5077tYfo6uoHYiRulxBSjEg9FvlUv
nrpSc0qcY57fWFJoca344x5UtEQEQaZkchVdvfZRnPooOFqExq6Pq8Pg5B8359Td
OzdrLYKTdNRdkcYvNwztmbkkBc7Q2UUK2LkQYGLSXDZdY4BYFTL5Kuao+J3zN/84
b4Kl9XaUt7pRygR/z/i5dDgt6F802Qc93jq87VV6pIWHk0f6wcXnVWAuITvJEZbr
383pbfyUitXWyxO0b1C2zWHJllfnfHKEpxvxuLiRfYsM1Tj5GqqrMT0gLBYNgWZ9
3eEO2w2bx5F+xhaPuy1AHB6GIgKzbU5VT924zAq5gqOJleee5MdkBMechv/JKK5M
3rLpylot0XW00BuHfmGmK4wgjiedreLksXzfcYiw90rkjmOTZWyNc82sNRpCZ1Tk
VsXGD7RYxQiQERht3NGb5hjJ93GV5haVwBql/KiIVSDn/ku4P64=
=2hS5
-----END PGP SIGNATURE-----

--gapo6twaqmwtr3se--
