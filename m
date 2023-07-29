Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 184BA767E92
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 13:17:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231466AbjG2LRs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 07:17:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbjG2LRr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 07:17:47 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C44E3119
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 04:17:46 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5275D60BA9
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 11:17:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F0A6C433C7;
        Sat, 29 Jul 2023 11:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690629465;
        bh=bUwoqdvd/RfkMlt4E1fGvXngvcHMKXu1V3PZRrJauUA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=mkUdT6gUtC4UoX/Jmb8pMW8OErUQMYmSN2vedKipO3Xwezn9uRXCCVpYLJdg4YIM9
         KTQ/jG1qSfZhEmTSDJ840qnr5nFmtAIA6uCiy+3uz0lzW9KXdaQprGc0kTvClOEUSB
         AIm62hQBo0l8AhAG8vfSVY/YqZC4cqxKtZeGZFrEjOqzku8/b7BXRfSC0PB4xyat1n
         Yb1k6VEqEhjuDujSh6stmNTQw3uhdlM3s73ds4nSSt8R2CTfER4QJmZOWUIEgAg6E4
         t6p4XqCM5aN2Z1A711VGEGLj2WEM2fU6//3tXX1Wv/Mtkj7nqEJr+7lvQRm/t/VuUj
         7kYvuVjUnhubw==
Message-ID: <5462849a-c7be-a5c9-d14c-11e8fb8f34de@kernel.org>
Date:   Sat, 29 Jul 2023 13:17:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] string_copying.7: tfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Lennart Jablonka <humm@ljabl.com>, linux-man@vger.kernel.org
References: <ZMQL2bAg5p2no9ir@beryllium>
 <b6ce1d14-528f-cbe9-8117-be684526e36f@kernel.org>
 <20230729095051.755yips2tkv5whph@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230729095051.755yips2tkv5whph@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qBEePHiGnP038l7QhTX6UIf1"
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED,URI_DOTEDU autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------qBEePHiGnP038l7QhTX6UIf1
Content-Type: multipart/mixed; boundary="------------B0e3vYRJ9vtxz0x54I8P6250";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Lennart Jablonka <humm@ljabl.com>, linux-man@vger.kernel.org
Message-ID: <5462849a-c7be-a5c9-d14c-11e8fb8f34de@kernel.org>
Subject: Re: [PATCH] string_copying.7: tfix
References: <ZMQL2bAg5p2no9ir@beryllium>
 <b6ce1d14-528f-cbe9-8117-be684526e36f@kernel.org>
 <20230729095051.755yips2tkv5whph@illithid>
In-Reply-To: <20230729095051.755yips2tkv5whph@illithid>

--------------B0e3vYRJ9vtxz0x54I8P6250
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-29 11:50, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-07-28T23:31:10+0200, Alejandro Colomar wrote:
>> (CC +=3D Branden)
>=20
> I think I just received my grammar prescriptivist's draft notice... ;-)=

>=20
>> On 2023-07-28 20:41, Lennart Jablonka wrote:
>>>  while not duplicating memory
>>> -nor using time to do a copy.
>>> +or using time to do a copy.
>>
>> Is nor incorrect here?  I'm not a native English speaker and would
>> like to understand why it is incorrect.
>=20
> With the humbling caveat that you find me more persuasive than some
> online grammar authorities,

;-)

> the foregoing suggestion is in my view a
> hypercorrection.  The (coordinating) conjunction "nor" is not restricte=
d
> to sentences using "neither".
>=20
> https://newsroom.unl.edu/announce/snr/3511/19686
> https://study.com/learn/lesson/neither-nor-usage-examples-sentences.htm=
l
> https://www.grammarbook.com/blog/effective-writing/using-nor-properly/
>=20
> In the last, attend particularly to section "Using Nor Properly:
> Interchanging with Or".
>=20
> I'm a +0 on this hunk of the patch.  It's correct either way.

I prefer nor in this case.  It sounds better to me.

>=20
>>> -See EXAMPLES for a reference implementation.
>>> +see EXAMPLES for a reference implementation.
>>
>> Ok
>=20
> Strong +1 here.  It is volcanically nonstandard to apply sentence
> capitalization to an independent clause after a semicolon.

Yep; I don't know why I wrote it like that.  Maybe I had initially
written a period; I'll never know.

>=20
>>>  .\" ----- DESCRIPTION :: Functions :: strlcpy(3bsd), strlcat(3bsd) -=
---/
>>>  .TP
>>>  .BR strlcpy (3bsd)
>>> @@ -427,7 +427,7 @@ isn't large enough to hold the copy,
>>>  the resulting character sequence is truncated.
>>>  Since it creates a character sequence,
>>>  it doesn't need to write a terminating null byte.
>>> -It's impossible to distinguish truncation by the result of the call,=

