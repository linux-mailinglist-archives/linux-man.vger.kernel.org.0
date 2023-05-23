Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D56570E706
	for <lists+linux-man@lfdr.de>; Tue, 23 May 2023 22:58:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234054AbjEWU6u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 May 2023 16:58:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229934AbjEWU6r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 May 2023 16:58:47 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 8561DDD
        for <linux-man@vger.kernel.org>; Tue, 23 May 2023 13:58:45 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B36E18C48;
        Tue, 23 May 2023 22:58:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1684875523;
        bh=KgEjpexL2VXpymy8K7QnFB/4Si6a1m7Irzv8iQ1XpzU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=hZACfyxk1u651skxjDtJIRNYigiLOsFTKOJ3GQunIrTE3Pl9AZLpP0kbBI6vVHxSK
         IWCoRw7jZn5dxrEmCC67YWRWIN/7788YtdJQyJMLT9MLsgFDVti4Cw72Axa/75kVtS
         iZ+rrzPOmrBttcsIAn7H6S5bKSKQmSt3JdaIxajq7fNLtf1c4omsCgxD6VLHBXM2Wt
         vWc05AiU5C3m+Av0ifKcadmrjEP+K8YmmOk3bcyQsWKd4b8MowChZg3/iA8W9tOs34
         ROO2Qrf8B8mn2pFOW9lQC8c1RnyxoLvsgXAXdvKxW0IbfVkbKMl3AUjiCQNXgwpNjH
         b1mKNioxFXJKw==
Date:   Tue, 23 May 2023 22:58:42 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] putenv.3: originated in SysVr2; in 4.3BSD-Reno; fixed on
 modern systems
Message-ID: <5qegumqc3s7pvtrwfffyajhaxmv76kmhubz4bawcku3hap7dso@apgctax4wzln>
References: <qpcje3s62iktwkacbn6knkes742z7zxksjwhq7dgfcmfetoivq@wevyfyxir5md>
 <389e9350-cb85-9a21-4a06-56344b7057e8@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="2ufjnjbgo7r5innk"
Content-Disposition: inline
In-Reply-To: <389e9350-cb85-9a21-4a06-56344b7057e8@gmail.com>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2ufjnjbgo7r5innk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 23, 2023 at 10:20:07PM +0200, Alejandro Colomar wrote:
> On 5/23/23 22:17, =D0=BD=D0=B0=D0=B1 wrote:
> > @@ -119,7 +119,8 @@ .SH HISTORY
> >  On the one hand this causes a memory leak, and on the other hand
> >  it violates SUSv2.
> >  .PP
> > -The 4.4BSD version, like glibc 2.0, uses a copy.
> > +The 4.3BSD-Reno version, like glibc 2.0, uses a copy;
> Maybe we should say s/uses/used/?
4.3BSD-Reno is a single release and hence a single version,
and nothing's changed about it, so it still "is".

We could say "The BSD used" but we have hard versions, so.

The same holds for the first long line in HISTORY:
  The putenv() function is not required to be reentrant, and the one in
  glibc 2.0 is not, but the glibc 2.1 version is.
the singular version which was part of the glibc 2.0 release(s) hasn't
changed in glibc 2.0, and glibc 2.0 "is" (but yeah, glibc "was").

Present tense also appears to be a prevalent style globally:
  setuid(2) says "Not quite compatible with the 4.4BSD call, which sets
                  all of the real, saved, and effective user IDs."
  setjmp(3) says "In 4.3BSD it will, and there is a function _setjmp()
                  that will not."

Best,

--2ufjnjbgo7r5innk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRtKQIACgkQvP0LAY0m
WPECbg/+NfBePPjnwDr9xyccU/h8SbLi0Q3fi15twyRbBYOwtvGLf+OpuWX9Sj2I
JoQSZVyCbblbLjpr6ib1soBHmc/D46J6ZosJlyX5plExBSf9s0IV4QwDjEFWsqjo
rbWgrc6zIKaijhXa+dEZUWMO9XSlfLlLxf63j2hpqrM5zDvfgZmDQqW9nuBcjBxm
9CbWab3zKYYYSJSvqonglOlu8b5/Gi6NQRXUh6TuDUMNhfSH6ZCrfJtBQ1nkwjUQ
Dkxv7paGXTGZUx5pOXDE84jgfSWKpEq0E++qS7dFE8tWlSNRF+xIgQKPwey1UVL2
oKh7ComUkRthFST1teTS1HUDGf2xUfOQ/Y+8lnpiOXpO1yOuVN1j6ZJgElC1EkYp
2VYMZ2XFwsV9vWJXiuoy3PO4eOP2NA/y0C4k9p5sh0yLIJuv2ApcuQLpITPV49lM
Agcn+/5/gtABzW45zRO1EUNuBcFSj7TdbFqg3H1i9S2AZEGk+gpwyM1JdT/9J3d/
I1gpKVJ+SFDLKxuFpj0qvCIIuZvhVbulW8fDMYYaSyDSkxS+YK5fR4dzOWwFMSDy
16/f2N4Y14vJM4pJEBUwnuHbZ4UGFwnETugOZ9eJdV02gPIbNizj1DMz5g+Udc4w
bA4pe2l6gdV0p/JpuhKWjRX3hgW0/8XmGcdqmXxB9ydeycWa6jM=
=FiYi
-----END PGP SIGNATURE-----

--2ufjnjbgo7r5innk--
