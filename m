Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48B647B0449
	for <lists+linux-man@lfdr.de>; Wed, 27 Sep 2023 14:35:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230109AbjI0Mfa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Sep 2023 08:35:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231358AbjI0Mfa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Sep 2023 08:35:30 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B0F6CC6
        for <linux-man@vger.kernel.org>; Wed, 27 Sep 2023 05:35:28 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9499EC433C9;
        Wed, 27 Sep 2023 12:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1695818128;
        bh=E0nexIz9NCjzJXqhf4X3exBStJTIBq9yRUlmyz0uWGM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Da8WH4JyGRlxpKWBsnA4u5N1v6v96H9PuWLdZluTQMSCaWP5ts1GezL3c/EqBWOgn
         jZqeqCxutyRIs2B/nZMcWJ8RXd8bizgsExXa0PAmMJI/IhTSg8+jRF4qg7g64t3KDH
         lsdrot+YewZmottGwF6vHShS06c28uH1qRn0ViLHdKwdiT/z44rpaXYg7lT9dTb7l/
         SBP50wWvi9FsWMentro0QX5G5Wnw/vJxsV9KlEErHKX246oHPqiY7vxC4jiR+sL19e
         k1AZwwh2igWnz/NUDtyGHu42pCBqb4fbGjh5Umn2a3UBJr6M5XHIlNEXfqlxbvfJ1q
         +j+vgTrGJRgGw==
Date:   Wed, 27 Sep 2023 14:35:25 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     =?utf-8?B?0JTQuNC70Y/QvSDQn9Cw0LvQsNGD0LfQvtCy?= 
        <dilyan.palauzov@aegee.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: No NOTES section in snprintf(3)
Message-ID: <ukuwk2nsmpd5p7n6ujnwsiddkw5x7u3h4dbtumoio5mm7blltz@idb5rvm7nuhi>
References: <4407b14d09ba3237517b18f2c0fa8ce1@aegee.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="illgnoyslscobtzu"
Content-Disposition: inline
In-Reply-To: <4407b14d09ba3237517b18f2c0fa8ce1@aegee.org>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--illgnoyslscobtzu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: No NOTES section in snprintf(3)
MIME-Version: 1.0

Hi =D0=94=D0=B8=D0=BB=D1=8F=D0=BD,

On Wed, Sep 27, 2023 at 01:19:11PM +0200, =D0=94=D0=B8=D0=BB=D1=8F=D0=BD =
=D0=9F=D0=B0=D0=BB=D0=B0=D1=83=D0=B7=D0=BE=D0=B2 wrote:
> Hello,
>=20
> the manual page of snprintf() =E2=80=94
> https://man7.org/linux/man-pages/man3/snprintf.3.html contains:
>=20
> DESCRIPTION =E2=80=A6  See NOTES.
> RETURN VALUE =E2=80=A6 (See also below under NOTES.)
>=20
> There are no =E2=80=9CNOTES=E2=80=9D in that manual page.
>=20
> The manual page likely means CAVEATS instead of NOTES (or vice versa), as
> there is a CAVEATS section.

Yep, the section was renamed to CAVEATS in
4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize se=
ctions")

I've fixed that:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?h=3Dco=
ntrib>

Thanks for the report!

>=20
>=20
> Moreover https://man7.org/mtk/contact.html contains =E2=80=9CNOTE: to mak=
e a
> man-pages bug report, email linux-man@vger.kernel.org.=E2=80=9D  where =
=E2=80=9Cman-pages
> bug report=E2=80=9D is a hyperlink to
> https://www.kernel.org/doc/man-pages/reporting_bugs.html .
>=20
> That page https://www.kernel.org/doc/man-pages/reporting_bugs.html does n=
ot
> exist.

Please report the broken link to Michael Kerrisk <mtk@man7.org>, and ask
him to link to
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING>
instead.

Do _not_ CC linux-man@ in that mail, please.

I've been reducing duplicate stuff in the website and keeping the
information only in the git repository.

Thanks,
Alex

>=20
> Kind regards
>   Dilyan

--illgnoyslscobtzu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUUIY0ACgkQnowa+77/
2zLYoA//Ykfu/HsvTkyWQtPTZByzErGbiBXgEospvWuvCIuWavU0FfCyaOEbHB7d
EK1+kcUT8qczHuee1zCxOLvWItBo7KiE15OvkJ8ZH9WANzM/ENh0AcE9NMSuAcW1
pqKoqMlxnG+1Pw9w9LU5IWekfygdyk6wvTiPTW4AKXYlrUSnH3Sk4X8O5YZmMJxd
4gfMDQ18WywMydV3W+Mt+50N6UaBscx2EWt9U2I7wj7B0xGuL8vsajo3ezD8hwyF
sgu5lW2MVxgTF5Zrdf7akLsr0au72re5aCTVqhv2y3zsUf3GXNdt3LpMqsGlA3GY
nKhY1cQhk5BELBemK6rPDkvwy2dBBBUAMui66m+L1hMSyBbBix+6swW/XqPzLN11
RUg1FuHDqBZsa8qSPv1VOYDJSdryyCaltRpQdfkmSoJBrV2/ijc6PG0UP/ffc8TC
OQ0PRQXb/jyFHqJYZri1WrejTBql+0NyLtOvdbZD7ZtliW9kOwFgPntRroirA7fM
2RIhenXYOBPepy7sFViYeHp7VjgG35dUGl2EuHfgl41aKb/UGaMyLPlo0z9UqlAq
9Aa/TDl7xe3+1oh4rEsI30c7IBrtvy9/bqtFTMmUCcHM+ZUwtw5WgNOgdjQtlGY8
/j7cyjilSiZ909NRacmP22TKvOxI+Kj990UbKgsnB7yGgOSNasc=
=tR4h
-----END PGP SIGNATURE-----

--illgnoyslscobtzu--
