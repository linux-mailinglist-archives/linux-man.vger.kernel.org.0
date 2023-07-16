Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 102FC754D08
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 03:32:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbjGPBcI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 21:32:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGPBcH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 21:32:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C86DEB3
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 18:32:05 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5E52160B9B
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 01:32:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33D4AC433C7;
        Sun, 16 Jul 2023 01:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689471124;
        bh=TpR9x8oYBpPn7z9jLqu2ven/v7V2KLYNdfTjEwdfYAU=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=VF1uPYzoKiyz9APwUecbgB7JHwvA+qJJEHBCitTFIlCoa4AZCR+nLX0KOSpB6opNi
         IFDV0UoWs/cB9X9kqwCSvCPtrsMH+gmZ2Hx/+VCH/IHkxHxfQmwbLXWzppuI58jhBo
         XJG5IhnkNiSkB/xHmCf+6HBJ4GcRytu5PJDoZQcITw1AZc4yItSWbVkQQU/Z+twZsv
         Bt1KcUMTzgdnxZSRoahwIGdK7Oh2DtGEFEZbkRl/hnRqFVuU2AS05n4Oa+t5iRynre
         vZM4lXpEAgu4DNWIZckLRKU3Se0zbAzCsPASyp6iwsqxfbZGBR2HqhhqQBIN1H4Fpi
         3DWLFJNlhhW+A==
Message-ID: <567cd883-412f-6b23-92c6-e7ea51fd7ebd@kernel.org>
Date:   Sun, 16 Jul 2023 03:31:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] recv.2: msg_iovec / MSG_ERRQUEUE / -v
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <CAP0H_AHtBCVaj2KM+DhHAoJrM4MW+vQhMEH0UHEa_UiMUzW03g@mail.gmail.com>
 <d33c2eee-8be0-6a00-9ffe-239cc41c6242@kernel.org>
 <20230715195934.yigz5fz6ulkxktaa@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230715195934.yigz5fz6ulkxktaa@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------umnUCYE9SW6lZoXSkuK5Pk2v"
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URI_DOTEDU autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------umnUCYE9SW6lZoXSkuK5Pk2v
Content-Type: multipart/mixed; boundary="------------BjsXU0KN1k0UoIXj4vbr7KGY";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <567cd883-412f-6b23-92c6-e7ea51fd7ebd@kernel.org>
Subject: Re: [PATCH] recv.2: msg_iovec / MSG_ERRQUEUE / -v
References: <CAP0H_AHtBCVaj2KM+DhHAoJrM4MW+vQhMEH0UHEa_UiMUzW03g@mail.gmail.com>
 <d33c2eee-8be0-6a00-9ffe-239cc41c6242@kernel.org>
 <20230715195934.yigz5fz6ulkxktaa@illithid>
In-Reply-To: <20230715195934.yigz5fz6ulkxktaa@illithid>

--------------BjsXU0KN1k0UoIXj4vbr7KGY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

[CC -=3D Rob, to not noise him too much]

Hi Branden,

On 2023-07-15 21:59, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-07-15T18:34:59+0200, Alejandro Colomar wrote:
>>> From 830a1b1233eb69bd8a4a64296581d094fb0edc46 Mon Sep 17 00:00:00 200=
1
>>> From: rokkbert <rokkbert@gmail.com>
>>
>> [...]
>>
>>> +.BR MSG_ERRQUEUE " (" recvmsg "() only; since Linux 2.2)"
>>
>> I believe it should be recvmsg()-only, since it's a compound
>> adjective.  Branden, can you please confirm if I'm right?
>=20
> It's a little difficult to answer this because this two-word phrase doe=
s
> not exist within a sentence.

But can that construct be anything other than a compound=20
>=20
> Online authorities suggest that the hyphen should be omitted in most
> cases, and don't call out "only" as an exception (unlike "based").
>=20
> https://www.grammarbook.com/punctuation/hyphens.asp

[criticizing that link]

+ Examples:
+ an off-campus apartment
+ state-of-the-art design
+=20
+ When a compound adjective follows a noun, a hyphen is usually not neces=
sary.
+=20
+ Example: The apartment is off campus.

What?  "is" is a verb.  The compound adjective follows a verb, not a noun=
=2E
Or does it mean after in the sense that anything can come in between, as
long as it's the noun which it modifies and it has come before the
adjective?  Is that a valid use of the word "follows"?  I'm not native,
but that sounds, ughh.


