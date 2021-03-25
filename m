Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3324734879C
	for <lists+linux-man@lfdr.de>; Thu, 25 Mar 2021 04:48:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbhCYDrr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Mar 2021 23:47:47 -0400
Received: from wout3-smtp.messagingengine.com ([64.147.123.19]:33473 "EHLO
        wout3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229448AbhCYDrU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Mar 2021 23:47:20 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.west.internal (Postfix) with ESMTP id 0605AF82;
        Wed, 24 Mar 2021 23:47:18 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 24 Mar 2021 23:47:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alyssa.is; h=
        from:to:cc:subject:in-reply-to:references:date:message-id
        :mime-version:content-type; s=fm2; bh=z/JKRkD8vbbkFE1Mk++F+i3GwX
        y6qI+x0zPT5hDQo3Q=; b=K+a0Pk+UtdIsCC82S42B8mk0to4zS2xHb5zr7dhSLH
        iystPLuVdIjVqG9mLSRZk7eozOgEs7Pw/DvdnNv1oHhBmLjplMgmoKw85Y9HSSA9
        yZU0ax5VYU/+aH1wFyHq7JstjTGKtrDHZSgxMTyD/FGDQLWLvP2VQ7K39pBtlAw1
        pIOD61xBjSS21m6PqPDgXBPDJcugLlFyOEsqELY9cTba4zA4Nzm8yXq3D3+obfiS
        artP4SRbJU3dpzyDnKVSK6ayWXQLF71AdqE/lmv+5n5nm3/4k8cv6zLOVR1OOdAU
        vbBCB2Zrc19rGouD1HbHRXomXVXcAI18RnPszo/bOZug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=z/JKRk
        D8vbbkFE1Mk++F+i3GwXy6qI+x0zPT5hDQo3Q=; b=dx9wTDuJSaAMYPwk9ER3kb
        WGDA9cwrUd126gdb9ZL86TZ/lo3pxrhsYXapD0+QnY3FV56qZYtRF5N1JVsZN8ij
        WOimntHWMfDbrVtzwDylEFw8BAHF0ymv7BYcJaKOGHX+xoLFliw3d7iPC0zd7lu0
        s/cwhcmBfiS8KrO66i5z1jmbJYAdgB3GPSxAfsaEoqqDGgkrIeG5334isFv+efj+
        nuPTbd9nuiD5gkQF6LrRkQh2RiYc1oGJ8r62UNAYiIXmUz8t45SreESZnUoBLlk5
        qpd77kiv3AJ+pvu0fVTsmwHPj1ZBhxmFf18aglrYfN8wpfCsZeJPjTjGlN/cKqXg
        ==
X-ME-Sender: <xms:xgdcYF89vVd5DLN_YKMykikfitFZqPhi7LPA5SIo-I3BA_AimPdmEA>
    <xme:xgdcYJuXQJ6wPpTIf_9qkXZ3Ng_9izhAmJusP3IpLZS_WjOy3XneVHcXTBdGu-FEV
    KIbU561ADnkuCEgxA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudegledgiedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufgjfhffkfggtgesghdtreertddttdenucfhrhhomheptehlhihsshgr
    ucftohhsshcuoehhihesrghlhihsshgrrdhisheqnecuggftrfgrthhtvghrnhepvdeuvd
    eivdehhfeikedtvddvhefgheffleevueeigffgtdffffeujedujeejkeejnecukfhppeek
    gedrudekgedrvdeftddrvdduleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpehhihesrghlhihsshgrrdhish
X-ME-Proxy: <xmx:xgdcYDAn-o3S--PlVzuAdfX0kKpnnwftalq9Rzd8MgJ4lGCNY-4eBw>
    <xmx:xgdcYJc72zdVuuUUFcLCuZnStwG4_JmTqy2wFbEzYw5-kUcXgg1awA>
    <xmx:xgdcYKPNWd3_C0HOTzBwPLtpVLYP6p9gVKq-fw_doK2qImONes-sLw>
    <xmx:xgdcYEX60k2fzvYCN3PAmPq-A1eO09ppfcEfbnXXrg4X32bQgwUyOA>
Received: from x220.qyliss.net (p54b8e6db.dip0.t-ipconnect.de [84.184.230.219])
        by mail.messagingengine.com (Postfix) with ESMTPA id 23654108005C;
        Wed, 24 Mar 2021 23:47:18 -0400 (EDT)
Received: by x220.qyliss.net (Postfix, from userid 1000)
        id A9FD1771; Thu, 25 Mar 2021 03:47:15 +0000 (UTC)
From:   Alyssa Ross <hi@alyssa.is>
To:     linux-man@vger.kernel.org
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: [PATCH] vsock.7: ioctls are on /dev/vsock, not sockets
In-Reply-To: <20210324140503.27580-1-hi@alyssa.is>
References: <20210324140503.27580-1-hi@alyssa.is>
Date:   Thu, 25 Mar 2021 03:47:09 +0000
Message-ID: <87zgyr6gjm.fsf@alyssa.is>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha256; protocol="application/pgp-signature"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=-=-=
Content-Type: text/plain

Alyssa Ross <hi@alyssa.is> writes:

> ---
> When I discovered /dev/vsock, I had a look for a vsock(4), but there's
> no such page.  I suppose there isn't really anything to document there
> that isn't already covered there.
>
>  man7/vsock.7 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Signed-off-by: Alyssa Ross <hi@alyssa.is>

Just realised I forgot. :)

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEH9wgcxqlHM/ARR3h+dvtSFmyccAFAmBcB8EACgkQ+dvtSFmy
ccBbfhAAh9aT+lmQrOAma63xbwNyQmMOjX7xPUgOBkt84gcN2fqeQOaJ+Fiih2Hb
J3LgeW+3YsczbeRmYfXbeSzDhM3e9QX5JIjhXiu+Tvey86aAl8CyK2ZlmSP5X2HL
M+ee5FzsPsq3I6k6XmOuodHSbV83HHFVU8DCtglAY9Ph7othLLnwAP7bSPBpZL/Y
IyQAwWbDpsHylbD3o4YvSZVeP+0gxXb1tyWObof0VBlyioeHVK8V+Eisge+d6JYB
c8IkfjlQOoNULFmsTcQo+jJGdVnc/DQ9FbsZera+VCMFCjdXX44/gJKMYmMCQyCS
ndRLS6x+1Iafisqekm0Sz9wWymYrwbjw79ajsvvO2fcbUfoWK93ZbFKsAhK7qm3Z
8HljfU9/2xMYW/HQI2xGsCrkCUKuOLNZBlQluwLxcJVVzrhQgodQ2SbfTtm+cRXr
sOadeCDyOhtY+gcJmEBfXACCoNfpPt3TKWl5VrNffoBbZc8CPMfubpkl9UctFCDy
GJbRw/Pa6GDpZezI0xLGJ4vcvEkUOY8TznDXJJB3/IF+/9Kx/gntLWq2PTmU/MFR
c8+1rseRs4qJgoaAQ94Bje3Q0Db7h2jsfRsqzW3gB2dgL5YTv2gl77VqCT5//pcg
M6lJH8HP+QT7SMUaItGy1Z8OsTDguDRyxwVu+FwP5sj0X5cSPEs=
=2SIR
-----END PGP SIGNATURE-----
--=-=-=--
