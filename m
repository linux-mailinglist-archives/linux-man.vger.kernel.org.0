Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A73F276768A
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 21:44:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234757AbjG1Toi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 15:44:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234738AbjG1Toh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 15:44:37 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDFDC423C
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 12:44:34 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 80A2F621E3
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 19:44:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06BF1C433C7;
        Fri, 28 Jul 2023 19:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690573473;
        bh=KeJCxAC9w3BXpwEAVqCWAunoHSIzyaOSX3Fwg/00SMY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=aD3n4kjFDgC/GGnDrX5bBN8iODk/2fqbLismd6bqEZgy4gT/bQB2l3XY5sPDcDhmb
         y9rmG9uuXp4ujFHyH1Y5WQuqBYLmIZPnDrnYH0O78JJC4smZpZ7swE8Eh1o623hT0u
         2U5gP0iuzH6X98tvqxU0RqMMLrP76eOrWeSYmcJamUmteFsqaZb+jYazGoVdp/uy7s
         6EGqJECFuy9Cyxcny4gR2DI/cUoLjf/g77y8BPkN+kn4fxGLBsctXN4NUBBQKrlTxf
         jNBETC1zN502qXtpVBmg3cTQi+Q+jFWVQBWJ+R9N3fiiiu//Moqit5pnQ2ZqztrCaB
         GdoNvba4hk4bw==
Message-ID: <e03c5f2c-a28a-898c-4999-100fd466a09d@kernel.org>
Date:   Fri, 28 Jul 2023 21:44:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: shutdown(2) is underdocumented
Content-Language: en-US
To:     Matthew House <mattlloydhouse@gmail.com>,
        Askar Safin <safinaskar@gmail.com>
Cc:     linux-man@vger.kernel.org, netdev@vger.kernel.org
References: <CAPnZJGCoHfwngQe5B1PgZ6kO7UK+GU7+G4vfVXxNpBZ6n-nB2g@mail.gmail.com>
 <20230722153131.1156360-1-mattlloydhouse@gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230722153131.1156360-1-mattlloydhouse@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AiX5O0t96bvXqLuejaxR0BLs"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------AiX5O0t96bvXqLuejaxR0BLs
Content-Type: multipart/mixed; boundary="------------aMQfl0OFq79WWr9yPRREtWpn";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>,
 Askar Safin <safinaskar@gmail.com>
Cc: linux-man@vger.kernel.org, netdev@vger.kernel.org
Message-ID: <e03c5f2c-a28a-898c-4999-100fd466a09d@kernel.org>
Subject: Re: shutdown(2) is underdocumented
References: <CAPnZJGCoHfwngQe5B1PgZ6kO7UK+GU7+G4vfVXxNpBZ6n-nB2g@mail.gmail.com>
 <20230722153131.1156360-1-mattlloydhouse@gmail.com>
In-Reply-To: <20230722153131.1156360-1-mattlloydhouse@gmail.com>

--------------aMQfl0OFq79WWr9yPRREtWpn
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Askar, Matthew,

On 2023-07-22 17:30, Matthew House wrote:
> On Sat, Jul 22, 2023 at 8:40 AM Askar Safin <safinaskar@gmail.com> wrot=
e:
>> shutdown(2) is underdocumented. Here is a lot of more details on
>> shutdown(2): https://github.com/WebAssembly/WASI/issues/547 . I
>> discovered them by experiment. So, please, document them

I'm not competent enough to do so, I fear.  If anyone wants to prepare
a patch, please feel invited.  :-)

Cheers,
Alex

>>
>> --
>> Askar Safin
>=20
> Documenting the asymmetry is probably a good idea: the TCP protocol onl=
y
> defines the equivalent of shutdown(SHUT_WR) and shutdown(SHUT_RDWR), an=
d
> there's no natural equivalent of a shutdown(SHUT_RD), so I don't think =
the
> semantics themselves can easily be made more symmetric.
>=20
> To expand, the current behavior, where shutdown(SHUT_RD) by itself sile=
ntly
> drops incoming data received before a shutdown(SHUT_WR), but replies wi=
th a
> RST to data received after a shutdown(SHUT_WR), is definitely pretty we=
ird,
> even looking at the relevant RFCs. tcp_rcv_state_process() in
> net/ipv4/tcp_input.c implements this behavior: a RST is sent back if an=
d
> only if the connection is in the FIN-WAIT-1, FIN-WAIT-2, CLOSE-WAIT,
> CLOSING, or LAST-ACK state (i.e., not in the ESTABLISHED state), data i=
s
> received on the socket, and shutdown(SHUT_RD) has previously been calle=
d.
> The logic is accompanied by the comment:
>=20
> /*
>  * RFC 793 says to queue data in these states,
>  * RFC 1122 says we MUST send a reset.
>  * BSD 4.4 also does reset.
>  */
>=20
> Looking at RFC 793 Section 3.5, it defines the CLOSE operation in a
> "simplex fashion": a FIN is sent and further SENDs are no longer allowe=
d,
> but RECEIVEs are allowed until a FIN is sent from the remote host. This=

