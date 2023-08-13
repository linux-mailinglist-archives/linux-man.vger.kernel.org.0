Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDB7877AE45
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 00:29:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231186AbjHMW33 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 18:29:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230292AbjHMW32 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 18:29:28 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C6BB19F
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 15:29:27 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 085C060E8E
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 22:29:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D5BAC433C7;
        Sun, 13 Aug 2023 22:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691965766;
        bh=cjIQZIWFsi2tfgL1FAyGPEfKrvDrNf6x9B+jT0ni3eg=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=fhySM/FiCm40PagrCrqBft2du96G+1ZkhIkd5kdDlkFHpiZnxlvPIp28jchI3N/Ep
         qMrzvnV26JAF+WvNrGNaYG7pJVMIuqdR/FDRORhH+zgPgF4zOA/hzKmUFSSP4tlcFW
         5NOhw3ahgYPZi9tZrmUobqHxde4i+TBsq59ufo/LUpyHs6ne6NL7PmT+lU8EFrpRnp
         jNxZlZP0EeiwWHkfVPvyrvjSsqPEnPS36y2JF1K2cIm77L1ZwxsXWGN7CUUIQEnQEZ
         iGYqGGZZFzONJAHMBKbXgY3w7VAODg5UT5itIZIVOYGTwtlxLniARbUH47V9AU/RNu
         v2L3GsRYWcHdg==
Message-ID: <eb4161c1-6e57-a9d3-a3c3-fed5db55f004@kernel.org>
Date:   Mon, 14 Aug 2023 00:29:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Eric Blake <eblake@redhat.com>
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
 <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
 <20230813222035.a5ybcqbpnzlapraz@illithid>
 <033cf8fb-5c84-d9eb-a01e-caff597a951b@kernel.org>
Organization: Linux
In-Reply-To: <033cf8fb-5c84-d9eb-a01e-caff597a951b@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------aSeA5Y0zDsmxYI5e2o4Rhh9u"
X-Spam-Status: No, score=-11.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------aSeA5Y0zDsmxYI5e2o4Rhh9u
Content-Type: multipart/mixed; boundary="------------JQg20ybYz1bxpMUCKYHAh0gl";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Eric Blake <eblake@redhat.com>
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <eb4161c1-6e57-a9d3-a3c3-fed5db55f004@kernel.org>
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
 <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
 <20230813222035.a5ybcqbpnzlapraz@illithid>
 <033cf8fb-5c84-d9eb-a01e-caff597a951b@kernel.org>
In-Reply-To: <033cf8fb-5c84-d9eb-a01e-caff597a951b@kernel.org>

--------------JQg20ybYz1bxpMUCKYHAh0gl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-14 00:27, Alejandro Colomar wrote:
> [+=3D Eric]
>=20
> Hi Branden, Eric,
>=20
> On 2023-08-14 00:20, G. Branden Robinson wrote:
>> At 2023-08-13T23:30:30+0200, Alejandro Colomar wrote:
>>> And also, I don't even have the sources, which makes things more
>>> complex.
>>>
>>> I wish that POSIX allowed us to have a copy of the original source
>>> code of the POSIX manual in the git repository.  With that, I'd find
>>> it more interesting to maintain the project again.
>>>
>>> I'd also like to know what's the original source code of POSIX's
>>> manual, because it may very well be roff(7).  If that happens to be
>>> true, I'd like to have access to that source, instead of the HTML.
>>
>> My understanding from hermetic comments to the Austin Group mailing li=
st
>> over the years is that:
>>
>> 1. they have used groff for many years (a decade or more);
>> 2. they don't use man(7) for their man pages (I was told this directly=
);
>>
>> and
>>
>> 3. they use (a customized version of) mm(7)--or I _think_ I saw someon=
e
>>    say this, but I have no citation and I am not even sure it was an
>>    Open Group employee who claimed it.
>=20
> I'd love to have the ms(7) source then.  That way I would have a reason=

