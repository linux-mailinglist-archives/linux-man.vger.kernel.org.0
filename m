Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7035876A472
	for <lists+linux-man@lfdr.de>; Tue,  1 Aug 2023 01:03:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229738AbjGaXDn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 19:03:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229662AbjGaXDm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 19:03:42 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21589FB
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 16:03:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B0B9E61349
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 23:03:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A49BC433C8;
        Mon, 31 Jul 2023 23:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690844621;
        bh=MHtS6UHCSRExoiGaGNNGzO8cayCiUgDS4O98zOKe5A8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=onBx5EnIKHWtO+qK3M6vOW1RUn2bMiWdevMavnbKXYM2fI4qkCj9t7ckjD++LyGA0
         2yDAmlly41XG0sdX4IHSzzrG4qmNR4u9Jr6UltFaY46vZw/94uyFSaUgQp85Ir26rX
         XgWuIPXy+1vdW7FblcjhrVsGPulQo2xzQsKYnimc8DUn8XnzZYpmQPOtua3AwPzSOb
         pqeFh9mGD3kxZQ9R21oWjJr80Xdf3U2EYDNHNr2Qf4Run5dXfme+cjNFP8blyJI6rb
         Wk5JAXYO87zqPAizTA4VsnlipQIY8JUA/iP3vJl47aIXvwe7RhKbAwxpSUI2ioPvSE
         HqYZKrN7h82sg==
Message-ID: <a6c65fe9-2126-73aa-7852-cf6d4f9f84b5@kernel.org>
Date:   Tue, 1 Aug 2023 01:03:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: boldface, italics, spaces and ellipses in synopses of commands,
 and *nix history
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>, groff@gnu.org
Cc:     linux-man@vger.kernel.org, Lennart Jablonka <ljabl@ljabl.com>
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
 <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
 <20230730161304.ywc7jyz7hlbjqpsd@illithid>
 <ZMefhujNRqiKVR9a@fluorine.ljabl.com>
 <20230731154535.iqx4zuzztcum6f66@illithid>
 <ZMgAC_-lM62BHKV0@fluorine.ljabl.com>
 <20230731222027.efuv6zetn2fh3fjg@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230731222027.efuv6zetn2fh3fjg@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JUUNZEpQ5ehcoCIlXQNK8KuX"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------JUUNZEpQ5ehcoCIlXQNK8KuX
Content-Type: multipart/mixed; boundary="------------9BWxFfjQLdyxdc0FW1TuWCx0";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>, groff@gnu.org
Cc: linux-man@vger.kernel.org, Lennart Jablonka <ljabl@ljabl.com>
Message-ID: <a6c65fe9-2126-73aa-7852-cf6d4f9f84b5@kernel.org>
Subject: Re: boldface, italics, spaces and ellipses in synopses of commands,
 and *nix history
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
 <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
 <20230730161304.ywc7jyz7hlbjqpsd@illithid>
 <ZMefhujNRqiKVR9a@fluorine.ljabl.com>
 <20230731154535.iqx4zuzztcum6f66@illithid>
 <ZMgAC_-lM62BHKV0@fluorine.ljabl.com>
 <20230731222027.efuv6zetn2fh3fjg@illithid>
In-Reply-To: <20230731222027.efuv6zetn2fh3fjg@illithid>

--------------9BWxFfjQLdyxdc0FW1TuWCx0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-08-01 00:20, G. Branden Robinson wrote:

>>> Thanks for raising this.  The fix was straightforward, and you can
>>> expect it in my next push to groff Git.[9]
>=20
> I may not be willing to die on this hill, but I'm willing to risk being=

> MEDEVACed from it.  It won't matter, if everybody who really cares abou=
t
> mdoc(7) is loyal to mandoc(1) unto death, which seems to approximately
> be the case.
>=20
> My goal is that it not be obvious to the causal reader of a man page
> whether man(7) or mdoc(7) was used to compose it.  So I'm not tolerant
> of gratuitous rendering differences, and in groff 1.23.0 I made changes=

> to both packages to align them better with each other.  I'm happy if
> only an expert man page author can tell without looking at the source.

Function prototypes are the biggest difference, IMO.  I prefer how man(7)=

pages show function prototypes (the type and the variable are formatted
differently).  Though I'll give to mdoc(7) that parentheses and commas in=

roman are nice.

=2E3 pages are easily distinguished in the first screenful of text
without looking at the source, in the SYNOPSIS.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------9BWxFfjQLdyxdc0FW1TuWCx0--

--------------JUUNZEpQ5ehcoCIlXQNK8KuX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTIPcoACgkQnowa+77/
2zJP2Q//S96mKS0aVoGkYMzkQd2fzqZoOkuilJrtPrx4itxgILBDCzPn0ZreUne9
5VWHFXWzdn/ZGcFmi2wN8D1S5oQvOhSDy9KfhcrwAg7GzlohOFxgZmlGfGRLMQor
vfX/8YbxZwkx0QB0OxF/aNrHhg/jX+0dzXpuct4mRYzCTHbD+JTUUtsGBV8MtFtX
ar4TCmg0BSY66Yw3WekMlrKE8uU2f93asJtDaB+fJ6H7ItZs9UIlYgPE6Ad1rcFy
lCG0IbZUOsccfZQLFKLIrJ1F1nL5iVTibC4vZM6bxm9qKUnqYaS6mX9TWZFA8P58
ZSIn6J47RZmtsf/RjowlqPC9raxy37KK2lvx4beFpKwQKirjqsCOU/zkezFo3kVX
hpuHuvP7SdEFRPXTLeXqo/3RYmIBCGaZHxOmwwcZayvkjU+xlJnTTzhYFTkeHFwJ
lRTD3mXpwtbrq0IV0odoHueBWxPtEoTeCB0G9a676fekTd29CIkiSwegOcDSh16P
ajRANYe2NRKBweO+xomcKS4ZWeQTPlupXH5dasm0xSQRleiHvKVEFso1krzvsGej
ZHYNSq8tBI5Viv1fc5Tr1ew0JjyfavFEFSgq/sDWR1G4I3DXzywJu3cpdJ+W9mu0
1AYfn/20rGyVXQgWPZ5vZsx4/gSWsMDLYO8LitINLj3TvVClhSg=
=0JUW
-----END PGP SIGNATURE-----

--------------JUUNZEpQ5ehcoCIlXQNK8KuX--
