Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A71147BD124
	for <lists+linux-man@lfdr.de>; Mon,  9 Oct 2023 01:21:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344969AbjJHXVj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Oct 2023 19:21:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344967AbjJHXVj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Oct 2023 19:21:39 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D86C6C5
        for <linux-man@vger.kernel.org>; Sun,  8 Oct 2023 16:21:37 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9092C433C7;
        Sun,  8 Oct 2023 23:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696807297;
        bh=prE4IFBU6yM+wEj8nGmbeohI0Upy88T4aSgtMtsYA8s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Sq5C6O64b59DPYulKl+E7jyx+ozJO2BJNHj/EIz4xINMVX5ZIW/aEjfEfFcFeI9ML
         mvg8dD6WkEyzAEGM3zr01pZ3kRCHwUgl49Xk81Jp16vHG0d2d249T4NgA3aVXzp+A2
         BoeQgEzWindDu0YI9hTKaUml8Ns+TY6rINikXrjrKu792HjQnSpMyZFDsPGUmUFgb1
         66xmGd0aIZl5Jr1JbjN3cxV2qPRafX1g6uR0sQEp6Nwx0snBbENyxjv0x1hrBkfIRU
         ev2krmtiMNg8OLiQEFrql3vefsVPouIMWD4DfUJNU4Vcahq43VG7nvIv4GgzxL6tcW
         1rw8YEO6CgQzg==
Date:   Mon, 9 Oct 2023 01:21:34 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man2/userfaultfd.2: ffix
Message-ID: <ZSM5fk_ClQKAOE7N@debian>
References: <20231006064254.bsladknplzq5rurq@illithid>
 <ZSMxEqGwjmk1jDEz@debian>
 <20231008225502.fjj7dnkwdtd6m6px@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="d/BqFuNZWLA6VV+G"
Content-Disposition: inline
In-Reply-To: <20231008225502.fjj7dnkwdtd6m6px@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--d/BqFuNZWLA6VV+G
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 9 Oct 2023 01:21:34 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man2/userfaultfd.2: ffix

On Sun, Oct 08, 2023 at 05:55:02PM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-10-09T00:45:37+0200, Alejandro Colomar wrote:
> > Patch applied.  Should I amend with
> > `Signed-off-by: "G. Branden Robinson" <branden@debian.org>`?
>=20
> Sure.  I forgot (again).  :-O

Done.  :)

You may want to add this uid to your key.

Cheers,
Alex

>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--d/BqFuNZWLA6VV+G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUjOX4ACgkQnowa+77/
2zLg7xAAqODRzE5m/gfWpTiW/802oYH6cTuplcYtH2X/Rbhc5pqGrLR/o1rgufQK
pHIkyD7gKPCiXziQmbItLAaM2NiJs0oS4RBtxvL+Fe+vuykGnUG1IoHMnhJLYbr5
WQRFVUsIZ5V7xRiSmd8TXhc5bc7IdRDr+Jx3n3m4LrB+vrViJ7oTfKqw0bYWb56R
09esL5s6xDw5RtvThT26H55en2EHRmYOZPCGbR9Guhs8/nqStRjWnB4r1WXfOvnj
thRvokjEz7vdaVVogzpuJzBemES/L8VpRopAIFTDasF7FLN+e0Cd8CIHwXJsOtY4
kwRrrc1/QSxffncMfbaxateVFfjwVMEKmSVmeEIbtjTRR/UwL8MA3qBoQcBs0HOw
6OhfBntIm75jm6B3vfHNN/bq9ZBX+xHTOv01iQ9XqaonmCF1vECceRU0zW5uKB32
TrH/+xXPB/CfJgkNggemZbL94baVdseb7j9R1Kx9udZJzer7Hu1WgPVqOhr686fy
hjvERLP3yW0BR345LVsH+pASyY/p3sUF/j0WZuFGoXUC2UKnRhi3NakgtG2i+Z6c
7KBaZP7SbOj3zUmyjjfC5mAnKChoB97G1560wIhUO7JVU1RaTcJIfB3YkP87Fmcn
LO/42E8TLg0zGovzdtOTXFnNDuKZjGpasAPpqwURcHjEkReNma4=
=JdA7
-----END PGP SIGNATURE-----

--d/BqFuNZWLA6VV+G--
