Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51A9677A310
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 23:32:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230300AbjHLVcr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 17:32:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229499AbjHLVcr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 17:32:47 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 352021732
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 14:32:50 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C97E762016
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 21:32:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B7F4C433C9;
        Sat, 12 Aug 2023 21:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691875969;
        bh=VMY5Dz7tnFnTGmrZVhelpnNoFWZem0hwXfIbo4Qw/wE=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=gQXfT42byZnlzLym4vlUp4Vk7DexfzT3j6QkRnSL6QQGgmJyBn5OYQKb/3RpO5aap
         SQu2AGzRn2V8SZV3cipGsUeXo1PQbBdDZyEdF1MGX2TimIso7VYW3XyjU83nyE0beH
         SQRkG25FCIniyMwfzApEy2x2OknExoy2GUj2hnmczFea1Pgy1dWe2ZzHr54vms4by0
         DJdN1IyTMRN84VQaPxxFZVVO8XkXrkFbTQHVmOfcNhSXK+FaSaStiNLM6iqIuG05jn
         Yqfa3rzMAkSJ49W5zFObJm44q0BSzWYka1lPdIrbnTcRGt3sxaQwYWNSq19wVk0w2d
         5AUJjUVgKtAmw==
Message-ID: <6e547bb9-d993-da6f-e072-9daba019ea27@kernel.org>
Date:   Sat, 12 Aug 2023 23:32:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org,
        Deri <deri@chuzzlewit.myzen.co.uk>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
 <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org>
 <ab67aa6d-712a-47f0-e694-01592bb72cd1@kernel.org>
 <01d3855b-65dc-8b99-83cf-ebe1f97a2d83@Shaw.ca>
 <ac4a6675-f96a-cf39-f2c9-381d6ce0733b@kernel.org>
 <20230812014809.zhhsz52saqwxbyh4@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230812014809.zhhsz52saqwxbyh4@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Lit9XHoYrNTaR9HdyK3JdCfU"
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,URI_DOTEDU
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Lit9XHoYrNTaR9HdyK3JdCfU
Content-Type: multipart/mixed; boundary="------------S07RK0M7sgwPvYCiNIPfZTwO";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org,
 Deri <deri@chuzzlewit.myzen.co.uk>
Message-ID: <6e547bb9-d993-da6f-e072-9daba019ea27@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
 <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org>
 <ab67aa6d-712a-47f0-e694-01592bb72cd1@kernel.org>
 <01d3855b-65dc-8b99-83cf-ebe1f97a2d83@Shaw.ca>
 <ac4a6675-f96a-cf39-f2c9-381d6ce0733b@kernel.org>
 <20230812014809.zhhsz52saqwxbyh4@illithid>
In-Reply-To: <20230812014809.zhhsz52saqwxbyh4@illithid>

--------------S07RK0M7sgwPvYCiNIPfZTwO
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-08-12 03:48, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-08-12T02:02:49+0200, Alejandro Colomar wrote:
>> On 2023-08-07 18:21, Brian Inglis wrote:
>>>>> $ pwd
>>>>> /home/alx/src/linux/man-pages/man-pages/6.04/scripts/LinuxManBook
>>>>> $ ./BuildLinuxMan.pl  ../../
>>>>> [...]
>>>>> Failed to open 'DESC'
>>>
>>> That annoyingly minimal message provoked the patch submitted.
>>
>> Yeah; it took me some time to find the cause.  The error message
>> doesn't even tell who failed --was it the shell, was it gropdf, was it=

>> troff?--.
>>
>> :)
>=20
> This sort of thing makes me purple with rage and I have tried to purge
> groff of such unhelpful diagnostics--especially those that are uttered
> furtively by programs (or, worse, libraries) that attempt to remain
> anonymous.  Doug McIlroy was telling people to cut this crap out in 198=
6
> (or maybe a decade before that, even) and people _still_ ignore him.
>=20
> https://www.cs.dartmouth.edu/~doug/reader.pdf (p. 9)

Hmm, that was an interesting read.  It explains a few inconsistencies
in the design of UNIX that I didn't understand.  I didn't know pipes
came so late into the timeline.  :)

Cheers,
Alex

>=20
> Much work was done on groff 1.23 to fix this, but I'm not certain all
> such offenders have been rehabilitated.
>=20
> https://savannah.gnu.org/bugs/?52463
>=20
> When you encounter one, strike it with lightning.
>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------S07RK0M7sgwPvYCiNIPfZTwO--

--------------Lit9XHoYrNTaR9HdyK3JdCfU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTX+ncACgkQnowa+77/
2zKt8Q//aoMzoYUxNVvtbS3k38zK+9utuHa6TB9lCHkAhEcJiucJk7kd02OVgNDP
dQnzAjaFsYd/qXybNsnpZP1/UzCE0s0n8TyGUwSuDIp9bW57c80a1LwtEa3CvTPz
St3+NPc4fp42NJF9KSCHiUy2t+xX7GSbETThzHtjCnOolavbT1cC0Dj75fkERh9G
yLLzlmQ2NZdFRaB/xcqPWIHT8TycXXknCA3iEw40VTzGhnmPVN5rtWWy53+aZ7IU
mfAlAPRvWvW/ipvTwgv0Dz147xH0xocFyfwKJMFO6MKp4hhGihJNiOcOGssCBOEv
EpyyK0W5Ujl8ORk4bmfnMWI4bQZJQM2Prnh130Yf9p/113UrU8frS7HDiWNF52os
HrXjB7wNmwPiZFxDhYkf9JDlHNuzjUw7qTRRBIL903dSJLHy2BnO6H0CYEJam63/
wi5NwG7rZUpmsEhNeuRxuF6tpK1M5RIYiHVadz1njZ/uc0hdrnKHeIZPsV5oabqI
eaABUb+0E1FjbuUpXXI+woYAXq8PkvIVGWhoQo+p4Sb5viMt7XcEi6rmyLnXIHcf
BtT0Zue8SjM30uPeII4Z2dAyWfckZACbND5kGQJ/Iw06taYfvjZ166ES3MMaF4sa
QDrPGQBhq9Wpp5+0/6LPRGx7/Dr3CaU5BP8/9G93tPtkUHGqMUo=
=KbSV
-----END PGP SIGNATURE-----

--------------Lit9XHoYrNTaR9HdyK3JdCfU--
