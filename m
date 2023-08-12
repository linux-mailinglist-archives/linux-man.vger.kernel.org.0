Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACE4B77A311
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 23:33:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230063AbjHLVds (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 17:33:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230025AbjHLVdr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 17:33:47 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC1BF10DB
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 14:33:50 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8883562016
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 21:33:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D074C433C8;
        Sat, 12 Aug 2023 21:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691876030;
        bh=Uv79f1j4u+5aUXPE7bFjyHAG8pqvF3koSJvUAYht/lI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=b/XBXdBJ7c4z8n3IzRAgaH40lH+2Nb64vpBK4t6RI+I2/Ke29wYDZgxOMNALyMPAB
         /+lT6xEvnKdBn37IALT7pF6Jg4yyxIN6iAub/lF6qvcJrgpQWDjmBJS4m5F6dSYLxa
         CNlPjZsQAUqLi+acX15ux0nWxWuQpHPyPrwKJ3jbX4oW4Khf7aw/SgmXYFfh4U9vBN
         Z5jFkel4epniUIlI9i7YcdmyZde367Wn9vnp4horVASWhNB2sVKgn1Tpne3F2h2ivX
         HBTU2K/3OEnjToDzyDn8za3u93uB5qShEAc38cLqFg9xRIWX9nM3fJpwV26sX3T796
         Hr0FQ6a7ts0Hg==
Message-ID: <73a6b3b0-f762-8f09-a578-504e85328580@kernel.org>
Date:   Sat, 12 Aug 2023 23:33:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>, Brian.Inglis@shaw.ca,
        linux-man@vger.kernel.org
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
 <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org> <21975186.EfDdHjke4D@pip>
 <2591b315-4bd0-79d2-af09-05ea3838445d@kernel.org>
 <20230812030423.bnsvm2agzi5oqgo5@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230812030423.bnsvm2agzi5oqgo5@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------UX433KFBrrqfp8vvKey4090P"
X-Spam-Status: No, score=-8.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------UX433KFBrrqfp8vvKey4090P
Content-Type: multipart/mixed; boundary="------------XRKVnNChfjD2yT0MUG3EqXEs";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, Brian.Inglis@shaw.ca,
 linux-man@vger.kernel.org
Message-ID: <73a6b3b0-f762-8f09-a578-504e85328580@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
 <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org> <21975186.EfDdHjke4D@pip>
 <2591b315-4bd0-79d2-af09-05ea3838445d@kernel.org>
 <20230812030423.bnsvm2agzi5oqgo5@illithid>
In-Reply-To: <20230812030423.bnsvm2agzi5oqgo5@illithid>

--------------XRKVnNChfjD2yT0MUG3EqXEs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-12 05:04, G. Branden Robinson wrote:
> At 2023-08-12T01:51:31+0200, Alejandro Colomar wrote:
>> But, I installed groff from git HEAD a moment ago, and I didn't notice=

>> the 5 MiB improvements that you claimed, and the page numbers are
>> wrong, so maybe I'm doing something wrong, or have a non-clean groff
>> installation in place?
>=20
> Deri's working on a branch.
>=20
> https://git.savannah.gnu.org/cgit/groff.git/log/?h=3Dderi-gropdf-ng
>=20

Thanks!  How often do you merge that thing?  I'd like to use that
thing without losing the improvements to troff of git HEAD.

Cheers,
Alex

> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------XRKVnNChfjD2yT0MUG3EqXEs--

--------------UX433KFBrrqfp8vvKey4090P
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTX+roACgkQnowa+77/
2zKwQQ/+OLDP1T6S9JvupVtMFciR0AfGT7RzPGOFoL0usPqxSR8AX8yBTf5DomLS
ELndVRCVQe5Fqv9jWifUb+R8ObKzrahM9rtjjIgonJItQo56g09r4QO7LZfOZRpV
gckdU7O57fLcgXa//Kf3YRBKpsY5F0HooekS5OPa6r2sNVRMzaExG536Z4A0u/Q1
0TggdmBdqB5PweHo2b09E8GabDzVbxNzT0Il66C6mjImnmU59yhQ9KEnok59DGXD
HUzcONhx3uhxeOKJY/533T7wH3bymQ+dfDemd6ixmdTr+wlXWhLfoA7361oDs5eN
D9arCNbps96SlKUL6krXgnPrPJDt7uqkat2cdjOglggWn+Fv3mxwRbyzM4hxe1Jm
1XbCrcFxuTBEkZ9WiCQ9H1CDuzLhHolGTNN50wcj7vVVFXf1BrhJLmYpm/ta2gsz
7YBJJOdVuv8xq/YK7j1zP6ZrX8+6VaQlOvDOLTKETkyoo+DeRs04ai6ic4iiF70h
ID/tIfI/zuDRAnShs0bgDsR4+cmk/u/+zMOUTwSAPlpa1APMKa3dW4TfBvmo1LP9
xvhc/KQckhO8tk7FGGsprTmLcZFJ1sVyAOMN1me1x+Y4v/+2jq/tZxR6Kq50tEsS
uYBRPoPfzUDxzgeeIY1wsg0hsGmaCphqkoSeh5UBh0cEKi2VY6o=
=GMg8
-----END PGP SIGNATURE-----

--------------UX433KFBrrqfp8vvKey4090P--
