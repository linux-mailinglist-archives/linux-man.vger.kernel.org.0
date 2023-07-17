Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6584756EE5
	for <lists+linux-man@lfdr.de>; Mon, 17 Jul 2023 23:21:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229812AbjGQVVg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Jul 2023 17:21:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbjGQVVQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Jul 2023 17:21:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCA3ECC
        for <linux-man@vger.kernel.org>; Mon, 17 Jul 2023 14:21:14 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 60FD16125D
        for <linux-man@vger.kernel.org>; Mon, 17 Jul 2023 21:21:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40131C433C8;
        Mon, 17 Jul 2023 21:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689628873;
        bh=+BNhnF+lfcnL0zYFiGKv/PKX/KREUBjY7nuaYWhZA34=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=VSV8ExNCnB86IwITM6QQEFUw7e9z6ILTUtN4CNP/+14ofkE0W8r5iXWdIDBzSQU/L
         b/z3Dd2TiVaRAngFaHk2zkYUsZ/0NV/oxc3KbMQ98zxkbzRrVNGQOU8bpn+Y1rzkFa
         xYmJgqjpqTxYZz/LkF9PbgRWegzyhzXLkL4NMUt0bc+r8/ySdVea+0yM7AdxUW+tVl
         VOYkKnohZFZSonxkzT9YfkYG492jtf47aPpd9yF0k7kmVa1Xjihs2QjL5i1ys9QJ/J
         eZJXQ92X02P8V1m358M4Wefgdni+7520dZWaJntSNBhK5TH24OzV4aW7yKRFrJgn33
         6NTqyq1gJ3T2w==
Message-ID: <5fc04d32-a094-a4d1-7128-4b603e31ccb8@kernel.org>
Date:   Mon, 17 Jul 2023 23:21:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: ffix proposal
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <53f8b39e-aec2-3abc-d2fe-5b437068cd7d@kernel.org>
 <20230717210928.gw2727o5dqpvbksl@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230717210928.gw2727o5dqpvbksl@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------d9MZmIk4Fqt3aHIV5thwgPgT"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------d9MZmIk4Fqt3aHIV5thwgPgT
Content-Type: multipart/mixed; boundary="------------UaaXtgzLs0207cLqn30taOse";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <5fc04d32-a094-a4d1-7128-4b603e31ccb8@kernel.org>
Subject: Re: ffix proposal
References: <53f8b39e-aec2-3abc-d2fe-5b437068cd7d@kernel.org>
 <20230717210928.gw2727o5dqpvbksl@illithid>
In-Reply-To: <20230717210928.gw2727o5dqpvbksl@illithid>

--------------UaaXtgzLs0207cLqn30taOse
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-17 23:09, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-07-17T22:36:28+0200, Alejandro Colomar wrote:
>> Please check if you like this ffix patch.  Things I'm changing:
>>
>> -  Use .RI instead of \f
>>
>> 	Uncontroversial.
>=20
> Right.
>=20
>> -  \%
>>
>> 	I guess this one is uncontroversial to you.  ;)
>=20
> Also right.  :D
>=20
>> -  \:
>>
>> 	To make the previous one not so horrible.
>=20
> Agreed.
>=20
>> -  Reverse what is in italics and what is in roman.
>>
>> 	Path names should go in italics.  This wasn't being done,
>> 	which was a bug.  Now, the variable part is in roman, to
>> 	differentiate from the literal path name.
>=20
> Also a good change.
>=20
>> -  \[dq]
>>
>> 	We need it 'cause of .RI.
>=20
> I think you don't.  \[dq] is only for "neutral" double quotes, as in
> when you really mean U+0022 (in code examples, for instance), and you
> don't mean that here.
>=20
> I would either leave the file name unquoted, and trust the reader to
> figure out that the period at the end of the sentence is not part of th=
e
> file name, or use real quotation marks.

Ahh, right.  I always keep forgetting that.  I guess since I fixed the
italics, I can just remove the quotes.

