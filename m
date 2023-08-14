Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCF9677C136
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 22:02:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232314AbjHNUCQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 16:02:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232465AbjHNUCJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 16:02:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B36C173D
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 13:01:59 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EFE20642B8
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 20:01:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C19CC433C7;
        Mon, 14 Aug 2023 20:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692043318;
        bh=UImRTlf8AEImSCAf3MR86AunS15IkOG2jxrQr0bldm0=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=BiGTblR0MbEX3dTDLJQuAb29B6rcInBUxJls9yUg5/e3f8o2QZNnB7vFkfNoZ0dBu
         frc2ajVnmjO4qOORIWCHL2Yz9PLoIUtGS8hZmsHjNXYDaPBBsHk9UQVyKSxOgF5k8M
         fFNg6704TN8ytJcvaoY6v3zCQwCNFwquMH+umIS4tfS9wTVGZ7z1eqz3wtJv/pdSap
         5aXQvJTX0gcTyuMILXTeAHywljly7qvvIOCG8cqWnDBPrX+wimqih9jRaftvzL+8TO
         H8tat8xQSm9VORAWVslhF/eDU+U2fBhB8ACVVyxR2kRLcgW9GVGUeHkq3lWpP1pOhy
         rOJotOFdwK3QA==
Message-ID: <8611cdd7-c2a1-1a19-52ec-0478f75d68a6@kernel.org>
Date:   Mon, 14 Aug 2023 22:01:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Deri <deri@chuzzlewit.myzen.co.uk>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Brian.Inglis@shaw.ca
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <3258129.44csPzL39Z@pip> <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
 <21985157.EfDdHjke4D@pip> <04e326c5-1bfa-357f-cce1-d3315615fe86@kernel.org>
Organization: Linux
In-Reply-To: <04e326c5-1bfa-357f-cce1-d3315615fe86@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cuxnQJZRZX31fdhgMFCYv06I"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------cuxnQJZRZX31fdhgMFCYv06I
Content-Type: multipart/mixed; boundary="------------cROGYMLxFoF8u6zsoN56OiBT";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Brian.Inglis@shaw.ca
Message-ID: <8611cdd7-c2a1-1a19-52ec-0478f75d68a6@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <3258129.44csPzL39Z@pip> <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
 <21985157.EfDdHjke4D@pip> <04e326c5-1bfa-357f-cce1-d3315615fe86@kernel.org>
In-Reply-To: <04e326c5-1bfa-357f-cce1-d3315615fe86@kernel.org>

--------------cROGYMLxFoF8u6zsoN56OiBT
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-14 19:37, Alejandro Colomar wrote:
>=20
>> Another change which would need to be accepted is=20
>> to allow a fourth parameter to .MR which is the destination name. Norm=
ally the=20
>> name of the destination is derived from the first two parameters conca=
tenated=20
>> with "_", but if the name part of the .MR call to the man page include=
s non-
>> ascii characters (such as ".MR my\-lovely\-page 7 ,") then it needs to=
 provide=20
>> a "clean" destination name.

I just re-read this, and am confused.  '\-' is an ASCII character, isn't =
it?
In fact, all of the Linux man-pages pathnames are composed exclusively of=
 ASCII
characters, aren't they?

>=20
> Is this really needed?  Can't gropdf just translate them internally?  S=
ay, do
> unconditionally the equivalent of `| tr - _ |` or something like that.
>=20
> [...]

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------cROGYMLxFoF8u6zsoN56OiBT--

--------------cuxnQJZRZX31fdhgMFCYv06I
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTaiCoACgkQnowa+77/
2zLj6Q//cr/L81/OSBrbBLj50TQNad3SLPM4LJ01dNvU8I7HJDL4OgiQTaGKzcB7
lfsKuPMC1h7lYzU6MpdR4vaqw57FFAYdtnRxSCqxqxPVO/aOZOm3OmUKBVj4ACUL
Wb4x5YZ9+nwPAmZZjtm44zXlpra6eUrGnNPyJRFKYxRDPuNTabc5JFJFN2M67Bli
Vm+XsSr+N1dsOXa4fpUXq5i9xgSp+GZu0jcxoX/AAOkHaF2XICsTcyg/4vPrpWjt
4n0rLKugJwvv+YcbAbrW38QNCXmmj9lrKrOIQ0dqY+HZKJzlF5pkR+fhz6c0zcGr
Uy7lbmdvoQ2AD6IsXvOiyVhya/MEBktjVmfYfcsih8CzcOlGfx5zKoFFT5ZTzDHu
BdR4Nk6N6H6cGSCn6eTYFpZiycnS2Y8JzZUW9FM+wJap08wd/n0STNqZ26d4G7MN
SfiaZIueZwLIyJFUi7wptFtvB8eum9/gYiaBiMjo5dW0glsW/6RpUw9jCyBncCAn
6BRHbaOimar4a88fQNMqxUWTRRxjVRZmUuhXvtzHRUbFT6cOSIH8bymBYGQ/vIxd
CiuAulqLxgPZKpit3yf6WV1FTe+vngRiDuvSDGsDPjAc6wVejMve4gN7PzzAuLdm
cTDjNWi7RxfmZPvrNOXaN8O03EiMuhaeCet740QbmCfeX6Uum3o=
=cU51
-----END PGP SIGNATURE-----

--------------cuxnQJZRZX31fdhgMFCYv06I--