> to learn ms(7).  :)

Oops, mm(7).

> It would certainly be better than the HTML files.  It would be
> interesting to adapt the Linux man-pages build system to also support
> ms(7) pages.
>=20
>>
>> We fixed a bunch of bugs in GNU mm for groff 1.23.0.[1]  I wonder if
>> they will be cross with me about that.  Even if they didn't rely on an=
y
>> erstwhile misbehavior, the source churned, some internals changed, and=

>> if they patched the package, I wouldn't count on the patches still
>> applying cleanly.
>>
>>> Would you mind forwarding my rage towards the Open group, which IMO i=
s
>>> not so open?
>>
>> Maybe scrape off the rage first, or you might get a response from Robe=
rt
>> Elz, who is even more cantankerous and writes at even greater length
>> than I do.  ;-)
>=20
> I promise to scrape the rage if I get a name and an email of who to tal=
k
> to.  Maybe Eric can help.  :)
>=20
> Cheers,
> Alex
>=20
>>
>> Some time ago I solicited bug reports against groff from them.  So far=
,
>> nothing, unless they filed anonymously.
>>
>> Regards,
>> Branden
>>
>> [1] https://savannah.gnu.org/bugs/index.php?go_report=3DApply&group=3D=
groff&func=3Dbrowse&set=3Dcustom&msort=3D0&report_id=3D225&advsrch=3D0&bu=
g_id=3D&summary=3D&submitted_by=3D0&resolution_id=3D1&assigned_to=3D0&bug=
_group_id=3D0&status_id=3D3&severity=3D0&category_id=3D121&plan_release_i=
d=3D103&history_search=3D0&history_field=3D0&history_event=3Dmodified&his=
tory_date_dayfd=3D13&history_date_monthfd=3D8&history_date_yearfd=3D2023&=
chunksz=3D50&spamscore=3D5&boxoptionwanted=3D1#options
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------JQg20ybYz1bxpMUCKYHAh0gl--

--------------aSeA5Y0zDsmxYI5e2o4Rhh9u
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTZWUMACgkQnowa+77/
2zJx1hAAkt5sqiMc+aN7KL2S7BBmQl9lfAmKGlTuHAtR+RDlvGAy0+WaCY/xDlzy
Di9vV/eWXE0i+clR6GLb3Ly/JpKNPRJ7fxw9GroDiG6Dnh/d573YYKlTYtOs+H5Q
8FpaIc1+N1QoVLnHQdW/qQ8/WxhcoztZ1akJWKefQxgxJtgtQvu4Pk8VC3Miy+LN
/EP5gA86JEUIUbHgu+mIRSdwsGlr5671cC4Yj4nriQdasRcI6L05KEmtuOW7lcOh
ZLz9+zWqUqPX939n+0LOdO4vZun2/ZvGPDrYlaEng0IBjrmLK5nkyTwwbRazC9IF
L1+LzTh9TRl2stSIZCJTotXKNYnmgUDYGoWhPGC1dsJWhkoZxR0bPDdvTjc5uz1x
cs3a9Db4qp5+5D6QxiHHbuN3PrN/TpMsZ8s6Ege4y8icITZRtK/2afQxzT2ceod9
6NxAK9QzQkCQclryQ6kgVeEz7ze+5OjgNIoxcq+G14N+tqYCyn7EqcZQxtfeGvUo
Uiad9h4yfDSOCj1D/vbvFc73obfUMGVFKscxcj+g191UR55Cl4fn6NZJr+dicBDJ
s7ymZqlR59gVOx3nITxME/+VjEJ/p1ln1TC6dKkvKThzBEL6WfpEijmp2la3Vm4t
m73DJgOZoyklQt4w8vvNQHAhzsSmH0Wm70Ps9QWe0JNq1+dgwTw=
=2+aH
-----END PGP SIGNATURE-----

--------------aSeA5Y0zDsmxYI5e2o4Rhh9u--