Thnaks!

>=20
>> +.RI \%\[lq]$LD_PROFILE_OUTPUT /\: $LD_PROFILE .profile \[rq].
>=20
> None of the special characters \(dq, \(aq, \(lq, \(rq, \(oq, and \(cq i=
s
> perfectly portable to historical *roffs.  DWB 3.3 troff supported the
> first two for some output devices but not others.  Version 7 Unix troff=

> didn't support _any_ of them.  ("ASCII ' and " ought to be enough
> quotation marks for anybody," someone at Murray Hill must have said.)
> The good news is that the Linux man-pages project likely does not need
> to target historical *roff implementations.  groff, mandoc, and Heirloo=
m
> Doctools troff support all of these special characters.  (I didn't try
> neatroff or Plan 9 from User Space troff, as they are harder to run in
> my daily development environment.)
>=20
> The only (arguably) live troff implementation I know of that is likely
> to run into trouble with man pages using these special characters is
> that of Solaris 10, which recently had its execution date postponed to
> January 2025[1][2][3].  (Solaris 11 ships groff.)  But how many people
> are going to be viewing Linux man-pages documents on Solaris?
>=20
> Also, it is easy to update any AT&T device-independent troff to support=

> all of these special characters.  groff_font(5) describes how.
>=20
> Regards,
> Branden
>=20
> [1] https://blogs.oracle.com/support/post/extended-support-for-oracle-s=
olaris-10-operating-system
>=20
> [2] The previous EOL date for Solaris 10 was early 2024, and I was
>     planning on dropping support for it in groff 1.24.  I am as certain=

>     as I can be that Oracle made this decision solely to spite me.  :P

Heh, we'll have to live with Paul Eggert's weird pages for a few more
years.

Cheers,
Alex

>=20
> [3] And even if that troff, a descendant of AT&T troff, is technically
>     "live", I'd be surprised if it'd been changed in the past 10 years.=


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------UaaXtgzLs0207cLqn30taOse--

--------------d9MZmIk4Fqt3aHIV5thwgPgT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS1sMAACgkQnowa+77/
2zLqPRAAoHqGrIHubxsRhsMrX0T+b+XdxMugba+GBiCUT0d1jfuWk/vaYPaplivu
Z/VV7vxiBasdUMQkv5pG2G/TWxMF3GvC7KrPYQou1dY1WIX5tcdPovmkuhZ571qm
ntTjtMkoaSXSiHVNrLn8AWS2n5dTZfC+HfUE5twYBLHAZ10pBIt9321EwYPuway4
lwLFSPav7YZn6hDqf909rQaM2OUmItgTVdV9/KKOM5pHRUMUZPcuBKczDTqjmAgE
2JVG+6+RKVKTvocCZtUpYTHTAyumEf/BH5azqAciJ7Tz/xhqy6Ngy2s50SyzV7hV
lVZD8Jas6o9TLrAWjN5KZ1orhZUbFMDXyTCNBGEbwiIe6V1gMGs7YSYVSSePD8t7
SumXygJMw1OKDlDDxoxwhETTZQ2uLxX2xCCsaSk79CjUDVgw+jWcCIRa6KWiFBPu
hhCkEkkaOt2PYjVEnkE77HRp6oSB2YV5vuA81ZuRYni2DT5zjdVPgmuYrWsnPzx7
ll5G6PplVlruAURd0UNOjdoAbrgbdeCLW7/HNFQ/wuyCIY09TGxrrTnuhdCplIOv
5GN/3bQxdeX9lypCIYcF6wHrHZ5hE4CFhNgVZTDXlEC78/isXxlvaeu+QBXWg/dm
LT5L44qmSRYwCvUjpXr6BmE/epuZMv979jrxQNaMNPsUXUKYhyk=
=5KH/
-----END PGP SIGNATURE-----

--------------d9MZmIk4Fqt3aHIV5thwgPgT--
