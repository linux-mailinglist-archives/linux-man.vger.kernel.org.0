Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C12EB754995
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 17:08:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229780AbjGOPIZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 11:08:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbjGOPIY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 11:08:24 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 137D8114
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 08:08:24 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9CA3D60920
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 15:08:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9AC5C433C8;
        Sat, 15 Jul 2023 15:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689433703;
        bh=6gum+Rc1DY3ZP/xE8VrqZgsYp8uNDYE7vTVnh8fQRHA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=rUEDmC1zEIBkX6lud6YIrfJT+jWrsj+K+6brfw46dlZi+JQQ4V54Vyq/xmIXZ3FSN
         xkHisLfi0FUAw3jRxHGvdfLTD5cXI0Dt5sD1Z9GuoUKaRFO+5huRRCBt1oLDSSZ/Xd
         TdfhUfTDddZWeFvDviFBRFqzNwYyTSj+3dAp9NWKS7YuB/WGeKRrOvIbdfeHs44BwZ
         jU71gJ/ApQ1BglawuhWF4axVgURcqKaWF6+fVs1WYL+gRp03+HERXgXoqqdMgrGcqf
         OdVzuZhKwrWXwF68aU37gnEFq4Ijb7f1czeDXYTqiarVHfhcDF+QFCCYi9gFwYzc8h
         Xk91Z9rlttmYA==
Message-ID: <3d36e6b2-57be-148e-a6fa-d7734279671d@kernel.org>
Date:   Sat, 15 Jul 2023 17:08:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [libc-coord] [PATCH v4] off64_t: prefer off_t for splice, etc.
Content-Language: en-US
To:     Paul Eggert <eggert@cs.ucla.edu>, Sam James <sam@gentoo.org>,
        Rich Felker <dalias@libc.org>, libc-coord@lists.openwall.com,
        linux-man@vger.kernel.org
Cc:     "A . Wilcox" <AWilcox@wilcox-tech.com>,
        Jonathan Wakely <jwakely@redhat.com>,
        libc-alpha@sourceware.org, musl@lists.openwall.com,
        Szabolcs Nagy <nsz@port70.net>, Jakub Wilk <jwilk@jwilk.net>
References: <78b648da-dde7-d331-7384-03214b977e6d@kernel.org>
 <20230709061011.1885809-1-eggert@cs.ucla.edu> <87lefpehgo.fsf@gentoo.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <87lefpehgo.fsf@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XhflMVPF0o2xSn5FCR5wuaVO"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------XhflMVPF0o2xSn5FCR5wuaVO
Content-Type: multipart/mixed; boundary="------------ocCDl6vXARDESUyVnZIzQMU4";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>, Sam James <sam@gentoo.org>,
 Rich Felker <dalias@libc.org>, libc-coord@lists.openwall.com,
 linux-man@vger.kernel.org
Cc: "A . Wilcox" <AWilcox@wilcox-tech.com>,
 Jonathan Wakely <jwakely@redhat.com>, libc-alpha@sourceware.org,
 musl@lists.openwall.com, Szabolcs Nagy <nsz@port70.net>,
 Jakub Wilk <jwilk@jwilk.net>
Message-ID: <3d36e6b2-57be-148e-a6fa-d7734279671d@kernel.org>
Subject: Re: [libc-coord] [PATCH v4] off64_t: prefer off_t for splice, etc.
References: <78b648da-dde7-d331-7384-03214b977e6d@kernel.org>
 <20230709061011.1885809-1-eggert@cs.ucla.edu> <87lefpehgo.fsf@gentoo.org>
In-Reply-To: <87lefpehgo.fsf@gentoo.org>

--------------ocCDl6vXARDESUyVnZIzQMU4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Paul, Sam, and Rich,

