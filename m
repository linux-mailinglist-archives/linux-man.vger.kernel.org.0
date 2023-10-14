Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E9937C9709
	for <lists+linux-man@lfdr.de>; Sun, 15 Oct 2023 00:31:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229735AbjJNWbK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 Oct 2023 18:31:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbjJNWbJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 Oct 2023 18:31:09 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08DB6C9
        for <linux-man@vger.kernel.org>; Sat, 14 Oct 2023 15:31:07 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 230ECC433C8;
        Sat, 14 Oct 2023 22:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697322666;
        bh=WXVU9IagxGay88KBkk1C4v+Xyucvc+4c70GdUoclMLE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bHvt+xgy5gnt/Ar9mnNHZCDfiGOZK6SFqND5GUx9VO32xpXlUV5VQ9psARfcppnf0
         pUmrsiqiWbHaUAYrRNSho1LL5Pdulrgacrpq9W+jmgQ7IciGckuqkQl3/SQXk1hBLP
         6AglPZpK5Bg8+qPL1FteTqx4qtHks091TmauSOQBXu+3MX3Wn3hMZkuon+2JhDXyZT
         qmO9xD9kgIoxNYIplXYBhAGiM/t/yp68xHNK38LZRUSfI8CCUhgamolGuLSI1N+oav
         CUN+9KMypPTRs+/UT8pP69Ni+20nXD9lXF+pLqknCV6PxspgDC8mDbH3ZZvMoNfNWF
         zI1x46NMP4AIQ==
Date:   Sun, 15 Oct 2023 00:31:02 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Catalin Marinas <catalin.marinas@arm.com>
Cc:     Florent Revest <revest@chromium.org>, linux-man@vger.kernel.org,
        joey.gouly@arm.com, akpm@linux-foundation.org,
        keescook@chromium.org
Subject: Re: [PATCH v2] prctl.2: Document PR_SET_MDWE and PR_GET_MDWE
Message-ID: <ZSsWpvf04IB0yn54@debian>
References: <20231011114744.2563619-1-revest@chromium.org>
 <ZSa7hO2B5oQS6a_-@arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="uX0H4Nfk6cWEEmze"
Content-Disposition: inline
In-Reply-To: <ZSa7hO2B5oQS6a_-@arm.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--uX0H4Nfk6cWEEmze
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 15 Oct 2023 00:31:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Florent Revest <revest@chromium.org>, linux-man@vger.kernel.org,
	joey.gouly@arm.com, akpm@linux-foundation.org,
	keescook@chromium.org
Subject: Re: [PATCH v2] prctl.2: Document PR_SET_MDWE and PR_GET_MDWE

On Wed, Oct 11, 2023 at 04:13:08PM +0100, Catalin Marinas wrote:
> On Wed, Oct 11, 2023 at 01:47:44PM +0200, Florent Revest wrote:
> > Memory-Deny-Write-Execute is a W^X process control originally introduced
> > by Joey Gouly. I'm the author of the PR_MDWE_NO_INHERIT flag.
> >=20
> > Signed-off-by: Florent Revest <revest@chromium.org>
>=20
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

Thanks for the review!

--=20
<https://www.alejandro-colomar.es/>

--uX0H4Nfk6cWEEmze
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUrFqYACgkQnowa+77/
2zI4jw//TUX8zi/6YtDy1120QPr9TiKmL8WMvm+a+QdBykf6MdbOqY9n0XSC/iMj
VEa4rKaTTIukr5Ebbn5nwcdrcl4ydQ3Aazk2tLJyGIZxxM/Iz1zGNzIhu8MET5iU
yjlzhQ/ERCxUISMIkOcYI+6loEaXtcGWNVIjtwSLUrdADMg0AH4309OkNVMwxK4X
PkoO3Gol03cWMVGrCBlUzWu/QUtpkRm5ozxKRMR0crJzlQjzgIAj0c+4KZTIQ7oo
PF0k/AbZWnCAnbJO2TqM18RObnBIDuIjX8HWGoOxT8jM1r6unUeXRYirTIMpHj7Q
DG57jhlH3ZO5yrfQWH4hZtiVW6wuEn2rHk9L9nZOpjtt7uOA1UsD1fNIrMwL4+0Z
Xn5ZpRv47oZqAr1j1322H5+QbgqttEWbbEudJPZpn6xx6lH/pE+CZs4HRUUdkdVu
G0zI5z/Yku89WXDlhTIvgNVxTX91Dmr0oNe7U/iFrONUblXIJVkSgHEmIfwl7SmJ
aXVXnv1DeRd4uE0wkiEUhRAVA4UFuivoWSOSrk6ClEx7oclRA0Z+eRBe0NzbdoTv
uHs95yYa/Fv14tJ7nI1l8Q6q8MIacB4h7XGNPkj9YBtCzymB+UKuTzmlC2T/lsrq
biyGXGu4HvOhjmk5x/Vh8ZD9mN8deob3rJ5zLzvU+sjIKcdBcUY=
=5vm2
-----END PGP SIGNATURE-----

--uX0H4Nfk6cWEEmze--
