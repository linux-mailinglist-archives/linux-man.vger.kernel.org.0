Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A12787AE2CB
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 02:08:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229460AbjIZAJB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Sep 2023 20:09:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbjIZAJB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Sep 2023 20:09:01 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67E2D10C
        for <linux-man@vger.kernel.org>; Mon, 25 Sep 2023 17:08:54 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C70CC433C9;
        Tue, 26 Sep 2023 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1695686934;
        bh=jY0Z1BLuWsiioNmTM13b0R2h5JvAEzEie/C3ZX2hF38=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DllLF9JYk1GMB7A3Ze+gIgAr0985isjE6tIZaP4kDgXS2kQn1aXsnLaeT8X9/nirA
         ePkCD27+qTOWg42vsEIjqvK5qhxhFwRK1bUzIpCyE2GrjC1miTEtHlSiYodQoy8IRr
         i++MHPU82G1DB7lodcwxdYAXdkSYFT8SMlAws75O+9v+7DUsFDi3J9FSoiV5Z8Hrbv
         VtL3Qxc6QpjQ+VKtANF7bDkY5hRxFnwGYDWtEQ5PqkElKvWIds0AoLwp4FsIsLtBdA
         kc4o5+5I/M9w09N/DO34LGcNZ2/+LwFXeC8L5QRcGUpNLAGaMhjkr6dLw+aCRJvkoK
         jrXubxOuBWSZA==
Date:   Tue, 26 Sep 2023 02:08:51 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     enh <enh@google.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: 3p page wording
Message-ID: <vcfx7issnqdnj4mzemuucknjb7nxq5uxwrf4f3jea2uklan7rd@f3nrkc6dvdg4>
References: <CAJgzZorvpAWUBMSWODo-AUBWD7ZwRtPVZ2V_DuzWbYWeBvvZsg@mail.gmail.com>
 <f0fb0139-1544-415b-a4e1-af4ae92b933d@kernel.org>
 <dce24a2c-d173-4793-a509-f886c6edd4b4@kernel.org>
 <CAJgzZooCdw8RAF+ytFUGddqqM-2ZBWgUoF1vOZ7nwJSdRyZrUA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="fyzguemk72ygsq4x"
Content-Disposition: inline
In-Reply-To: <CAJgzZooCdw8RAF+ytFUGddqqM-2ZBWgUoF1vOZ7nwJSdRyZrUA@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--fyzguemk72ygsq4x
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: 3p page wording
MIME-Version: 1.0

Hi Elliott,

On Tue, Sep 19, 2023 at 02:21:04PM -0700, enh wrote:
> (sorry, didn't get chance to get back to this until now. as penance,
> i've caught up with a couple of other outstanding man7 patches too!)
>=20
> thanks for doing the major cleanup. attached is my trivial change on
> top of that.

Thanks for reviewing!  Patch applied.

Cheers,
Alex

>=20
>=20
> On Wed, Sep 13, 2023 at 4:33=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
> >
> > On 2023-09-13 23:50, Alejandro Colomar wrote:
> > > Hi enh,
> > >
> > > On 2023-09-13 21:58, enh wrote:
> > >> is it a requirement that the 3p pages only contain text that's
> > >> explicitly in POSIX?
> > >
> > > Yes, I guess.
> > >
> > >> the siginfo_t::si_addr description on
> > >> system_data_types.7 (which is what people see if they `man siginfo_t=
`)
> > >> says "Address of faulting instruction", which isn't true for all
> > >> signals, and caused enough confusion for the ART maintainers that th=
ey
> > >> came to me as Android's libc maintainer for an adjudication. meanwhi=
le
> > >> the sigaction.2 page says "Memory location which caused fault" which
> > >> seems much more helpful.
> > >
> > > siginfo_t(3type), aka system_data_types(7), isn't a POSIX page, so
> > > we can patch it if you want.
> > >
> > > I'd also move the types to their own pages and have system_data_types=
(7)
> > > be a link to intro(3) (until we have an intro(3type)).
> >
> > I've done this.  Please check if you approve these patches:
> >
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=3Dc=
ontrib>
> >
> > Cheers,
> > Alex
> >
> > --
> > <http://www.alejandro-colomar.es/>
> > GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
> >



--fyzguemk72ygsq4x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUSIRIACgkQnowa+77/
2zJlFxAAplEmJV9JR3oHWyDwrz8XKTw6J7xv05pxkKMWopGrh9KAy4Klm+0vE3Xh
vdTlzv7zrT2zZ5Cqa4mmBH+mJyR5ArrNWlHyD96ybUbtZbfDik1ZKIuyus6QWPQW
8kTekOVSIFh8wP4FqJZnmMnEZv8fIgETiwv+nDhZjhxG/bGhq9ABvU+A4WS+Wt+0
CXHn2uZphkQXM+rP1XOeaZ40Ug+J1AVBTx0nZmmiskdwHc1xg3ORRpsjnRL32FBe
thcfgMW9zk/EDE6EXWl8+QFIjiw9xX6B6Hgu9blIWklbHlCfHNfymeR93WwIxfB9
tnjMhjZ3kwRewSNqM+Kt87jMCcV2sW7Kig5yiXOQ7XJF7uGlE2tJ/wJVgbT76ucI
ZmXGJ5wHmJXi4a35zha9Ndq7kMYWS03jNudrMPcHtaVytCx1ufdkkjWLtD+FInkv
ADKvy5O36Etbi/55ob5aPyP/MoMOkv0/fUx9+Swb079zBAoOzHP7p9JkaZzAte6n
b1aYUhIvHXQXMI0+rYRWbgGGwcQmJ6GcxvgLw5FMgXiqkBtmWQOZekfDPL/BqmPG
62+5XjtWmzcUrTaj4o6yuCIUpjp5wVRmXLBGgnllhYg/VxaetwtXNw7r1SZSR2db
Nv8X44TI6XTMCGG+UHuqsLxPZo2XISRlIIClx7UzPT22gw6UkWs=
=OZ2m
-----END PGP SIGNATURE-----

--fyzguemk72ygsq4x--
