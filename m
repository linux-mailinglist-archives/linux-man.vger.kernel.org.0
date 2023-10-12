Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A63357C61DB
	for <lists+linux-man@lfdr.de>; Thu, 12 Oct 2023 02:34:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233886AbjJLAeH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Oct 2023 20:34:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235254AbjJLAeG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Oct 2023 20:34:06 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB044CF
        for <linux-man@vger.kernel.org>; Wed, 11 Oct 2023 17:34:03 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3DEAC433C8;
        Thu, 12 Oct 2023 00:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697070843;
        bh=9m0sSGh2FF7jD6f0wo5T9GAYehtuFqxMNs2adi38wMU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VHsjgwE0BmGg7pcHFTlXqyl8mLyUHeLfRC5iIdf8rDKRy6EOIAwc23T5uCyTNGMsK
         gQdUxbM1Etcc+HeZqqtJeqFpy6rsiGHrbnQ3oUC8jLTQge2OqvkpH3COD0Cooandiq
         ok4OdDj13isBuw5vnoVXAfIQuJFrliTys8yvfcZw12bsaTDX/JBuZFu8BUud6F0lL4
         Vlcf92DFcdfb6rLuUKZZGFl87X3AIeX3929B9yNbZV2JqOFtFkq5EuND+zuFsp3MOT
         jjzhPSM74+rGE3DaEBCXyP+TlHiBprzUks9+Vt8Bb2FdeYs1QpaurNFaS511SU+mKX
         +VyL3oS+Ly2dw==
Date:   Thu, 12 Oct 2023 02:34:00 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "Serge E. Hallyn" <serge@hallyn.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: string_copying.7: Clarifying ustr and zustr
Message-ID: <ZSc--EH7AcFb1WJK@debian>
References: <ZSVbASi04xwzNFyr@debian>
 <20231011203919.GA52245@mail.hallyn.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="q5bZVCMRBmrv+MkR"
Content-Disposition: inline
In-Reply-To: <20231011203919.GA52245@mail.hallyn.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--q5bZVCMRBmrv+MkR
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 12 Oct 2023 02:34:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Serge E. Hallyn" <serge@hallyn.com>
Cc: linux-man@vger.kernel.org
Subject: Re: string_copying.7: Clarifying ustr and zustr

On Wed, Oct 11, 2023 at 03:39:19PM -0500, Serge E. Hallyn wrote:
> On Tue, Oct 10, 2023 at 04:09:05PM +0200, Alejandro Colomar wrote:
> > Hi Serge,
> >=20
> > I'm clarifying zustr after your suggestion.  Please check this text.
>=20
> Thanks, this looks good.

Thank you.  Patch applied:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Db31fe84c31989bc6d3a2884bec5c538e06498423>

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--q5bZVCMRBmrv+MkR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUnPvgACgkQnowa+77/
2zJFAg/+J92G0E62dcyeOf81Hl2uDd1XbAxmflmrGYKZA5NQqGGBjoa7F1YCpOH7
dgOhRXoOflVTFnGcFxLMTms2RwZeXq1VeZ3f1vyZTt0G/u/12VSl98iBEtUPk9c3
tQV8eHm/5ePkX/e2+V+C2noVNb7YatcyTKEhNag/hB3+NnzzIAl+30FjnwdXLXEy
XH27LJoV258J0t2ggH2UZdJqLDtRODpdS6aYU1CkqZvMK3IFlZzvSlQHdfhYAaNZ
ZWTrHcl7x2XMbNCGo2w7EILVIBQICIdDWs5EKi+4jD+xH+eGiXhuoVjCXfhuqTVG
Iz2T1qgp4wshIU5k6JARnYrCK2nxn/q85PacLJ01wKvwhsureNDeD07UPFuUX1te
3UMgJDbfqsYYAagoT2UoUOG+FpnXOi9htiIDmd4cqcAr8YPoRCdVebTLhW866taK
yRHNu8C/YEb4X4B0QX9prM7rPqQPg6z5lv148HDfW9KNIKooAjejrapZMlAvf4vQ
cgMLziNMgZf0ZG6ySVGKewpeiYoM8J1MDmcNvNobDNuvepaJGDJ1EAyAWXRA5ek0
NYZaMZMWx1/WbgtCy7Q98f/qErXaj2inAlLIS31T3/DZtk11qPyfd3JLH2q6Tz7g
xHQ2d3oVuwsajnmFrEWBIoNZNDjzYWO1Eokym+KGILV3W9bYuTo=
=L1tH
-----END PGP SIGNATURE-----

--q5bZVCMRBmrv+MkR--
