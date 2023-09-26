Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 806967AF6C2
	for <lists+linux-man@lfdr.de>; Wed, 27 Sep 2023 01:39:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232565AbjIZXjB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Sep 2023 19:39:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232827AbjIZXhA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Sep 2023 19:37:00 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6024C18549
        for <linux-man@vger.kernel.org>; Tue, 26 Sep 2023 15:47:31 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ACE3C433C8;
        Tue, 26 Sep 2023 22:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1695768450;
        bh=mtDERfix/KRNUs6u7uJjdJsK5SrefBTT7T0Wd4yun9c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=sNM6M/yb/tO9vusddwvDgJhKXp4C0spnLwlgOdWg7XwN7PUL8+PVId0i1WYYeLtAb
         oUC6jGJlXII0eU5CPnl6DlhYQN/yfviNgvojdxpuNc463xrzGSZycXPVsW7Jzlpsmj
         TAND76/sA+LW/m0eeVMtzcwtzj6NxnYWsszIOg/ZdXelJSEQIMyE01gBeG51ar/+xW
         zYkAW3apcRPTmuMY4jnl23GRy5V9gMyF/zU3/zKoGyG4lphzJ8up+IJZdsP9Z/tR53
         UjDU4x4ycJkA8RKzXj/rKg4k0Ds/Iw/N+1FnZKN0JFCMgQzpCIbDxIo8JlUQTPM/yk
         6ByEBr42hDflQ==
Date:   Wed, 27 Sep 2023 00:47:27 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don.Brace@microchip.com
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 00/10] smartpqi man page updates
Message-ID: <ojyoevfekufcmembup2swudsde3kuugfcnztr473qfmi6lqclz@hxujsfc6uyzt>
References: <20230821195726.446748-1-don.brace@microchip.com>
 <SJ2PR11MB83695FA00A025563EB21F3A5E1F9A@SJ2PR11MB8369.namprd11.prod.outlook.com>
 <d22vrkfid2bi5uuoai462lrcvl76kcodjdr73l7wcaypaw4tfh@gzlnd5y42gkr>
 <SJ2PR11MB83697F37165CCDFD0095C92EE1C3A@SJ2PR11MB8369.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wmppthewk7hxycw6"
Content-Disposition: inline
In-Reply-To: <SJ2PR11MB83697F37165CCDFD0095C92EE1C3A@SJ2PR11MB8369.namprd11.prod.outlook.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wmppthewk7hxycw6
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 00/10] smartpqi man page updates
MIME-Version: 1.0

On Tue, Sep 26, 2023 at 07:16:20PM +0000, Don.Brace@microchip.com wrote:
> Resent.
>=20
> I had mangled your e-mail address.
> Sorry about that.

No problem.  Thanks!  :)

> ________________________________
> From: Alejandro Colomar <alx@kernel.org>
> Sent: Monday, September 25, 2023 7:12 PM
> To: Don Brace - C33706 <Don.Brace@microchip.com>
> Cc: mtk.manpages@gmail.com <mtk.manpages@gmail.com>; linux-man@vger.kerne=
l.org <linux-man@vger.kernel.org>
> Subject: Re: [PATCH v2 00/10] smartpqi man page updates
>=20
> EXTERNAL EMAIL: Do not click links or open attachments unless you know th=
e content is safe

--wmppthewk7hxycw6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUTX3gACgkQnowa+77/
2zLM3w//bQ5ryKRgLgz5em7ahJrZTv5G+ue3RMVvwkKMpf5IqwUEYcv0vXJw3QQM
W+TK6yWIVNv95w/N31NhwkZvvWT2YmqFW6Mtn3bDY9Qc41QEjJpTvinYAw3RYeWs
2T6zw8MKmmoTfdJ7WJHhcxGDrI0ujqkNKQLJvZhRnD20vk4Rx98El04yHckCMFaY
hCojon/sRXzR2wDRPhSUz9hCXcda5pRD+5saTTOFquRfinm4JVNVFtRTa9bVAzHP
B1gNnaxoabz9ZmJia8EpaYAjNzZmD6ZCjBm6gVlmViW3aJz9mxYpO7NOIAtRct/2
DFCrK1qmbiIFumkHyZ+yGVaPHzMlvq1as5v7quIkN4aJquqkrTgix+RPFVf43/ib
Z6hZbYn0FCcR0qxMCsKal7YJKn3VDUgbPh1hxp1Z76irn5Cwqml/Cu6QElkZtaBh
RUXM9i65JyE7mIxutu020WBDg8SWRrC79eeZKkdfRMsl+eYPbYQyMzPfdvm+avpM
ktrnHyyAOQKs9wdsdrD/Xsrm7AMlmjhegwviGcaDdGu43Y5vwuu2qhq5usA7B9lN
da4RNwHhscNHaDksD2FhhYUFpIoPlv4j2bnTB6OWDvYOslck5L/zzKeOKJYRZbJE
ItC9DnGNS7g1QWzurvXWytg6pf3i10xQsSEfgaH6oDq15CuWsf0=
=2avF
-----END PGP SIGNATURE-----

--wmppthewk7hxycw6--