>>> +It's impossible to distinguish truncation by the result of the call
>>>  from a character sequence that just fits the destination buffer;
>>
>> I guess it's ok (to me they both sound good)
>=20
> I think the comma arose there due to good instincts: you have a long
> chain of prepositional (and participial) phrases that do _not_ grow
> strictly narrower in scope as they proceed.
>=20
> Consider:
>=20
> "Due to the dense foliage, it's impossible to distinguish the man in th=
e
> tree growing from the loamy soil laid down in the Cenozoic Era that I
> remember learning about in geology class."
>=20
> This (admittedly goofy) sentence is not difficult to interpret: each
> phrase (after the first, "Due to", which serves as a topicalizer)
> modifies only the preceding one.
>=20
> By contrast, the sentence in this man page is structurally complex and
> therefore challenging to parse.
>=20
> "It's impossible to distinguish
>      (truncation (by the result (of the call))
> from (a character sequence (that just fits
>                                            ([inside] the destination
>                                             buffer))).
>=20
> That's pretty tough sledding.  Only semantic knowledge permits the
> experienced programmer to make sense of it.
>=20
> The use of the comma prompts the reader that an ambiguous parse is
> possible, and that they should pause, as they would in speaking, to
> permit the modifying phrases just uttered to bind to the preceding
> language.  Or, alternatively, the comma (or pause) is a warning that th=
e
> phrase stack is being popped, cueing the reader or listener to attempt
> multiple parses in search of one that seems suitable.
>=20
> That this exhibit took so much meta-analysis to explain is what
> motivates my advice: it would be better to recast the sentence until
> clarity is achieved.

Yep, I also like that comma to simplify parsing.

>=20
>>> -This function copies the input character sequence
>>> -contained in a null-padded wixed-width buffer,
>>> +This function copies the input character sequence,
>>
>> I believe the below is like a parenthetical, which is why I put it
>> between commas; isn't it?  Although your version also looks good.
>>
>>> +contained in a null-padded fixed-width buffer,
>>
>> Ok
>>
>>>  into a destination character sequence.
>=20
> I'm a +0 on this one, too.  To me, it reads equivalently either way.

In this case I prefer the proposed hunk.  In fact, I doubted because
I misread the hunk as doing the inverse of what it really does.

Thanks for your prescriptions!

Cheers,
Alex

>=20
> [duplicates of the foregoing cases snipped]
>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------B0e3vYRJ9vtxz0x54I8P6250--

--------------qBEePHiGnP038l7QhTX6UIf1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTE9VcACgkQnowa+77/
2zKbeg//cYE2t+cHF4hzytkiZp39nXWCDptWigh3s/NN1QwaktdqIXyYiL8WvpSw
kjEvb8Qw4I67byaE/OpbVQPcFExb53qB+MUC9JDrVEFTA2K4awq+d24Z5yyVLd45
uauqN/eFg+uItSUxxHslOT2doSVppxAJRHXmwvJiQn2G1uib1sG6Wj9/550bqMrL
BTCwhyoc9595A4NzkRCed7lfHb5cPPBRkhyiu7+DSsSV7l0TdMK4MqKdiCIaiOQY
YrUnrYibvAZJUMfmgCulEqyNXKnaIKtBdKf2YmiyAHizdk+iHhTbafmOy9msQO20
W7CnAFDYbYWafCiVGRs2V6E3EAWNIDaGnoWFUQMtYySPA8qMVu5TiDxrFDW9B6CO
Dn89eRJ4ChHLARd/vIttRHgRU2bIfuKZ2QezNfmK30Fes3JFWvcbZ/ihHoCOVmzu
qGxsyS2Aj7H0WGRrX72aMkv6B25VvEiV/2tebq6D4wu9KTtYlrM2xMkBMqqZ0/mq
0+We+IDaBvPiHUdU1jRLYco8svlCD6glw66IEMJkvnY7Fa8AzbbIClIAVDb3Bwas
Dh8eJddwNFP2wSyp6U+IaC5FX6kCRjs0Zq8qnTyueqxduNMIT+1HtaFocIeyJB7L
1DyJLhuZm3LLYmbRtdXo1iDy8jKAtilHjZz3S/BLM6kN4eIBNd0=
=XoIy
-----END PGP SIGNATURE-----

--------------qBEePHiGnP038l7QhTX6UIf1--