BTW, that's the only case where it says to not use hyphens, and since by
being alone it's necessarily not following a noun, I'd say it doesn't fal=
l
in this rule, and so a hyphen would be deserved.

> http://www.mit.edu/course/21/21.guide/hyphen.htm
> https://grammarist.com/grammar/hyphens/

I don't see reasons to avoid it in the links above.

So, I'm tending to conclude that it's necessary, or at least useful or
tasteful.  Please quote the relevant parts if you disagree.

>=20
> In the man page in question, what we have is a sort of heading
> (typographically, a paragraph tag), with some annotations on it, not a
> complete sentence.  Adding the hyphen doesn't clarify anything in this
> case, so I would omit it.
>=20
> I did some web searches to try to find analogous examples but I kept
> running into exhibits of use from sources that I don't consider to be o=
f
> generally high reliability in the practice of standard grammar, such as=

> commercial advertising and job postings at the retail level.
>=20
> On the broader subject of marking up these annotations, and looking at
> existing Linux man-pages practice, I perceive a possible need for
> further guidance in man-pages(7).  So here's a straw-man patch for your=

> consideration.
>=20
> commit 43b89c2304552b18c9a9ea02bca05ffd94d6518c (HEAD -> master)
> Author: G. Branden Robinson <g.branden.robinson@gmail.com>
> Date:   Sat Jul 15 14:54:32 2023 -0500
>=20
>     man-pages(7): Add attributive annotation advice.
>=20
>     Prompted-by: Alejandro Colomar <alx@kernel.org>

We use Reported-by: (mostly for bug fixes), Suggested-by: (for features),=

or when none fits, just Cc:.

>     Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

LGTM.  Please send a patch.

Thanks!
Alex

>=20
> diff --git a/man7/man-pages.7 b/man7/man-pages.7
> index d63f2d8f2..aa39dbfd2 100644
> --- a/man7/man-pages.7
> +++ b/man7/man-pages.7
> @@ -255,6 +255,13 @@ .SS Sections within a manual page
>  Including version information is especially useful to users
>  who are constrained to using older kernel or C library versions
>  (which is typical in embedded systems, for example).
> +.IP
> +When an aspect of an interface requires multiple annotations,
> +such as an applicable architecture,
> +data type,
> +or indication of read-only status,
> +include these before the version information and separate them
> +with semicolons.
>  .TP
>  .B OPTIONS
>  A description of the command-line options accepted by a
>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------BjsXU0KN1k0UoIXj4vbr7KGY--

--------------umnUCYE9SW6lZoXSkuK5Pk2v
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSzSIoACgkQnowa+77/
2zKgKRAAp7Oeea1e+eSg6d+gZnYa87WUjqQfDEOrxnlzLT7EQKPYiwDiEjkBF3r6
QOewlar6GmHC+6yG0kCXF7fdYE7juAD3vJm1+y5FBcoOFvk5yyjOnbqWA0gst+OF
wV6tlTKtdtKj3dyKWoH3wZGm7QnT4oRaWQW8Iscv+NOkKNl6kR/xYF/2cCynAi1E
jg8JBz1XVb8nHX2wMsmYak82c50Npfq5ifH3f+OCcXxyYJOaGE8w7R1hATSPfShP
p6rZtQait7T1eDBYlZSHJAg5gGySEUYdhkvo1ilWuTXv4C7cXzJCCHLC3IWXp3i5
Ewa7XAyRKCMjjAJP5Iitau0HFHfIsAdz91tuNmLzHm1oo8obUQ4mZADVYA/8X2km
QdjB03xvsF8zFkRU8C9WxkfKku9tuJfyzxJt94k9Vtrr7PQ/ww4x1bkopIlnRJ4s
M8JDRQ7nh6m82zq831aHgn+W+fi/Bqrj3gSlbFF/Ltjf2lLVYTxE5F/1Sllk/Esw
tIQdN9UPVdVQBG7oLD+L08TSYSoAGoB552mm3/GYvotT3a4uBW7Zj1hhTqrHUCaX
8DKMmvc6SQE3bh7sJ8v5y4Wy2x9LqPDU2R+UlCnF/55sZnWKcASwf9+VNCZsDrjB
xasjq5N84fUTU9zC3nZhxyYdgqRAqcULs4j1+fN0YYHj8uW/ukg=
=QqfL
-----END PGP SIGNATURE-----

--------------umnUCYE9SW6lZoXSkuK5Pk2v--
