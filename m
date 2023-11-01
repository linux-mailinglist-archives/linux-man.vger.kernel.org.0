Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1D907DE379
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:37:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234029AbjKAP2X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:28:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233321AbjKAP2W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:28:22 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9445FD
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:28:16 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 638B0C433C9;
        Wed,  1 Nov 2023 15:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698852496;
        bh=6JNlgMI+jUb+QJXCCFOeRkAqJMqPX3NQzk36lSSnB6c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=PD/nM/yHfp9Rm2IYlO12AHbW/4ftwMOpx2YKlsIEIiUKIIH3dEzvNXqA5W8Yixa47
         bb9GmSK42+yZMu9k/WMSjrCap8PKUP6yld6DhcTtn4ulfgAUkdxVSAZpVmaKLCS6Xd
         aGv0vpdWoCxIXYeXX0JZICKpAXIu67xsufR9YsovRLaw6+42InbHCVQ/hSJ7kVVUVD
         H9j6kZBWnMC6LyGC62RMtFismmb/7DELgv8nV88TCwx/rEfM75x1BfSeOZaZCSfxoE
         EHnR8NH9CHNtddzb8mSgjz/9Pi5oNaHVLbrPCdutgOfuV6n8tr6S3RVyrbc7HKhTSI
         EKxKjTw418ROg==
Date:   Wed, 1 Nov 2023 16:28:12 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     alx.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page getdents.2
Message-ID: <ZUJujd_4993OjKiO@debian>
References: <ZUJaYgHOEqVzhGhP@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="oxrjRCcw9fDPEOnn"
Content-Disposition: inline
In-Reply-To: <ZUJaYgHOEqVzhGhP@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--oxrjRCcw9fDPEOnn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:28:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: alx.manpages@gmail.com, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page getdents.2

Hi Helge,

On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Zero padding byte =E2=86=92  null padding byte?
>=20
> msgid ""
> "struct linux_dirent {\n"
> "    unsigned long  d_ino;     /* Inode number */\n"
> "    unsigned long  d_off;     /* Offset to next I<linux_dirent> */\n"
> "    unsigned short d_reclen;  /* Length of this I<linux_dirent> */\n"
> "    char           d_name[];  /* Filename (null-terminated) */\n"
> "                      /* length is actually (d_reclen - 2 -\n"
> "                         offsetof(struct linux_dirent, d_name)) */\n"
> "    /*\n"
> "    char           pad;       // Zero padding byte\n"

Both seem good to me.  Why not zero?

Cheers,
Alex

> "    char           d_type;    // File type (only since Linux\n"
> "                              // 2.6.4); offset is (d_reclen - 1)\n"
> "    */\n"
> "}\n"

--=20
<https://www.alejandro-colomar.es/>

--oxrjRCcw9fDPEOnn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCbowACgkQnowa+77/
2zIZ/Q/9HBkBNXTLBt309H26x35uS/fh6tHBEkXNc1VnkxDlbuohKADhk9mM7XYD
WjRXhyWuGZ2yv8qIGA1pBtPLqfrZi3BgEoOYA5X3hfzOnwCcm7kWbwIrT9xUUmxf
PUsvgUXoXSBHQZj0oHfRdl4Qepx+BzUF38Z2V5cVGXoTrdJcAyniftLaFz8/hO86
gYsF/4NzpO+pNsh4nlt57UKWKfvjvCWrl/phyY9OrGlcoHRYKIgQLCE0CbgIIY2u
zNyjQ0+wK1nU59KMsg0E2xAXAMoK0gNUlc5LOJ3OpCLOwukP36qqBBXF0MqlbonZ
AZRwNulcCPIv4ft+7GxAVuqCyWUddimwRyd8uv+uorR++VaZ/rZcEML0vFCYl+V4
k34m4u3AcL5gTF/Vy5aS+hPF1hgZ3ZO3IFWmL0hDywNwRWGiO2lvCzGQovVYdhcl
2B+jou7mZRpWzAnLAo1VsSD2batBLe/7X5bOlKY81AJBF9c0/h+DMHW+0GeRfFew
p9ytxCfkB21KyEpEYmHKls2JdwMiuYfBAJNu0Czc3nVBb8Z/OjJqjzgcnjWoa+GQ
7gF15nRg118jXXH/fHbnI7s4Ws8Am5iNhXW741UjBJqUp0NqLiKivgrant10fao6
ygllC2J0MGc+i9kyQ3hYJfGw7uod3FdHXN3qJ+F/4PAAI0zNy4E=
=rw/r
-----END PGP SIGNATURE-----

--oxrjRCcw9fDPEOnn--
