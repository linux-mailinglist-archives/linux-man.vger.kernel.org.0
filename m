Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 248327DE44C
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:57:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233074AbjKAP5U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:57:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232720AbjKAP5T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:57:19 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C045129
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:57:12 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A6CCC433C9;
        Wed,  1 Nov 2023 15:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698854232;
        bh=jkfn7ye8ApdCmvjvYdNwWNiyrF/ycSZyYOZsub7gCnc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bPZaZka2IHcxn91qtv39OccMh1Awj13FurjqBANbdp8bnd/7zu24saDk+Vva31QNR
         LSipMHRITTRQekd5TJxM4Z2m/LSjrIQ3Grj/H7blzjrOuhT6gbDTtFYNlvXCcjfe9O
         C+j/mT+c3kSz0n+kxV+Z0cDLrkQ+4qO/no0oWsqVexL5qxr9n+8fwjTOqZIgob6KUX
         zVcsHiNljL82YRq5SV3bQLdAzTIMiVS0HlbipWwYOGj1+PhSotO/Zh+UpzNBiiF8Vb
         zvSCdDSQwpFxlHoHypgWomqG0s9OKTJH56XMCiza1dd3VCPIGfy7mL7AZrIa5GMf07
         na2Uhl4OozLWA==
Date:   Wed, 1 Nov 2023 16:57:08 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page mount_namespaces.7
Message-ID: <ZUJ1VK9_7tBuMBBg@debian>
References: <ZUJaY1wRIqZXKjpA@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="BqE34L13sxYcfJLc"
Content-Disposition: inline
In-Reply-To: <ZUJaY1wRIqZXKjpA@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--BqE34L13sxYcfJLc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:57:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page mount_namespaces.7

On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    mount point =E2=86=92 mount ?

I'm not sure that improves significantly.  Is there any difference
between a 'mount' and a 'mount point'?

Thanks,
Alex

>=20
> "The propagation type assigned to a new mount depends on the propagation =
type "
> "of the parent mount.  If the mount has a parent (i.e., it is a non-root "
> "mount point) and the propagation type of the parent is B<MS_SHARED>, the=
n "
> "the propagation type of the new mount is also B<MS_SHARED>.  Otherwise, =
the "
> "propagation type of the new mount is B<MS_PRIVATE>."

--=20
<https://www.alejandro-colomar.es/>

--BqE34L13sxYcfJLc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCdVQACgkQnowa+77/
2zIDqA//RN6J9C2ajWqujztvno6xmZB9+llUl2+k8Tk/WKNWA1X3gB3EbpbIzFVR
WCkpl8jWrOyotBWWFJumHUgbcOO1ewuVVw9+qSKTODDSI6KK0iCl0EZS7+SK7S16
jpqgXsWfDcSb02PqXoCvFiBxUhPBzbiteffNw5AGlVESU0XiNKtb46XDIf4c89zp
VRKJLy6cMNPU3p+gXN7OBxHj5oRXCycLhMrM5e/G+Z7VW7pM8KKQnREKgC/W1lqm
vCUBSaHNLG4h3rZiKB/U9kFztm4cjajw1lGx/Z6RFjwg7hnMouoHmRKqHXAPk55+
MY652HdyhtBKb3xkyUHQnIlAJL7K4hfS1k2pm2yWz/88vOzRnXYW29WlLgjiDIqz
TJFuH8jV66IsJv1ecFbJv1M6u6XiJLNdPdlf9fIaWglwbvsuOof81Gblg2hsnSmY
xzVrwS4igWALwaVRwi77QZJR2IeqwAA7BvdZ3kPUfDN06h2qulbtTKN4JQ8QHqq1
MvHV8ctdfehB9/WB+glBfh1+6Zaxw/JTR+N+9u8sUIp+vJ7xGC7jZJqpo9l48G6T
K+iVmh7bkMHq3XcGPVIfTsnL3Y6nir2M/N1Qsyk0/sPib+rWqmVCRVkMEznaSDIk
f9KzQZ2OiSZS7lZ757Jka201K4Mzgqn8FDWoGB3VDi95jIr5GCo=
=NkMU
-----END PGP SIGNATURE-----

--BqE34L13sxYcfJLc--
