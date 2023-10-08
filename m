Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 925727BD10C
	for <lists+linux-man@lfdr.de>; Mon,  9 Oct 2023 00:52:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344708AbjJHWwj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Oct 2023 18:52:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344437AbjJHWwi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Oct 2023 18:52:38 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20DCAA3
        for <linux-man@vger.kernel.org>; Sun,  8 Oct 2023 15:52:37 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA8FCC433C7;
        Sun,  8 Oct 2023 22:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696805556;
        bh=eKS1i915uOytgVyPyZfVPV7EGaZhyzS4h+fgE36YdyY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=UBZJ513Gz2UKSE91FymXKbDk+0Zp2QA67Y7muqdCmn7I8gdrZcqT1N6IHZzeQmzvS
         /lcIVKC7o3YR2207TPwELu4AzgjDr3vFkeU7f61e2STtXiYFvA1nUcGIg3g7OAuYkM
         K5+OabDsr8d/78g2gw0lS8oXAwKA+iGyQnE0ztL1+sy6ZUwGp70MduSR+y5UFzfjXF
         pD7S9bya6v2R37VS9fN8YrMT0V9WmXAE+9ZVobjS1BiKl/Lq6VQ+hnq7ZuscDP4MMv
         pVyHplqKTvLK/uVww7rKcYRpPhHkeeQEgAzL+SLw9AGDuHX47ATtVbTvDu1Wz7CTK5
         JtIKAAN2yjmFQ==
Date:   Mon, 9 Oct 2023 00:52:33 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Yannik Sembritzki <yannik@sembritzki.org>
Cc:     linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH] Correct list of flags returned by SIOCGIFFLAGS in
 netdevice.7
Message-ID: <ZSMysfPBxTs8QCKD@debian>
References: <78adf50c-e8f9-d1ce-e933-418a850b6a44@sembritzki.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="qVaTCG8zGF7ndl3e"
Content-Disposition: inline
In-Reply-To: <78adf50c-e8f9-d1ce-e933-418a850b6a44@sembritzki.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qVaTCG8zGF7ndl3e
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 9 Oct 2023 00:52:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Yannik Sembritzki <yannik@sembritzki.org>
Cc: linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH] Correct list of flags returned by SIOCGIFFLAGS in
 netdevice.7

Hello Yannik,

On Sat, Oct 07, 2023 at 06:30:52PM +0200, Yannik Sembritzki wrote:
> As per https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
/commit/?id=3D746e6ad23cd6fec2edce056e014a0eabeffa838c
> and https://lkml.org/lkml/2009/5/28/224
>=20
> Signed-off-by: Yannik Sembritzki <yannik@sembritzki.org>

I couldn't apply the patch:

warning: Patch sent with format=3Dflowed; space at the end of lines might b=
e lost.
Applying: Correct list of flags returned by SIOCGIFFLAGS in netdevice.7
error: corrupt patch at line 10
Patch failed at 0001 Correct list of flags returned by SIOCGIFFLAGS in netd=
evice.7
hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

Can you please check?

Also, please CC
"Fredrik Arnerup" <fredrik.arnerup@edgeware.tv>
John Dykstra <john.dykstra1@gmail.com>
David S. Miller <davem@davemloft.net>

Thanks,
Alex

> ---
> =C2=A0man7/netdevice.7 | 3 ---
> =C2=A01 file changed, 3 deletions(-)
>=20
> diff --git a/man7/netdevice.7 b/man7/netdevice.7
> index 0087a8115..01356476d 100644
> --- a/man7/netdevice.7
> +++ b/man7/netdevice.7
> @@ -127,9 +127,6 @@ IFF_AUTOMEDIA:Auto media selection active.
> =C2=A0IFF_DYNAMIC:T{
> =C2=A0The addresses are lost when the interface goes down.
> =C2=A0T}
> -IFF_LOWER_UP:Driver signals L1 up (since Linux 2.6.17)
> -IFF_DORMANT:Driver signals dormant (since Linux 2.6.17)
> -IFF_ECHO:Echo sent packets (since Linux 2.6.25)
> =C2=A0.TE
> =C2=A0.ad
> =C2=A0.PP
> --=20
> 2.41.0
>=20


--=20
<https://www.alejandro-colomar.es/>

--qVaTCG8zGF7ndl3e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUjMrEACgkQnowa+77/
2zLIWg//R7m8v6IBWNyWEURmDBymQ4AvD0XCQPJV4zsPcePkvXYtk4EsKmUf1x3T
D7tKxBc1/cqoPDAYIxkmiC1FMEXEc/5ArBvkFr4u8nU4YsNM6RPJlW6oJbkhhmVc
QhJFRZfO0SaHdzigkJ8G09V61PHsynpkEHyOpcYGkOMIZw7EpMDFkTvWwX33pmN/
3eLcj9soNvZnAj1yaAE9hTemMCc1UDXQxcoRo8WJdRS5jYxSV0Gwt5KBDRiO2JLK
DsFB4gaqgUjZMc6D5Q+H9g1YLVXrhwKg/QZeamITpifkqxGvoTJNWnG8PaI9FTs0
RfsvKB/uOP8QSmKTYWL0gkTyhgKnruN/5r6y8fKmiGoMHXL80Y5CadsWGmw8Gf0d
oMW71ykhdmAPlSZetBddbGEAqqMziWZ+d0XzBFEaccpigzBwno+OoqQzobLbVjK3
PsVXBgKkO08v0JW+YU9tlLT4tDXBtSg/2O/WY7eBEjwdWBnFd0CS8NJ9IXHJca+2
82oKvCGhlAVOMRytoUqvQZwP+GgIsF1TvL+RCdtoYOK0JWx3pZQSsW1Ca+LvXj6o
twZhoux9POryS+LoRd/dL8DXZwsBp5GfqsQ48K4MBzPc5qA5jvCKYp5mynxVjJO3
J/Lv97oAUfq+D1j/iaom2G8d+ovE+IZWVpMnyhRVFGuXshizutg=
=relc
-----END PGP SIGNATURE-----

--qVaTCG8zGF7ndl3e--
