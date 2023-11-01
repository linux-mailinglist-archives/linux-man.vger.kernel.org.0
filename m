Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F50F7DE382
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:37:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234113AbjKAPaU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:30:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234146AbjKAPaT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:30:19 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9067511A
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:30:14 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56D3DC433C7;
        Wed,  1 Nov 2023 15:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698852614;
        bh=+qiVt8AP+/WjD/nG6PXjP8AW5nSmJDDsoS2tX3zMgbQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=cYEUreFhIip0Kk7H1++xYtqpTSkIZ5biozfmLG9NX7BZ1CNSZlqAed3aL+UoBwVsb
         3WyE8zvNVTFZTVcpo2YFUTSG3beQt4nQ59uY2K8LPmMfvDEkjcWoiRgrSuwzBS3tBk
         EY8ZCdfoNKiHrhdVwHNMWjVqGGDJx9EKdoLwySQpyneUZn78Yw9zwTNIzVASw3ocJf
         YI9U1VcplDMje3AnWrLHIXRlJP49Qo7gl0elri1onWy3Y99hw565Xsvul7Wjv4CWP0
         OnAfAWiVpZgxdSmK6GH3fUAkY4ZC36wsbZdTMTvBmWJEkUXehlxWukUedqIHYZYeZj
         hqXbftT0p/Pdg==
Date:   Wed, 1 Nov 2023 16:30:10 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getent.1
Message-ID: <ZUJvA_RpJtEEqjal@debian>
References: <ZUJaYg5pUzF_9sP7@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="lXCagY19wXBNCN5V"
Content-Disposition: inline
In-Reply-To: <ZUJaYg5pUzF_9sP7@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--lXCagY19wXBNCN5V
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:30:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getent.1

Hi Helge,

On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    No "in succession" here on purpose?

I don't understand this report.  Please detail.

Thanks,
Alex

P.S.: Please send to <alx@kernel.org>, not to <alx.manpages@gmail.com>,
      since I'm deprecating that address.

>=20
> "When no I<key> is provided, use B<sethostent>(3), B<gethostent>(3), and "
> "B<endhostent>(3)  to enumerate the hosts database.  When one or more I<k=
ey> "
> "arguments are provided, pass each I<key> to B<gethostbyaddr>(3)  or "
> "B<gethostbyname2>(3), depending on whether a call to B<inet_pton>(3)  "
> "indicates that the I<key> is an IPv6 or IPv4 address or not, and display=
 the "
> "result."
>=20
> "When one I<key> is provided, pass the I<key> to B<setnetgrent>(3)  and, "
> "using B<getnetgrent>(3)  display the resulting string triple (I<hostname=
>, "
> "I<username>, I<domainname>).  Alternatively, three I<keys> may be provid=
ed, "
> "which are interpreted as the I<hostname>, I<username>, and I<domainname>=
 to "
> "match to a netgroup name via B<innetgr>(3).  Enumeration is not supporte=
d on "
> "B<netgroup>, so either one or three I<keys> must be provided."
>=20
> "When no I<key> is provided, use B<setnetent>(3), B<getnetent>(3), and "
> "B<endnetent>(3)  to enumerate the networks database.  When one or more "
> "I<key> arguments are provided, pass each numeric I<key> to "
> "B<getnetbyaddr>(3)  and each nonnumeric I<key> to B<getnetbyname>(3)  an=
d "
> "display the result."
>=20
> "When no I<key> is provided, use B<setpwent>(3), B<getpwent>(3), and "
> "B<endpwent>(3)  to enumerate the passwd database.  When one or more I<ke=
y> "
> "arguments are provided, pass each numeric I<key> to B<getpwuid>(3)  and =
each "
> "nonnumeric I<key> to B<getpwnam>(3)  and display the result."
>=20
> "When no I<key> is provided, use B<setprotoent>(3), B<getprotoent>(3), an=
d "
> "B<endprotoent>(3)  to enumerate the protocols database.  When one or mor=
e "
> "I<key> arguments are provided, pass each numeric I<key> to "
> "B<getprotobynumber>(3)  and each nonnumeric I<key> to B<getprotobyname>(=
3)  "
> "and display the result."
>=20
> "When no I<key> is provided, use B<setrpcent>(3), B<getrpcent>(3), and "
> "B<endrpcent>(3)  to enumerate the rpc database.  When one or more I<key>=
 "
> "arguments are provided, pass each numeric I<key> to B<getrpcbynumber>(3)=
  "
> "and each nonnumeric I<key> to B<getrpcbyname>(3)  and display the result=
=2E"
>=20
> "When no I<key> is provided, use B<setservent>(3), B<getservent>(3), and "
> "B<endservent>(3)  to enumerate the services database.  When one or more "
> "I<key> arguments are provided, pass each numeric I<key> to "
> "B<getservbynumber>(3)  and each nonnumeric I<key> to B<getservbyname>(3)=
  "
> "and display the result."

--=20
<https://www.alejandro-colomar.es/>

--lXCagY19wXBNCN5V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCbwIACgkQnowa+77/
2zLEiRAAkEPzLSMzViPvyvyq+vdrUe0dM08i15uyzwhUhRA+kyLjswQkcBabgYuQ
znl+mm+WM7cPwMsmFuTC9gBBlKHRTKlz4bw5E9T4Nisx/jIByeHsf8xNA+oPKhEw
sbeWH51cirmGhcmE63vaC3afZm/fRrNF3wiWzFimMotC7nYL8fcw70RJHXJZiy+i
ugpmBfR2MQfb/gPI2vknc/89NR5o/BrgwHMwZcupJhSufUxOT2Cm4l90vpXqDYx1
ACwzDyrYNKbyoHd+9Mmx5ZAhDUpQItEyMGST/6QJ3h8g2BRCO8ATRw8J/sGiU8u1
A1guduPDpMN6r4zUDUUs/OCXFb4Y7UvKHslE3iNyEgFQMDcFrVQDsH8hlNrRjOJY
HH7uwnTCOcNsRcwiYxBgsHFhIlNTPr/wHK+zQOZVa02mPdcuk0Z5xsSkux2lRJgk
vFGJoxn9oJ3pX0ekM63nn4OqxTn4RGTavOz9ZgMNhFcK/r2dNOxg7cgcJFjx4Bte
vYPgIoa5bMVwI04cwBWCv0c2exwGKHDWNXZIIHTkWZWHGv54U/EoSFjwtFvBLLg8
7uRJt4EHxMOshEli2ZlU9M86HGdiQ/6BAAZnUeFwjiO6pMjwNgZE2FnKgwEFnLeu
ewU/06bj2LxmNbihfyhihobv6X4+ywfkQfYg5SRqWpG28nVLSGE=
=N8JD
-----END PGP SIGNATURE-----

--lXCagY19wXBNCN5V--