On 2023-07-09 08:16, Sam James wrote:
>=20
> Paul Eggert <eggert@cs.ucla.edu> writes:
>=20
>> For the few functions that come only in 64-bit off_t flavors,
>> document their APIs as using off_t instead of off64_t,
>> and say also that code should #define _FILE_OFFSET_BITS 64.
>> This documents what user code is (and should be) doing anyway,
>> if it needs to work on traditional x86 and ARM Linux.
>=20
> LGTM and thank you Paul.
>=20
> I haven't checked for other prototypes/examples which need
> changing.

Thanks, I'm going to apply the patch.  Can you please confirm if I'm
correct in adding the following tags?

    Reported-by: Rich Felker <dalias@libc.org>
    Fixes: 9bebb17e5b57 ("splice.2: Use 'off64_t' instead of 'loff_t'")
    Fixes: 76c5631fb442 ("copy_file_range.2: Document glibc wrapper inste=
ad of kernel syscall")
    Fixes: 5cabfa06b407 ("man-pages 1.68")
    Fixes: 3ca974e3988a ("New page for sync_file_range(2), new in kernel =
2.6.17.")
    Fixes: 9bebb17e5b57 ("sync_file_range.2: Document the architecture-sp=
ecific sync_file_range2() system call")
    Fixes: 79bf8cdcf36a ("Document fopencookie(3), a library function tha=
t allows custom implementation of a stdio stream.")
    Signed-off-by: Paul Eggert <eggert@cs.ucla.edu>
    Reviewed-by: Sam James <sam@gentoo.org>
    Cc: Jonathan Wakely <jwakely@redhat.com>
    Cc: Szabolcs Nagy <nsz@port70.net>
    Cc: Jakub Wilk <jwilk@jwilk.net>
    Cc: A. Wilcox <AWilcox@wilcox-tech.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>


BTW, Rich, please note the commits that this fixes: most of them are
the initial commit that adds a page, which means that the function
had always been documented with off64_t in the "spec".  Only splice(2)
and copy_file_range(2) have been adjusted afterwards, and in a manner
to be consistent with the rest of the pages, so I can only conclude
that we didn't break the spec, but rather fixed it.

Nevertheless, I'm sorry that it caused any problems to musl, and I'm
happy that you reported them and so we can now improve the pages.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------ocCDl6vXARDESUyVnZIzQMU4--

--------------XhflMVPF0o2xSn5FCR5wuaVO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSytmIACgkQnowa+77/
2zKWVQ/+IhwGFX6RRdAS+k0StYfOBhJek5d5uRW+4dfpKkYiQcsgaQt71VMXGXtL
gnD8tiFpPujPvpjpSRD0R/j+zbekIzs3DKtf29S3MCtZ30C1V75TBqtZR5qdWLCj
a9k0H9P8mc5CfbMucapi2uhbXNBj8BSM/HCVrHZdP6Aqs1wBogNqJREdXn5WDxWn
AnjbLMsrUP21901agDoKrgINpUdwYupI1nfSPhcY0fTvWEuBXZMhoyNTpZengqAa
XKdNz/SCf8myOwoIWsBBzQU9yChwNzfjydl2/YIX2q/elFCTdm6Vb6Wrp3DI9ofU
vTHSaqLfaf/gjyD1hF+7N35poiXd1BcHC5HqGyx9GWdDIcshbB8Xv3EsMd5k1+NB
2bxTmZrgeXKKseCMRBQe36aconv3vxdoqsL1hgkzK+s7rnpGyFKaRlwDdVFpMqHS
aR+hpX7q3vum4qhdWfG5CG66N/cBCNK8l0KhA/kRThAtRrkn5BzSBFtIPfvytjrl
mkogpl2OnvnMYSXeBh3XnmZjdaoO/iPz+qcUiABo98lb4S25apJ4VSQARBE1S0V4
2GOdaq/Kc+EyhZ0ROvN1kse+D+KyAAxWw8d8nr6mxJn77joUJfvXBDXLTkR4Kfsa
5xtNAOd0eg2o080o0prvnx8W0c8LbykEA2PNVIo8XzQyGb8gK4I=
=dlj8
-----END PGP SIGNATURE-----

--------------XhflMVPF0o2xSn5FCR5wuaVO--
