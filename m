Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EF1C6EA0A3
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 02:33:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231944AbjDUAdi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 20:33:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbjDUAdh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 20:33:37 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A2DC649ED
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 17:33:36 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6F9FB59F8;
        Fri, 21 Apr 2023 02:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682037215;
        bh=J5nYQONgWNrf3feKlgY0jX0uOJg+iiPcOR3zYWbgtKo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=j+5y+a0RF0zVd4NkhW8NFKxCKswF6XxSogf7Y4YNM6E/NwAjotap+h/iTQD9hNWJb
         aIrw0fNHvq6VbB6JvlajqPTeH/Dc7yKhmrtyrIMjl1hzLbo4BtaNKsLO1jV4h93UlW
         XcNi0ITY2WFPqrPDViBEmIzrk29jwlU3kq7a3jE4v2XWLvUCWkXvFXAgTAe68NWS+o
         wDSDtKmOSDbMwGLM0SPPcXbk8rE1H1Ra/YFJ9qG40uBUn/QYek4yqwcrfIxF1qV33i
         A2AXrytHBveVYM0nzgz9gNHVxSDzH6Cwp9TS35raz2aDrWAyWXmztYJmPbhXJuGEZ7
         zs7zwrQDs8J8g==
Date:   Fri, 21 Apr 2023 02:33:34 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v6 1/8] regex.3: Desoupify regexec() description
Message-ID: <lxhb2ujsnqvmmowpncnurdmsij6aev2ald6jtjqddfxo7sflyc@7wfvujkzk7ul>
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <1ad1aa6e952df09dea820eabab860dd6df35364e.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <827cf932-d582-e8c5-3135-90bc294ff2f8@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="berpqmilgginaejo"
Content-Disposition: inline
In-Reply-To: <827cf932-d582-e8c5-3135-90bc294ff2f8@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--berpqmilgginaejo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Fri, Apr 21, 2023 at 01:24:16AM +0200, Alejandro Colomar wrote:
> On 4/20/23 21:36, =D0=BD=D0=B0=D0=B1 wrote:
> > diff --git a/man3/regex.3 b/man3/regex.3
> > index bedb97e87..47fe661d2 100644
> > --- a/man3/regex.3
> > +++ b/man3/regex.3
> > @@ -105,12 +105,10 @@ .SS Compilation
> >  .SS Matching
> >  .BR regexec ()
> >  is used to match a null-terminated string
> > -against the precompiled pattern buffer,
> > -.IR preg .
> > -.I nmatch
> > -and
> > -.I pmatch
> > -are used to provide information regarding the location of any matches.
> > +against the compiled pattern buffer in
> > +.IR *preg ,
> > +which must have been initialised with
> > +.BR regexec ().
> This patch removes the nmatch and pmatch info before presumably we add
> it in a subsequent patch.
It doesn't and we don't =E2=80=92
the documentation for nmatch and pmatch never leaves Match offsets.

This patch just kills an extraneous, glib, and inaccurate description
in Matching.

There's another glib description not ten lines above in REG_NOSUB.
You don't need to keep the third one.

Best,

--berpqmilgginaejo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRB2d0ACgkQvP0LAY0m
WPHr0w//eQo/Xj0UcRHPe5OCInRn5DneyZpdbsLuXEkr5ZbserN8C9Qp/GHMD1Dp
FqPF+SXbKqf4/YUp67zY5JWxvRj1g6114Cfe8urAmyUM0gpEnPG5D+3+0bZ4gVlj
HOZt26tGrx01d0H3mmRwVPOkvF3CuXrCq1Oy7cDQ1awTNKthzJe/x4Bes9ggMDL/
NKQmFUkyYoMpgQJnhVWhUG2OztpONP7ntWvlGUXbKEMOKZhViNt+1S40ou43M0HP
llS5OrlgGSUQTrDt+YCxW/Z/fNMk8dMa/PZRDlyHeYl6/jAUsOSQh7HgQGFCz7Vf
oH5uB3gogn+zITtJ4BwJutlV7Av0Zu1FwrbQHzrcKUlZul5jJjyBpEhCLUADuZo0
KyJZ8qKt4PWCqdxfillEM7mEsGqwZE1+f1HuJbgneARdRGRqGncHbeOIg9iShPVB
/LJfXtWqsXswBqOZWiEvsodnonp6iHSB3eiIVcTQGifleBiaUkuFRGy1Tk9AGHsy
x33H23S1zpsM+jouZwaNGwd95LGvIZ4J0IH2LY3/mSbqzY2kK8t+1Nj6F/UHlnOW
6C6mecxcI7Vf2j79CFGqZ1drGiBONL6+yVadxGgSNooT1Uzk1hzT+3u6XWPg+r9b
2nZJg8G1SBPZlQI/KXDvzm7Zwd7WIciNByHWnzSQYCAsrAE8cNU=
=xGrJ
-----END PGP SIGNATURE-----

--berpqmilgginaejo--
