Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FF0976FFE3
	for <lists+linux-man@lfdr.de>; Fri,  4 Aug 2023 14:04:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229537AbjHDMET (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Aug 2023 08:04:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbjHDMES (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Aug 2023 08:04:18 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B8D3B1
        for <linux-man@vger.kernel.org>; Fri,  4 Aug 2023 05:04:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 20B8261FB8
        for <linux-man@vger.kernel.org>; Fri,  4 Aug 2023 12:04:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C86E3C433C8;
        Fri,  4 Aug 2023 12:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691150656;
        bh=FsdWZT8Qq8+W43yFcl8BNOG3mZI0smby6NTaoCsZKjU=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=GNra3CAvxA7bY/cEPv0OBEKRDIRaz/uCxqU5VSlcIzBcKjWFTxLM41hK+OUFBhyzD
         0vte8Zdf6wF/vSXvMtGMnpmj+1Pz+O1x88zRysgKjIAsPqRM/0O2YjOPyKQMnY9a3Q
         asa+LQKSu942yQW1+MgJHaof7/mEFK0yMHrKamQCCkAANw5Pds48UjMLNzG50hnGe8
         GBEs818zu1AY9XbGuEhVJZ38y0xK3de+fyHPoZFcON99i5NNGsBt138MHCVCdmqf24
         kMejAFEPtCWkLg6JLE+/ZY/ut9DjRSy7wEsy8drQPceg098K+g0zw0NwvOv9P8PA4V
         Bt6kRwvz8PheQ==
Message-ID: <309fb0c2-46e2-9caf-c9c5-13111603ac1f@kernel.org>
Date:   Fri, 4 Aug 2023 14:03:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: man-pages-6.05.01 released
To:     Luna Jernberg <droidbittin@gmail.com>,
        andyrtr <andyrtr@archlinux.org>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <9d2898a0-239a-1bc7-4929-aa042f727ff4@kernel.org>
 <b1f2b859-d223-eb90-994b-8741ab7af087@kernel.org>
 <CADo9pHjqNx9_DspLB2sx3pDRJv-vqO8s7PJYNk5LoQLXhvwTxQ@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CADo9pHjqNx9_DspLB2sx3pDRJv-vqO8s7PJYNk5LoQLXhvwTxQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XXRCjc3ztxutKRLPK5OCeezl"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------XXRCjc3ztxutKRLPK5OCeezl
Content-Type: multipart/mixed; boundary="------------WuauA5xbDqFHmcUbKSmBccD1";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Luna Jernberg <droidbittin@gmail.com>, andyrtr <andyrtr@archlinux.org>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <309fb0c2-46e2-9caf-c9c5-13111603ac1f@kernel.org>
Subject: Re: man-pages-6.05.01 released
References: <9d2898a0-239a-1bc7-4929-aa042f727ff4@kernel.org>
 <b1f2b859-d223-eb90-994b-8741ab7af087@kernel.org>
 <CADo9pHjqNx9_DspLB2sx3pDRJv-vqO8s7PJYNk5LoQLXhvwTxQ@mail.gmail.com>
In-Reply-To: <CADo9pHjqNx9_DspLB2sx3pDRJv-vqO8s7PJYNk5LoQLXhvwTxQ@mail.gmail.com>

--------------WuauA5xbDqFHmcUbKSmBccD1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Luna!

On 2023-08-04 05:40, Luna Jernberg wrote:
> Hello!
>=20
> Here comes and updated PKGBUILD for Arch Linux, sorry it took a while,
> was watching Fedora Flock 2023 yesterday

Nice!  :)

Out of curiosity, did you notice any issues while packaging 6.05? (and 6.=
04?)

Cheers,
Alex

>=20
> Den tors 3 aug. 2023 kl 00:32 skrev Alejandro Colomar <alx@kernel.org>:=

>>
>> Gidday!
>>
>> On 2023-08-01 15:19, Alejandro Colomar wrote:
>>> Gidday!
>>>
>>> I'm proud to announce:
>>>
>>>       man-pages-6.05 - manual pages for GNU/Linux
>>>
>>> The release tarball is already available at <kernel.org>
>>>
>>> Tarball download:
>>>       <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/>
>>> Git repository:
>>>       <https://git.kernel.org/cgit/docs/man-pages/man-pages.git/>
>>
>> There was a small problem while packaging for Debian.  quilt(1)
>> produces a .pc/ dir in the root of the repository, and the patches
>> stored in there confuse the build system to try to lint those patches
>> as if they were manual pages.  If you successfully packaged 6.05
>> without noticing this issue, you can safely ignore this bugfix
>> release.  If you noticed the issue, or haven't yet started, I suggest
>> you package 6.05.01.
>>
>> Changes since man-pages-6.05:
>>
>> man-pages-6.05.01:
>>
>> -  Build system:
>>    -  Ignore dot-dirs within $MANDIR
>>
>>
>> Cheers,
>> Alex
>>
>> --
>> <http://www.alejandro-colomar.es/>
>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>>

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------WuauA5xbDqFHmcUbKSmBccD1--

--------------XXRCjc3ztxutKRLPK5OCeezl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTM6SUACgkQnowa+77/
2zIE2RAAoXwJk4esfHTKOETctMkoWUnmg+4MIJ/hoCCbxGNsh1gOa8oaGIqM2n/C
/WvAbuNETdUoHt5W4mRjMjEnttmZIVc2mXrIDigOalUzk23TENX4vAxkWZWFaIYc
WMbVBjFacHz71inSBS/IDh0H3TqRABPvuhqaAnyElrxbaMGXKhNXR29SAKSzWl75
KJvA29kJRs+ml5IKQxGZuDGi/jhc6A5DQ2MprmYtuOSSQp0TtH05IO4NZrLDcNLf
biH7JQRpOHM6qI0hc3D5asspKXnpE+Y2LLPtpRMMb1EK/fkjwyBYBrJKxgk2UUIU
7d9eZ3SGghyx7tKbwwacVQ05T7+RNyyrp8c8V+uuKYYSb3YiRPEWekAlTO+azOJn
VdgCS8RDndfpbguZxUlrCRQwoMCcdCrLPsoogE7i0cpWA+O6sx5MVoIHSPA5Mb6B
kxsI5rj4o/u+ekLGE1rt49jF2P3kevsvCK1Rcj6JdhJkjyhYjaR38xNxsxiVvnBe
w2ggZe3ezoyqbQTEEh+yFTJ28ij8AO88upkVdxCCmN3v0ZUBUxn7h3jNXXDL7Ndf
kJTmmGPL2LYahK5Ry6+YRIRksO/MHOjmaDnL4naxLYRc309Z8FsEqZt0/3uwlNEa
99MCpkjFUEXz6Xy+uS9w7N4Hl5XM0vrEVf8UF72kMlwV6bBpUrk=
=JN0i
-----END PGP SIGNATURE-----

--------------XXRCjc3ztxutKRLPK5OCeezl--
