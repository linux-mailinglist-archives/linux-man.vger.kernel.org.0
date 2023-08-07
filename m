Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C601F771C86
	for <lists+linux-man@lfdr.de>; Mon,  7 Aug 2023 10:45:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229581AbjHGIpe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Aug 2023 04:45:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbjHGIpe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Aug 2023 04:45:34 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F253992
        for <linux-man@vger.kernel.org>; Mon,  7 Aug 2023 01:45:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7CD7B61666
        for <linux-man@vger.kernel.org>; Mon,  7 Aug 2023 08:45:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DAAFC433C8;
        Mon,  7 Aug 2023 08:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691397931;
        bh=zwr/u1PShJ24X2uBExDTskX9aRUBSKk6Ug7CX3w8x6I=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=SimP5IkCdOLH9tnATuGCP4jg5CwFPCdtpLofsrCNIk4VTwJt714MmeMQ3tVdqoDom
         43v4h6JGnCIe1Y36kF4pXLjA+ypAJyouOGOtChWZVJDPEP1XfNOMysStYxX2+pNFEE
         UEJJIRJ99UsMdtGsZN6FqjfIYw5l+Gv10+mnyeqtPwrECGzmHJfQOgTJoa9JTzC7+z
         lWH2/rS6JU0BkvdiwUEZljEQP/Ro7ygHAa854dUTXVMjfQ1oN6Bz0EWLn4WvKJT5cK
         +h6eEhoxaOXmOPQAC1K+FE/Rb/SkQZCi/BTa752lMAvb5rhA5ZWRhw+mmvYhHFwwrS
         8Jbw/4KrIcwYg==
Message-ID: <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org>
Date:   Mon, 7 Aug 2023 10:45:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-US
To:     Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org,
        Deri <deri@chuzzlewit.myzen.co.uk>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fkUqnjZtXg3FWdmaCcv0TG5A"
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
--------------fkUqnjZtXg3FWdmaCcv0TG5A
Content-Type: multipart/mixed; boundary="------------gWGg5eJ5aXhwjiBGSjJfNGMN";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org,
 Deri <deri@chuzzlewit.myzen.co.uk>
Message-ID: <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
In-Reply-To: <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>

--------------gWGg5eJ5aXhwjiBGSjJfNGMN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian, Deri,

On 2023-08-07 04:46, Brian Inglis wrote:
> Hi Alex,
>=20
> I noticed there appears to be no 6.05/.01 pdf book available yet.
> Are there build issues?

Yup.

$ pwd
/home/alx/src/linux/man-pages/man-pages/6.04/scripts/LinuxManBook
$ ./BuildLinuxMan.pl  ../../
[...]
Failed to open 'DESC'


>=20
> When I run the script/LinuxManBook/BuildLinuxMan.pl, after applying the=
 gropdf=20
> patch, manually in the build dir, I get a pdf, but without any man page=
 footers.

Hmm, that's weird.  After applying your patch, It works fine for me.
I do see the page footers.  However, I have old builds of groff in my
system, which I haven't cleaned up, so maybe they interfere positively
to that outcome.  Maybe from a clean installation of Debian Sid I
wouldn't be able to reproduce that.

Nevertheless, now I remember Deri told me he hardcoded a lot of stuff
for 1.22.4 which should be removed after the release of 1.23.0, so it
seems that the time has come to chop a lot of stuff from there.

Deri, would you mind simplifying the scripts assuming a Build-dep of
groff(>=3D1.23.0)?

>=20
> Are there any other scripts which need to be run and/or groff commands =
or data=20
> which need to be supplied?

No.  It's just:

$ cd scripts/LinuxManBook/
$ ./BuildLinuxMan.pl ../../

>=20
> It would be nice to see this eventually added to your RELEASE doc, and =
maybe=20
> also to the make scripts.

Yes.  I first want to put it in the Makefiles, and then add it to
INSTALL.  Then something to RELEASE.  But I first want to simplify
the script so I can understand it.

Cheers,
Alex

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------gWGg5eJ5aXhwjiBGSjJfNGMN--

--------------fkUqnjZtXg3FWdmaCcv0TG5A
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTQryIACgkQnowa+77/
2zJSDxAApsMt/6KFuCqPcWxA9N8LEUWtb1KEZkgkcaGvQ0Iu2HWktPX70Kna8fhk
Uedd0hx3NWhYUq7/Gyoq8M3DJHexFp9t0CW6P8ECkz35xkIdTarGY9vOcvqpW5Ka
aV6RGv0yuGPnCRyt6uhCktE16RmVu1WbHhpcPDnI0DA2OLaYcNusGYh2UAsKBI2b
mgnj7XvlCJSTBv1yyWjTqrpv4MW6/1724Y+4U/j1qoDGiucjMjM2vkkuKp0mbRJW
1EV/xvlnw9sLoRMeG6/4dImFUbrYynBtQBT3IJMB7JlW4+ohrgF73HPvxjYkSQ5v
HKw1oTtAHaWeJnPYKj2gtlemgA0EZxkYH3w7A/L9NR/UEO7N2u+PERMkbplw6SaR
e+tt/TsL8winV4dWNGrTQAvnzREoiTxKLqmmF2dKnVH4PcABEto+dkaBrNsxuWXm
s+33pGu6mcXPDEXjunggW4WfNfGrk3kpFYo6upZAFofKE76PZrCVQLkLoZOV1tjx
oi8Soate2Yh9TB8nvUTune8+b4MiPIn9/AL2L8MK8/TbBW/7KjTkFDUq3N2cv7my
r6qFYBOKOzabOP0q4yW2D03HC44B8ABB8jrNxcjjl6bWJDKYqg2tquEATNM3sG31
PIP1MdKdnT1ftBIfLuGn1XnPOL1xYNI5cOehN3JGXqDaBlgLBXs=
=Nvfm
-----END PGP SIGNATURE-----

--------------fkUqnjZtXg3FWdmaCcv0TG5A--
