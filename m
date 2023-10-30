Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F98D7DBDAE
	for <lists+linux-man@lfdr.de>; Mon, 30 Oct 2023 17:21:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233852AbjJ3QV4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Oct 2023 12:21:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233857AbjJ3QVz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Oct 2023 12:21:55 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 597F5DA
        for <linux-man@vger.kernel.org>; Mon, 30 Oct 2023 09:21:53 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58066C433CC;
        Mon, 30 Oct 2023 16:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698682913;
        bh=4knUV3aFb/an5c36QKXxWLT0r/TAgFgkfz5r1cJnvaE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IDvuKaIBjpRyHqqZ+9c0IeBf079XIJQA4JYojSNZdE5h3H6MvnObeqNMiwue6Zahl
         gcEmos/agckRzD4UUNthfFx9Zs3c6hQdF0m6ftyOGu55WskCv8nY4BvQQeMV2YYf/5
         xpW8Pg/h/BLomANOEXzvp6Ws2mwDhsv+QRcOnLfm2ASHPqPnIeSyyS4CaD2/3ITOSY
         YJLUdr4QvaMgSukae1qLaJzXs9wewTBDNBZX262RbtPWPZX95SgLc7y/TxUG25j+hJ
         3ndy/kdbXNVnvubhXEd8tgCVkmCvKtAxb1HLV6BlMNf/A6p9c40AVE7gHlxZEbKkJz
         FBX+6wIyx8+Jw==
Date:   Mon, 30 Oct 2023 17:21:49 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Max Kellermann <max.kellermann@ionos.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man2/clone.2: clarify that CLONE_CLEAR_SIGHAND does not
 affect SIG_IGN
Message-ID: <ZT_YHozq7Pu_t9Nq@debian>
References: <20231030125835.568711-1-max.kellermann@ionos.com>
 <ZT-0Aip9lh1ZoywW@debian>
 <CAKPOu+_XsNNYLvM=0KvEF1vUW4hANCey7YjZkKdhxtxJME7YeQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="PsmJyfJ7jh/RpPkv"
Content-Disposition: inline
In-Reply-To: <CAKPOu+_XsNNYLvM=0KvEF1vUW4hANCey7YjZkKdhxtxJME7YeQ@mail.gmail.com>
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--PsmJyfJ7jh/RpPkv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 30 Oct 2023 17:21:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Max Kellermann <max.kellermann@ionos.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man2/clone.2: clarify that CLONE_CLEAR_SIGHAND does not
 affect SIG_IGN

Hi Max,

On Mon, Oct 30, 2023 at 02:52:48PM +0100, Max Kellermann wrote:
> On Mon, Oct 30, 2023 at 2:47=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
> > Would you mind sending an example program that proves this?
>=20
> If you need proof, all you need to do is look at the commit adding the
> feature (or the code comments it added which are still there):
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3Db612e5df4587c934bd056bf05f4a1deca4de4f75

Thanks, that also works.  That commit message is very explicit in this
regard.  When reviewing a patch, it helps if that kind of information is
included in the commit message (and it also helps review old patches in
the future, not just when applying it).  It's covered in ./CONTRIBUTING:

       -  Describe how you obtained the information in your patch.  For
          example, was it:

          -  by reading (or writing) the relevant kernel or (g)libc
             source code?  Please provide a pointer to the following
             code.

          -  from a commit message in the kernel or (g)libc source code
             repository?  Please provide a commit ID.

          -  by writing a test program?  Send it with the patch, but
             please make sure it's as simple as possible, and provide
             instructions on how to use it and/or a demo run.

          -  from a standards document?  Please name the standard, and
             quote the relevant text.

          -  from other documentation?  Please provide a pointer to that
             documentation.

          -  from a mailing list or online forum?  Please provide a URL
             if possible.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--PsmJyfJ7jh/RpPkv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU/2B0ACgkQnowa+77/
2zJ9BBAAkNI32H/luxEhzuwcV45yu+mXtMzo2b3FWO2JgYaXFTnXpLcOxwprGdCo
5AYGvHT0c6w4kkYCFe83eU7pvZaxYnOssUXJPMKMehYnl1mwVRR0fHftH48NPsgI
cnRywfroZKikyiGtHChbJ0et7wLCWt1oKvPuYqr/iDK0myqUmmK8/H3uFvNqczlG
guy1PMMvrmc8SMY0rn9ALLDq8PukX1U9Nm35Zn+U8yqCvASCJDfL1V2GA6n0VYD+
ui5se9OMyFU61GnLSZnCiZUPrr8jkt60Sh+FNSJz3mAkclEVTI1nBNFwMjrBZcAj
MfdBMu4HEjMPG+uiJOD+VDFFFDcZ/GIDLEO6aQKgUy2oe+qhB4x5UfGszxg5H0WG
2qWKlU+J0xwGulOG123rRoI6caw1/i3PfbV4FunqcF+9UbVe5kk7KgEMs+ipXXdl
JU3ex2YtET3QX/hXCWiITrmREKJLwRnmTnvXlaEr9WfC3R+IutktYdsFzQY0fxFv
tYDhhspz/xJLImQ/4IANfctt01BHh1Del+4qwhfOdl8GLObZGA+OeG0G4GZ5kx17
aOnUZ4xUbRs4imr/MkNoLPIVoyYwWds7/92lNXODYrOUOuYwv5MMP7/Bmp3a38EU
Pt1FTx8FOVbtOUxYle5406nS5x2z3cZJbxY0K28Zu/05ePlF598=
=6Do/
-----END PGP SIGNATURE-----

--PsmJyfJ7jh/RpPkv--
