Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F81C7DE435
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:53:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231995AbjKAPxd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:53:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbjKAPxd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:53:33 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A895DA6
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:53:27 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71939C433CD;
        Wed,  1 Nov 2023 15:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698854007;
        bh=QMiK0klp3vyoAlKnRkSxnlYGfZqCvqYus/QWounHtic=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SBKk/ur8v+rYLEpkLDV9j4YLtNr0gBlLH5oL1udx3Vh2pQT8kPXJ13OJDytCByu/y
         C0zho8keRpkGzzTBpDgAr0sbfmMViNMAagel5egAjqsZe70uJrXJriEDsbTzPN6X1A
         q8o7M+4sUhoaD2nt8mAYkji21/7dSO2nI4CIXt7pL92b6p0MH/+QsSG0iGy/iZo4W9
         vrY62kfz6d5t+J/NmLW9ZE1R7sKVCwNYBfSDab5FYrp7i682aKh7Dt3O33A80rsAxJ
         xfdzcdSRFxpP5G6KF9bk96fDptbdyfOiKZyZuYXW086YGr6YxwDYlbvW3gfLW7P71X
         L5KMYTdovZJNA==
Date:   Wed, 1 Nov 2023 16:53:23 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page malloc_get_state.3
Message-ID: <ZUJ0dOPeFzd2DXU5@debian>
References: <ZUJaY0IROgXRcdv1@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="j9Z1bsLSi39+Oq0x"
Content-Disposition: inline
In-Reply-To: <ZUJaY0IROgXRcdv1@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--j9Z1bsLSi39+Oq0x
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:53:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page malloc_get_state.3

Hi Helge,=20

On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    function =E2=86=92 functions

Thanks for the report!  Fixed:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Daa606765cd8444e07d95faad60dbbeabc088ed68>

Cheers,
Alex

>=20
> "I<Note>: these function are removed in glibc 2.25."

--=20
<https://www.alejandro-colomar.es/>

--j9Z1bsLSi39+Oq0x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCdHQACgkQnowa+77/
2zIbxA//eZu1ri365zAHxjawZKUOK9h52fqdg7YXBxPwclLKXfJuHvJXnqKgIEkJ
mLUarSwwwsa7L3ZSxFoSQv1MMcuOLjKy9cQNBNxHyeA64VptnPmIRQ1zjTBd3QEJ
Xs9xp1twlEZx3G29LV/CrfuhnU4Jl9cB6J0JqPRJYHg5p8ADxzshLKJsxRg7xCf1
F89SWsKU3XybmCaMmdT0J+W4yL4xWR08DSy3qnh033PYSKHmoGA6h1i+YIbbE1EP
/+RsfJ1KMO4BRNffHC5XK+Hlhzt5NYIFMIo8fUkeU40HgrIOHkoT41vebVhkhQlq
vXSRJ/c5bnVosqAnk8YWFSD3vJyxtETAR9b01bgu035gEc2gZDQ6d3AA93Xu3r6v
9pnYBpgxA3L60inbWaXwkVHmI79yY8/9bBWsrP1bRXYGDSOA//79tw/LMKSn2i1W
5sQnBwuJVDg8RXoNZiVwBzqbAgz6tIQysDhqktJZeub9VB08ioH3HSkQ2+YzA+nM
DZcZtDVaXDDWqv4HCIfh3bSp22JbB71x8F6iwY7Tqi8z1hzI5AmP85+nkChDjmKW
QMKPHXIFYf3rXIBKD1xUM8pckud6Z7MbZ1wagCMhN3e71LMhUCRwhNTXowp5TAgK
FbNVmdhHfLRjK4a/YY8XMfMX+8q/DgKJ3NzsikZg+u+jB/DWjDE=
=B81E
-----END PGP SIGNATURE-----

--j9Z1bsLSi39+Oq0x--
