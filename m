Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D4AA7CA6A0
	for <lists+linux-man@lfdr.de>; Mon, 16 Oct 2023 13:22:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230090AbjJPLWU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Oct 2023 07:22:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230017AbjJPLWU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Oct 2023 07:22:20 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35279B4
        for <linux-man@vger.kernel.org>; Mon, 16 Oct 2023 04:22:19 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD36BC433CA;
        Mon, 16 Oct 2023 11:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697455338;
        bh=P+Dd/75nNMPgH3fkvOIQxMflF/bILGTYAdBh8RKtVv0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=NiviL8MghWsciHaVtO7GpfGmSK1m9as5Qi7PnI8J9t4Lg9xxv51p/KX3UMNxCKDAb
         m1EuWaiqTPVRWFMM4l4W/yun1hUuPTKvxKVw0/SEWMlE1Go61IQmHlAOtulG62HWU5
         Q0jcIXdBs+RjDv3Oj2WurV9sBM+yi2YPT30EgT4Z+MrxJBj7gYDk+7tJPQEOMARikj
         Gn8rza1bkTmlq9Vig7wVookPQ0zOxdjW7khgtmSQ3/kj/Ku79hTIzl8I6ZxYj8LWrs
         OKZIeuvkfsvqWTL4p1/WCiidh9tb8ciLEubciTaAV1g+0hqlsPYRF21/VH0tJ2iJIp
         01Y1v+JctkbEg==
Date:   Mon, 16 Oct 2023 13:22:15 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Mike Frysinger <vapier@gentoo.org>
Cc:     Siddhesh Poyarekar <siddhesh@gotplt.org>,
        linux-man@vger.kernel.org, alx.manpages@gmail.com
Subject: Re: [PATCH] ldd: Do not recommend binutils as the safer option
Message-ID: <ZS0c5zyYbRLvBe4G@debian>
References: <20231016061923.105814-1-siddhesh@gotplt.org>
 <ZS0UpvcYc/0RgdkG@vapier>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="EP3nk5796AyzWpVv"
Content-Disposition: inline
In-Reply-To: <ZS0UpvcYc/0RgdkG@vapier>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--EP3nk5796AyzWpVv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Oct 2023 13:22:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mike Frysinger <vapier@gentoo.org>
Cc: Siddhesh Poyarekar <siddhesh@gotplt.org>, linux-man@vger.kernel.org,
	alx.manpages@gmail.com
Subject: Re: [PATCH] ldd: Do not recommend binutils as the safer option

On Mon, Oct 16, 2023 at 04:32:02PM +0545, Mike Frysinger wrote:
> On 16 Oct 2023 02:19, Siddhesh Poyarekar wrote:
> > The binutils security policy[1] states that diagnostic tools should not
> > be expected to be safe without sandboxing, so it doesn't make sense to
> > recommend it as the alternative to ldd, especially since it is not a
> > drop-in replacement.  Recommend sandboxing instead, since that is in
> > fact the safest known way at the moment to deal with untrusted binaries.
>=20
> fwiw, this is one reason why i wrote `lddtree` (although the primary reas=
on
> was cross-compiling and separate-root dirs).  it's part of the pax-utils
> project that's available in most distros now.
> -mike

Hi Mike,

Is there a manual page for lddtree(1)?

alx@debian:~$ man lddtree
No manual entry for lddtree
alx@debian:~$ apt-file show pax-utils
pax-utils: /usr/bin/dumpelf              =20
pax-utils: /usr/bin/lddtree
pax-utils: /usr/bin/pspax
pax-utils: /usr/bin/scanelf
pax-utils: /usr/bin/scanmacho
pax-utils: /usr/bin/symtree
pax-utils: /usr/share/doc/pax-utils/changelog.Debian.gz
pax-utils: /usr/share/doc/pax-utils/copyright
pax-utils: /usr/share/man/man1/dumpelf.1.gz
pax-utils: /usr/share/man/man1/pspax.1.gz
pax-utils: /usr/share/man/man1/scanelf.1.gz
pax-utils: /usr/share/man/man1/scanmacho.1.gz

Would you mind pointing to some documentation for it?  Or write a page
if you feel like. :)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--EP3nk5796AyzWpVv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUtHOcACgkQnowa+77/
2zLjyg//UFkIDcg+uaqa7Xhr1dbM77+e3YzWp3oE6FoHkwZQsyyLBuQwc/vg5qc4
Q8Z2MUiS4lMyMoG1dJRaEsRUoao1ZsQuPJRfXe+MSbAlqX1/Ws52BVHWq9suiv8D
4LRywBSeJFNLNXeHoHWTg06HKhrmPuR/Imd9UrfEIMCeGgJc3jP47xNdX040R64U
juZebJK8oDPPekbvqLP4CnVqHF38byo8Xsey0RveodcvcQGOfoxN4gXqLwu8kG1g
nYXHfeJg1nxVAq14QKrP7z7eyxxNHpNjguAyUEBaP7QCkWvMOXJbBiENgNdwU89c
tlZN6AyzDk8sqoCAH9zcOoZvGuVRFY8wAskquDTVG3slcnd3nMTiYdjfsOS/tZ4T
luOgnTEI/2Yc9+3EK+iXOx/mWXU0/HMSbVUl0JYYjcHT/R/+KtDc714ktMRhjr5p
Q7yUqo13vqv7N/M4gGT0d4ZC9Jj1tAjfUA5mCH9XofDyTEIBIZscS2SHGACVMjvX
MMh9gr7g8m6dM3BMusP1ZUdQd6jKxK7xT7gifVhYNYOaF6Bjusjd8Q0m98KqOqIu
+nrTBcrh2FYrz22bAewKDzmUBF9b5puoNBe7YA2BBFB59IAfjB4kv0h8DLQ1NCZc
/6JW0LGTOpdlHPrELWMOxHiw/XWwATuMXS5LlkL7pmUqhg7ldes=
=FhNZ
-----END PGP SIGNATURE-----

--EP3nk5796AyzWpVv--
