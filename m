Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A32C7DE354
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:36:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234146AbjKAPcP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:32:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233227AbjKAPcP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:32:15 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E314FD
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:32:09 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC209C433C9;
        Wed,  1 Nov 2023 15:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698852728;
        bh=4S/f+SrrQ/9q8va4sK2EH4exGbvUS31h+Xd2mxg4hbQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=vOkzw3jQ/8M6ZX8a5LHBhX9noygvEtXW8PKNJDY3CZMIaiFlf8pB06InnKH27kgc6
         FgB1gQmAePc/qck18NC1qsOKn+pL0uJCgoaP11fKJ9BuUzWIMXb9g/QoTe2SWkpkG7
         JjIT11oA3uIRufJzhtME4sgLBPHJPar5twjc1aSyuGb40D4regs3pKX9Z6+WgNRcx4
         Bmnt3Ps5N1LxYfJ6iSrDno5FLgPdXAgFTS/4Q/mh7q4qpGlZ9vs3+sVt9XWgIAXVfa
         JOVrz8z7Bz/3SDfNsHZFdZuAiLnIVU8n/Y39KKAOxm66I+uUZdhyV3uL8LQsQWLDfm
         LAq5WCfEsLo3Q==
Date:   Wed, 1 Nov 2023 16:32:05 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getgrent.3
Message-ID: <ZUJvdW0ZLtzp7hgb@debian>
References: <ZUJaYkEfZ2HQMbgG@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="t9BGiCeddscVgGjN"
Content-Disposition: inline
In-Reply-To: <ZUJaYkEfZ2HQMbgG@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--t9BGiCeddscVgGjN
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:32:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getgrent.3

Hi Helge,

On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    NULL-terminated =E2=86=92  NUL-terminated

NUL would be wrong.  It is a pointer to an array of pointers to char,
of which the last contains a null pointer, which marks the end of the
array.

Cheers,
Alex

>=20
> msgid ""
> "struct group {\n"
> "    char   *gr_name;        /* group name */\n"
> "    char   *gr_passwd;      /* group password */\n"
> "    gid_t   gr_gid;         /* group ID */\n"
> "    char  **gr_mem;         /* NULL-terminated array of pointers\n"
> "                               to names of group members */\n"
> "};\n"

--=20
<https://www.alejandro-colomar.es/>

--t9BGiCeddscVgGjN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCb3UACgkQnowa+77/
2zINxg//atgbGev/OxV+DzqXpIx0MWGcLZanv7UrHL/4Nh8Z1Z8ed1KqZfKM+k9L
bLfcG7IlcwyqLAHqX9wmxT6PzFRiFRC6+LYfvLAaT0PGJaBEhAFIor3UZtd7LdBn
EHi+OSA0R7fXsmROqVYou2hHGctAHOJ/yVnVD8ulcMRQTbn2cgHfsgblBuDjZTj1
pwub4EYAXPZ1bMOVCdqSmyi4B5YKfL27beD/3tueboO/Dv7+gKYeoIooRtBdZMLd
Z/qGLk7zT5QaHH8SAZNyGnbcaLgjwXkoFrsE9nlzQ/RzCC9q8Hg2TgWpww+Mx1ja
cTFDBmE6R0qP649W2WnCFVDmZMgElFUVwd4QNmNJOU4gDpSurMsR/DS9ODC5lix5
AIt+UniChRLmh7sOEsT16lC5A9EcoC+xX+OpswSDO4iLC48XbTIHQgdbYbCQHZEz
Zt8eT6h6BBKA/bHSSNtb0TM0BeOvU3UsebMsqkw8CKjStQR90n9Ns6hc4McYAUOz
zMVP2etDmEsYuYlrO4WpldUF6JzDtooT5ZdO1RWDffi7J9IaBGZHcNyiPAocH6BQ
ZSu2cZVKetS6Z08OZrZ8toNYNv4MZPO5wfwqTy6iJoDeYNF880KmzP+fax85ZuiG
U3c/GCPhIVDDrm4ZOzUJynLR53HQAs064+Ru6us2ZqfnckZNqnU=
=gz04
-----END PGP SIGNATURE-----

--t9BGiCeddscVgGjN--
