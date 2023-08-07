Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BD60771C4A
	for <lists+linux-man@lfdr.de>; Mon,  7 Aug 2023 10:30:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229561AbjHGI37 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Aug 2023 04:29:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbjHGI36 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Aug 2023 04:29:58 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B018710EF
        for <linux-man@vger.kernel.org>; Mon,  7 Aug 2023 01:29:57 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 32B1E61653
        for <linux-man@vger.kernel.org>; Mon,  7 Aug 2023 08:29:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D28C4C433C8;
        Mon,  7 Aug 2023 08:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691396996;
        bh=wqPKcMlMsyQLWzrRN4e/znGPRs0joh6+aNzSb+0oYcg=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=WqzRFU/Yr5t4aJOlkdwp8kJMvd3XozFCCwYHJ02EREOLUeRCaMc3crcI4eD+hGViX
         YKVUhab+/OiJy8+ujPa4EfnJavyjssSCf941gshKGTlQ+Hb+yOF5ccRMv/neW6Gnw/
         r3Af3L9cy5cQWpk49hlDzg0MS9JyX5SiUvfHk//amkqYZKPX1e7RdFcawenXgiHoY3
         wOaI3JvExNhGV8BTr9SqmLZpm3dtFruU11AtMuKNA/iJBsI800VgWmJzbvqj8SpPjW
         AxhQoi3O7bEKdjCxnnHqoxLPL7/WXtXYdEEulVai1/fKUJnsv2oC3D8rnPYjinG4/R
         lK6jEVqACQyXA==
Message-ID: <01ae295f-329e-19c5-bff4-aac71334af74@kernel.org>
Date:   Mon, 7 Aug 2023 10:29:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] scripts/LinuxManBook/gropdf: use symlink instead of hard
 coded groff version
To:     Brian Inglis <Brian.Inglis@Shaw.ca>, linux-man@vger.kernel.org
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
Content-Language: en-US
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6RTmI0YnaG0ky3onhR2ECqWK"
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------6RTmI0YnaG0ky3onhR2ECqWK
Content-Type: multipart/mixed; boundary="------------N9yQ0rljVOGYuaMDaFF00zyD";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Brian Inglis <Brian.Inglis@Shaw.ca>, linux-man@vger.kernel.org
Cc: Deri <deri@chuzzlewit.myzen.co.uk>
Message-ID: <01ae295f-329e-19c5-bff4-aac71334af74@kernel.org>
Subject: Re: [PATCH] scripts/LinuxManBook/gropdf: use symlink instead of hard
 coded groff version
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>

--------------N9yQ0rljVOGYuaMDaFF00zyD
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-07 03:16, Brian Inglis wrote:
> man-pages custom script gropdf has hard coded groff version used in fon=
t path
> groff provides symlink current for version to avoid the issue; use it i=
n gropdf
> specify failing font path used to open font description file in error m=
essage
>=20
> Signed-off-by: Brian Inglis <Brian.Inglis@Shaw.ca>

Hi Brian!

Please CC Deri, as he's the author, and will be able to review better tha=
n I can.

Thanks,
Alex

> ---
>  scripts/LinuxManBook/gropdf | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/scripts/LinuxManBook/gropdf b/scripts/LinuxManBook/gropdf
> index 8474e583f57d..fb205395015b 100755
> --- a/scripts/LinuxManBook/gropdf
> +++ b/scripts/LinuxManBook/gropdf
> @@ -58,8 +58,8 @@ else
> =20
>  my %cfg;
> =20
> -$cfg{GROFF_VERSION}=3D'1.22.4';
> -$cfg{GROFF_FONT_PATH}=3D'/usr/share/groff/site-font:/usr/share/groff/1=
=2E22.4/font:/usr/lib/font';
> +$cfg{GROFF_VERSION}=3D'current';
> +$cfg{GROFF_FONT_PATH}=3D"/usr/share/groff/site-font:/usr/share/groff/$=
cfg{GROFF_VERSION}/font:/usr/lib/font";
>  $cfg{RT_SEP}=3D':';
>  binmode(STDOUT);
> =20
> @@ -690,7 +690,7 @@ sub LoadDesc
>      my $f;
> =20
>      OpenFile(\$f,$fontdir,"DESC");
> -    Msg(1,"Failed to open 'DESC'") if !defined($f);
> +    Msg(1,"Failed to open 'DESC' in '$fontdir'") if !defined($f);
> =20
>      while (<$f>)
>      {

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------N9yQ0rljVOGYuaMDaFF00zyD--

--------------6RTmI0YnaG0ky3onhR2ECqWK
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTQq3oACgkQnowa+77/
2zJgSA/9F+jo5fBnmFBLrra+ezkQeC4M3UcJohMcD2G584HddX49eUGlKSUjicux
h9x6TEdUGJokGcWHY7PLU8zvzVOOheIAFm5vBycmag/PqKDh0zfWvpBuPkDwsccT
RP37vYHR6dEho/D0UR921YDuSCypR4Czq2xvKOj0qwSQLl5isLNQfkFftM4OERCx
gogcckWQ3inSu79SHvqLOpFlfx4WgkYug2mIFZS9pF/kOQWAylf9oaJGl5FyUOtU
7s3rTORowoucSZUCYIEmZhDSKtT3bF85uCHEBEa7isvfTqn9L6nNFiE31ILv/iPM
OpHFbtcro8cnlmmRTtAI2jCMnRW19QkV2x9kP6JqPLEWiQX16CSiWsx//nZdDXQB
r3CL3hdzjycyd7upjtYzbdWVJ9TXSuO6YeW9BIMk40x0Et1oPygyrpy3XfnwLp4V
nFWxzmEI4gbj2KGjKiUYi4R4EdtFAW5ACYiQbn7GgzpbA+tm6LYOd+P7xvKvoD4X
hS7ylVJ8DYexqQl3tCKu4tvxmblBq4KH9QfETZd8zFIj3uPV4pUhlNjPYGTG/ly5
uK65rcgqZBuNEvvJOBj4lirm0ph4d5zdWl/0qVWwaRbIYItZ/VDyXYfdne+bU254
lao2nPpIPmww+NzIUNbhk/7Kb8TK2jZ45UvQkTgt33bXuYEg1UA=
=duqm
-----END PGP SIGNATURE-----

--------------6RTmI0YnaG0ky3onhR2ECqWK--
