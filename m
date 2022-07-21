Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE77757D742
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 01:07:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233632AbiGUXH1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jul 2022 19:07:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230349AbiGUXH0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jul 2022 19:07:26 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 814718C74D
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 16:07:23 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 1C2A48AC;
        Fri, 22 Jul 2022 01:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658444841;
        bh=NPdA+xFFw8BgIhB5AU7m7IaOm/DiibxxWaiRTrRb4ZY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MXJpz7AlT/mbPe1odHe4n9izgHQqjmFS9kNdclVyXpDscmh7ZtkbZoDnNhzSAx3K9
         eN43gwdkhjWW9wUwBMAk0/16n72sQ68Xi0HueP2eXWMKUjmhLI4a+9aKshuUlUXDmG
         eG9lecOwRHwlVsCfnDJtNv3foJ3idftTNrqVN91eMKPBu1qrqTqdF+wrFhbwyRw3aX
         isjJ87/J8Kvq3QzTTDmJtiAwrN0IqaOuv8rzeLKANdS1CN0Yn5hHBZ0xoIf4uwJMnW
         k7SuiUHPqRGHbu4keSoP+rNnEiARcrQAC8ZIlo7Cc8/RUyhVK4g6Mll7c4di7dM/IZ
         IvzAem4N2s3HRtNFmheY0lE4QrMRTSP8KjJ2ZS36G6RVSBg5hapgoCNqcH15bUAOyv
         HvfVOUTp3KtdvFQqTDxoWZtxfp+fu1Gh6h6r+rA0JP+qV+8A+CWUjSvHvvnpE8cW3u
         VjJ6JrNjtMcu8r87zHEOUm+dDyasTNxXX3Oc2/3X13o5VsYRUQ3tWWM/F6PR01ezvG
         z0KElt2c7Ly/OF0DasMuUOy5UtbxgjVp+GcYjv9BIKSS49GxIKO/EOVWdKxdD7thEf
         f0RQj2YxwICvTGYhrJltylxrQcXGNUieQv5GvglkyttE03iWElkFlr4etSavvCEomD
         kiu+Rjym4GrYzbiALC4OaLGk=
Date:   Fri, 22 Jul 2022 01:07:19 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: Probably incorrect formatting in timespec.3type
Message-ID: <20220721230719.fgfdk4a3rf5rzih7@tarta.nabijaczleweli.xyz>
References: <9ce9d847-07ec-967f-4ebb-2f27a7f042c3@gmail.com>
 <20220721143914.4dq2pra2m5jx6l32@tarta.nabijaczleweli.xyz>
 <3ee08567-ad0d-8e27-d993-aef3ba3e4a58@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zfmrodxbqc6475ir"
Content-Disposition: inline
In-Reply-To: <3ee08567-ad0d-8e27-d993-aef3ba3e4a58@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zfmrodxbqc6475ir
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 22, 2022 at 12:45:37AM +0200, Alejandro Colomar wrote:
> What is exactly "syscall long".  Is it what the kernel understands
> internally as a long (which I guess doesn't necessarily match with what
> userspace understands as long)?  I'm not so used to kernel details...

Yeah, if you're looking at it that way then you could call it
"the kABI long", as you say =E2=80=92 on X32 the kABI is amd64=3DLP64,
but the userspace is ILP32: the kABI long is a u64,
and the smallest (only) userspace u64 is long long.

=D0=BD=D0=B0=D0=B1

--zfmrodxbqc6475ir
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLZ3CUACgkQvP0LAY0m
WPHT0g/9ErtJhu7OKeEVnSOJ5AfZ7ccm6arizFcIrh8PDUNPVmSmeaQty3C8Khm6
ckw6hsjRyflz3eWRg0jsm/n94Hexqw37+frdrQY+9pqI+n8nVBqBTM30AjBqClO4
o4V0vMFc4TrgyytOqdfoaCJ4QyAuKEASZpqySyPx1J1/25yW+HWGVAeFRE7oj3Nk
KyeoTwG9zCzBotb7ZmDlAHpxaAIlcAH30EsvlnxY0TLnDE2Ujk7z02yZJS6+EZSX
DVy34sf6OYM7SG7OxHpk/i5EPhRLl5h5VpEiUK8c5aa6f9Y+F7I2eV5e9fUrm7of
PEJJHGyuOAKqoJXC0KLNxZodHd7S4YuBTqBcpIW05JNAtBym3aTXw1nnN/Xwcs1M
U+8eJa9spn9/T2PWGWA7pi6jnclzhi0FtRWw+eiEjKm1xITGmQ1haVm4MUTMaruM
rq/IjdSzAxBKZs0+qEIqOJhGCrF+rD62ntU7Ck9+UdgRrBlQV7jnuPgWFh6ne8b8
PUjBPvpFuwaM8SE7j3cTLnqpgjDiv3gt5WEAAXZjA9zaGp94NMc5DchNk6fP1Vj/
/6ppoA4JGrrtd8Ll88Trr1Q/6SdIP9KACFkFIi6lQYphTwkQQuqxtdm7qh//mVfc
BGHsAMnt2Wg6LgBStuVHnh9McHqhXgfhB0ecTunQ7cM7BlQG5Ok=
=T8uy
-----END PGP SIGNATURE-----

--zfmrodxbqc6475ir--
