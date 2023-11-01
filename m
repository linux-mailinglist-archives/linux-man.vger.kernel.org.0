Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D814C7DE407
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:47:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231501AbjKAPoU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:44:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231602AbjKAPoT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:44:19 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB4B9FD
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:44:15 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 563AFC433C9;
        Wed,  1 Nov 2023 15:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698853455;
        bh=BfKFWiyrJFCMAf1fMgKRffCHbMLQ4YUq2m4UBo/aXPo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=h7KvXXILtfUwqhvUHuFTNbsCmKdMuqz+5JmhkMZyiCfoOVf1rYjIP3kv8fqIM/BPc
         9cZn7hk/btz5WMar55IDE/j9lUZC0+ESZmeFZca19dYln5DByQ1E5Ac8UYR9zH/C0L
         im6nzB7zocG5bOYd2tiZe8pizlZYtPlLbr3yw9Ob+oBO5b2t/jPY0m6n1qtZZujRal
         OGGH8muaRTFuH3XCsy8p3CWzQu58x3iWpaNj6TEcGOdyjCyAMKPwyICRvqyEvkCcY0
         y7sYfc4zyoDO0zrAh+l03aWfMtC7baIqpNPihPZjwsXQCBYr4Xqw8GBniOqg42QDrC
         7iqRzsmqGckLA==
Date:   Wed, 1 Nov 2023 16:44:11 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>,
        "G. Branden Robinson" <branden@debian.org>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page nfsservctl.2
Message-ID: <ZUJyTDKvLzinqOyy@debian>
References: <ZUJaY4vT3lwVt9mq@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="UwCzxsx6R+zGGhMm"
Content-Disposition: inline
In-Reply-To: <ZUJaY4vT3lwVt9mq@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--UwCzxsx6R+zGGhMm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:44:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>,
	"G. Branden Robinson" <branden@debian.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page nfsservctl.2

Hi Helge, Branden,

On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    mountd(8) =E2=86=92 B<mountd>(8)
> "/*\n"
> " * These are the commands understood by nfsctl().\n"
> " */\n"
> "#define NFSCTL_SVC        0  /* This is a server process. */\n"
> "#define NFSCTL_ADDCLIENT  1  /* Add an NFS client. */\n"
> "#define NFSCTL_DELCLIENT  2  /* Remove an NFS client. */\n"
> "#define NFSCTL_EXPORT     3  /* Export a filesystem. */\n"
> "#define NFSCTL_UNEXPORT   4  /* Unexport a filesystem. */\n"
> "#define NFSCTL_UGIDUPDATE 5  /* Update a client\\[aq]s UID/GID map\n"
> "                                (only in Linux 2.4.x and earlier). */\n"
> "#define NFSCTL_GETFH      6  /* Get a file handle (used by mountd(8))\n"

Since Branden is going to patch these things soon, and it will likely
affect his script, I'll let him decide what to do here.

Cheers,
Alex

> "                                (only in Linux 2.4.x and earlier). */\n"
> "\\&\n"
> "struct nfsctl_arg {\n"
> "    int                       ca_version;     /* safeguard */\n"
> "    union {\n"
> "        struct nfsctl_svc     u_svc;\n"
> "        struct nfsctl_client  u_client;\n"
> "        struct nfsctl_export  u_export;\n"
> "        struct nfsctl_uidmap  u_umap;\n"
> "        struct nfsctl_fhparm  u_getfh;\n"
> "        unsigned int          u_debug;\n"
> "    } u;\n"
> "}\n"
> "\\&\n"
> "union nfsctl_res {\n"
> "        struct knfs_fh          cr_getfh;\n"
> "        unsigned int            cr_debug;\n"
> "};\n"

--=20
<https://www.alejandro-colomar.es/>

--UwCzxsx6R+zGGhMm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCcksACgkQnowa+77/
2zLssw//YVMnU1SpL3ri6og7CPxY0IHxse3bytfw2w4MIRdjGreYlwvPdJqMwYPC
sd6PkNmKB8eivO1pj7upUrlWqifNnujEdBbBf8ImSPPwjCGb4oXc/UJEXF/vkQ5W
OJ+XsrF8nMax+OkS7OjNmZKDg508Ueo+tGvh8d0leJFZ4VgnVFH1VKtAo31qqYZV
O8p3LZ5iW7Fsqu4FD1hCKqsvuIJB6oGqkJJPtmof2WO0cWQ+b9+tz63JqZT2JQsr
12g8C2GFXdi9ddpvnVdW/NRNeZdhhPFUry30UlputS011VFxLCWfWAD8qKi+teEg
JNhOKIKPtrcZIixC0rBo/aZ+jb29eWDgouqayylLmA97pizmvv0AVcz+h4w0UTjw
sxgGNYVQzLvZv0a76yz5Ht0OcFMGSK3oh27pCApsJ+Lh+Et22EEngp88zYLDU05W
PURhXMk68cvK6OHntc5H9xr/YWnqXkSBN5GGtX1egZs+KWkJBYaskmkBylPRyt76
9M8lw6Pay6vKYpUTdPJL61Z8TFPjdJ3jDrx0JVugrfeG7Bco4defu139J8Du5VW+
onenD9iML9iNcXZMegS05mBkDRVlOAS0LChyY+kB050qS/r85Mp8Wib2D67md7i+
G4Gim+L/tuToP773ufOZbwAOsDARl67MjlBv+cXwVOLIiKkO+sw=
=DEBf
-----END PGP SIGNATURE-----

--UwCzxsx6R+zGGhMm--
