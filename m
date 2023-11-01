Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5911E7DE4D2
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 17:46:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232538AbjKAQqd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 12:46:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbjKAQqc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 12:46:32 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18827119
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 09:46:25 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB06AC433C8;
        Wed,  1 Nov 2023 16:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698857184;
        bh=uxdXL/YOSbjjublaK+V5VOzGUNt7guFXtY6TIK17cIY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Ybu8hJSqXH26YjziGfivtn7ud2csGphHywuqywEY0gBfppmrMkqg0MPsyCQLjgspc
         5wlpRKWBQGYlZdeJclapSJRY8YYHpwc94eGCrAsP5iIc45MQTDnlIlHrM8JBC8s337
         k0N66f0hXsdTqR0pWZzb4sB1PaKgve/tCULjHHcyVqU7RXRFA5Foj1jwa76T5N4vKU
         iagFBEJT2R2XLUBoYS3PqQAd9KIeMY1qYSVtTAZ1iRAZBw/30iLNPk3GgebLOnS5T/
         z2RxS+wRzxOTHGaSjtU/eGBxVoY3KNpCjpZmo1sZPh0HmJBP/pT5ZrNaFaNn0ojYY9
         nZAtyyxDELkUQ==
Date:   Wed, 1 Nov 2023 17:46:21 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page regex.7
Message-ID: <ZUKA3XWzystXKgmh@debian>
References: <ZUJaZLJyT5jFlHmX@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="1p26W+/O/zxIwAdd"
Content-Disposition: inline
In-Reply-To: <ZUJaZLJyT5jFlHmX@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--1p26W+/O/zxIwAdd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 17:46:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page regex.7

Hi Helge,

On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue 1:  alphabetic?
> Issue 2:  multiple cases =E2=86=92 both cases?

Depending on the locale, more than 2 are possible, AFAIK, so multiple
would be more accurate in that context, I think.

Cheers,
Alex

>=20
> "If case-independent matching is specified, the effect is much as if all =
case "
> "distinctions had vanished from the alphabet.  When an alphabetic that ex=
ists "
> "in multiple cases appears as an ordinary character outside a bracket "
> "expression, it is effectively transformed into a bracket expression "
> "containing both cases, for example, \\[aq]x\\[aq] becomes \"I<[xX]>\".  =
When "
> "it appears inside a bracket expression, all case counterparts of it are "
> "added to the bracket expression, so that, for example, \"I<[x]>\" become=
s "
> "\"I<[xX]>\" and \"I<[\\[ha]x]>\" becomes \"I<[\\[ha]xX]>\"."

--=20
<https://www.alejandro-colomar.es/>

--1p26W+/O/zxIwAdd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCgN0ACgkQnowa+77/
2zIgdBAAjBj2CAdkJ9iww9btO8mWRNVu3LBn7aBbdnAZo6rWDSi6n4RRnAnkTRmf
doBKTy/TvV06WJ5mi8o0OPbKDzuWHsSKUHO7S0LJ+mXKPLiJCE2N/JTkJfEDsDyj
gB5A4WdFEhBdTTAHlJEKeL9ks3gaUstB99UUpavhwBOkc4/fbnwqNhOd2o4SEcGU
EKVNSLJcP/dlFVDj7oCOle1OTQclXBaWmIj3rhGEkHGfcMxd80c+jwHK2YcHHhMY
ZWhVK353qVQXetmd5bdkM2DKADrGWNf6epezYgLB4RLWWkuWQ3k6dYKYwBcwdhoA
+hZ1QHDs400a1mq9BkQNcGmm++oA5uF47baambV0OmtCMdtRd2bQo9Qw+kSimStf
4Thsvy3NTvPgM5mhf7468hXgROKlVsQWvXyGVTXTk8/Bx5FAZ9avfOEEEHQe7uSG
KQeCHQjcv1j3omekeGLwGfuKCOFrmY4VU60MAqtPyTCYqLILB/JqCvJSWb/0IgrZ
c1ahxA+Bs0eWU9V37ebF5d2+4hiTCAPktUJXyH8rPXMz8qJ2sW9yEaVic/nYhjA9
tRf/tB2UgdKDusDY3WGKaQzkRiMB2tnSbKuKv2YlFcLuf/9z85to65NAmgRiyygv
65rcZenegWiv4QZlXyKEJZl/9fkOHz4viurgeFOGhjIbmL2M+nA=
=oOnz
-----END PGP SIGNATURE-----

--1p26W+/O/zxIwAdd--
