Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25E85771CF7
	for <lists+linux-man@lfdr.de>; Mon,  7 Aug 2023 11:16:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231388AbjHGJQx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Aug 2023 05:16:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229776AbjHGJQw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Aug 2023 05:16:52 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1386AE6F
        for <linux-man@vger.kernel.org>; Mon,  7 Aug 2023 02:16:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7AA20616EA
        for <linux-man@vger.kernel.org>; Mon,  7 Aug 2023 09:16:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39284C433C7;
        Mon,  7 Aug 2023 09:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691399810;
        bh=9B8FF39fomt8HsLDO/AHKT3jkcr/RHajyrGTWoBki6s=;
        h=Date:Subject:From:To:References:In-Reply-To:From;
        b=pBtd1kn2aEqEuoPR+YRivh2MseVmLmEgCQTNb/QsP/6cHLYrbDrahg0yLRixNcwt+
         HH9C57JKYxdxBdluaiwYthSC2A9m4kBoMjARrzEOkRcNlxRIi1xNZ6wIYbKlyjL/9b
         mkcrsIV+WiwBX6d4sbTvQgDO0Xrmyz5pRVCm1+rwK68uy2j2roIzyy8Z9RxwKP7tpd
         Ue1IPoqw69+jDWrNG8Apc08ri2V8OJVhyNYu2OIs0gi5RiPh1E8/DLtc0lriUPFz+v
         w/Sf/tCEZWzZQtddLQzeTlXdvz5DIDUqEhEiQ0FeUMIwPiYBhaot0Mb7nyqFfngsk5
         SUrkmf28Pxh0Q==
Message-ID: <ab67aa6d-712a-47f0-e694-01592bb72cd1@kernel.org>
Date:   Mon, 7 Aug 2023 11:16:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org,
        Deri <deri@chuzzlewit.myzen.co.uk>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
 <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org>
Organization: Linux
In-Reply-To: <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kVOsUzBXHZFcWeGT44amnMt4"
X-Spam-Status: No, score=-8.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------kVOsUzBXHZFcWeGT44amnMt4
Content-Type: multipart/mixed; boundary="------------ibmg09Dgju2QgkAL33EQO2Uc";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org,
 Deri <deri@chuzzlewit.myzen.co.uk>
Message-ID: <ab67aa6d-712a-47f0-e694-01592bb72cd1@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
 <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org>
In-Reply-To: <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org>

--------------ibmg09Dgju2QgkAL33EQO2Uc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-07 10:45, Alejandro Colomar wrote:
> Hi Brian, Deri,
>=20
> On 2023-08-07 04:46, Brian Inglis wrote:
>> Hi Alex,
>>
>> I noticed there appears to be no 6.05/.01 pdf book available yet.
>> Are there build issues?
>=20
> Yup.
>=20
> $ pwd
> /home/alx/src/linux/man-pages/man-pages/6.04/scripts/LinuxManBook
> $ ./BuildLinuxMan.pl  ../../
> [...]
> Failed to open 'DESC'
>=20
>=20
>>
>> When I run the script/LinuxManBook/BuildLinuxMan.pl, after applying th=
e gropdf=20
>> patch, manually in the build dir, I get a pdf, but without any man pag=
e footers.
>=20
> Hmm, that's weird.  After applying your patch, It works fine for me.
> I do see the page footers.  However, I have old builds of groff in my
> system, which I haven't cleaned up, so maybe they interfere positively
> to that outcome.  Maybe from a clean installation of Debian Sid I
> wouldn't be able to reproduce that.

I have uploaded the 6.05.01 book now.

Cheers,
Alex

>=20
> Nevertheless, now I remember Deri told me he hardcoded a lot of stuff
> for 1.22.4 which should be removed after the release of 1.23.0, so it
> seems that the time has come to chop a lot of stuff from there.
>=20
> Deri, would you mind simplifying the scripts assuming a Build-dep of
> groff(>=3D1.23.0)?
>=20
>>
>> Are there any other scripts which need to be run and/or groff commands=
 or data=20
>> which need to be supplied?
>=20
> No.  It's just:
>=20
> $ cd scripts/LinuxManBook/
> $ ./BuildLinuxMan.pl ../../
>=20
>>
>> It would be nice to see this eventually added to your RELEASE doc, and=
 maybe=20
>> also to the make scripts.
>=20
> Yes.  I first want to put it in the Makefiles, and then add it to
> INSTALL.  Then something to RELEASE.  But I first want to simplify
> the script so I can understand it.
>=20
> Cheers,
> Alex
>=20
>>
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------ibmg09Dgju2QgkAL33EQO2Uc--

--------------kVOsUzBXHZFcWeGT44amnMt4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTQtoAACgkQnowa+77/
2zLyOA//SAe1FnpC/jjo7mj7ZZ6U5l9nBoCpmQE3jvgak7xM3MfZ0jNSyh1GyAlZ
9PEJtLRVwgcOL/WtsvviOf1NMmYxUp9+fLWL3NBZeP72+r7/VViRp/7XCCje54Fe
s/YpFGLWN5+8zKanP+q/jYcSn8WfoXTtO2h/jA/gMUSsnchGC6SUn+oj5PTRhAV6
IuWhH79lxGBNsDTp3n4YVU6GEaVJu3+ZCQCdjpP6nuiqn5tKTO6wCdXS2P72JB3D
jfbcUsTQydbd4VYiSPAolJwrvV983OU/WVg72dY4aSA3305bxLrohAFvRKrQPMuF
ESd2lfR9AzTCrsA3jrkWIToj0ckAqskHPXtaVj9+b5Fc+4fR/NRBfMlglMzvINiM
2b1xBGT3hxztjHu8wjfleupeiNGTbZRbhR0eVTxWDQsuTPAZ5pkpDMHK2N7H9FhV
gn7G9FyaEfJJGHxmwHxW2z5Gb0cXiPZ3ctVqRS3ze4qegnFGhxIXO37hPNqMEkG1
k6aPdeZLhgmE+AFxAQtqMWICuzs3BNnecJ/uNK5y3A8WX4OSVaUfaZLs4GYZlix/
Y2RnH5N8po2pobNVE7q2sphRrmwvM7E+11+TouBowSX4iLDc9lM96sLBEWlHzFc2
Suw7plqSawcXxQNMocn7z1zvj9Fe/XnZmtFwJ95oBSFmCT03KhI=
=AfQh
-----END PGP SIGNATURE-----

--------------kVOsUzBXHZFcWeGT44amnMt4--
