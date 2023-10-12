Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D19F77C734F
	for <lists+linux-man@lfdr.de>; Thu, 12 Oct 2023 18:43:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347324AbjJLQn1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Oct 2023 12:43:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344029AbjJLQn1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Oct 2023 12:43:27 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA88EA9
        for <linux-man@vger.kernel.org>; Thu, 12 Oct 2023 09:43:25 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A66BC433C7;
        Thu, 12 Oct 2023 16:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697129005;
        bh=7A31mdMR1M0Qvu6ry1Kz4BW3jxkP/gGRWLZ0cJF9dEI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=cp+Ra5W0GWBK0+pPps/SbkYU4w0t6p7PysAQ/iRKCgU5bHBwkPQpilUTrtaT6TzRT
         upIN0heRFBSbdQrnumcJ5bIWdQGmcit635gib/2KUHmGKwhUpkmN7VBmJnCBPafx5T
         O+AH1YYd/fTfoBbxChGthX63rk2Q32u0cg2T+hpIndpuOSJvFqsHGq6WNgWcf/O2EA
         KIS+q6rmcZmlbJbGxP+yNeSWR7IqIqtqJHSSTEcdQB8iIrycC67vcde4UW00B4GrLW
         c26W4fUrxnOIifDEjvcD0TzyXlalOPuG7dmpJ46Mdc2mFYPL+a5c8v3kelCLeASDkz
         T6W/Kz8xoVmvw==
Date:   Thu, 12 Oct 2023 18:43:15 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Rituparna ghosh <ghosh.rituparna@gmail.com>
Cc:     linux-man@vger.kernel.org, shadow <~hallyn/shadow@lists.sr.ht>,
        Iker Pedrosa <ipedrosa@redhat.com>
Subject: Re: man7 - useradd query
Message-ID: <ZSgiKU2TtlDgVkv2@debian>
References: <CABP5-fx2YvLup4GFXicJapue=qpyZ61oHuRuBB82ne1Ka7uctw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="KmtPflFGYSudpkn6"
Content-Disposition: inline
In-Reply-To: <CABP5-fx2YvLup4GFXicJapue=qpyZ61oHuRuBB82ne1Ka7uctw@mail.gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--KmtPflFGYSudpkn6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 12 Oct 2023 18:43:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Rituparna ghosh <ghosh.rituparna@gmail.com>
Cc: linux-man@vger.kernel.org, shadow <~hallyn/shadow@lists.sr.ht>,
	Iker Pedrosa <ipedrosa@redhat.com>
Subject: Re: man7 - useradd query

Hi Rituparna,

On Thu, Oct 12, 2023 at 08:24:13PM +0530, Rituparna ghosh wrote:
> Hello
> I am not sure if this is the right place to raise this concern I have from
> man7 https://man7.org/linux/man-pages/man8/useradd.8.html

That page says it belongs to the shadow project, not to the Linux
man-pages project

COLOPHON         top

       This page is part of the shadow-utils (utilities for managing
       accounts and shadow password files) project.  Information about
       the project can be found at=20
       =E2=9F=A8https://github.com/shadow-maint/shadow=E2=9F=A9.  If you ha=
ve a bug
       report for this manual page, send it to
       pkg-shadow-devel@alioth-lists.debian.net.  This page was obtained
       from the project's upstream Git repository
       =E2=9F=A8https://github.com/shadow-maint/shadow=E2=9F=A9 on 2023-06-=
23.  (At that
       time, the date of the most recent commit that was found in the
       repository was 2023-06-22.)  If you discover any rendering
       problems in this HTML version of the page, or you believe there
       is a better or more up-to-date source for the page, or you have
       corrections or improvements to the information in this COLOPHON
       (which is not part of the original manual page), send a mail to
       man-pages@man7.org

I've CCed the mailing list for shadow, although the project is more
active on GitHub, in the link above.  I've also CCed Iker, a shadow
maintainer from Red Hat.

>=20
> The useradd command here is showing an option   -F which is shown as
> invalid in RH 8.8 or RH 9.
> Is this correct?

=46rom what I see in the source code of useradd.c in shadow, the feature
is compiled conditionally, #ifdef ENABLE_SUBIDS.  It may be that RHEL,
or your version, doesn't build with that option; I ignore it, I'm a
Debian user.

alx@debian:~/src/shadow/shadow/master$ grep -rl add.subids.for.system
man/useradd.8.xml
po/fr.po
tests/run_all.coverage
tests/run_all
src/useradd.c
alx@debian:~/src/shadow/shadow/master$ grep -rn -C1 add.subids.for.system s=
rc/
src/useradd.c-954-#ifdef ENABLE_SUBIDS
src/useradd.c:955:	(void) fputs (_("  -F, --add-subids-for-system   add ent=
ries to sub[ud]id even when adding a system user\n"), usageout);
src/useradd.c-956-#endif
--
src/useradd.c-1245-#ifdef ENABLE_SUBIDS
src/useradd.c:1246:			{"add-subids-for-system", no_argument,NULL, 'F'},
src/useradd.c-1247-#endif

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--KmtPflFGYSudpkn6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUoIiMACgkQnowa+77/
2zInQBAAod3RER6Nv5fsDycVRgTcKuT5Z/h6Thdvy52TNZ03AFQF6g6xtt189Tew
LPVX+2sFBCObyKufd//dUGC/WfLsEu5KT1jM4xbQ0Ear6YzHzTsJj7vZDu6uIKPX
ZIZH/WsDx7zF05CisHPvZtrsq5I9syczPRV0oinqD5Kv6mG1n+ar5x2qySU6yrBB
sSQ8DhYTXTWawEkMqJ4tk9bXYCECjeJxMsulI/tHusrs+lD9d7DYyNHl5YSVOP6w
GDiNgwqboG5fWqzWGdT1FhKTZM3mEL8SVsQbfNjkg2h5Mo6e4up4SMQNnSuxonOU
8B14B1XrG38hBYQWVnlzyB5EzXhtw6obggGYO/WY8ooHngCR/7Cege/bo1v9L2vC
7Y7jR0YtVERAmmjf7wIbm6o15hE3nKT4tbvSC/adXKPx7imNHpMcoHfSeEHWzixU
+PZawQ597K3iGUexFVY1VMqqxN560IfQmabbboNviXMaWp6OqRfaI3Qbt38biXpW
cG0M4r6B5poK7wCe3uMoB1DVzcRPaOb+G7btbKIfOFtjiXf3PSn/MxEMEjMJuNoC
wk6Ws0OJYAP7GksICK9zBuW2gTtK+KJPEqfVyi/Ov+UlFChmCpT0fmhcLj8rOwNj
ONncQDy8H8rWDZGVBT4h96cssjvrGVzDOuD3iaxkIf+b70lzuo4=
=3FRW
-----END PGP SIGNATURE-----

--KmtPflFGYSudpkn6--