> clearly corresponds to the shutdown(SHUT_WR) operation, so it doesn't
> appear to define any particular behavior for shutdown(SHUT_RD).
>=20
> Instead, the entire justification for this behavior lies in RFC 1122
> Section 4.2.2.13:
>=20
>> A host MAY implement a "half-duplex" TCP close sequence, so
>> that an application that has called CLOSE cannot continue to
>> read data from the connection.  If such a host issues a
>> CLOSE call while received data is still pending in TCP, or
>> if new data is received after CLOSE is called, its TCP
>> SHOULD send a RST to show that data was lost.
>=20
> And in its Discussion:
>=20
>> Some systems have not implemented half-closed
>> connections, presumably because they do not fit into
>> the I/O model of their particular operating system.  On
>> these systems, once an application has called CLOSE, it
>> can no longer read input data from the connection; this
>> is referred to as a "half-duplex" TCP close sequence.
>=20
> First off, this isn't a MUST but a SHOULD; I don't know where that idea=

> came from. Second off, we reach a bit of a conflict (IMO) between the
> wording and intent of this clause. It defines the RST behavior only
> following a CLOSE operation by the application, and a CLOSE still alway=
s
> implies a shutdown(SHUT_WR). So at best, by a strict interpretation, th=
e
> application can be given a choice between shutdown(SHUT_WR) and
> shutdown(SHUT_RDWR). Thus, Linux doesn't send any RSTs until after a
> shutdown(SHUT_WR).
>=20
> However, the whole point here is "to show that data was lost", and sile=
ntly
> dropping incoming data prior to a shutdown(SHUT_WR) is clearly contrary=
 to
> this goal. Clearly, a RST isn't very nice to either host, but neither i=
s
> lost data. So it seems at least defensible for a TCP implementation to
> unconditionally reply with a RST to data received after a
> shutdown(SHUT_RD). (As far as I know, this wouldn't break TCP itself fr=
om
> the remote host's end, since it allows hosts to send a RST whenever the=
y
> feel like it. Higher-level protocols might be unhappy with it, though.)=

>=20
> But of course, the current behavior is ancient, dating back to
> Linux 2.3.41pre2 from 2000. (Before then, a RST would only be sent afte=
r a
> full close(2).) So there's no changing it at this point in Linux, at le=
ast
> not without an explicit option. I do wonder if there are any other OSes=

> that have a shutdown(SHUT_RD) with different behavior, though.
>=20
> Matthew House

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------aMQfl0OFq79WWr9yPRREtWpn--

--------------AiX5O0t96bvXqLuejaxR0BLs
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEGp8ACgkQnowa+77/
2zKvLg//epDvpglQX33VXwkin1dXrXtsCztsbFmUJPpfCKJgZrDsTvrxvGdhiQct
vz2hNikIpZ5NiTaR5zpYw360JMJ7MQzLD/lFlFO5v7+GaLZfeJk3roHimqwbL/O6
BcFn6R8SKaLZjNiF/3cNSCZyKmWB9QaeZwZ8EtAvuy0DclmrMZZSnM0BbI2DfSI3
hv6RRhjhY2XrAIueYMzhIFcW6VQSr7TQ3LAhErlHxXgdsePttzpv2QV2epfrZVV8
hb/vKkYDIV1Us7IOJzvZn1gA8cJGs4BjDhNiwQx9v3e/4Bjb0Rrtw51GMhHFxukv
NKIBR3rdJ2Sa7ED7+mVaHRgH2OqPSVCBDGMhtwr6xLOYshVyzMg3BFdUPg0JbEsV
YmVB17exV1vD9xDbB+MCQS6Qd1eKp4wfTGU/tBALX30EYZwgTNOeF1/6rx4YK7qd
96mxEcNoWJkVYf+l6K2noJ2CmS5iVH1H2mqWwWhupbt9kw3vm1cTsxgfAgYNSlFm
Cz8BOvPu9W9QRnn+mHk/9I/xxuKPvRZlDGiXoOscg00T4DxDCPwADeVJIn2pOtBS
LWwcZsUewSzL2cj5XuzE9XvQWFk49Im4Rw028H6G3qfBTCqt2/uAF9UdmqhyERzz
KGc5DnHhIUZcmGvfg+BkOw4gwsFGCoSlSavAUhqVi6fGoK7FO5s=
=RUZU
-----END PGP SIGNATURE-----

--------------AiX5O0t96bvXqLuejaxR0BLs--
