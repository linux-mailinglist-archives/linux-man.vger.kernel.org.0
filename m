Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69D3276865B
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 18:15:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229483AbjG3QO7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 12:14:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjG3QO6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 12:14:58 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61CFD1701
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 09:14:57 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EA3B760C86
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 16:14:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBCB2C433C8;
        Sun, 30 Jul 2023 16:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690733696;
        bh=tB8op/pajOcd2LPVYwcUTwQ57Kbeaue1SRbTphmi64k=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=TmwUNHI73PGS44MtO6OajiH7FuMLGlVbizznLCt0XNOzrAJEkbUBeQJv9zJsTMclz
         Uh2fOaxQceubtPycZamlexw74ymJRK/1ZHm/yP5NxVn8pWNOkequwc6am8e1yxm9fY
         kJt/cpJLATs82R8MkUYpxC+tXDGXqVvDXV8Mq+E4yQ8QM9PcsRnz2vctHGKK0PS6K/
         SAP0OPwG2MOj8owMzUc9ZMcK+Iz9xPjhRC9uNi7D7D+mxreEY41H3W+yVh7T8zr4zv
         cGWThvqbAr3WIaYO7sF9BY1yremPf40kMr+V25ehKD+i9EzZa73jdYM5qQWxyY90gT
         flxA11jklwmOQ==
Message-ID: <62c5ebd9-534d-a85a-0ce3-4f3b4007130a@kernel.org>
Date:   Sun, 30 Jul 2023 18:14:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Spaces in synopses of commands (was: [PATCH v3] time.1: ffix)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
 <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
 <20230730161304.ywc7jyz7hlbjqpsd@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230730161304.ywc7jyz7hlbjqpsd@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AuSJ75RIjv2k00qxeCnoaC3w"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------AuSJ75RIjv2k00qxeCnoaC3w
Content-Type: multipart/mixed; boundary="------------u1Uft21imRUl0500s386RdFG";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <62c5ebd9-534d-a85a-0ce3-4f3b4007130a@kernel.org>
Subject: Re: Spaces in synopses of commands (was: [PATCH v3] time.1: ffix)
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
 <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
 <20230730161304.ywc7jyz7hlbjqpsd@illithid>
In-Reply-To: <20230730161304.ywc7jyz7hlbjqpsd@illithid>

--------------u1Uft21imRUl0500s386RdFG
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-30 18:13, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-07-30T17:49:28+0200, Alejandro Colomar wrote:
>> I agree that having a space between an option and its argument improve=
s
>> readability.  However, between a positional argument and the ellipsis
>> that marks that it can appear multiple times, I don't think the same
>> reasoning applies; at least not so obviously.
>>
>> I'm referring to  [file ...] vs  [file...].
>=20
> Oh.  The point of this is that the arguments (operands in this case)
> remain whitespace-delimited, where it might not be the case for a
> repeatable single-letter option.
>=20
> foobar [-adX] [-v...] file ...
> foobar [-h | --help]
>=20
>   -v...  Be more verbose.  The option letter can be repeated, increasin=
g
>          the verbosity level.
>=20
> "[-v ...]" would imply that only "-v -v -v" is allowed, instead of
> "-vvv".
>=20
> I think this is a matter of achieving an accurate and unambiguous
> synopsis grammar.

Thanks; that kind of objective reasoning is what I wanted.  Would you
mind stating it in the commit message for posterity?  :-)

Cheers,
Alex

>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------u1Uft21imRUl0500s386RdFG--

--------------AuSJ75RIjv2k00qxeCnoaC3w
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTGjH0ACgkQnowa+77/
2zJddQ//b8qiiOF5/gT1b6/H6iUeg+iF9AVgv7kALC52d8Y3EfuNbeqKwT1aK0+h
UcybhpLiPY/kOtiQubJJZtQyzfuEPvc8LzgtIfYdHKF4brxGRbCj+jLCie0UQFpW
sEijRMpiqrTY3KwtNaPRLhsSB7klq+q705RLgq/u4sD7MiqMcdXGBJrerVu3jhNR
+qqiMtppx0jd+loqI75fekY+b74AHCTTj+YLhw8OqfXJkMPjN8JOu2UfFxgsdTTk
crR7cH/ZW49o8s0RVudjkDsjCLHqP8KL+V4JWJoAzYT/pXNZ94c7Dfq/pZKHGZm5
5HBcmp6+yiUewt4D3bW1e2FhfDqouCHaV1bi49liyT9Dxp8sNsLhDwqleINtdNBb
WtLKYzpP3ZM4uxaQTP8Y9fERdhwtVS9QNMZvvIB/njk2lGacnMXCHqn4AhmM+0MW
judMWhbwf95/SLwMa9gMJnkpXXLcu4LLbfrKcaaTwZXO3jlVUxcYrCC0qfG3CZBp
NSHtF7iC4IB9cPjxsTQ7ZHLqR4RGSdXWLuAB8SMsEnI4wizH0HEA1Xqs/LlZVDmK
3PUy719vLomPCjSpg6gYFO9kxxvVWXGFnk3ZLgHlkU1jh68g907q6Ff6uFJxD3tA
i/kvZoUgXW5ZIiJ9TvXzu57ZvLY1EkxbvhWIa9AJSWM+lG7XrYI=
=Cac1
-----END PGP SIGNATURE-----

--------------AuSJ75RIjv2k00qxeCnoaC3w--
