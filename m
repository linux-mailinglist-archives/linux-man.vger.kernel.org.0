Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 490C27D4CC9
	for <lists+linux-man@lfdr.de>; Tue, 24 Oct 2023 11:43:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233977AbjJXJnl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 05:43:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234112AbjJXJnk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 05:43:40 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C20F792
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 02:43:38 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BE45C433C7;
        Tue, 24 Oct 2023 09:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698140618;
        bh=h1Jd9roOmgAV/JF8KLXlbyCuSrZndFwRGD80oSewuv8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=uwZbgychEXIZ/PwKMU2U/Gu8VvD34L3INF5OhWcklZ1dyF+a9moN4VqRxGsjcOYGu
         KJggqWlN0jTIpCs+efmdFfuRByUbh1C+05Kbq0Fxckom3G2qv98zC7VrUDfyzjagDT
         D8O/+B9MaTBiTYdAmuQjSCFbDRZsnRmG5OKsw1lTZ+MY74H/QqO3C4E5Y/vUppvEzX
         6Yl5dmvZ4Wx9QMJS1mWAb0b75liyixqFLwXTYursmW2tF3ny4ARQZj7Qy52Hzi3sjT
         MDB+KxrKwbvLKvt5fuP8HfZycDm1wJBg0HHVsFtwBlnroucjZ/pwuY0TBvO1S1Wb56
         z0Q08Rs+GJHVQ==
Date:   Tue, 24 Oct 2023 11:43:28 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v3] ld.so.8: Describe glibc Hardware capabilities
Message-ID: <ZTeRx4vqHQ07eATQ@debian>
References: <20231019172315.208972-1-adhemerval.zanella@linaro.org>
 <CACKs7VBtQNA-j=HapaBcM47gRE72jaBBU+c59G4Xx3WimPRFsg@mail.gmail.com>
 <d66f16b9-c65f-4fe5-9b86-05373a52561d@linaro.org>
 <CACKs7VBdNpWL6-GsECk46s7rK+aDiSr5BjROFL-T_Mh2AvPQ9Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="z4ZWwreodo5u5eoG"
Content-Disposition: inline
In-Reply-To: <CACKs7VBdNpWL6-GsECk46s7rK+aDiSr5BjROFL-T_Mh2AvPQ9Q@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--z4ZWwreodo5u5eoG
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Oct 2023 11:43:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v3] ld.so.8: Describe glibc Hardware capabilities

Hi Stefan,

On Tue, Oct 24, 2023 at 10:59:12AM +0300, Stefan Puiu wrote:
[...]

> > >> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
> > >> ---
> > >>  man8/ld.so.8 | 48 +++++++++++++++++++++++++++++++++++++++++++++++-
> > >>  1 file changed, 47 insertions(+), 1 deletion(-)
[...]
>=20
> >   .PP
> >   For instance, on x86 64-bit, if the hardware supports
> >   .B x86_64-v3
> >   (for instance Intel Haswell or AMD Excavator)
> >   , the resulting search path will be
> >   .BR glibc-hwcaps/x86-64-v3:glibc-hwcaps/x86-64-v2:.
>=20
> I think it would be useful if the existing levels are defined
> somewhere; maybe Alex can suggest the proper manpage.

I'm sorry; I didn't even know about these things until Adhemerval sent
the patch.  But yeah, I agree that if would be good to define them.  :)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--z4ZWwreodo5u5eoG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU3kcAACgkQnowa+77/
2zIQfQ/+IoWkoWQm9wmvaaTKEgmoUDkIGI0nBHW0PvQF3ovMmGaj8c/M2idWpU5E
d+l58jlYCvb2AbgQBtv1psMsWlXGweKR7DVCmEmtEUd9N2MfO4RSF0SyGIe/NdFP
TjXQ/IaUnX1RL/8RThbODKPou+MVeiBpIZGcE0BkWFYBcDLHYGGiIwp6Z+BC+Mvv
gyr3LeMWZEuPz8QA1heJnAo61PM5CZ/CtE9LbX/PNxa0K0PkVOffPqxUNxOTp/ha
0uAXzjvprW1kqY11W4pjf/FtWmrqs0Q/iUtovNp9I3VXWKXe8AlaWScmHHKnBDUk
wgpzOO+pmcShaewv8gtW4gCLywNrQ3Zg8UBnkJd8ZVkVakfwknO+SFDpq/oW0P7h
HMByky2KwQptXX+nCo7Vo+BaXeRCsxa+bcmj9d4cUwr7sthBB8tTdxmKuJa0l1gx
dN/Rcn1FZV4yEFvqVzbNnNPxdGJLYyfZ+sw4hSogtlqP8wLbLAAhJSNmooIzK33p
R8Brc4au3UVqjQdUES3Wl1uycueQAmyj1Kf25ByLnZY3Awzy4R+VYxPJplRi8VgE
TDamHJxWFv1mxJZTG6iGrfnnsMM7s/53yVJ0xy+aFxZiLYKY8aET4fMh1zgvStWs
DY7/LsXQopFtwRkmgCKfgmzUj3JYagaK+06oIolub3UMpgXATJQ=
=95CW
-----END PGP SIGNATURE-----

--z4ZWwreodo5u5eoG--
